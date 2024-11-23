PGDMP                   
    |            nopcommerce_default_db    16.5    16.5 w   M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    236513    nopcommerce_default_db    DATABASE     �   CREATE DATABASE nopcommerce_default_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Bulgarian_Bulgaria.1251';
 &   DROP DATABASE nopcommerce_default_db;
                postgres    false                        3079    236514    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false            Q           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    2                        3079    236619    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            R           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    3            �           1259    238270 	   AclRecord    TABLE     �   CREATE TABLE public."AclRecord" (
    "Id" integer NOT NULL,
    "EntityName" public.citext NOT NULL,
    "CustomerRoleId" integer NOT NULL,
    "EntityId" integer NOT NULL
);
    DROP TABLE public."AclRecord";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238269    AclRecord_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AclRecord_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."AclRecord_Id_seq";
       public          postgres    false    438            S           0    0    AclRecord_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AclRecord_Id_seq" OWNED BY public."AclRecord"."Id";
          public          postgres    false    437            �           1259    238092    ActivityLog    TABLE     D  CREATE TABLE public."ActivityLog" (
    "Id" integer NOT NULL,
    "Comment" public.citext NOT NULL,
    "IpAddress" public.citext,
    "EntityName" public.citext,
    "ActivityLogTypeId" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "EntityId" integer,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 !   DROP TABLE public."ActivityLog";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238083    ActivityLogType    TABLE     �   CREATE TABLE public."ActivityLogType" (
    "Id" integer NOT NULL,
    "SystemKeyword" public.citext NOT NULL,
    "Name" public.citext NOT NULL,
    "Enabled" boolean NOT NULL
);
 %   DROP TABLE public."ActivityLogType";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238082    ActivityLogType_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ActivityLogType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ActivityLogType_Id_seq";
       public          postgres    false    412            T           0    0    ActivityLogType_Id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ActivityLogType_Id_seq" OWNED BY public."ActivityLogType"."Id";
          public          postgres    false    411            �           1259    238091    ActivityLog_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ActivityLog_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ActivityLog_Id_seq";
       public          postgres    false    414            U           0    0    ActivityLog_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ActivityLog_Id_seq" OWNED BY public."ActivityLog"."Id";
          public          postgres    false    413            �            1259    236756    Address    TABLE       CREATE TABLE public."Address" (
    "Id" integer NOT NULL,
    "CountryId" integer,
    "StateProvinceId" integer,
    "FirstName" public.citext,
    "LastName" public.citext,
    "Email" public.citext,
    "Company" public.citext,
    "County" public.citext,
    "City" public.citext,
    "Address1" public.citext,
    "Address2" public.citext,
    "ZipPostalCode" public.citext,
    "PhoneNumber" public.citext,
    "FaxNumber" public.citext,
    "CustomAttributes" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."Address";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236663    AddressAttribute    TABLE     �   CREATE TABLE public."AddressAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "IsRequired" boolean NOT NULL,
    "AttributeControlTypeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 &   DROP TABLE public."AddressAttribute";
       public         heap    postgres    false    2    2    2    2    2            �            1259    236672    AddressAttributeValue    TABLE     �   CREATE TABLE public."AddressAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "AddressAttributeId" integer NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 +   DROP TABLE public."AddressAttributeValue";
       public         heap    postgres    false    2    2    2    2    2            �            1259    236671    AddressAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AddressAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."AddressAttributeValue_Id_seq";
       public          postgres    false    221            V           0    0    AddressAttributeValue_Id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."AddressAttributeValue_Id_seq" OWNED BY public."AddressAttributeValue"."Id";
          public          postgres    false    220            �            1259    236662    AddressAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AddressAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AddressAttribute_Id_seq";
       public          postgres    false    219            W           0    0    AddressAttribute_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."AddressAttribute_Id_seq" OWNED BY public."AddressAttribute"."Id";
          public          postgres    false    218            �            1259    236755    Address_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Address_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Address_Id_seq";
       public          postgres    false    237            X           0    0    Address_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Address_Id_seq" OWNED BY public."Address"."Id";
          public          postgres    false    236            �            1259    236777 	   Affiliate    TABLE     �   CREATE TABLE public."Affiliate" (
    "Id" integer NOT NULL,
    "AddressId" integer NOT NULL,
    "AdminComment" public.citext,
    "FriendlyUrlName" public.citext,
    "Deleted" boolean NOT NULL,
    "Active" boolean NOT NULL
);
    DROP TABLE public."Affiliate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236776    Affiliate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Affiliate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Affiliate_Id_seq";
       public          postgres    false    239            Y           0    0    Affiliate_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Affiliate_Id_seq" OWNED BY public."Affiliate"."Id";
          public          postgres    false    238                       1259    237039    BackInStockSubscription    TABLE     �   CREATE TABLE public."BackInStockSubscription" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 -   DROP TABLE public."BackInStockSubscription";
       public         heap    postgres    false                       1259    237038    BackInStockSubscription_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."BackInStockSubscription_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."BackInStockSubscription_Id_seq";
       public          postgres    false    277            Z           0    0    BackInStockSubscription_Id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."BackInStockSubscription_Id_seq" OWNED BY public."BackInStockSubscription"."Id";
          public          postgres    false    276            E           1259    237409    BlogComment    TABLE     $  CREATE TABLE public."BlogComment" (
    "Id" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "BlogPostId" integer NOT NULL,
    "CommentText" public.citext,
    "IsApproved" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 !   DROP TABLE public."BlogComment";
       public         heap    postgres    false    2    2    2    2    2            D           1259    237408    BlogComment_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."BlogComment_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."BlogComment_Id_seq";
       public          postgres    false    325            [           0    0    BlogComment_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."BlogComment_Id_seq" OWNED BY public."BlogComment"."Id";
          public          postgres    false    324            C           1259    237394    BlogPost    TABLE     X  CREATE TABLE public."BlogPost" (
    "Id" integer NOT NULL,
    "Title" public.citext NOT NULL,
    "Body" public.citext NOT NULL,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "LanguageId" integer NOT NULL,
    "IncludeInSitemap" boolean NOT NULL,
    "BodyOverview" public.citext,
    "AllowComments" boolean NOT NULL,
    "Tags" public.citext,
    "StartDateUtc" timestamp without time zone,
    "EndDateUtc" timestamp without time zone,
    "MetaDescription" public.citext,
    "LimitedToStores" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."BlogPost";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            B           1259    237393    BlogPost_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."BlogPost_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."BlogPost_Id_seq";
       public          postgres    false    323            \           0    0    BlogPost_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."BlogPost_Id_seq" OWNED BY public."BlogPost"."Id";
          public          postgres    false    322            �           1259    238128    Campaign    TABLE     c  CREATE TABLE public."Campaign" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Subject" public.citext NOT NULL,
    "Body" public.citext NOT NULL,
    "StoreId" integer NOT NULL,
    "CustomerRoleId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "DontSendBeforeDateUtc" timestamp without time zone
);
    DROP TABLE public."Campaign";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238127    Campaign_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Campaign_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Campaign_Id_seq";
       public          postgres    false    418            ]           0    0    Campaign_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Campaign_Id_seq" OWNED BY public."Campaign"."Id";
          public          postgres    false    417            G           1259    237436    Category    TABLE     �  CREATE TABLE public."Category" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "PageSizeOptions" public.citext,
    "Description" public.citext,
    "CategoryTemplateId" integer NOT NULL,
    "MetaDescription" public.citext,
    "ParentCategoryId" integer NOT NULL,
    "PictureId" integer NOT NULL,
    "PageSize" integer NOT NULL,
    "AllowCustomersToSelectPageSize" boolean NOT NULL,
    "ShowOnHomepage" boolean NOT NULL,
    "IncludeInTopMenu" boolean NOT NULL,
    "SubjectToAcl" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "Published" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL,
    "PriceRangeFiltering" boolean NOT NULL,
    "PriceFrom" numeric(18,4) NOT NULL,
    "PriceTo" numeric(18,4) NOT NULL,
    "ManuallyPriceRange" boolean NOT NULL
);
    DROP TABLE public."Category";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            I           1259    237445    CategoryTemplate    TABLE     �   CREATE TABLE public."CategoryTemplate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ViewPath" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 &   DROP TABLE public."CategoryTemplate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            H           1259    237444    CategoryTemplate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CategoryTemplate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CategoryTemplate_Id_seq";
       public          postgres    false    329            ^           0    0    CategoryTemplate_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CategoryTemplate_Id_seq" OWNED BY public."CategoryTemplate"."Id";
          public          postgres    false    328            F           1259    237435    Category_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Category_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Category_Id_seq";
       public          postgres    false    327            _           0    0    Category_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Category_Id_seq" OWNED BY public."Category"."Id";
          public          postgres    false    326                       1259    236931    CheckoutAttribute    TABLE     �  CREATE TABLE public."CheckoutAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "TextPrompt" public.citext,
    "ShippableProductRequired" boolean NOT NULL,
    "IsTaxExempt" boolean NOT NULL,
    "TaxCategoryId" integer NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "ValidationMinLength" integer,
    "ValidationMaxLength" integer,
    "ValidationFileAllowedExtensions" public.citext,
    "ValidationFileMaximumSize" integer,
    "DefaultValue" public.citext,
    "ConditionAttributeXml" public.citext,
    "IsRequired" boolean NOT NULL,
    "AttributeControlTypeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 '   DROP TABLE public."CheckoutAttribute";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    236940    CheckoutAttributeValue    TABLE     h  CREATE TABLE public."CheckoutAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ColorSquaresRgb" public.citext,
    "CheckoutAttributeId" integer NOT NULL,
    "PriceAdjustment" numeric(18,4) NOT NULL,
    "WeightAdjustment" numeric(18,4) NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 ,   DROP TABLE public."CheckoutAttributeValue";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2                       1259    236939    CheckoutAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CheckoutAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."CheckoutAttributeValue_Id_seq";
       public          postgres    false    259            `           0    0    CheckoutAttributeValue_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."CheckoutAttributeValue_Id_seq" OWNED BY public."CheckoutAttributeValue"."Id";
          public          postgres    false    258                        1259    236930    CheckoutAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CheckoutAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CheckoutAttribute_Id_seq";
       public          postgres    false    257            a           0    0    CheckoutAttribute_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."CheckoutAttribute_Id_seq" OWNED BY public."CheckoutAttribute"."Id";
          public          postgres    false    256            �            1259    236705    Country    TABLE     �  CREATE TABLE public."Country" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "TwoLetterIsoCode" public.citext,
    "ThreeLetterIsoCode" public.citext,
    "AllowsBilling" boolean NOT NULL,
    "AllowsShipping" boolean NOT NULL,
    "NumericIsoCode" integer NOT NULL,
    "SubjectToVat" boolean NOT NULL,
    "Published" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "LimitedToStores" boolean NOT NULL
);
    DROP TABLE public."Country";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236704    Country_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Country_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Country_Id_seq";
       public          postgres    false    227            b           0    0    Country_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Country_Id_seq" OWNED BY public."Country"."Id";
          public          postgres    false    226            M           1259    237473    CrossSellProduct    TABLE     �   CREATE TABLE public."CrossSellProduct" (
    "Id" integer NOT NULL,
    "ProductId1" integer NOT NULL,
    "ProductId2" integer NOT NULL
);
 &   DROP TABLE public."CrossSellProduct";
       public         heap    postgres    false            L           1259    237472    CrossSellProduct_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CrossSellProduct_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CrossSellProduct_Id_seq";
       public          postgres    false    333            c           0    0    CrossSellProduct_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CrossSellProduct_Id_seq" OWNED BY public."CrossSellProduct"."Id";
          public          postgres    false    332            �            1259    236714    Currency    TABLE        CREATE TABLE public."Currency" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "CurrencyCode" public.citext NOT NULL,
    "DisplayLocale" public.citext,
    "CustomFormatting" public.citext,
    "Rate" numeric(18,4) NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "Published" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL,
    "RoundingTypeId" integer NOT NULL
);
    DROP TABLE public."Currency";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236713    Currency_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Currency_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Currency_Id_seq";
       public          postgres    false    229            d           0    0    Currency_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Currency_Id_seq" OWNED BY public."Currency"."Id";
          public          postgres    false    228            �            1259    236825    Customer    TABLE     }  CREATE TABLE public."Customer" (
    "Id" integer NOT NULL,
    "Username" public.citext,
    "Email" public.citext,
    "EmailToRevalidate" public.citext,
    "FirstName" public.citext,
    "LastName" public.citext,
    "Gender" public.citext,
    "Company" public.citext,
    "StreetAddress" public.citext,
    "StreetAddress2" public.citext,
    "ZipPostalCode" public.citext,
    "City" public.citext,
    "County" public.citext,
    "Phone" public.citext,
    "Fax" public.citext,
    "VatNumber" public.citext,
    "TimeZoneId" public.citext,
    "CustomCustomerAttributesXML" public.citext,
    "DateOfBirth" timestamp without time zone,
    "SystemName" public.citext,
    "LastIpAddress" public.citext,
    "CurrencyId" integer,
    "LanguageId" integer,
    "BillingAddress_Id" integer,
    "ShippingAddress_Id" integer,
    "CustomerGuid" uuid NOT NULL,
    "CountryId" integer NOT NULL,
    "StateProvinceId" integer NOT NULL,
    "VatNumberStatusId" integer NOT NULL,
    "TaxDisplayTypeId" integer,
    "AdminComment" public.citext,
    "IsTaxExempt" boolean NOT NULL,
    "AffiliateId" integer NOT NULL,
    "VendorId" integer NOT NULL,
    "HasShoppingCartItems" boolean NOT NULL,
    "RequireReLogin" boolean NOT NULL,
    "FailedLoginAttempts" integer NOT NULL,
    "CannotLoginUntilDateUtc" timestamp without time zone,
    "Active" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "IsSystemAccount" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "LastLoginDateUtc" timestamp without time zone,
    "LastActivityDateUtc" timestamp without time zone NOT NULL,
    "RegisteredInStoreId" integer NOT NULL
);
    DROP TABLE public."Customer";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236872    CustomerAddresses    TABLE     s   CREATE TABLE public."CustomerAddresses" (
    "Address_Id" integer NOT NULL,
    "Customer_Id" integer NOT NULL
);
 '   DROP TABLE public."CustomerAddresses";
       public         heap    postgres    false            �            1259    236801    CustomerAttribute    TABLE     �   CREATE TABLE public."CustomerAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "IsRequired" boolean NOT NULL,
    "AttributeControlTypeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 '   DROP TABLE public."CustomerAttribute";
       public         heap    postgres    false    2    2    2    2    2            �            1259    236810    CustomerAttributeValue    TABLE     �   CREATE TABLE public."CustomerAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "CustomerAttributeId" integer NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 ,   DROP TABLE public."CustomerAttributeValue";
       public         heap    postgres    false    2    2    2    2    2            �            1259    236809    CustomerAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CustomerAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."CustomerAttributeValue_Id_seq";
       public          postgres    false    245            e           0    0    CustomerAttributeValue_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."CustomerAttributeValue_Id_seq" OWNED BY public."CustomerAttributeValue"."Id";
          public          postgres    false    244            �            1259    236800    CustomerAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CustomerAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CustomerAttribute_Id_seq";
       public          postgres    false    243            f           0    0    CustomerAttribute_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."CustomerAttribute_Id_seq" OWNED BY public."CustomerAttribute"."Id";
          public          postgres    false    242            �            1259    236858    CustomerPassword    TABLE       CREATE TABLE public."CustomerPassword" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "Password" public.citext,
    "PasswordFormatId" integer NOT NULL,
    "PasswordSalt" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."CustomerPassword";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236857    CustomerPassword_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CustomerPassword_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CustomerPassword_Id_seq";
       public          postgres    false    249            g           0    0    CustomerPassword_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CustomerPassword_Id_seq" OWNED BY public."CustomerPassword"."Id";
          public          postgres    false    248            �            1259    236890    CustomerRole    TABLE     �  CREATE TABLE public."CustomerRole" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "SystemName" public.citext,
    "FreeShipping" boolean NOT NULL,
    "TaxExempt" boolean NOT NULL,
    "Active" boolean NOT NULL,
    "IsSystemRole" boolean NOT NULL,
    "EnablePasswordLifetime" boolean NOT NULL,
    "OverrideTaxDisplayType" boolean NOT NULL,
    "DefaultTaxDisplayTypeId" integer NOT NULL,
    "PurchasedWithProductId" integer NOT NULL
);
 "   DROP TABLE public."CustomerRole";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236889    CustomerRole_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CustomerRole_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."CustomerRole_Id_seq";
       public          postgres    false    252            h           0    0    CustomerRole_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."CustomerRole_Id_seq" OWNED BY public."CustomerRole"."Id";
          public          postgres    false    251            �            1259    236898    Customer_CustomerRole_Mapping    TABLE     �   CREATE TABLE public."Customer_CustomerRole_Mapping" (
    "Customer_Id" integer NOT NULL,
    "CustomerRole_Id" integer NOT NULL
);
 3   DROP TABLE public."Customer_CustomerRole_Mapping";
       public         heap    postgres    false            �            1259    236824    Customer_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Customer_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Customer_Id_seq";
       public          postgres    false    247            i           0    0    Customer_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Customer_Id_seq" OWNED BY public."Customer"."Id";
          public          postgres    false    246            d           1259    237657    DeliveryDate    TABLE     �   CREATE TABLE public."DeliveryDate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 "   DROP TABLE public."DeliveryDate";
       public         heap    postgres    false    2    2    2    2    2            c           1259    237656    DeliveryDate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."DeliveryDate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."DeliveryDate_Id_seq";
       public          postgres    false    356            j           0    0    DeliveryDate_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DeliveryDate_Id_seq" OWNED BY public."DeliveryDate"."Id";
          public          postgres    false    355            �           1259    237852    Discount    TABLE     �  CREATE TABLE public."Discount" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "CouponCode" public.citext,
    "AdminComment" public.citext,
    "DiscountTypeId" integer NOT NULL,
    "UsePercentage" boolean NOT NULL,
    "DiscountPercentage" numeric(18,4) NOT NULL,
    "DiscountAmount" numeric(18,4) NOT NULL,
    "MaximumDiscountAmount" numeric(18,4),
    "StartDateUtc" timestamp without time zone,
    "EndDateUtc" timestamp without time zone,
    "RequiresCouponCode" boolean NOT NULL,
    "IsCumulative" boolean NOT NULL,
    "DiscountLimitationId" integer NOT NULL,
    "LimitationTimes" integer NOT NULL,
    "MaximumDiscountedQuantity" integer,
    "AppliedToSubCategories" boolean NOT NULL,
    "IsActive" boolean NOT NULL
);
    DROP TABLE public."Discount";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    237895    DiscountRequirement    TABLE     �   CREATE TABLE public."DiscountRequirement" (
    "Id" integer NOT NULL,
    "DiscountId" integer NOT NULL,
    "ParentId" integer,
    "DiscountRequirementRuleSystemName" public.citext,
    "InteractionTypeId" integer,
    "IsGroup" boolean NOT NULL
);
 )   DROP TABLE public."DiscountRequirement";
       public         heap    postgres    false    2    2    2    2    2            �           1259    237894    DiscountRequirement_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."DiscountRequirement_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."DiscountRequirement_Id_seq";
       public          postgres    false    389            k           0    0    DiscountRequirement_Id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."DiscountRequirement_Id_seq" OWNED BY public."DiscountRequirement"."Id";
          public          postgres    false    388            �           1259    237916    DiscountUsageHistory    TABLE     �   CREATE TABLE public."DiscountUsageHistory" (
    "Id" integer NOT NULL,
    "DiscountId" integer NOT NULL,
    "OrderId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 *   DROP TABLE public."DiscountUsageHistory";
       public         heap    postgres    false            �           1259    237915    DiscountUsageHistory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."DiscountUsageHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."DiscountUsageHistory_Id_seq";
       public          postgres    false    391            l           0    0    DiscountUsageHistory_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."DiscountUsageHistory_Id_seq" OWNED BY public."DiscountUsageHistory"."Id";
          public          postgres    false    390            �           1259    237860    Discount_AppliedToCategories    TABLE        CREATE TABLE public."Discount_AppliedToCategories" (
    "Discount_Id" integer NOT NULL,
    "Category_Id" integer NOT NULL
);
 2   DROP TABLE public."Discount_AppliedToCategories";
       public         heap    postgres    false            �           1259    237934    Discount_AppliedToManufacturers    TABLE     �   CREATE TABLE public."Discount_AppliedToManufacturers" (
    "Discount_Id" integer NOT NULL,
    "Manufacturer_Id" integer NOT NULL
);
 5   DROP TABLE public."Discount_AppliedToManufacturers";
       public         heap    postgres    false            �           1259    237877    Discount_AppliedToProducts    TABLE     |   CREATE TABLE public."Discount_AppliedToProducts" (
    "Discount_Id" integer NOT NULL,
    "Product_Id" integer NOT NULL
);
 0   DROP TABLE public."Discount_AppliedToProducts";
       public         heap    postgres    false            �           1259    237851    Discount_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Discount_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Discount_Id_seq";
       public          postgres    false    385            m           0    0    Discount_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Discount_Id_seq" OWNED BY public."Discount"."Id";
          public          postgres    false    384            s           1259    237763    Download    TABLE     @  CREATE TABLE public."Download" (
    "Id" integer NOT NULL,
    "DownloadGuid" uuid NOT NULL,
    "UseDownloadUrl" boolean NOT NULL,
    "DownloadUrl" public.citext,
    "DownloadBinary" bytea,
    "ContentType" public.citext,
    "Filename" public.citext,
    "Extension" public.citext,
    "IsNew" boolean NOT NULL
);
    DROP TABLE public."Download";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            r           1259    237762    Download_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Download_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Download_Id_seq";
       public          postgres    false    371            n           0    0    Download_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Download_Id_seq" OWNED BY public."Download"."Id";
          public          postgres    false    370            �           1259    238137    EmailAccount    TABLE     �  CREATE TABLE public."EmailAccount" (
    "Id" integer NOT NULL,
    "DisplayName" public.citext,
    "Email" public.citext NOT NULL,
    "Host" public.citext NOT NULL,
    "Username" public.citext NOT NULL,
    "Password" public.citext NOT NULL,
    "Port" integer NOT NULL,
    "EnableSsl" boolean NOT NULL,
    "MaxNumberOfEmails" integer NOT NULL,
    "EmailAuthenticationMethodId" integer NOT NULL,
    "ClientId" public.citext,
    "ClientSecret" public.citext,
    "TenantId" public.citext
);
 "   DROP TABLE public."EmailAccount";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238136    EmailAccount_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."EmailAccount_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."EmailAccount_Id_seq";
       public          postgres    false    420            o           0    0    EmailAccount_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."EmailAccount_Id_seq" OWNED BY public."EmailAccount"."Id";
          public          postgres    false    419            �            1259    236916    ExternalAuthenticationRecord    TABLE     U  CREATE TABLE public."ExternalAuthenticationRecord" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "Email" public.citext,
    "ExternalIdentifier" public.citext,
    "ExternalDisplayIdentifier" public.citext,
    "OAuthToken" public.citext,
    "OAuthAccessToken" public.citext,
    "ProviderSystemName" public.citext
);
 2   DROP TABLE public."ExternalAuthenticationRecord";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236915 #   ExternalAuthenticationRecord_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExternalAuthenticationRecord_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."ExternalAuthenticationRecord_Id_seq";
       public          postgres    false    255            p           0    0 #   ExternalAuthenticationRecord_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."ExternalAuthenticationRecord_Id_seq" OWNED BY public."ExternalAuthenticationRecord"."Id";
          public          postgres    false    254            �           1259    237982    Forums_Forum    TABLE     '  CREATE TABLE public."Forums_Forum" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ForumGroupId" integer NOT NULL,
    "Description" public.citext,
    "NumTopics" integer NOT NULL,
    "NumPosts" integer NOT NULL,
    "LastTopicId" integer NOT NULL,
    "LastPostId" integer NOT NULL,
    "LastPostCustomerId" integer NOT NULL,
    "LastPostTime" timestamp without time zone,
    "DisplayOrder" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
 "   DROP TABLE public."Forums_Forum";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    237981    Forums_Forum_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_Forum_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Forums_Forum_Id_seq";
       public          postgres    false    398            q           0    0    Forums_Forum_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Forums_Forum_Id_seq" OWNED BY public."Forums_Forum"."Id";
          public          postgres    false    397            �           1259    237973    Forums_Group    TABLE     �   CREATE TABLE public."Forums_Group" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
 "   DROP TABLE public."Forums_Group";
       public         heap    postgres    false    2    2    2    2    2            �           1259    237972    Forums_Group_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_Group_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Forums_Group_Id_seq";
       public          postgres    false    396            r           0    0    Forums_Group_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Forums_Group_Id_seq" OWNED BY public."Forums_Group"."Id";
          public          postgres    false    395            �           1259    238018    Forums_Post    TABLE     Z  CREATE TABLE public."Forums_Post" (
    "Id" integer NOT NULL,
    "Text" public.citext NOT NULL,
    "IPAddress" public.citext,
    "CustomerId" integer NOT NULL,
    "TopicId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL,
    "VoteCount" integer NOT NULL
);
 !   DROP TABLE public."Forums_Post";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238039    Forums_PostVote    TABLE     �   CREATE TABLE public."Forums_PostVote" (
    "Id" integer NOT NULL,
    "ForumPostId" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "IsUp" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 %   DROP TABLE public."Forums_PostVote";
       public         heap    postgres    false            �           1259    238038    Forums_PostVote_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_PostVote_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Forums_PostVote_Id_seq";
       public          postgres    false    404            s           0    0    Forums_PostVote_Id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Forums_PostVote_Id_seq" OWNED BY public."Forums_PostVote"."Id";
          public          postgres    false    403            �           1259    238017    Forums_Post_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_Post_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Forums_Post_Id_seq";
       public          postgres    false    402            t           0    0    Forums_Post_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Forums_Post_Id_seq" OWNED BY public."Forums_Post"."Id";
          public          postgres    false    401            �           1259    237952    Forums_PrivateMessage    TABLE     �  CREATE TABLE public."Forums_PrivateMessage" (
    "Id" integer NOT NULL,
    "Subject" public.citext NOT NULL,
    "Text" public.citext NOT NULL,
    "FromCustomerId" integer NOT NULL,
    "ToCustomerId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "IsRead" boolean NOT NULL,
    "IsDeletedByAuthor" boolean NOT NULL,
    "IsDeletedByRecipient" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 +   DROP TABLE public."Forums_PrivateMessage";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    237951    Forums_PrivateMessage_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_PrivateMessage_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Forums_PrivateMessage_Id_seq";
       public          postgres    false    394            u           0    0    Forums_PrivateMessage_Id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Forums_PrivateMessage_Id_seq" OWNED BY public."Forums_PrivateMessage"."Id";
          public          postgres    false    393            �           1259    238052    Forums_Subscription    TABLE       CREATE TABLE public."Forums_Subscription" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "SubscriptionGuid" uuid NOT NULL,
    "ForumId" integer NOT NULL,
    "TopicId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 )   DROP TABLE public."Forums_Subscription";
       public         heap    postgres    false            �           1259    238051    Forums_Subscription_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_Subscription_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Forums_Subscription_Id_seq";
       public          postgres    false    406            v           0    0    Forums_Subscription_Id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Forums_Subscription_Id_seq" OWNED BY public."Forums_Subscription"."Id";
          public          postgres    false    405            �           1259    237997    Forums_Topic    TABLE     �  CREATE TABLE public."Forums_Topic" (
    "Id" integer NOT NULL,
    "Subject" public.citext NOT NULL,
    "CustomerId" integer NOT NULL,
    "ForumId" integer NOT NULL,
    "TopicTypeId" integer NOT NULL,
    "NumPosts" integer NOT NULL,
    "Views" integer NOT NULL,
    "LastPostId" integer NOT NULL,
    "LastPostCustomerId" integer NOT NULL,
    "LastPostTime" timestamp without time zone,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
 "   DROP TABLE public."Forums_Topic";
       public         heap    postgres    false    2    2    2    2    2            �           1259    237996    Forums_Topic_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Forums_Topic_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Forums_Topic_Id_seq";
       public          postgres    false    400            w           0    0    Forums_Topic_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Forums_Topic_Id_seq" OWNED BY public."Forums_Topic"."Id";
          public          postgres    false    399            �           1259    238065    GdprConsent    TABLE     8  CREATE TABLE public."GdprConsent" (
    "Id" integer NOT NULL,
    "Message" public.citext NOT NULL,
    "IsRequired" boolean NOT NULL,
    "RequiredMessage" public.citext,
    "DisplayDuringRegistration" boolean NOT NULL,
    "DisplayOnCustomerInfoPage" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 !   DROP TABLE public."GdprConsent";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238064    GdprConsent_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."GdprConsent_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."GdprConsent_Id_seq";
       public          postgres    false    408            x           0    0    GdprConsent_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."GdprConsent_Id_seq" OWNED BY public."GdprConsent"."Id";
          public          postgres    false    407            �           1259    238074    GdprLog    TABLE     '  CREATE TABLE public."GdprLog" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "ConsentId" integer NOT NULL,
    "CustomerInfo" public.citext,
    "RequestTypeId" integer NOT NULL,
    "RequestDetails" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."GdprLog";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238073    GdprLog_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."GdprLog_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."GdprLog_Id_seq";
       public          postgres    false    410            y           0    0    GdprLog_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."GdprLog_Id_seq" OWNED BY public."GdprLog"."Id";
          public          postgres    false    409            �            1259    236687    GenericAttribute    TABLE     /  CREATE TABLE public."GenericAttribute" (
    "Id" integer NOT NULL,
    "KeyGroup" public.citext NOT NULL,
    "Key" public.citext NOT NULL,
    "Value" public.citext NOT NULL,
    "EntityId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "CreatedOrUpdatedDateUTC" timestamp without time zone
);
 &   DROP TABLE public."GenericAttribute";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236686    GenericAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."GenericAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."GenericAttribute_Id_seq";
       public          postgres    false    223            z           0    0    GenericAttribute_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."GenericAttribute_Id_seq" OWNED BY public."GenericAttribute"."Id";
          public          postgres    false    222            /           1259    237244    GiftCard    TABLE       CREATE TABLE public."GiftCard" (
    "Id" integer NOT NULL,
    "PurchasedWithOrderItemId" integer,
    "GiftCardTypeId" integer NOT NULL,
    "Amount" numeric(18,4) NOT NULL,
    "IsGiftCardActivated" boolean NOT NULL,
    "GiftCardCouponCode" public.citext,
    "RecipientName" public.citext,
    "RecipientEmail" public.citext,
    "SenderName" public.citext,
    "SenderEmail" public.citext,
    "Message" public.citext,
    "IsRecipientNotified" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."GiftCard";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            1           1259    237259    GiftCardUsageHistory    TABLE     �   CREATE TABLE public."GiftCardUsageHistory" (
    "Id" integer NOT NULL,
    "GiftCardId" integer NOT NULL,
    "UsedWithOrderId" integer NOT NULL,
    "UsedValue" numeric(18,4) NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 *   DROP TABLE public."GiftCardUsageHistory";
       public         heap    postgres    false            0           1259    237258    GiftCardUsageHistory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."GiftCardUsageHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."GiftCardUsageHistory_Id_seq";
       public          postgres    false    305            {           0    0    GiftCardUsageHistory_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."GiftCardUsageHistory_Id_seq" OWNED BY public."GiftCardUsageHistory"."Id";
          public          postgres    false    304            .           1259    237243    GiftCard_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."GiftCard_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."GiftCard_Id_seq";
       public          postgres    false    303            |           0    0    GiftCard_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."GiftCard_Id_seq" OWNED BY public."GiftCard"."Id";
          public          postgres    false    302            �            1259    236792    Language    TABLE     �  CREATE TABLE public."Language" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "LanguageCulture" public.citext NOT NULL,
    "UniqueSeoCode" public.citext,
    "FlagImageFileName" public.citext,
    "Rtl" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "DefaultCurrencyId" integer NOT NULL,
    "Published" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
    DROP TABLE public."Language";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �            1259    236791    Language_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Language_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Language_Id_seq";
       public          postgres    false    241            }           0    0    Language_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Language_Id_seq" OWNED BY public."Language"."Id";
          public          postgres    false    240            ?           1259    237364    LocaleStringResource    TABLE     �   CREATE TABLE public."LocaleStringResource" (
    "Id" integer NOT NULL,
    "ResourceName" public.citext NOT NULL,
    "ResourceValue" public.citext NOT NULL,
    "LanguageId" integer NOT NULL
);
 *   DROP TABLE public."LocaleStringResource";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            >           1259    237363    LocaleStringResource_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."LocaleStringResource_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."LocaleStringResource_Id_seq";
       public          postgres    false    319            ~           0    0    LocaleStringResource_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."LocaleStringResource_Id_seq" OWNED BY public."LocaleStringResource"."Id";
          public          postgres    false    318            A           1259    237379    LocalizedProperty    TABLE     
  CREATE TABLE public."LocalizedProperty" (
    "Id" integer NOT NULL,
    "LocaleKeyGroup" public.citext NOT NULL,
    "LocaleKey" public.citext NOT NULL,
    "LocaleValue" public.citext NOT NULL,
    "LanguageId" integer NOT NULL,
    "EntityId" integer NOT NULL
);
 '   DROP TABLE public."LocalizedProperty";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            @           1259    237378    LocalizedProperty_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."LocalizedProperty_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."LocalizedProperty_Id_seq";
       public          postgres    false    321                       0    0    LocalizedProperty_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."LocalizedProperty_Id_seq" OWNED BY public."LocalizedProperty"."Id";
          public          postgres    false    320            �           1259    238113    Log    TABLE     X  CREATE TABLE public."Log" (
    "Id" integer NOT NULL,
    "ShortMessage" public.citext NOT NULL,
    "IpAddress" public.citext,
    "CustomerId" integer,
    "LogLevelId" integer NOT NULL,
    "FullMessage" public.citext,
    "PageUrl" public.citext,
    "ReferrerUrl" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."Log";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238112 
   Log_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Log_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Log_Id_seq";
       public          postgres    false    416            �           0    0 
   Log_Id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Log_Id_seq" OWNED BY public."Log"."Id";
          public          postgres    false    415            O           1259    237480    Manufacturer    TABLE     �  CREATE TABLE public."Manufacturer" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "PageSizeOptions" public.citext,
    "Description" public.citext,
    "ManufacturerTemplateId" integer NOT NULL,
    "MetaDescription" public.citext,
    "PictureId" integer NOT NULL,
    "PageSize" integer NOT NULL,
    "AllowCustomersToSelectPageSize" boolean NOT NULL,
    "SubjectToAcl" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "Published" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL,
    "PriceRangeFiltering" boolean NOT NULL,
    "PriceFrom" numeric(18,4) NOT NULL,
    "PriceTo" numeric(18,4) NOT NULL,
    "ManuallyPriceRange" boolean NOT NULL
);
 "   DROP TABLE public."Manufacturer";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            Q           1259    237489    ManufacturerTemplate    TABLE     �   CREATE TABLE public."ManufacturerTemplate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ViewPath" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 *   DROP TABLE public."ManufacturerTemplate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            P           1259    237488    ManufacturerTemplate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ManufacturerTemplate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."ManufacturerTemplate_Id_seq";
       public          postgres    false    337            �           0    0    ManufacturerTemplate_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."ManufacturerTemplate_Id_seq" OWNED BY public."ManufacturerTemplate"."Id";
          public          postgres    false    336            N           1259    237479    Manufacturer_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Manufacturer_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Manufacturer_Id_seq";
       public          postgres    false    335            �           0    0    Manufacturer_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Manufacturer_Id_seq" OWNED BY public."Manufacturer"."Id";
          public          postgres    false    334            �            1259    236723    MeasureDimension    TABLE     �   CREATE TABLE public."MeasureDimension" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "SystemKeyword" public.citext NOT NULL,
    "Ratio" numeric(18,8) NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 &   DROP TABLE public."MeasureDimension";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236722    MeasureDimension_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."MeasureDimension_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MeasureDimension_Id_seq";
       public          postgres    false    231            �           0    0    MeasureDimension_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."MeasureDimension_Id_seq" OWNED BY public."MeasureDimension"."Id";
          public          postgres    false    230            �            1259    236732    MeasureWeight    TABLE     �   CREATE TABLE public."MeasureWeight" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "SystemKeyword" public.citext NOT NULL,
    "Ratio" numeric(18,8) NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 #   DROP TABLE public."MeasureWeight";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236731    MeasureWeight_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."MeasureWeight_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MeasureWeight_Id_seq";
       public          postgres    false    233            �           0    0    MeasureWeight_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."MeasureWeight_Id_seq" OWNED BY public."MeasureWeight"."Id";
          public          postgres    false    232            �           1259    238146    MessageTemplate    TABLE     �  CREATE TABLE public."MessageTemplate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "BccEmailAddresses" public.citext,
    "Subject" public.citext,
    "EmailAccountId" integer NOT NULL,
    "Body" public.citext,
    "IsActive" boolean NOT NULL,
    "DelayBeforeSend" integer,
    "DelayPeriodId" integer NOT NULL,
    "AttachedDownloadId" integer NOT NULL,
    "AllowDirectReply" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL
);
 %   DROP TABLE public."MessageTemplate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238145    MessageTemplate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."MessageTemplate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MessageTemplate_Id_seq";
       public          postgres    false    422            �           0    0    MessageTemplate_Id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."MessageTemplate_Id_seq" OWNED BY public."MessageTemplate"."Id";
          public          postgres    false    421            �            1259    236656    MigrationVersionInfo    TABLE     �   CREATE TABLE public."MigrationVersionInfo" (
    "Version" bigint NOT NULL,
    "AppliedOn" timestamp without time zone,
    "Description" public.citext
);
 *   DROP TABLE public."MigrationVersionInfo";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238179    News    TABLE     5  CREATE TABLE public."News" (
    "Id" integer NOT NULL,
    "Title" public.citext NOT NULL,
    "Short" public.citext NOT NULL,
    "Full" public.citext NOT NULL,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "LanguageId" integer NOT NULL,
    "Published" boolean NOT NULL,
    "StartDateUtc" timestamp without time zone,
    "EndDateUtc" timestamp without time zone,
    "AllowComments" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "MetaDescription" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."News";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238194    NewsComment    TABLE     F  CREATE TABLE public."NewsComment" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "NewsItemId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "CommentTitle" public.citext,
    "CommentText" public.citext,
    "IsApproved" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 !   DROP TABLE public."NewsComment";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238193    NewsComment_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."NewsComment_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."NewsComment_Id_seq";
       public          postgres    false    430            �           0    0    NewsComment_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."NewsComment_Id_seq" OWNED BY public."NewsComment"."Id";
          public          postgres    false    429            �           1259    238155    NewsLetterSubscription    TABLE     ;  CREATE TABLE public."NewsLetterSubscription" (
    "Id" integer NOT NULL,
    "Email" public.citext NOT NULL,
    "NewsLetterSubscriptionGuid" uuid NOT NULL,
    "Active" boolean NOT NULL,
    "StoreId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "LanguageId" integer NOT NULL
);
 ,   DROP TABLE public."NewsLetterSubscription";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238154    NewsLetterSubscription_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."NewsLetterSubscription_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."NewsLetterSubscription_Id_seq";
       public          postgres    false    424            �           0    0    NewsLetterSubscription_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."NewsLetterSubscription_Id_seq" OWNED BY public."NewsLetterSubscription"."Id";
          public          postgres    false    423            �           1259    238178    News_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."News_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."News_Id_seq";
       public          postgres    false    428            �           0    0    News_Id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."News_Id_seq" OWNED BY public."News"."Id";
          public          postgres    false    427            )           1259    237175    Order    TABLE     �	  CREATE TABLE public."Order" (
    "Id" integer NOT NULL,
    "CustomOrderNumber" public.citext NOT NULL,
    "BillingAddressId" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "PickupAddressId" integer,
    "ShippingAddressId" integer,
    "CustomerIp" public.citext,
    "OrderGuid" uuid NOT NULL,
    "StoreId" integer NOT NULL,
    "PickupInStore" boolean NOT NULL,
    "OrderStatusId" integer NOT NULL,
    "ShippingStatusId" integer NOT NULL,
    "PaymentStatusId" integer NOT NULL,
    "PaymentMethodSystemName" public.citext,
    "CustomerCurrencyCode" public.citext,
    "CurrencyRate" numeric(18,4) NOT NULL,
    "CustomerTaxDisplayTypeId" integer NOT NULL,
    "VatNumber" public.citext,
    "OrderSubtotalInclTax" numeric(18,4) NOT NULL,
    "OrderSubtotalExclTax" numeric(18,4) NOT NULL,
    "OrderSubTotalDiscountInclTax" numeric(18,4) NOT NULL,
    "OrderSubTotalDiscountExclTax" numeric(18,4) NOT NULL,
    "OrderShippingInclTax" numeric(18,4) NOT NULL,
    "OrderShippingExclTax" numeric(18,4) NOT NULL,
    "PaymentMethodAdditionalFeeInclTax" numeric(18,4) NOT NULL,
    "PaymentMethodAdditionalFeeExclTax" numeric(18,4) NOT NULL,
    "TaxRates" public.citext,
    "OrderTax" numeric(18,4) NOT NULL,
    "OrderDiscount" numeric(18,4) NOT NULL,
    "OrderTotal" numeric(18,4) NOT NULL,
    "RefundedAmount" numeric(18,4) NOT NULL,
    "RewardPointsHistoryEntryId" integer,
    "CheckoutAttributeDescription" public.citext,
    "CheckoutAttributesXml" public.citext,
    "CustomerLanguageId" integer NOT NULL,
    "AffiliateId" integer NOT NULL,
    "AllowStoringCreditCardNumber" boolean NOT NULL,
    "CardType" public.citext,
    "CardName" public.citext,
    "CardNumber" public.citext,
    "MaskedCreditCardNumber" public.citext,
    "CardCvv2" public.citext,
    "CardExpirationMonth" public.citext,
    "CardExpirationYear" public.citext,
    "AuthorizationTransactionId" public.citext,
    "AuthorizationTransactionCode" public.citext,
    "AuthorizationTransactionResult" public.citext,
    "CaptureTransactionId" public.citext,
    "CaptureTransactionResult" public.citext,
    "SubscriptionTransactionId" public.citext,
    "PaidDateUtc" timestamp without time zone,
    "ShippingMethod" public.citext,
    "ShippingRateComputationMethodSystemName" public.citext,
    "CustomValuesXml" public.citext,
    "Deleted" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "RedeemedRewardPointsEntryId" integer
);
    DROP TABLE public."Order";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            +           1259    237208 	   OrderItem    TABLE     ]  CREATE TABLE public."OrderItem" (
    "Id" integer NOT NULL,
    "OrderId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "OrderItemGuid" uuid NOT NULL,
    "Quantity" integer NOT NULL,
    "UnitPriceInclTax" numeric(18,4) NOT NULL,
    "UnitPriceExclTax" numeric(18,4) NOT NULL,
    "PriceInclTax" numeric(18,4) NOT NULL,
    "PriceExclTax" numeric(18,4) NOT NULL,
    "DiscountAmountInclTax" numeric(18,4) NOT NULL,
    "DiscountAmountExclTax" numeric(18,4) NOT NULL,
    "OriginalProductCost" numeric(18,4) NOT NULL,
    "AttributeDescription" public.citext,
    "AttributesXml" public.citext,
    "DownloadCount" integer NOT NULL,
    "IsDownloadActivated" boolean NOT NULL,
    "LicenseDownloadId" integer,
    "ItemWeight" numeric(18,4),
    "RentalStartDateUtc" timestamp without time zone,
    "RentalEndDateUtc" timestamp without time zone
);
    DROP TABLE public."OrderItem";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            *           1259    237207    OrderItem_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrderItem_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."OrderItem_Id_seq";
       public          postgres    false    299            �           0    0    OrderItem_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OrderItem_Id_seq" OWNED BY public."OrderItem"."Id";
          public          postgres    false    298            3           1259    237278 	   OrderNote    TABLE       CREATE TABLE public."OrderNote" (
    "Id" integer NOT NULL,
    "Note" public.citext NOT NULL,
    "OrderId" integer NOT NULL,
    "DownloadId" integer NOT NULL,
    "DisplayToCustomer" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."OrderNote";
       public         heap    postgres    false    2    2    2    2    2            2           1259    237277    OrderNote_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrderNote_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."OrderNote_Id_seq";
       public          postgres    false    307            �           0    0    OrderNote_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OrderNote_Id_seq" OWNED BY public."OrderNote"."Id";
          public          postgres    false    306            (           1259    237174    Order_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Order_Id_seq";
       public          postgres    false    297            �           0    0    Order_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Order_Id_seq" OWNED BY public."Order"."Id";
          public          postgres    false    296            �           1259    238285    PermissionRecord    TABLE     �   CREATE TABLE public."PermissionRecord" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "SystemName" public.citext NOT NULL,
    "Category" public.citext NOT NULL
);
 &   DROP TABLE public."PermissionRecord";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238284    PermissionRecord_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."PermissionRecord_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."PermissionRecord_Id_seq";
       public          postgres    false    440            �           0    0    PermissionRecord_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."PermissionRecord_Id_seq" OWNED BY public."PermissionRecord"."Id";
          public          postgres    false    439            �           1259    238293    PermissionRecord_Role_Mapping    TABLE     �   CREATE TABLE public."PermissionRecord_Role_Mapping" (
    "PermissionRecord_Id" integer NOT NULL,
    "CustomerRole_Id" integer NOT NULL
);
 3   DROP TABLE public."PermissionRecord_Role_Mapping";
       public         heap    postgres    false            u           1259    237772    Picture    TABLE     
  CREATE TABLE public."Picture" (
    "Id" integer NOT NULL,
    "MimeType" public.citext NOT NULL,
    "SeoFilename" public.citext,
    "AltAttribute" public.citext,
    "TitleAttribute" public.citext,
    "IsNew" boolean NOT NULL,
    "VirtualPath" public.citext
);
    DROP TABLE public."Picture";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            w           1259    237781    PictureBinary    TABLE     }   CREATE TABLE public."PictureBinary" (
    "Id" integer NOT NULL,
    "PictureId" integer NOT NULL,
    "BinaryData" bytea
);
 #   DROP TABLE public."PictureBinary";
       public         heap    postgres    false            v           1259    237780    PictureBinary_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."PictureBinary_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."PictureBinary_Id_seq";
       public          postgres    false    375            �           0    0    PictureBinary_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."PictureBinary_Id_seq" OWNED BY public."PictureBinary"."Id";
          public          postgres    false    374            t           1259    237771    Picture_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Picture_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Picture_Id_seq";
       public          postgres    false    373            �           0    0    Picture_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Picture_Id_seq" OWNED BY public."Picture"."Id";
          public          postgres    false    372            �           1259    238221    Poll    TABLE     �  CREATE TABLE public."Poll" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "LanguageId" integer NOT NULL,
    "SystemKeyword" public.citext,
    "Published" boolean NOT NULL,
    "ShowOnHomepage" boolean NOT NULL,
    "AllowGuestsToVote" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "StartDateUtc" timestamp without time zone,
    "EndDateUtc" timestamp without time zone
);
    DROP TABLE public."Poll";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238236 
   PollAnswer    TABLE     �   CREATE TABLE public."PollAnswer" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "PollId" integer NOT NULL,
    "NumberOfVotes" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
     DROP TABLE public."PollAnswer";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238235    PollAnswer_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."PollAnswer_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."PollAnswer_Id_seq";
       public          postgres    false    434            �           0    0    PollAnswer_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."PollAnswer_Id_seq" OWNED BY public."PollAnswer"."Id";
          public          postgres    false    433            �           1259    238251    PollVotingRecord    TABLE     �   CREATE TABLE public."PollVotingRecord" (
    "Id" integer NOT NULL,
    "PollAnswerId" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."PollVotingRecord";
       public         heap    postgres    false            �           1259    238250    PollVotingRecord_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."PollVotingRecord_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."PollVotingRecord_Id_seq";
       public          postgres    false    436            �           0    0    PollVotingRecord_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."PollVotingRecord_Id_seq" OWNED BY public."PollVotingRecord"."Id";
          public          postgres    false    435            �           1259    238220    Poll_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Poll_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Poll_Id_seq";
       public          postgres    false    432            �           0    0    Poll_Id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Poll_Id_seq" OWNED BY public."Poll"."Id";
          public          postgres    false    431                       1259    236997    PredefinedProductAttributeValue    TABLE     �  CREATE TABLE public."PredefinedProductAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ProductAttributeId" integer NOT NULL,
    "PriceAdjustment" numeric(18,4) NOT NULL,
    "PriceAdjustmentUsePercentage" boolean NOT NULL,
    "WeightAdjustment" numeric(18,4) NOT NULL,
    "Cost" numeric(18,4) NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 5   DROP TABLE public."PredefinedProductAttributeValue";
       public         heap    postgres    false    2    2    2    2    2                       1259    236996 &   PredefinedProductAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."PredefinedProductAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PredefinedProductAttributeValue_Id_seq";
       public          postgres    false    269            �           0    0 &   PredefinedProductAttributeValue_Id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."PredefinedProductAttributeValue_Id_seq" OWNED BY public."PredefinedProductAttributeValue"."Id";
          public          postgres    false    268                       1259    237021    Product    TABLE     �  CREATE TABLE public."Product" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "Sku" public.citext,
    "ManufacturerPartNumber" public.citext,
    "Gtin" public.citext,
    "RequiredProductIds" public.citext,
    "AllowedQuantities" public.citext,
    "ProductTypeId" integer NOT NULL,
    "ParentGroupedProductId" integer NOT NULL,
    "VisibleIndividually" boolean NOT NULL,
    "ShortDescription" public.citext,
    "FullDescription" public.citext,
    "AdminComment" public.citext,
    "ProductTemplateId" integer NOT NULL,
    "VendorId" integer NOT NULL,
    "ShowOnHomepage" boolean NOT NULL,
    "MetaDescription" public.citext,
    "AllowCustomerReviews" boolean NOT NULL,
    "ApprovedRatingSum" integer NOT NULL,
    "NotApprovedRatingSum" integer NOT NULL,
    "ApprovedTotalReviews" integer NOT NULL,
    "NotApprovedTotalReviews" integer NOT NULL,
    "SubjectToAcl" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL,
    "IsGiftCard" boolean NOT NULL,
    "GiftCardTypeId" integer NOT NULL,
    "OverriddenGiftCardAmount" numeric(18,4),
    "RequireOtherProducts" boolean NOT NULL,
    "AutomaticallyAddRequiredProducts" boolean NOT NULL,
    "IsDownload" boolean NOT NULL,
    "DownloadId" integer NOT NULL,
    "UnlimitedDownloads" boolean NOT NULL,
    "MaxNumberOfDownloads" integer NOT NULL,
    "DownloadExpirationDays" integer,
    "DownloadActivationTypeId" integer NOT NULL,
    "HasSampleDownload" boolean NOT NULL,
    "SampleDownloadId" integer NOT NULL,
    "HasUserAgreement" boolean NOT NULL,
    "UserAgreementText" public.citext,
    "IsRecurring" boolean NOT NULL,
    "RecurringCycleLength" integer NOT NULL,
    "RecurringCyclePeriodId" integer NOT NULL,
    "RecurringTotalCycles" integer NOT NULL,
    "IsRental" boolean NOT NULL,
    "RentalPriceLength" integer NOT NULL,
    "RentalPricePeriodId" integer NOT NULL,
    "IsShipEnabled" boolean NOT NULL,
    "IsFreeShipping" boolean NOT NULL,
    "ShipSeparately" boolean NOT NULL,
    "AdditionalShippingCharge" numeric(18,4) NOT NULL,
    "DeliveryDateId" integer NOT NULL,
    "IsTaxExempt" boolean NOT NULL,
    "TaxCategoryId" integer NOT NULL,
    "ManageInventoryMethodId" integer NOT NULL,
    "ProductAvailabilityRangeId" integer NOT NULL,
    "UseMultipleWarehouses" boolean NOT NULL,
    "WarehouseId" integer NOT NULL,
    "StockQuantity" integer NOT NULL,
    "DisplayStockAvailability" boolean NOT NULL,
    "DisplayStockQuantity" boolean NOT NULL,
    "MinStockQuantity" integer NOT NULL,
    "LowStockActivityId" integer NOT NULL,
    "NotifyAdminForQuantityBelow" integer NOT NULL,
    "BackorderModeId" integer NOT NULL,
    "AllowBackInStockSubscriptions" boolean NOT NULL,
    "OrderMinimumQuantity" integer NOT NULL,
    "OrderMaximumQuantity" integer NOT NULL,
    "AllowAddingOnlyExistingAttributeCombinations" boolean NOT NULL,
    "DisplayAttributeCombinationImagesOnly" boolean NOT NULL,
    "NotReturnable" boolean NOT NULL,
    "DisableBuyButton" boolean NOT NULL,
    "DisableWishlistButton" boolean NOT NULL,
    "AvailableForPreOrder" boolean NOT NULL,
    "PreOrderAvailabilityStartDateTimeUtc" timestamp without time zone,
    "CallForPrice" boolean NOT NULL,
    "Price" numeric(18,4) NOT NULL,
    "OldPrice" numeric(18,4) NOT NULL,
    "ProductCost" numeric(18,4) NOT NULL,
    "CustomerEntersPrice" boolean NOT NULL,
    "MinimumCustomerEnteredPrice" numeric(18,4) NOT NULL,
    "MaximumCustomerEnteredPrice" numeric(18,4) NOT NULL,
    "BasepriceEnabled" boolean NOT NULL,
    "BasepriceAmount" numeric(18,4) NOT NULL,
    "BasepriceUnitId" integer NOT NULL,
    "BasepriceBaseAmount" numeric(18,4) NOT NULL,
    "BasepriceBaseUnitId" integer NOT NULL,
    "MarkAsNew" boolean NOT NULL,
    "MarkAsNewStartDateTimeUtc" timestamp without time zone,
    "MarkAsNewEndDateTimeUtc" timestamp without time zone,
    "HasTierPrices" boolean NOT NULL,
    "HasDiscountsApplied" boolean NOT NULL,
    "Weight" numeric(18,4) NOT NULL,
    "Length" numeric(18,4) NOT NULL,
    "Width" numeric(18,4) NOT NULL,
    "Height" numeric(18,4) NOT NULL,
    "AvailableStartDateTimeUtc" timestamp without time zone,
    "AvailableEndDateTimeUtc" timestamp without time zone,
    "DisplayOrder" integer NOT NULL,
    "Published" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    236988    ProductAttribute    TABLE     �   CREATE TABLE public."ProductAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Description" public.citext
);
 &   DROP TABLE public."ProductAttribute";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2                       1259    237098    ProductAttributeCombination    TABLE     �  CREATE TABLE public."ProductAttributeCombination" (
    "Id" integer NOT NULL,
    "Sku" public.citext,
    "ManufacturerPartNumber" public.citext,
    "Gtin" public.citext,
    "ProductId" integer NOT NULL,
    "AttributesXml" public.citext,
    "StockQuantity" integer NOT NULL,
    "AllowOutOfStockOrders" boolean NOT NULL,
    "OverriddenPrice" numeric(18,4),
    "NotifyAdminForQuantityBelow" integer NOT NULL,
    "MinStockQuantity" integer NOT NULL,
    "PictureId" integer
);
 1   DROP TABLE public."ProductAttributeCombination";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            !           1259    237113 "   ProductAttributeCombinationPicture    TABLE     �   CREATE TABLE public."ProductAttributeCombinationPicture" (
    "Id" integer NOT NULL,
    "ProductAttributeCombinationId" integer NOT NULL,
    "PictureId" integer NOT NULL
);
 8   DROP TABLE public."ProductAttributeCombinationPicture";
       public         heap    postgres    false                        1259    237112 )   ProductAttributeCombinationPicture_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAttributeCombinationPicture_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."ProductAttributeCombinationPicture_Id_seq";
       public          postgres    false    289            �           0    0 )   ProductAttributeCombinationPicture_Id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."ProductAttributeCombinationPicture_Id_seq" OWNED BY public."ProductAttributeCombinationPicture"."Id";
          public          postgres    false    288                       1259    237097 "   ProductAttributeCombination_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAttributeCombination_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."ProductAttributeCombination_Id_seq";
       public          postgres    false    287            �           0    0 "   ProductAttributeCombination_Id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."ProductAttributeCombination_Id_seq" OWNED BY public."ProductAttributeCombination"."Id";
          public          postgres    false    286            %           1259    237147    ProductAttributeValue    TABLE     �  CREATE TABLE public."ProductAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ColorSquaresRgb" public.citext,
    "ProductAttributeMappingId" integer NOT NULL,
    "AttributeValueTypeId" integer NOT NULL,
    "AssociatedProductId" integer NOT NULL,
    "ImageSquaresPictureId" integer NOT NULL,
    "PriceAdjustment" numeric(18,4) NOT NULL,
    "PriceAdjustmentUsePercentage" boolean NOT NULL,
    "WeightAdjustment" numeric(18,4) NOT NULL,
    "Cost" numeric(18,4) NOT NULL,
    "CustomerEntersQty" boolean NOT NULL,
    "Quantity" integer NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "PictureId" integer
);
 +   DROP TABLE public."ProductAttributeValue";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            '           1259    237162    ProductAttributeValuePicture    TABLE     �   CREATE TABLE public."ProductAttributeValuePicture" (
    "Id" integer NOT NULL,
    "ProductAttributeValueId" integer NOT NULL,
    "PictureId" integer NOT NULL
);
 2   DROP TABLE public."ProductAttributeValuePicture";
       public         heap    postgres    false            &           1259    237161 #   ProductAttributeValuePicture_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAttributeValuePicture_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."ProductAttributeValuePicture_Id_seq";
       public          postgres    false    295            �           0    0 #   ProductAttributeValuePicture_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."ProductAttributeValuePicture_Id_seq" OWNED BY public."ProductAttributeValuePicture"."Id";
          public          postgres    false    294            $           1259    237146    ProductAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."ProductAttributeValue_Id_seq";
       public          postgres    false    293            �           0    0    ProductAttributeValue_Id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ProductAttributeValue_Id_seq" OWNED BY public."ProductAttributeValue"."Id";
          public          postgres    false    292            
           1259    236987    ProductAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ProductAttribute_Id_seq";
       public          postgres    false    267            �           0    0    ProductAttribute_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ProductAttribute_Id_seq" OWNED BY public."ProductAttribute"."Id";
          public          postgres    false    266            f           1259    237666    ProductAvailabilityRange    TABLE     �   CREATE TABLE public."ProductAvailabilityRange" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 .   DROP TABLE public."ProductAvailabilityRange";
       public         heap    postgres    false    2    2    2    2    2            e           1259    237665    ProductAvailabilityRange_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductAvailabilityRange_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."ProductAvailabilityRange_Id_seq";
       public          postgres    false    358            �           0    0    ProductAvailabilityRange_Id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."ProductAvailabilityRange_Id_seq" OWNED BY public."ProductAvailabilityRange"."Id";
          public          postgres    false    357            V           1259    237534    ProductReview    TABLE     �  CREATE TABLE public."ProductReview" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "IsApproved" boolean NOT NULL,
    "Title" public.citext,
    "ReviewText" public.citext,
    "ReplyText" public.citext,
    "CustomerNotifiedOfReply" boolean NOT NULL,
    "Rating" integer NOT NULL,
    "HelpfulYesTotal" integer NOT NULL,
    "HelpfulNoTotal" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 #   DROP TABLE public."ProductReview";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            X           1259    237561    ProductReviewHelpfulness    TABLE     �   CREATE TABLE public."ProductReviewHelpfulness" (
    "Id" integer NOT NULL,
    "ProductReviewId" integer NOT NULL,
    "WasHelpful" boolean NOT NULL,
    "CustomerId" integer NOT NULL
);
 .   DROP TABLE public."ProductReviewHelpfulness";
       public         heap    postgres    false            W           1259    237560    ProductReviewHelpfulness_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductReviewHelpfulness_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."ProductReviewHelpfulness_Id_seq";
       public          postgres    false    344            �           0    0    ProductReviewHelpfulness_Id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."ProductReviewHelpfulness_Id_seq" OWNED BY public."ProductReviewHelpfulness"."Id";
          public          postgres    false    343            U           1259    237533    ProductReview_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductReview_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."ProductReview_Id_seq";
       public          postgres    false    342            �           0    0    ProductReview_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."ProductReview_Id_seq" OWNED BY public."ProductReview"."Id";
          public          postgres    false    341            Z           1259    237574     ProductReview_ReviewType_Mapping    TABLE     �   CREATE TABLE public."ProductReview_ReviewType_Mapping" (
    "Id" integer NOT NULL,
    "ProductReviewId" integer NOT NULL,
    "ReviewTypeId" integer NOT NULL,
    "Rating" integer NOT NULL
);
 6   DROP TABLE public."ProductReview_ReviewType_Mapping";
       public         heap    postgres    false            Y           1259    237573 '   ProductReview_ReviewType_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductReview_ReviewType_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."ProductReview_ReviewType_Mapping_Id_seq";
       public          postgres    false    346            �           0    0 '   ProductReview_ReviewType_Mapping_Id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."ProductReview_ReviewType_Mapping_Id_seq" OWNED BY public."ProductReview_ReviewType_Mapping"."Id";
          public          postgres    false    345                       1259    237012 
   ProductTag    TABLE     c   CREATE TABLE public."ProductTag" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL
);
     DROP TABLE public."ProductTag";
       public         heap    postgres    false    2    2    2    2    2                       1259    237011    ProductTag_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductTag_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ProductTag_Id_seq";
       public          postgres    false    271            �           0    0    ProductTag_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."ProductTag_Id_seq" OWNED BY public."ProductTag"."Id";
          public          postgres    false    270                       1259    237030    ProductTemplate    TABLE     �   CREATE TABLE public."ProductTemplate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ViewPath" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "IgnoredProductTypes" public.citext
);
 %   DROP TABLE public."ProductTemplate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    237029    ProductTemplate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductTemplate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ProductTemplate_Id_seq";
       public          postgres    false    275            �           0    0    ProductTemplate_Id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ProductTemplate_Id_seq" OWNED BY public."ProductTemplate"."Id";
          public          postgres    false    274            }           1259    237824    ProductVideo    TABLE     �   CREATE TABLE public."ProductVideo" (
    "Id" integer NOT NULL,
    "VideoId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 "   DROP TABLE public."ProductVideo";
       public         heap    postgres    false            |           1259    237823    ProductVideo_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductVideo_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ProductVideo_Id_seq";
       public          postgres    false    381            �           0    0    ProductVideo_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ProductVideo_Id_seq" OWNED BY public."ProductVideo"."Id";
          public          postgres    false    380            o           1259    237729    ProductWarehouseInventory    TABLE     �   CREATE TABLE public."ProductWarehouseInventory" (
    "Id" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "WarehouseId" integer NOT NULL,
    "StockQuantity" integer NOT NULL,
    "ReservedQuantity" integer NOT NULL
);
 /   DROP TABLE public."ProductWarehouseInventory";
       public         heap    postgres    false            n           1259    237728     ProductWarehouseInventory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductWarehouseInventory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."ProductWarehouseInventory_Id_seq";
       public          postgres    false    367            �           0    0     ProductWarehouseInventory_Id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."ProductWarehouseInventory_Id_seq" OWNED BY public."ProductWarehouseInventory"."Id";
          public          postgres    false    366            K           1259    237454    Product_Category_Mapping    TABLE     �   CREATE TABLE public."Product_Category_Mapping" (
    "Id" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "IsFeaturedProduct" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 .   DROP TABLE public."Product_Category_Mapping";
       public         heap    postgres    false            J           1259    237453    Product_Category_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Category_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Product_Category_Mapping_Id_seq";
       public          postgres    false    331            �           0    0    Product_Category_Mapping_Id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Product_Category_Mapping_Id_seq" OWNED BY public."Product_Category_Mapping"."Id";
          public          postgres    false    330                       1259    237020    Product_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Product_Id_seq";
       public          postgres    false    273            �           0    0    Product_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Product_Id_seq" OWNED BY public."Product"."Id";
          public          postgres    false    272            S           1259    237498    Product_Manufacturer_Mapping    TABLE     �   CREATE TABLE public."Product_Manufacturer_Mapping" (
    "Id" integer NOT NULL,
    "ManufacturerId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "IsFeaturedProduct" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 2   DROP TABLE public."Product_Manufacturer_Mapping";
       public         heap    postgres    false            R           1259    237497 #   Product_Manufacturer_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Manufacturer_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."Product_Manufacturer_Mapping_Id_seq";
       public          postgres    false    339            �           0    0 #   Product_Manufacturer_Mapping_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."Product_Manufacturer_Mapping_Id_seq" OWNED BY public."Product_Manufacturer_Mapping"."Id";
          public          postgres    false    338            y           1259    237796    Product_Picture_Mapping    TABLE     �   CREATE TABLE public."Product_Picture_Mapping" (
    "Id" integer NOT NULL,
    "PictureId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 -   DROP TABLE public."Product_Picture_Mapping";
       public         heap    postgres    false            x           1259    237795    Product_Picture_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Picture_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Product_Picture_Mapping_Id_seq";
       public          postgres    false    377            �           0    0    Product_Picture_Mapping_Id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Product_Picture_Mapping_Id_seq" OWNED BY public."Product_Picture_Mapping"."Id";
          public          postgres    false    376            #           1259    237126     Product_ProductAttribute_Mapping    TABLE     +  CREATE TABLE public."Product_ProductAttribute_Mapping" (
    "Id" integer NOT NULL,
    "ProductAttributeId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "TextPrompt" public.citext,
    "IsRequired" boolean NOT NULL,
    "AttributeControlTypeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "ValidationMinLength" integer,
    "ValidationMaxLength" integer,
    "ValidationFileAllowedExtensions" public.citext,
    "ValidationFileMaximumSize" integer,
    "DefaultValue" public.citext,
    "ConditionAttributeXml" public.citext
);
 6   DROP TABLE public."Product_ProductAttribute_Mapping";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            "           1259    237125 '   Product_ProductAttribute_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_ProductAttribute_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."Product_ProductAttribute_Mapping_Id_seq";
       public          postgres    false    291            �           0    0 '   Product_ProductAttribute_Mapping_Id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."Product_ProductAttribute_Mapping_Id_seq" OWNED BY public."Product_ProductAttribute_Mapping"."Id";
          public          postgres    false    290            T           1259    237516    Product_ProductTag_Mapping    TABLE     ~   CREATE TABLE public."Product_ProductTag_Mapping" (
    "Product_Id" integer NOT NULL,
    "ProductTag_Id" integer NOT NULL
);
 0   DROP TABLE public."Product_ProductTag_Mapping";
       public         heap    postgres    false            ^           1259    237608 &   Product_SpecificationAttribute_Mapping    TABLE     t  CREATE TABLE public."Product_SpecificationAttribute_Mapping" (
    "Id" integer NOT NULL,
    "CustomValue" public.citext,
    "ProductId" integer NOT NULL,
    "SpecificationAttributeOptionId" integer NOT NULL,
    "AttributeTypeId" integer NOT NULL,
    "AllowFiltering" boolean NOT NULL,
    "ShowOnProductPage" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 <   DROP TABLE public."Product_SpecificationAttribute_Mapping";
       public         heap    postgres    false    2    2    2    2    2            ]           1259    237607 -   Product_SpecificationAttribute_Mapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_SpecificationAttribute_Mapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."Product_SpecificationAttribute_Mapping_Id_seq";
       public          postgres    false    350            �           0    0 -   Product_SpecificationAttribute_Mapping_Id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Product_SpecificationAttribute_Mapping_Id_seq" OWNED BY public."Product_SpecificationAttribute_Mapping"."Id";
          public          postgres    false    349            �           1259    238164    QueuedEmail    TABLE     �  CREATE TABLE public."QueuedEmail" (
    "Id" integer NOT NULL,
    "From" public.citext NOT NULL,
    "FromName" public.citext,
    "To" public.citext NOT NULL,
    "ToName" public.citext,
    "ReplyTo" public.citext,
    "ReplyToName" public.citext,
    "CC" public.citext,
    "Bcc" public.citext,
    "Subject" public.citext,
    "EmailAccountId" integer NOT NULL,
    "PriorityId" integer NOT NULL,
    "Body" public.citext,
    "AttachmentFilePath" public.citext,
    "AttachmentFileName" public.citext,
    "AttachedDownloadId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "DontSendBeforeDateUtc" timestamp without time zone,
    "SentTries" integer NOT NULL,
    "SentOnUtc" timestamp without time zone
);
 !   DROP TABLE public."QueuedEmail";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238163    QueuedEmail_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."QueuedEmail_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."QueuedEmail_Id_seq";
       public          postgres    false    426            �           0    0    QueuedEmail_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."QueuedEmail_Id_seq" OWNED BY public."QueuedEmail"."Id";
          public          postgres    false    425            5           1259    237293    RecurringPayment    TABLE     �  CREATE TABLE public."RecurringPayment" (
    "Id" integer NOT NULL,
    "InitialOrderId" integer NOT NULL,
    "CycleLength" integer NOT NULL,
    "CyclePeriodId" integer NOT NULL,
    "TotalCycles" integer NOT NULL,
    "StartDateUtc" timestamp without time zone NOT NULL,
    "IsActive" boolean NOT NULL,
    "LastPaymentFailed" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."RecurringPayment";
       public         heap    postgres    false            7           1259    237306    RecurringPaymentHistory    TABLE     �   CREATE TABLE public."RecurringPaymentHistory" (
    "Id" integer NOT NULL,
    "RecurringPaymentId" integer NOT NULL,
    "OrderId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
 -   DROP TABLE public."RecurringPaymentHistory";
       public         heap    postgres    false            6           1259    237305    RecurringPaymentHistory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RecurringPaymentHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."RecurringPaymentHistory_Id_seq";
       public          postgres    false    311            �           0    0    RecurringPaymentHistory_Id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."RecurringPaymentHistory_Id_seq" OWNED BY public."RecurringPaymentHistory"."Id";
          public          postgres    false    310            4           1259    237292    RecurringPayment_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RecurringPayment_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."RecurringPayment_Id_seq";
       public          postgres    false    309            �           0    0    RecurringPayment_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."RecurringPayment_Id_seq" OWNED BY public."RecurringPayment"."Id";
          public          postgres    false    308                       1259    237058    RelatedProduct    TABLE     �   CREATE TABLE public."RelatedProduct" (
    "Id" integer NOT NULL,
    "ProductId1" integer NOT NULL,
    "ProductId2" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 $   DROP TABLE public."RelatedProduct";
       public         heap    postgres    false                       1259    237057    RelatedProduct_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RelatedProduct_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."RelatedProduct_Id_seq";
       public          postgres    false    279            �           0    0    RelatedProduct_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."RelatedProduct_Id_seq" OWNED BY public."RelatedProduct"."Id";
          public          postgres    false    278                       1259    236964    ReturnRequest    TABLE       CREATE TABLE public."ReturnRequest" (
    "Id" integer NOT NULL,
    "ReasonForReturn" public.citext NOT NULL,
    "RequestedAction" public.citext NOT NULL,
    "CustomerId" integer NOT NULL,
    "CustomNumber" public.citext,
    "StoreId" integer NOT NULL,
    "OrderItemId" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "ReturnedQuantity" integer NOT NULL,
    "CustomerComments" public.citext,
    "UploadedFileId" integer NOT NULL,
    "StaffNotes" public.citext,
    "ReturnRequestStatusId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
 #   DROP TABLE public."ReturnRequest";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    236955    ReturnRequestAction    TABLE     �   CREATE TABLE public."ReturnRequestAction" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 )   DROP TABLE public."ReturnRequestAction";
       public         heap    postgres    false    2    2    2    2    2                       1259    236954    ReturnRequestAction_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ReturnRequestAction_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ReturnRequestAction_Id_seq";
       public          postgres    false    261            �           0    0    ReturnRequestAction_Id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."ReturnRequestAction_Id_seq" OWNED BY public."ReturnRequestAction"."Id";
          public          postgres    false    260            	           1259    236979    ReturnRequestReason    TABLE     �   CREATE TABLE public."ReturnRequestReason" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 )   DROP TABLE public."ReturnRequestReason";
       public         heap    postgres    false    2    2    2    2    2                       1259    236978    ReturnRequestReason_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ReturnRequestReason_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ReturnRequestReason_Id_seq";
       public          postgres    false    265            �           0    0    ReturnRequestReason_Id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."ReturnRequestReason_Id_seq" OWNED BY public."ReturnRequestReason"."Id";
          public          postgres    false    264                       1259    236963    ReturnRequest_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ReturnRequest_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."ReturnRequest_Id_seq";
       public          postgres    false    263            �           0    0    ReturnRequest_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."ReturnRequest_Id_seq" OWNED BY public."ReturnRequest"."Id";
          public          postgres    false    262                       1259    237065 
   ReviewType    TABLE       CREATE TABLE public."ReviewType" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Description" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "VisibleToAllCustomers" boolean NOT NULL,
    "IsRequired" boolean NOT NULL
);
     DROP TABLE public."ReviewType";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2                       1259    237064    ReviewType_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ReviewType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ReviewType_Id_seq";
       public          postgres    false    281            �           0    0    ReviewType_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."ReviewType_Id_seq" OWNED BY public."ReviewType"."Id";
          public          postgres    false    280            -           1259    237229    RewardPointsHistory    TABLE     �  CREATE TABLE public."RewardPointsHistory" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "Points" integer NOT NULL,
    "PointsBalance" integer,
    "UsedAmount" numeric(18,4) NOT NULL,
    "Message" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "EndDateUtc" timestamp without time zone,
    "ValidPoints" integer,
    "UsedWithOrder" uuid
);
 )   DROP TABLE public."RewardPointsHistory";
       public         heap    postgres    false    2    2    2    2    2            ,           1259    237228    RewardPointsHistory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RewardPointsHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."RewardPointsHistory_Id_seq";
       public          postgres    false    301            �           0    0    RewardPointsHistory_Id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."RewardPointsHistory_Id_seq" OWNED BY public."RewardPointsHistory"."Id";
          public          postgres    false    300            �           1259    238320    ScheduleTask    TABLE     �  CREATE TABLE public."ScheduleTask" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Type" public.citext NOT NULL,
    "Seconds" integer NOT NULL,
    "LastEnabledUtc" timestamp without time zone,
    "Enabled" boolean NOT NULL,
    "StopOnError" boolean NOT NULL,
    "LastStartUtc" timestamp without time zone,
    "LastEndUtc" timestamp without time zone,
    "LastSuccessUtc" timestamp without time zone
);
 "   DROP TABLE public."ScheduleTask";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238319    ScheduleTask_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ScheduleTask_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ScheduleTask_Id_seq";
       public          postgres    false    445            �           0    0    ScheduleTask_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ScheduleTask_Id_seq" OWNED BY public."ScheduleTask"."Id";
          public          postgres    false    444            �            1259    236696 
   SearchTerm    TABLE     �   CREATE TABLE public."SearchTerm" (
    "Id" integer NOT NULL,
    "Keyword" public.citext,
    "StoreId" integer NOT NULL,
    "Count" integer NOT NULL
);
     DROP TABLE public."SearchTerm";
       public         heap    postgres    false    2    2    2    2    2            �            1259    236695    SearchTerm_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."SearchTerm_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SearchTerm_Id_seq";
       public          postgres    false    225            �           0    0    SearchTerm_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SearchTerm_Id_seq" OWNED BY public."SearchTerm"."Id";
          public          postgres    false    224                       1259    237843    Setting    TABLE     �   CREATE TABLE public."Setting" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Value" public.citext NOT NULL,
    "StoreId" integer NOT NULL
);
    DROP TABLE public."Setting";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            ~           1259    237842    Setting_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Setting_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Setting_Id_seq";
       public          postgres    false    383            �           0    0    Setting_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Setting_Id_seq" OWNED BY public."Setting"."Id";
          public          postgres    false    382            h           1259    237675    Shipment    TABLE     �  CREATE TABLE public."Shipment" (
    "Id" integer NOT NULL,
    "OrderId" integer NOT NULL,
    "TrackingNumber" public.citext,
    "TotalWeight" numeric(18,4),
    "ShippedDateUtc" timestamp without time zone,
    "DeliveryDateUtc" timestamp without time zone,
    "ReadyForPickupDateUtc" timestamp without time zone,
    "AdminComment" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
    DROP TABLE public."Shipment";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            j           1259    237690    ShipmentItem    TABLE     �   CREATE TABLE public."ShipmentItem" (
    "Id" integer NOT NULL,
    "ShipmentId" integer NOT NULL,
    "OrderItemId" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "WarehouseId" integer NOT NULL
);
 "   DROP TABLE public."ShipmentItem";
       public         heap    postgres    false            i           1259    237689    ShipmentItem_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ShipmentItem_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ShipmentItem_Id_seq";
       public          postgres    false    362            �           0    0    ShipmentItem_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ShipmentItem_Id_seq" OWNED BY public."ShipmentItem"."Id";
          public          postgres    false    361            g           1259    237674    Shipment_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Shipment_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Shipment_Id_seq";
       public          postgres    false    360            �           0    0    Shipment_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Shipment_Id_seq" OWNED BY public."Shipment"."Id";
          public          postgres    false    359            l           1259    237703    ShippingMethod    TABLE     �   CREATE TABLE public."ShippingMethod" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Description" public.citext,
    "DisplayOrder" integer NOT NULL
);
 $   DROP TABLE public."ShippingMethod";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            m           1259    237711    ShippingMethodRestrictions    TABLE     �   CREATE TABLE public."ShippingMethodRestrictions" (
    "ShippingMethod_Id" integer NOT NULL,
    "Country_Id" integer NOT NULL
);
 0   DROP TABLE public."ShippingMethodRestrictions";
       public         heap    postgres    false            k           1259    237702    ShippingMethod_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ShippingMethod_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."ShippingMethod_Id_seq";
       public          postgres    false    364            �           0    0    ShippingMethod_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ShippingMethod_Id_seq" OWNED BY public."ShippingMethod"."Id";
          public          postgres    false    363            9           1259    237319    ShoppingCartItem    TABLE     )  CREATE TABLE public."ShoppingCartItem" (
    "Id" integer NOT NULL,
    "CustomerId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "ShoppingCartTypeId" integer NOT NULL,
    "AttributesXml" public.citext,
    "CustomerEnteredPrice" numeric(18,4) NOT NULL,
    "Quantity" integer NOT NULL,
    "RentalStartDateUtc" timestamp without time zone,
    "RentalEndDateUtc" timestamp without time zone,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "UpdatedOnUtc" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."ShoppingCartItem";
       public         heap    postgres    false    2    2    2    2    2            8           1259    237318    ShoppingCartItem_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ShoppingCartItem_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ShoppingCartItem_Id_seq";
       public          postgres    false    313            �           0    0    ShoppingCartItem_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ShoppingCartItem_Id_seq" OWNED BY public."ShoppingCartItem"."Id";
          public          postgres    false    312                       1259    237083    SpecificationAttribute    TABLE     �   CREATE TABLE public."SpecificationAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "SpecificationAttributeGroupId" integer,
    "DisplayOrder" integer NOT NULL
);
 ,   DROP TABLE public."SpecificationAttribute";
       public         heap    postgres    false    2    2    2    2    2                       1259    237074    SpecificationAttributeGroup    TABLE     �   CREATE TABLE public."SpecificationAttributeGroup" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 1   DROP TABLE public."SpecificationAttributeGroup";
       public         heap    postgres    false    2    2    2    2    2                       1259    237073 "   SpecificationAttributeGroup_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."SpecificationAttributeGroup_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SpecificationAttributeGroup_Id_seq";
       public          postgres    false    283            �           0    0 "   SpecificationAttributeGroup_Id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."SpecificationAttributeGroup_Id_seq" OWNED BY public."SpecificationAttributeGroup"."Id";
          public          postgres    false    282            \           1259    237593    SpecificationAttributeOption    TABLE     �   CREATE TABLE public."SpecificationAttributeOption" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ColorSquaresRgb" public.citext,
    "SpecificationAttributeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 2   DROP TABLE public."SpecificationAttributeOption";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            [           1259    237592 #   SpecificationAttributeOption_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."SpecificationAttributeOption_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."SpecificationAttributeOption_Id_seq";
       public          postgres    false    348            �           0    0 #   SpecificationAttributeOption_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."SpecificationAttributeOption_Id_seq" OWNED BY public."SpecificationAttributeOption"."Id";
          public          postgres    false    347                       1259    237082    SpecificationAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."SpecificationAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."SpecificationAttribute_Id_seq";
       public          postgres    false    285            �           0    0    SpecificationAttribute_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."SpecificationAttribute_Id_seq" OWNED BY public."SpecificationAttribute"."Id";
          public          postgres    false    284            �            1259    236741    StateProvince    TABLE     �   CREATE TABLE public."StateProvince" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Abbreviation" public.citext,
    "CountryId" integer NOT NULL,
    "Published" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 #   DROP TABLE public."StateProvince";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �            1259    236740    StateProvince_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."StateProvince_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."StateProvince_Id_seq";
       public          postgres    false    235            �           0    0    StateProvince_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StateProvince_Id_seq" OWNED BY public."StateProvince"."Id";
          public          postgres    false    234            q           1259    237748    StockQuantityHistory    TABLE     K  CREATE TABLE public."StockQuantityHistory" (
    "Id" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "QuantityAdjustment" integer NOT NULL,
    "StockQuantity" integer NOT NULL,
    "Message" public.citext,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "CombinationId" integer,
    "WarehouseId" integer
);
 *   DROP TABLE public."StockQuantityHistory";
       public         heap    postgres    false    2    2    2    2    2            p           1259    237747    StockQuantityHistory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."StockQuantityHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."StockQuantityHistory_Id_seq";
       public          postgres    false    369            �           0    0    StockQuantityHistory_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."StockQuantityHistory_Id_seq" OWNED BY public."StockQuantityHistory"."Id";
          public          postgres    false    368            ;           1259    237340    Store    TABLE     }  CREATE TABLE public."Store" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Url" public.citext NOT NULL,
    "Hosts" public.citext,
    "CompanyName" public.citext,
    "CompanyAddress" public.citext,
    "CompanyPhoneNumber" public.citext,
    "CompanyVat" public.citext,
    "DefaultMetaKeywords" public.citext,
    "DefaultMetaDescription" public.citext,
    "DefaultTitle" public.citext,
    "HomepageTitle" public.citext,
    "HomepageDescription" public.citext,
    "SslEnabled" boolean NOT NULL,
    "DefaultLanguageId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "Deleted" boolean NOT NULL
);
    DROP TABLE public."Store";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            =           1259    237349    StoreMapping    TABLE     �   CREATE TABLE public."StoreMapping" (
    "Id" integer NOT NULL,
    "EntityName" public.citext NOT NULL,
    "StoreId" integer NOT NULL,
    "EntityId" integer NOT NULL
);
 "   DROP TABLE public."StoreMapping";
       public         heap    postgres    false    2    2    2    2    2            <           1259    237348    StoreMapping_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."StoreMapping_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StoreMapping_Id_seq";
       public          postgres    false    317            �           0    0    StoreMapping_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StoreMapping_Id_seq" OWNED BY public."StoreMapping"."Id";
          public          postgres    false    316            :           1259    237339    Store_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Store_Id_seq";
       public          postgres    false    315            �           0    0    Store_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Store_Id_seq" OWNED BY public."Store"."Id";
          public          postgres    false    314            �           1259    238329    TaxCategory    TABLE     �   CREATE TABLE public."TaxCategory" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 !   DROP TABLE public."TaxCategory";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238328    TaxCategory_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."TaxCategory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."TaxCategory_Id_seq";
       public          postgres    false    447            �           0    0    TaxCategory_Id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."TaxCategory_Id_seq" OWNED BY public."TaxCategory"."Id";
          public          postgres    false    446            `           1259    237629 	   TierPrice    TABLE     J  CREATE TABLE public."TierPrice" (
    "Id" integer NOT NULL,
    "CustomerRoleId" integer,
    "ProductId" integer NOT NULL,
    "StoreId" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "Price" numeric(18,4) NOT NULL,
    "StartDateTimeUtc" timestamp without time zone,
    "EndDateTimeUtc" timestamp without time zone
);
    DROP TABLE public."TierPrice";
       public         heap    postgres    false            _           1259    237628    TierPrice_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."TierPrice_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."TierPrice_Id_seq";
       public          postgres    false    352            �           0    0    TierPrice_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."TierPrice_Id_seq" OWNED BY public."TierPrice"."Id";
          public          postgres    false    351            �           1259    238347    Topic    TABLE       CREATE TABLE public."Topic" (
    "Id" integer NOT NULL,
    "SystemName" public.citext,
    "IncludeInSitemap" boolean NOT NULL,
    "IncludeInTopMenu" boolean NOT NULL,
    "IncludeInFooterColumn1" boolean NOT NULL,
    "IncludeInFooterColumn2" boolean NOT NULL,
    "IncludeInFooterColumn3" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "AccessibleWhenStoreClosed" boolean NOT NULL,
    "IsPasswordProtected" boolean NOT NULL,
    "Password" public.citext,
    "Title" public.citext,
    "Body" public.citext,
    "Published" boolean NOT NULL,
    "TopicTemplateId" integer NOT NULL,
    "MetaKeywords" public.citext,
    "MetaDescription" public.citext,
    "MetaTitle" public.citext,
    "SubjectToAcl" boolean NOT NULL,
    "LimitedToStores" boolean NOT NULL
);
    DROP TABLE public."Topic";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238338    TopicTemplate    TABLE     �   CREATE TABLE public."TopicTemplate" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "ViewPath" public.citext NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 #   DROP TABLE public."TopicTemplate";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238337    TopicTemplate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."TopicTemplate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."TopicTemplate_Id_seq";
       public          postgres    false    449            �           0    0    TopicTemplate_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."TopicTemplate_Id_seq" OWNED BY public."TopicTemplate"."Id";
          public          postgres    false    448            �           1259    238346    Topic_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Topic_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Topic_Id_seq";
       public          postgres    false    451            �           0    0    Topic_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Topic_Id_seq" OWNED BY public."Topic"."Id";
          public          postgres    false    450            �           1259    238311 	   UrlRecord    TABLE     �   CREATE TABLE public."UrlRecord" (
    "Id" integer NOT NULL,
    "EntityName" public.citext NOT NULL,
    "Slug" public.citext NOT NULL,
    "EntityId" integer NOT NULL,
    "IsActive" boolean NOT NULL,
    "LanguageId" integer NOT NULL
);
    DROP TABLE public."UrlRecord";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            �           1259    238310    UrlRecord_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."UrlRecord_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UrlRecord_Id_seq";
       public          postgres    false    443            �           0    0    UrlRecord_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."UrlRecord_Id_seq" OWNED BY public."UrlRecord"."Id";
          public          postgres    false    442            �           1259    238356    Vendor    TABLE     �  CREATE TABLE public."Vendor" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "Email" public.citext,
    "MetaKeywords" public.citext,
    "MetaTitle" public.citext,
    "PageSizeOptions" public.citext,
    "Description" public.citext,
    "PictureId" integer NOT NULL,
    "AddressId" integer NOT NULL,
    "AdminComment" public.citext,
    "Active" boolean NOT NULL,
    "Deleted" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "MetaDescription" public.citext,
    "PageSize" integer NOT NULL,
    "AllowCustomersToSelectPageSize" boolean NOT NULL,
    "PriceRangeFiltering" boolean NOT NULL,
    "PriceFrom" numeric(18,4) NOT NULL,
    "PriceTo" numeric(18,4) NOT NULL,
    "ManuallyPriceRange" boolean NOT NULL
);
    DROP TABLE public."Vendor";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238365    VendorAttribute    TABLE     �   CREATE TABLE public."VendorAttribute" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "IsRequired" boolean NOT NULL,
    "AttributeControlTypeId" integer NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 %   DROP TABLE public."VendorAttribute";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238374    VendorAttributeValue    TABLE     �   CREATE TABLE public."VendorAttributeValue" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "VendorAttributeId" integer NOT NULL,
    "IsPreSelected" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL
);
 *   DROP TABLE public."VendorAttributeValue";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238373    VendorAttributeValue_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."VendorAttributeValue_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."VendorAttributeValue_Id_seq";
       public          postgres    false    457            �           0    0    VendorAttributeValue_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."VendorAttributeValue_Id_seq" OWNED BY public."VendorAttributeValue"."Id";
          public          postgres    false    456            �           1259    238364    VendorAttribute_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."VendorAttribute_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."VendorAttribute_Id_seq";
       public          postgres    false    455            �           0    0    VendorAttribute_Id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."VendorAttribute_Id_seq" OWNED BY public."VendorAttribute"."Id";
          public          postgres    false    454            �           1259    238389 
   VendorNote    TABLE     �   CREATE TABLE public."VendorNote" (
    "Id" integer NOT NULL,
    "Note" public.citext NOT NULL,
    "VendorId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL
);
     DROP TABLE public."VendorNote";
       public         heap    postgres    false    2    2    2    2    2            �           1259    238388    VendorNote_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."VendorNote_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."VendorNote_Id_seq";
       public          postgres    false    459            �           0    0    VendorNote_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."VendorNote_Id_seq" OWNED BY public."VendorNote"."Id";
          public          postgres    false    458            �           1259    238355    Vendor_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Vendor_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Vendor_Id_seq";
       public          postgres    false    453            �           0    0    Vendor_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Vendor_Id_seq" OWNED BY public."Vendor"."Id";
          public          postgres    false    452            {           1259    237815    Video    TABLE     b   CREATE TABLE public."Video" (
    "Id" integer NOT NULL,
    "VideoUrl" public.citext NOT NULL
);
    DROP TABLE public."Video";
       public         heap    postgres    false    2    2    2    2    2            z           1259    237814    Video_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Video_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Video_Id_seq";
       public          postgres    false    379            �           0    0    Video_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Video_Id_seq" OWNED BY public."Video"."Id";
          public          postgres    false    378            b           1259    237648 	   Warehouse    TABLE     �   CREATE TABLE public."Warehouse" (
    "Id" integer NOT NULL,
    "Name" public.citext NOT NULL,
    "AdminComment" public.citext,
    "AddressId" integer NOT NULL
);
    DROP TABLE public."Warehouse";
       public         heap    postgres    false    2    2    2    2    2    2    2    2    2    2            a           1259    237647    Warehouse_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Warehouse_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Warehouse_Id_seq";
       public          postgres    false    354            �           0    0    Warehouse_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Warehouse_Id_seq" OWNED BY public."Warehouse"."Id";
          public          postgres    false    353            �           2604    238273    AclRecord Id    DEFAULT     r   ALTER TABLE ONLY public."AclRecord" ALTER COLUMN "Id" SET DEFAULT nextval('public."AclRecord_Id_seq"'::regclass);
 ?   ALTER TABLE public."AclRecord" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    438    437    438            �           2604    238095    ActivityLog Id    DEFAULT     v   ALTER TABLE ONLY public."ActivityLog" ALTER COLUMN "Id" SET DEFAULT nextval('public."ActivityLog_Id_seq"'::regclass);
 A   ALTER TABLE public."ActivityLog" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    414    413    414            �           2604    238086    ActivityLogType Id    DEFAULT     ~   ALTER TABLE ONLY public."ActivityLogType" ALTER COLUMN "Id" SET DEFAULT nextval('public."ActivityLogType_Id_seq"'::regclass);
 E   ALTER TABLE public."ActivityLogType" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    412    411    412            A           2604    236759 
   Address Id    DEFAULT     n   ALTER TABLE ONLY public."Address" ALTER COLUMN "Id" SET DEFAULT nextval('public."Address_Id_seq"'::regclass);
 =   ALTER TABLE public."Address" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    237    236    237            8           2604    236666    AddressAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."AddressAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."AddressAttribute_Id_seq"'::regclass);
 F   ALTER TABLE public."AddressAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    218    219    219            9           2604    236675    AddressAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."AddressAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."AddressAttributeValue_Id_seq"'::regclass);
 K   ALTER TABLE public."AddressAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    221    220    221            B           2604    236780    Affiliate Id    DEFAULT     r   ALTER TABLE ONLY public."Affiliate" ALTER COLUMN "Id" SET DEFAULT nextval('public."Affiliate_Id_seq"'::regclass);
 ?   ALTER TABLE public."Affiliate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    238    239    239            T           2604    237042    BackInStockSubscription Id    DEFAULT     �   ALTER TABLE ONLY public."BackInStockSubscription" ALTER COLUMN "Id" SET DEFAULT nextval('public."BackInStockSubscription_Id_seq"'::regclass);
 M   ALTER TABLE public."BackInStockSubscription" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    277    276    277            l           2604    237412    BlogComment Id    DEFAULT     v   ALTER TABLE ONLY public."BlogComment" ALTER COLUMN "Id" SET DEFAULT nextval('public."BlogComment_Id_seq"'::regclass);
 A   ALTER TABLE public."BlogComment" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    325    324    325            k           2604    237397    BlogPost Id    DEFAULT     p   ALTER TABLE ONLY public."BlogPost" ALTER COLUMN "Id" SET DEFAULT nextval('public."BlogPost_Id_seq"'::regclass);
 >   ALTER TABLE public."BlogPost" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    322    323    323            �           2604    238131    Campaign Id    DEFAULT     p   ALTER TABLE ONLY public."Campaign" ALTER COLUMN "Id" SET DEFAULT nextval('public."Campaign_Id_seq"'::regclass);
 >   ALTER TABLE public."Campaign" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    418    417    418            m           2604    237439    Category Id    DEFAULT     p   ALTER TABLE ONLY public."Category" ALTER COLUMN "Id" SET DEFAULT nextval('public."Category_Id_seq"'::regclass);
 >   ALTER TABLE public."Category" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    326    327    327            n           2604    237448    CategoryTemplate Id    DEFAULT     �   ALTER TABLE ONLY public."CategoryTemplate" ALTER COLUMN "Id" SET DEFAULT nextval('public."CategoryTemplate_Id_seq"'::regclass);
 F   ALTER TABLE public."CategoryTemplate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    329    328    329            J           2604    236934    CheckoutAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."CheckoutAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."CheckoutAttribute_Id_seq"'::regclass);
 G   ALTER TABLE public."CheckoutAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    256    257    257            K           2604    236943    CheckoutAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."CheckoutAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."CheckoutAttributeValue_Id_seq"'::regclass);
 L   ALTER TABLE public."CheckoutAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    259    258    259            <           2604    236708 
   Country Id    DEFAULT     n   ALTER TABLE ONLY public."Country" ALTER COLUMN "Id" SET DEFAULT nextval('public."Country_Id_seq"'::regclass);
 =   ALTER TABLE public."Country" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    226    227    227            p           2604    237476    CrossSellProduct Id    DEFAULT     �   ALTER TABLE ONLY public."CrossSellProduct" ALTER COLUMN "Id" SET DEFAULT nextval('public."CrossSellProduct_Id_seq"'::regclass);
 F   ALTER TABLE public."CrossSellProduct" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    333    332    333            =           2604    236717    Currency Id    DEFAULT     p   ALTER TABLE ONLY public."Currency" ALTER COLUMN "Id" SET DEFAULT nextval('public."Currency_Id_seq"'::regclass);
 >   ALTER TABLE public."Currency" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    228    229    229            F           2604    236828    Customer Id    DEFAULT     p   ALTER TABLE ONLY public."Customer" ALTER COLUMN "Id" SET DEFAULT nextval('public."Customer_Id_seq"'::regclass);
 >   ALTER TABLE public."Customer" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    246    247    247            D           2604    236804    CustomerAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."CustomerAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."CustomerAttribute_Id_seq"'::regclass);
 G   ALTER TABLE public."CustomerAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    242    243    243            E           2604    236813    CustomerAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."CustomerAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."CustomerAttributeValue_Id_seq"'::regclass);
 L   ALTER TABLE public."CustomerAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    244    245    245            G           2604    236861    CustomerPassword Id    DEFAULT     �   ALTER TABLE ONLY public."CustomerPassword" ALTER COLUMN "Id" SET DEFAULT nextval('public."CustomerPassword_Id_seq"'::regclass);
 F   ALTER TABLE public."CustomerPassword" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    249    248    249            H           2604    236893    CustomerRole Id    DEFAULT     x   ALTER TABLE ONLY public."CustomerRole" ALTER COLUMN "Id" SET DEFAULT nextval('public."CustomerRole_Id_seq"'::regclass);
 B   ALTER TABLE public."CustomerRole" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    252    251    252            {           2604    237660    DeliveryDate Id    DEFAULT     x   ALTER TABLE ONLY public."DeliveryDate" ALTER COLUMN "Id" SET DEFAULT nextval('public."DeliveryDate_Id_seq"'::regclass);
 B   ALTER TABLE public."DeliveryDate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    355    356    356            �           2604    237855    Discount Id    DEFAULT     p   ALTER TABLE ONLY public."Discount" ALTER COLUMN "Id" SET DEFAULT nextval('public."Discount_Id_seq"'::regclass);
 >   ALTER TABLE public."Discount" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    384    385    385            �           2604    237898    DiscountRequirement Id    DEFAULT     �   ALTER TABLE ONLY public."DiscountRequirement" ALTER COLUMN "Id" SET DEFAULT nextval('public."DiscountRequirement_Id_seq"'::regclass);
 I   ALTER TABLE public."DiscountRequirement" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    388    389    389            �           2604    237919    DiscountUsageHistory Id    DEFAULT     �   ALTER TABLE ONLY public."DiscountUsageHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."DiscountUsageHistory_Id_seq"'::regclass);
 J   ALTER TABLE public."DiscountUsageHistory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    391    390    391            �           2604    237766    Download Id    DEFAULT     p   ALTER TABLE ONLY public."Download" ALTER COLUMN "Id" SET DEFAULT nextval('public."Download_Id_seq"'::regclass);
 >   ALTER TABLE public."Download" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    371    370    371            �           2604    238140    EmailAccount Id    DEFAULT     x   ALTER TABLE ONLY public."EmailAccount" ALTER COLUMN "Id" SET DEFAULT nextval('public."EmailAccount_Id_seq"'::regclass);
 B   ALTER TABLE public."EmailAccount" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    419    420    420            I           2604    236919    ExternalAuthenticationRecord Id    DEFAULT     �   ALTER TABLE ONLY public."ExternalAuthenticationRecord" ALTER COLUMN "Id" SET DEFAULT nextval('public."ExternalAuthenticationRecord_Id_seq"'::regclass);
 R   ALTER TABLE public."ExternalAuthenticationRecord" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    237985    Forums_Forum Id    DEFAULT     x   ALTER TABLE ONLY public."Forums_Forum" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_Forum_Id_seq"'::regclass);
 B   ALTER TABLE public."Forums_Forum" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    398    397    398            �           2604    237976    Forums_Group Id    DEFAULT     x   ALTER TABLE ONLY public."Forums_Group" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_Group_Id_seq"'::regclass);
 B   ALTER TABLE public."Forums_Group" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    396    395    396            �           2604    238021    Forums_Post Id    DEFAULT     v   ALTER TABLE ONLY public."Forums_Post" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_Post_Id_seq"'::regclass);
 A   ALTER TABLE public."Forums_Post" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    402    401    402            �           2604    238042    Forums_PostVote Id    DEFAULT     ~   ALTER TABLE ONLY public."Forums_PostVote" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_PostVote_Id_seq"'::regclass);
 E   ALTER TABLE public."Forums_PostVote" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    404    403    404            �           2604    237955    Forums_PrivateMessage Id    DEFAULT     �   ALTER TABLE ONLY public."Forums_PrivateMessage" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_PrivateMessage_Id_seq"'::regclass);
 K   ALTER TABLE public."Forums_PrivateMessage" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    393    394    394            �           2604    238055    Forums_Subscription Id    DEFAULT     �   ALTER TABLE ONLY public."Forums_Subscription" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_Subscription_Id_seq"'::regclass);
 I   ALTER TABLE public."Forums_Subscription" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    405    406    406            �           2604    238000    Forums_Topic Id    DEFAULT     x   ALTER TABLE ONLY public."Forums_Topic" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forums_Topic_Id_seq"'::regclass);
 B   ALTER TABLE public."Forums_Topic" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    399    400    400            �           2604    238068    GdprConsent Id    DEFAULT     v   ALTER TABLE ONLY public."GdprConsent" ALTER COLUMN "Id" SET DEFAULT nextval('public."GdprConsent_Id_seq"'::regclass);
 A   ALTER TABLE public."GdprConsent" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    408    407    408            �           2604    238077 
   GdprLog Id    DEFAULT     n   ALTER TABLE ONLY public."GdprLog" ALTER COLUMN "Id" SET DEFAULT nextval('public."GdprLog_Id_seq"'::regclass);
 =   ALTER TABLE public."GdprLog" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    410    409    410            :           2604    236690    GenericAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."GenericAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."GenericAttribute_Id_seq"'::regclass);
 F   ALTER TABLE public."GenericAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    223    222    223            a           2604    237247    GiftCard Id    DEFAULT     p   ALTER TABLE ONLY public."GiftCard" ALTER COLUMN "Id" SET DEFAULT nextval('public."GiftCard_Id_seq"'::regclass);
 >   ALTER TABLE public."GiftCard" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    302    303    303            b           2604    237262    GiftCardUsageHistory Id    DEFAULT     �   ALTER TABLE ONLY public."GiftCardUsageHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."GiftCardUsageHistory_Id_seq"'::regclass);
 J   ALTER TABLE public."GiftCardUsageHistory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    304    305    305            C           2604    236795    Language Id    DEFAULT     p   ALTER TABLE ONLY public."Language" ALTER COLUMN "Id" SET DEFAULT nextval('public."Language_Id_seq"'::regclass);
 >   ALTER TABLE public."Language" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    241    240    241            i           2604    237367    LocaleStringResource Id    DEFAULT     �   ALTER TABLE ONLY public."LocaleStringResource" ALTER COLUMN "Id" SET DEFAULT nextval('public."LocaleStringResource_Id_seq"'::regclass);
 J   ALTER TABLE public."LocaleStringResource" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    318    319    319            j           2604    237382    LocalizedProperty Id    DEFAULT     �   ALTER TABLE ONLY public."LocalizedProperty" ALTER COLUMN "Id" SET DEFAULT nextval('public."LocalizedProperty_Id_seq"'::regclass);
 G   ALTER TABLE public."LocalizedProperty" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    321    320    321            �           2604    238116    Log Id    DEFAULT     f   ALTER TABLE ONLY public."Log" ALTER COLUMN "Id" SET DEFAULT nextval('public."Log_Id_seq"'::regclass);
 9   ALTER TABLE public."Log" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    415    416    416            q           2604    237483    Manufacturer Id    DEFAULT     x   ALTER TABLE ONLY public."Manufacturer" ALTER COLUMN "Id" SET DEFAULT nextval('public."Manufacturer_Id_seq"'::regclass);
 B   ALTER TABLE public."Manufacturer" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    334    335    335            r           2604    237492    ManufacturerTemplate Id    DEFAULT     �   ALTER TABLE ONLY public."ManufacturerTemplate" ALTER COLUMN "Id" SET DEFAULT nextval('public."ManufacturerTemplate_Id_seq"'::regclass);
 J   ALTER TABLE public."ManufacturerTemplate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    336    337    337            >           2604    236726    MeasureDimension Id    DEFAULT     �   ALTER TABLE ONLY public."MeasureDimension" ALTER COLUMN "Id" SET DEFAULT nextval('public."MeasureDimension_Id_seq"'::regclass);
 F   ALTER TABLE public."MeasureDimension" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    231    230    231            ?           2604    236735    MeasureWeight Id    DEFAULT     z   ALTER TABLE ONLY public."MeasureWeight" ALTER COLUMN "Id" SET DEFAULT nextval('public."MeasureWeight_Id_seq"'::regclass);
 C   ALTER TABLE public."MeasureWeight" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    238149    MessageTemplate Id    DEFAULT     ~   ALTER TABLE ONLY public."MessageTemplate" ALTER COLUMN "Id" SET DEFAULT nextval('public."MessageTemplate_Id_seq"'::regclass);
 E   ALTER TABLE public."MessageTemplate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    421    422    422            �           2604    238182    News Id    DEFAULT     h   ALTER TABLE ONLY public."News" ALTER COLUMN "Id" SET DEFAULT nextval('public."News_Id_seq"'::regclass);
 :   ALTER TABLE public."News" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    427    428    428            �           2604    238197    NewsComment Id    DEFAULT     v   ALTER TABLE ONLY public."NewsComment" ALTER COLUMN "Id" SET DEFAULT nextval('public."NewsComment_Id_seq"'::regclass);
 A   ALTER TABLE public."NewsComment" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    429    430    430            �           2604    238158    NewsLetterSubscription Id    DEFAULT     �   ALTER TABLE ONLY public."NewsLetterSubscription" ALTER COLUMN "Id" SET DEFAULT nextval('public."NewsLetterSubscription_Id_seq"'::regclass);
 L   ALTER TABLE public."NewsLetterSubscription" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    424    423    424            ^           2604    237178    Order Id    DEFAULT     j   ALTER TABLE ONLY public."Order" ALTER COLUMN "Id" SET DEFAULT nextval('public."Order_Id_seq"'::regclass);
 ;   ALTER TABLE public."Order" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    297    296    297            _           2604    237211    OrderItem Id    DEFAULT     r   ALTER TABLE ONLY public."OrderItem" ALTER COLUMN "Id" SET DEFAULT nextval('public."OrderItem_Id_seq"'::regclass);
 ?   ALTER TABLE public."OrderItem" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    299    298    299            c           2604    237281    OrderNote Id    DEFAULT     r   ALTER TABLE ONLY public."OrderNote" ALTER COLUMN "Id" SET DEFAULT nextval('public."OrderNote_Id_seq"'::regclass);
 ?   ALTER TABLE public."OrderNote" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    307    306    307            �           2604    238288    PermissionRecord Id    DEFAULT     �   ALTER TABLE ONLY public."PermissionRecord" ALTER COLUMN "Id" SET DEFAULT nextval('public."PermissionRecord_Id_seq"'::regclass);
 F   ALTER TABLE public."PermissionRecord" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    439    440    440            �           2604    237775 
   Picture Id    DEFAULT     n   ALTER TABLE ONLY public."Picture" ALTER COLUMN "Id" SET DEFAULT nextval('public."Picture_Id_seq"'::regclass);
 =   ALTER TABLE public."Picture" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    373    372    373            �           2604    237784    PictureBinary Id    DEFAULT     z   ALTER TABLE ONLY public."PictureBinary" ALTER COLUMN "Id" SET DEFAULT nextval('public."PictureBinary_Id_seq"'::regclass);
 C   ALTER TABLE public."PictureBinary" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    375    374    375            �           2604    238224    Poll Id    DEFAULT     h   ALTER TABLE ONLY public."Poll" ALTER COLUMN "Id" SET DEFAULT nextval('public."Poll_Id_seq"'::regclass);
 :   ALTER TABLE public."Poll" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    431    432    432            �           2604    238239    PollAnswer Id    DEFAULT     t   ALTER TABLE ONLY public."PollAnswer" ALTER COLUMN "Id" SET DEFAULT nextval('public."PollAnswer_Id_seq"'::regclass);
 @   ALTER TABLE public."PollAnswer" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    434    433    434            �           2604    238254    PollVotingRecord Id    DEFAULT     �   ALTER TABLE ONLY public."PollVotingRecord" ALTER COLUMN "Id" SET DEFAULT nextval('public."PollVotingRecord_Id_seq"'::regclass);
 F   ALTER TABLE public."PollVotingRecord" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    436    435    436            P           2604    237000 "   PredefinedProductAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."PredefinedProductAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."PredefinedProductAttributeValue_Id_seq"'::regclass);
 U   ALTER TABLE public."PredefinedProductAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    268    269    269            R           2604    237024 
   Product Id    DEFAULT     n   ALTER TABLE ONLY public."Product" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_Id_seq"'::regclass);
 =   ALTER TABLE public."Product" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    273    272    273            O           2604    236991    ProductAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAttribute_Id_seq"'::regclass);
 F   ALTER TABLE public."ProductAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    267    266    267            Y           2604    237101    ProductAttributeCombination Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAttributeCombination" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAttributeCombination_Id_seq"'::regclass);
 Q   ALTER TABLE public."ProductAttributeCombination" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    286    287    287            Z           2604    237116 %   ProductAttributeCombinationPicture Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAttributeCombinationPicture" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAttributeCombinationPicture_Id_seq"'::regclass);
 X   ALTER TABLE public."ProductAttributeCombinationPicture" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    288    289    289            \           2604    237150    ProductAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAttributeValue_Id_seq"'::regclass);
 K   ALTER TABLE public."ProductAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    292    293    293            ]           2604    237165    ProductAttributeValuePicture Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAttributeValuePicture" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAttributeValuePicture_Id_seq"'::regclass);
 R   ALTER TABLE public."ProductAttributeValuePicture" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    295    294    295            |           2604    237669    ProductAvailabilityRange Id    DEFAULT     �   ALTER TABLE ONLY public."ProductAvailabilityRange" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductAvailabilityRange_Id_seq"'::regclass);
 N   ALTER TABLE public."ProductAvailabilityRange" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    357    358    358            t           2604    237537    ProductReview Id    DEFAULT     z   ALTER TABLE ONLY public."ProductReview" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductReview_Id_seq"'::regclass);
 C   ALTER TABLE public."ProductReview" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    341    342    342            u           2604    237564    ProductReviewHelpfulness Id    DEFAULT     �   ALTER TABLE ONLY public."ProductReviewHelpfulness" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductReviewHelpfulness_Id_seq"'::regclass);
 N   ALTER TABLE public."ProductReviewHelpfulness" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    344    343    344            v           2604    237577 #   ProductReview_ReviewType_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductReview_ReviewType_Mapping_Id_seq"'::regclass);
 V   ALTER TABLE public."ProductReview_ReviewType_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    346    345    346            Q           2604    237015    ProductTag Id    DEFAULT     t   ALTER TABLE ONLY public."ProductTag" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductTag_Id_seq"'::regclass);
 @   ALTER TABLE public."ProductTag" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    270    271    271            S           2604    237033    ProductTemplate Id    DEFAULT     ~   ALTER TABLE ONLY public."ProductTemplate" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductTemplate_Id_seq"'::regclass);
 E   ALTER TABLE public."ProductTemplate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    274    275    275            �           2604    237827    ProductVideo Id    DEFAULT     x   ALTER TABLE ONLY public."ProductVideo" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductVideo_Id_seq"'::regclass);
 B   ALTER TABLE public."ProductVideo" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    380    381    381            �           2604    237732    ProductWarehouseInventory Id    DEFAULT     �   ALTER TABLE ONLY public."ProductWarehouseInventory" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProductWarehouseInventory_Id_seq"'::regclass);
 O   ALTER TABLE public."ProductWarehouseInventory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    366    367    367            o           2604    237457    Product_Category_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."Product_Category_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_Category_Mapping_Id_seq"'::regclass);
 N   ALTER TABLE public."Product_Category_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    330    331    331            s           2604    237501    Product_Manufacturer_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."Product_Manufacturer_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_Manufacturer_Mapping_Id_seq"'::regclass);
 R   ALTER TABLE public."Product_Manufacturer_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    338    339    339            �           2604    237799    Product_Picture_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."Product_Picture_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_Picture_Mapping_Id_seq"'::regclass);
 M   ALTER TABLE public."Product_Picture_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    376    377    377            [           2604    237129 #   Product_ProductAttribute_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_ProductAttribute_Mapping_Id_seq"'::regclass);
 V   ALTER TABLE public."Product_ProductAttribute_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    291    290    291            x           2604    237611 )   Product_SpecificationAttribute_Mapping Id    DEFAULT     �   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."Product_SpecificationAttribute_Mapping_Id_seq"'::regclass);
 \   ALTER TABLE public."Product_SpecificationAttribute_Mapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    350    349    350            �           2604    238167    QueuedEmail Id    DEFAULT     v   ALTER TABLE ONLY public."QueuedEmail" ALTER COLUMN "Id" SET DEFAULT nextval('public."QueuedEmail_Id_seq"'::regclass);
 A   ALTER TABLE public."QueuedEmail" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    425    426    426            d           2604    237296    RecurringPayment Id    DEFAULT     �   ALTER TABLE ONLY public."RecurringPayment" ALTER COLUMN "Id" SET DEFAULT nextval('public."RecurringPayment_Id_seq"'::regclass);
 F   ALTER TABLE public."RecurringPayment" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    308    309    309            e           2604    237309    RecurringPaymentHistory Id    DEFAULT     �   ALTER TABLE ONLY public."RecurringPaymentHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."RecurringPaymentHistory_Id_seq"'::regclass);
 M   ALTER TABLE public."RecurringPaymentHistory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    310    311    311            U           2604    237061    RelatedProduct Id    DEFAULT     |   ALTER TABLE ONLY public."RelatedProduct" ALTER COLUMN "Id" SET DEFAULT nextval('public."RelatedProduct_Id_seq"'::regclass);
 D   ALTER TABLE public."RelatedProduct" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    279    278    279            M           2604    236967    ReturnRequest Id    DEFAULT     z   ALTER TABLE ONLY public."ReturnRequest" ALTER COLUMN "Id" SET DEFAULT nextval('public."ReturnRequest_Id_seq"'::regclass);
 C   ALTER TABLE public."ReturnRequest" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    263    262    263            L           2604    236958    ReturnRequestAction Id    DEFAULT     �   ALTER TABLE ONLY public."ReturnRequestAction" ALTER COLUMN "Id" SET DEFAULT nextval('public."ReturnRequestAction_Id_seq"'::regclass);
 I   ALTER TABLE public."ReturnRequestAction" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    261    260    261            N           2604    236982    ReturnRequestReason Id    DEFAULT     �   ALTER TABLE ONLY public."ReturnRequestReason" ALTER COLUMN "Id" SET DEFAULT nextval('public."ReturnRequestReason_Id_seq"'::regclass);
 I   ALTER TABLE public."ReturnRequestReason" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    265    264    265            V           2604    237068    ReviewType Id    DEFAULT     t   ALTER TABLE ONLY public."ReviewType" ALTER COLUMN "Id" SET DEFAULT nextval('public."ReviewType_Id_seq"'::regclass);
 @   ALTER TABLE public."ReviewType" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    281    280    281            `           2604    237232    RewardPointsHistory Id    DEFAULT     �   ALTER TABLE ONLY public."RewardPointsHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."RewardPointsHistory_Id_seq"'::regclass);
 I   ALTER TABLE public."RewardPointsHistory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    301    300    301            �           2604    238323    ScheduleTask Id    DEFAULT     x   ALTER TABLE ONLY public."ScheduleTask" ALTER COLUMN "Id" SET DEFAULT nextval('public."ScheduleTask_Id_seq"'::regclass);
 B   ALTER TABLE public."ScheduleTask" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    444    445    445            ;           2604    236699    SearchTerm Id    DEFAULT     t   ALTER TABLE ONLY public."SearchTerm" ALTER COLUMN "Id" SET DEFAULT nextval('public."SearchTerm_Id_seq"'::regclass);
 @   ALTER TABLE public."SearchTerm" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    237846 
   Setting Id    DEFAULT     n   ALTER TABLE ONLY public."Setting" ALTER COLUMN "Id" SET DEFAULT nextval('public."Setting_Id_seq"'::regclass);
 =   ALTER TABLE public."Setting" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    383    382    383            }           2604    237678    Shipment Id    DEFAULT     p   ALTER TABLE ONLY public."Shipment" ALTER COLUMN "Id" SET DEFAULT nextval('public."Shipment_Id_seq"'::regclass);
 >   ALTER TABLE public."Shipment" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    360    359    360            ~           2604    237693    ShipmentItem Id    DEFAULT     x   ALTER TABLE ONLY public."ShipmentItem" ALTER COLUMN "Id" SET DEFAULT nextval('public."ShipmentItem_Id_seq"'::regclass);
 B   ALTER TABLE public."ShipmentItem" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    361    362    362                       2604    237706    ShippingMethod Id    DEFAULT     |   ALTER TABLE ONLY public."ShippingMethod" ALTER COLUMN "Id" SET DEFAULT nextval('public."ShippingMethod_Id_seq"'::regclass);
 D   ALTER TABLE public."ShippingMethod" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    363    364    364            f           2604    237322    ShoppingCartItem Id    DEFAULT     �   ALTER TABLE ONLY public."ShoppingCartItem" ALTER COLUMN "Id" SET DEFAULT nextval('public."ShoppingCartItem_Id_seq"'::regclass);
 F   ALTER TABLE public."ShoppingCartItem" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    313    312    313            X           2604    237086    SpecificationAttribute Id    DEFAULT     �   ALTER TABLE ONLY public."SpecificationAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."SpecificationAttribute_Id_seq"'::regclass);
 L   ALTER TABLE public."SpecificationAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    285    284    285            W           2604    237077    SpecificationAttributeGroup Id    DEFAULT     �   ALTER TABLE ONLY public."SpecificationAttributeGroup" ALTER COLUMN "Id" SET DEFAULT nextval('public."SpecificationAttributeGroup_Id_seq"'::regclass);
 Q   ALTER TABLE public."SpecificationAttributeGroup" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    283    282    283            w           2604    237596    SpecificationAttributeOption Id    DEFAULT     �   ALTER TABLE ONLY public."SpecificationAttributeOption" ALTER COLUMN "Id" SET DEFAULT nextval('public."SpecificationAttributeOption_Id_seq"'::regclass);
 R   ALTER TABLE public."SpecificationAttributeOption" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    347    348    348            @           2604    236744    StateProvince Id    DEFAULT     z   ALTER TABLE ONLY public."StateProvince" ALTER COLUMN "Id" SET DEFAULT nextval('public."StateProvince_Id_seq"'::regclass);
 C   ALTER TABLE public."StateProvince" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    237751    StockQuantityHistory Id    DEFAULT     �   ALTER TABLE ONLY public."StockQuantityHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."StockQuantityHistory_Id_seq"'::regclass);
 J   ALTER TABLE public."StockQuantityHistory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    368    369    369            g           2604    237343    Store Id    DEFAULT     j   ALTER TABLE ONLY public."Store" ALTER COLUMN "Id" SET DEFAULT nextval('public."Store_Id_seq"'::regclass);
 ;   ALTER TABLE public."Store" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    314    315    315            h           2604    237352    StoreMapping Id    DEFAULT     x   ALTER TABLE ONLY public."StoreMapping" ALTER COLUMN "Id" SET DEFAULT nextval('public."StoreMapping_Id_seq"'::regclass);
 B   ALTER TABLE public."StoreMapping" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    316    317    317            �           2604    238332    TaxCategory Id    DEFAULT     v   ALTER TABLE ONLY public."TaxCategory" ALTER COLUMN "Id" SET DEFAULT nextval('public."TaxCategory_Id_seq"'::regclass);
 A   ALTER TABLE public."TaxCategory" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    447    446    447            y           2604    237632    TierPrice Id    DEFAULT     r   ALTER TABLE ONLY public."TierPrice" ALTER COLUMN "Id" SET DEFAULT nextval('public."TierPrice_Id_seq"'::regclass);
 ?   ALTER TABLE public."TierPrice" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    352    351    352            �           2604    238350    Topic Id    DEFAULT     j   ALTER TABLE ONLY public."Topic" ALTER COLUMN "Id" SET DEFAULT nextval('public."Topic_Id_seq"'::regclass);
 ;   ALTER TABLE public."Topic" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    450    451    451            �           2604    238341    TopicTemplate Id    DEFAULT     z   ALTER TABLE ONLY public."TopicTemplate" ALTER COLUMN "Id" SET DEFAULT nextval('public."TopicTemplate_Id_seq"'::regclass);
 C   ALTER TABLE public."TopicTemplate" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    448    449    449            �           2604    238314    UrlRecord Id    DEFAULT     r   ALTER TABLE ONLY public."UrlRecord" ALTER COLUMN "Id" SET DEFAULT nextval('public."UrlRecord_Id_seq"'::regclass);
 ?   ALTER TABLE public."UrlRecord" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    442    443    443            �           2604    238359 	   Vendor Id    DEFAULT     l   ALTER TABLE ONLY public."Vendor" ALTER COLUMN "Id" SET DEFAULT nextval('public."Vendor_Id_seq"'::regclass);
 <   ALTER TABLE public."Vendor" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    452    453    453            �           2604    238368    VendorAttribute Id    DEFAULT     ~   ALTER TABLE ONLY public."VendorAttribute" ALTER COLUMN "Id" SET DEFAULT nextval('public."VendorAttribute_Id_seq"'::regclass);
 E   ALTER TABLE public."VendorAttribute" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    455    454    455            �           2604    238377    VendorAttributeValue Id    DEFAULT     �   ALTER TABLE ONLY public."VendorAttributeValue" ALTER COLUMN "Id" SET DEFAULT nextval('public."VendorAttributeValue_Id_seq"'::regclass);
 J   ALTER TABLE public."VendorAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    457    456    457            �           2604    238392    VendorNote Id    DEFAULT     t   ALTER TABLE ONLY public."VendorNote" ALTER COLUMN "Id" SET DEFAULT nextval('public."VendorNote_Id_seq"'::regclass);
 @   ALTER TABLE public."VendorNote" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    458    459    459            �           2604    237818    Video Id    DEFAULT     j   ALTER TABLE ONLY public."Video" ALTER COLUMN "Id" SET DEFAULT nextval('public."Video_Id_seq"'::regclass);
 ;   ALTER TABLE public."Video" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    378    379    379            z           2604    237651    Warehouse Id    DEFAULT     r   ALTER TABLE ONLY public."Warehouse" ALTER COLUMN "Id" SET DEFAULT nextval('public."Warehouse_Id_seq"'::regclass);
 ?   ALTER TABLE public."Warehouse" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    354    353    354            5          0    238270 	   AclRecord 
   TABLE DATA           W   COPY public."AclRecord" ("Id", "EntityName", "CustomerRoleId", "EntityId") FROM stdin;
    public          postgres    false    438   Ì                0    238092    ActivityLog 
   TABLE DATA           �   COPY public."ActivityLog" ("Id", "Comment", "IpAddress", "EntityName", "ActivityLogTypeId", "CustomerId", "EntityId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    414   ��                0    238083    ActivityLogType 
   TABLE DATA           U   COPY public."ActivityLogType" ("Id", "SystemKeyword", "Name", "Enabled") FROM stdin;
    public          postgres    false    412   ��      l          0    236756    Address 
   TABLE DATA           �   COPY public."Address" ("Id", "CountryId", "StateProvinceId", "FirstName", "LastName", "Email", "Company", "County", "City", "Address1", "Address2", "ZipPostalCode", "PhoneNumber", "FaxNumber", "CustomAttributes", "CreatedOnUtc") FROM stdin;
    public          postgres    false    237   ��      Z          0    236663    AddressAttribute 
   TABLE DATA           r   COPY public."AddressAttribute" ("Id", "Name", "IsRequired", "AttributeControlTypeId", "DisplayOrder") FROM stdin;
    public          postgres    false    219   C�      \          0    236672    AddressAttributeValue 
   TABLE DATA           v   COPY public."AddressAttributeValue" ("Id", "Name", "AddressAttributeId", "IsPreSelected", "DisplayOrder") FROM stdin;
    public          postgres    false    221   `�      n          0    236777 	   Affiliate 
   TABLE DATA           p   COPY public."Affiliate" ("Id", "AddressId", "AdminComment", "FriendlyUrlName", "Deleted", "Active") FROM stdin;
    public          postgres    false    239   }�      �          0    237039    BackInStockSubscription 
   TABLE DATA           o   COPY public."BackInStockSubscription" ("Id", "CustomerId", "ProductId", "StoreId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    277   ��      �          0    237409    BlogComment 
   TABLE DATA           �   COPY public."BlogComment" ("Id", "StoreId", "CustomerId", "BlogPostId", "CommentText", "IsApproved", "CreatedOnUtc") FROM stdin;
    public          postgres    false    325   ��      �          0    237394    BlogPost 
   TABLE DATA           �   COPY public."BlogPost" ("Id", "Title", "Body", "MetaKeywords", "MetaTitle", "LanguageId", "IncludeInSitemap", "BodyOverview", "AllowComments", "Tags", "StartDateUtc", "EndDateUtc", "MetaDescription", "LimitedToStores", "CreatedOnUtc") FROM stdin;
    public          postgres    false    323   ԕ      !          0    238128    Campaign 
   TABLE DATA           �   COPY public."Campaign" ("Id", "Name", "Subject", "Body", "StoreId", "CustomerRoleId", "CreatedOnUtc", "DontSendBeforeDateUtc") FROM stdin;
    public          postgres    false    418   �      �          0    237436    Category 
   TABLE DATA           �  COPY public."Category" ("Id", "Name", "MetaKeywords", "MetaTitle", "PageSizeOptions", "Description", "CategoryTemplateId", "MetaDescription", "ParentCategoryId", "PictureId", "PageSize", "AllowCustomersToSelectPageSize", "ShowOnHomepage", "IncludeInTopMenu", "SubjectToAcl", "LimitedToStores", "Published", "Deleted", "DisplayOrder", "CreatedOnUtc", "UpdatedOnUtc", "PriceRangeFiltering", "PriceFrom", "PriceTo", "ManuallyPriceRange") FROM stdin;
    public          postgres    false    327   �      �          0    237445    CategoryTemplate 
   TABLE DATA           V   COPY public."CategoryTemplate" ("Id", "Name", "ViewPath", "DisplayOrder") FROM stdin;
    public          postgres    false    329   +�      �          0    236931    CheckoutAttribute 
   TABLE DATA           g  COPY public."CheckoutAttribute" ("Id", "Name", "TextPrompt", "ShippableProductRequired", "IsTaxExempt", "TaxCategoryId", "LimitedToStores", "ValidationMinLength", "ValidationMaxLength", "ValidationFileAllowedExtensions", "ValidationFileMaximumSize", "DefaultValue", "ConditionAttributeXml", "IsRequired", "AttributeControlTypeId", "DisplayOrder") FROM stdin;
    public          postgres    false    257   �      �          0    236940    CheckoutAttributeValue 
   TABLE DATA           �   COPY public."CheckoutAttributeValue" ("Id", "Name", "ColorSquaresRgb", "CheckoutAttributeId", "PriceAdjustment", "WeightAdjustment", "IsPreSelected", "DisplayOrder") FROM stdin;
    public          postgres    false    259   ��      b          0    236705    Country 
   TABLE DATA           �   COPY public."Country" ("Id", "Name", "TwoLetterIsoCode", "ThreeLetterIsoCode", "AllowsBilling", "AllowsShipping", "NumericIsoCode", "SubjectToVat", "Published", "DisplayOrder", "LimitedToStores") FROM stdin;
    public          postgres    false    227   ��      �          0    237473    CrossSellProduct 
   TABLE DATA           N   COPY public."CrossSellProduct" ("Id", "ProductId1", "ProductId2") FROM stdin;
    public          postgres    false    333   G�      d          0    236714    Currency 
   TABLE DATA           �   COPY public."Currency" ("Id", "Name", "CurrencyCode", "DisplayLocale", "CustomFormatting", "Rate", "LimitedToStores", "Published", "DisplayOrder", "CreatedOnUtc", "UpdatedOnUtc", "RoundingTypeId") FROM stdin;
    public          postgres    false    229   d�      v          0    236825    Customer 
   TABLE DATA           �  COPY public."Customer" ("Id", "Username", "Email", "EmailToRevalidate", "FirstName", "LastName", "Gender", "Company", "StreetAddress", "StreetAddress2", "ZipPostalCode", "City", "County", "Phone", "Fax", "VatNumber", "TimeZoneId", "CustomCustomerAttributesXML", "DateOfBirth", "SystemName", "LastIpAddress", "CurrencyId", "LanguageId", "BillingAddress_Id", "ShippingAddress_Id", "CustomerGuid", "CountryId", "StateProvinceId", "VatNumberStatusId", "TaxDisplayTypeId", "AdminComment", "IsTaxExempt", "AffiliateId", "VendorId", "HasShoppingCartItems", "RequireReLogin", "FailedLoginAttempts", "CannotLoginUntilDateUtc", "Active", "Deleted", "IsSystemAccount", "CreatedOnUtc", "LastLoginDateUtc", "LastActivityDateUtc", "RegisteredInStoreId") FROM stdin;
    public          postgres    false    247   ֨      y          0    236872    CustomerAddresses 
   TABLE DATA           J   COPY public."CustomerAddresses" ("Address_Id", "Customer_Id") FROM stdin;
    public          postgres    false    250   /�      r          0    236801    CustomerAttribute 
   TABLE DATA           s   COPY public."CustomerAttribute" ("Id", "Name", "IsRequired", "AttributeControlTypeId", "DisplayOrder") FROM stdin;
    public          postgres    false    243   P�      t          0    236810    CustomerAttributeValue 
   TABLE DATA           x   COPY public."CustomerAttributeValue" ("Id", "Name", "CustomerAttributeId", "IsPreSelected", "DisplayOrder") FROM stdin;
    public          postgres    false    245   m�      x          0    236858    CustomerPassword 
   TABLE DATA           �   COPY public."CustomerPassword" ("Id", "CustomerId", "Password", "PasswordFormatId", "PasswordSalt", "CreatedOnUtc") FROM stdin;
    public          postgres    false    249   ��      {          0    236890    CustomerRole 
   TABLE DATA           �   COPY public."CustomerRole" ("Id", "Name", "SystemName", "FreeShipping", "TaxExempt", "Active", "IsSystemRole", "EnablePasswordLifetime", "OverrideTaxDisplayType", "DefaultTaxDisplayTypeId", "PurchasedWithProductId") FROM stdin;
    public          postgres    false    252   &�      |          0    236898    Customer_CustomerRole_Mapping 
   TABLE DATA           [   COPY public."Customer_CustomerRole_Mapping" ("Customer_Id", "CustomerRole_Id") FROM stdin;
    public          postgres    false    253   ��      �          0    237657    DeliveryDate 
   TABLE DATA           F   COPY public."DeliveryDate" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    356   ȫ                 0    237852    Discount 
   TABLE DATA           f  COPY public."Discount" ("Id", "Name", "CouponCode", "AdminComment", "DiscountTypeId", "UsePercentage", "DiscountPercentage", "DiscountAmount", "MaximumDiscountAmount", "StartDateUtc", "EndDateUtc", "RequiresCouponCode", "IsCumulative", "DiscountLimitationId", "LimitationTimes", "MaximumDiscountedQuantity", "AppliedToSubCategories", "IsActive") FROM stdin;
    public          postgres    false    385   �                0    237895    DiscountRequirement 
   TABLE DATA           �   COPY public."DiscountRequirement" ("Id", "DiscountId", "ParentId", "DiscountRequirementRuleSystemName", "InteractionTypeId", "IsGroup") FROM stdin;
    public          postgres    false    389   #�                0    237916    DiscountUsageHistory 
   TABLE DATA           _   COPY public."DiscountUsageHistory" ("Id", "DiscountId", "OrderId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    391   @�                0    237860    Discount_AppliedToCategories 
   TABLE DATA           V   COPY public."Discount_AppliedToCategories" ("Discount_Id", "Category_Id") FROM stdin;
    public          postgres    false    386   ]�                0    237934    Discount_AppliedToManufacturers 
   TABLE DATA           ]   COPY public."Discount_AppliedToManufacturers" ("Discount_Id", "Manufacturer_Id") FROM stdin;
    public          postgres    false    392   z�                0    237877    Discount_AppliedToProducts 
   TABLE DATA           S   COPY public."Discount_AppliedToProducts" ("Discount_Id", "Product_Id") FROM stdin;
    public          postgres    false    387   ��      �          0    237763    Download 
   TABLE DATA           �   COPY public."Download" ("Id", "DownloadGuid", "UseDownloadUrl", "DownloadUrl", "DownloadBinary", "ContentType", "Filename", "Extension", "IsNew") FROM stdin;
    public          postgres    false    371   ��      #          0    238137    EmailAccount 
   TABLE DATA           �   COPY public."EmailAccount" ("Id", "DisplayName", "Email", "Host", "Username", "Password", "Port", "EnableSsl", "MaxNumberOfEmails", "EmailAuthenticationMethodId", "ClientId", "ClientSecret", "TenantId") FROM stdin;
    public          postgres    false    420   Ѭ      ~          0    236916    ExternalAuthenticationRecord 
   TABLE DATA           �   COPY public."ExternalAuthenticationRecord" ("Id", "CustomerId", "Email", "ExternalIdentifier", "ExternalDisplayIdentifier", "OAuthToken", "OAuthAccessToken", "ProviderSystemName") FROM stdin;
    public          postgres    false    255    �                0    237982    Forums_Forum 
   TABLE DATA           �   COPY public."Forums_Forum" ("Id", "Name", "ForumGroupId", "Description", "NumTopics", "NumPosts", "LastTopicId", "LastPostId", "LastPostCustomerId", "LastPostTime", "DisplayOrder", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    398   =�                0    237973    Forums_Group 
   TABLE DATA           f   COPY public."Forums_Group" ("Id", "Name", "DisplayOrder", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    396   Z�                0    238018    Forums_Post 
   TABLE DATA           �   COPY public."Forums_Post" ("Id", "Text", "IPAddress", "CustomerId", "TopicId", "CreatedOnUtc", "UpdatedOnUtc", "VoteCount") FROM stdin;
    public          postgres    false    402   w�                0    238039    Forums_PostVote 
   TABLE DATA           f   COPY public."Forums_PostVote" ("Id", "ForumPostId", "CustomerId", "IsUp", "CreatedOnUtc") FROM stdin;
    public          postgres    false    404   ��      	          0    237952    Forums_PrivateMessage 
   TABLE DATA           �   COPY public."Forums_PrivateMessage" ("Id", "Subject", "Text", "FromCustomerId", "ToCustomerId", "StoreId", "IsRead", "IsDeletedByAuthor", "IsDeletedByRecipient", "CreatedOnUtc") FROM stdin;
    public          postgres    false    394   ��                0    238052    Forums_Subscription 
   TABLE DATA           }   COPY public."Forums_Subscription" ("Id", "CustomerId", "SubscriptionGuid", "ForumId", "TopicId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    406   έ                0    237997    Forums_Topic 
   TABLE DATA           �   COPY public."Forums_Topic" ("Id", "Subject", "CustomerId", "ForumId", "TopicTypeId", "NumPosts", "Views", "LastPostId", "LastPostCustomerId", "LastPostTime", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    400   �                0    238065    GdprConsent 
   TABLE DATA           �   COPY public."GdprConsent" ("Id", "Message", "IsRequired", "RequiredMessage", "DisplayDuringRegistration", "DisplayOnCustomerInfoPage", "DisplayOrder") FROM stdin;
    public          postgres    false    408   �                0    238074    GdprLog 
   TABLE DATA           �   COPY public."GdprLog" ("Id", "CustomerId", "ConsentId", "CustomerInfo", "RequestTypeId", "RequestDetails", "CreatedOnUtc") FROM stdin;
    public          postgres    false    410   %�      ^          0    236687    GenericAttribute 
   TABLE DATA           �   COPY public."GenericAttribute" ("Id", "KeyGroup", "Key", "Value", "EntityId", "StoreId", "CreatedOrUpdatedDateUTC") FROM stdin;
    public          postgres    false    223   B�      �          0    237244    GiftCard 
   TABLE DATA             COPY public."GiftCard" ("Id", "PurchasedWithOrderItemId", "GiftCardTypeId", "Amount", "IsGiftCardActivated", "GiftCardCouponCode", "RecipientName", "RecipientEmail", "SenderName", "SenderEmail", "Message", "IsRecipientNotified", "CreatedOnUtc") FROM stdin;
    public          postgres    false    303   _�      �          0    237259    GiftCardUsageHistory 
   TABLE DATA           t   COPY public."GiftCardUsageHistory" ("Id", "GiftCardId", "UsedWithOrderId", "UsedValue", "CreatedOnUtc") FROM stdin;
    public          postgres    false    305   |�      p          0    236792    Language 
   TABLE DATA           �   COPY public."Language" ("Id", "Name", "LanguageCulture", "UniqueSeoCode", "FlagImageFileName", "Rtl", "LimitedToStores", "DefaultCurrencyId", "Published", "DisplayOrder") FROM stdin;
    public          postgres    false    241   ��      �          0    237364    LocaleStringResource 
   TABLE DATA           e   COPY public."LocaleStringResource" ("Id", "ResourceName", "ResourceValue", "LanguageId") FROM stdin;
    public          postgres    false    319   Ү      �          0    237379    LocalizedProperty 
   TABLE DATA           {   COPY public."LocalizedProperty" ("Id", "LocaleKeyGroup", "LocaleKey", "LocaleValue", "LanguageId", "EntityId") FROM stdin;
    public          postgres    false    321   ��                0    238113    Log 
   TABLE DATA           �   COPY public."Log" ("Id", "ShortMessage", "IpAddress", "CustomerId", "LogLevelId", "FullMessage", "PageUrl", "ReferrerUrl", "CreatedOnUtc") FROM stdin;
    public          postgres    false    416   ��      �          0    237480    Manufacturer 
   TABLE DATA           �  COPY public."Manufacturer" ("Id", "Name", "MetaKeywords", "MetaTitle", "PageSizeOptions", "Description", "ManufacturerTemplateId", "MetaDescription", "PictureId", "PageSize", "AllowCustomersToSelectPageSize", "SubjectToAcl", "LimitedToStores", "Published", "Deleted", "DisplayOrder", "CreatedOnUtc", "UpdatedOnUtc", "PriceRangeFiltering", "PriceFrom", "PriceTo", "ManuallyPriceRange") FROM stdin;
    public          postgres    false    335   Ϝ      �          0    237489    ManufacturerTemplate 
   TABLE DATA           Z   COPY public."ManufacturerTemplate" ("Id", "Name", "ViewPath", "DisplayOrder") FROM stdin;
    public          postgres    false    337   �      f          0    236723    MeasureDimension 
   TABLE DATA           d   COPY public."MeasureDimension" ("Id", "Name", "SystemKeyword", "Ratio", "DisplayOrder") FROM stdin;
    public          postgres    false    231   F�      h          0    236732    MeasureWeight 
   TABLE DATA           a   COPY public."MeasureWeight" ("Id", "Name", "SystemKeyword", "Ratio", "DisplayOrder") FROM stdin;
    public          postgres    false    233   ��      %          0    238146    MessageTemplate 
   TABLE DATA           �   COPY public."MessageTemplate" ("Id", "Name", "BccEmailAddresses", "Subject", "EmailAccountId", "Body", "IsActive", "DelayBeforeSend", "DelayPeriodId", "AttachedDownloadId", "AllowDirectReply", "LimitedToStores") FROM stdin;
    public          postgres    false    422   �      X          0    236656    MigrationVersionInfo 
   TABLE DATA           W   COPY public."MigrationVersionInfo" ("Version", "AppliedOn", "Description") FROM stdin;
    public          postgres    false    217   [�      +          0    238179    News 
   TABLE DATA           �   COPY public."News" ("Id", "Title", "Short", "Full", "MetaKeywords", "MetaTitle", "LanguageId", "Published", "StartDateUtc", "EndDateUtc", "AllowComments", "LimitedToStores", "MetaDescription", "CreatedOnUtc") FROM stdin;
    public          postgres    false    428   K�      -          0    238194    NewsComment 
   TABLE DATA           �   COPY public."NewsComment" ("Id", "CustomerId", "NewsItemId", "StoreId", "CommentTitle", "CommentText", "IsApproved", "CreatedOnUtc") FROM stdin;
    public          postgres    false    430   h�      '          0    238155    NewsLetterSubscription 
   TABLE DATA           �   COPY public."NewsLetterSubscription" ("Id", "Email", "NewsLetterSubscriptionGuid", "Active", "StoreId", "CreatedOnUtc", "LanguageId") FROM stdin;
    public          postgres    false    424   ��      �          0    237175    Order 
   TABLE DATA           �  COPY public."Order" ("Id", "CustomOrderNumber", "BillingAddressId", "CustomerId", "PickupAddressId", "ShippingAddressId", "CustomerIp", "OrderGuid", "StoreId", "PickupInStore", "OrderStatusId", "ShippingStatusId", "PaymentStatusId", "PaymentMethodSystemName", "CustomerCurrencyCode", "CurrencyRate", "CustomerTaxDisplayTypeId", "VatNumber", "OrderSubtotalInclTax", "OrderSubtotalExclTax", "OrderSubTotalDiscountInclTax", "OrderSubTotalDiscountExclTax", "OrderShippingInclTax", "OrderShippingExclTax", "PaymentMethodAdditionalFeeInclTax", "PaymentMethodAdditionalFeeExclTax", "TaxRates", "OrderTax", "OrderDiscount", "OrderTotal", "RefundedAmount", "RewardPointsHistoryEntryId", "CheckoutAttributeDescription", "CheckoutAttributesXml", "CustomerLanguageId", "AffiliateId", "AllowStoringCreditCardNumber", "CardType", "CardName", "CardNumber", "MaskedCreditCardNumber", "CardCvv2", "CardExpirationMonth", "CardExpirationYear", "AuthorizationTransactionId", "AuthorizationTransactionCode", "AuthorizationTransactionResult", "CaptureTransactionId", "CaptureTransactionResult", "SubscriptionTransactionId", "PaidDateUtc", "ShippingMethod", "ShippingRateComputationMethodSystemName", "CustomValuesXml", "Deleted", "CreatedOnUtc", "RedeemedRewardPointsEntryId") FROM stdin;
    public          postgres    false    297   ��      �          0    237208 	   OrderItem 
   TABLE DATA           �  COPY public."OrderItem" ("Id", "OrderId", "ProductId", "OrderItemGuid", "Quantity", "UnitPriceInclTax", "UnitPriceExclTax", "PriceInclTax", "PriceExclTax", "DiscountAmountInclTax", "DiscountAmountExclTax", "OriginalProductCost", "AttributeDescription", "AttributesXml", "DownloadCount", "IsDownloadActivated", "LicenseDownloadId", "ItemWeight", "RentalStartDateUtc", "RentalEndDateUtc") FROM stdin;
    public          postgres    false    299   ��      �          0    237278 	   OrderNote 
   TABLE DATA           q   COPY public."OrderNote" ("Id", "Note", "OrderId", "DownloadId", "DisplayToCustomer", "CreatedOnUtc") FROM stdin;
    public          postgres    false    307   ܮ      7          0    238285    PermissionRecord 
   TABLE DATA           T   COPY public."PermissionRecord" ("Id", "Name", "SystemName", "Category") FROM stdin;
    public          postgres    false    440   ��      8          0    238293    PermissionRecord_Role_Mapping 
   TABLE DATA           c   COPY public."PermissionRecord_Role_Mapping" ("PermissionRecord_Id", "CustomerRole_Id") FROM stdin;
    public          postgres    false    441   ��      �          0    237772    Picture 
   TABLE DATA           ~   COPY public."Picture" ("Id", "MimeType", "SeoFilename", "AltAttribute", "TitleAttribute", "IsNew", "VirtualPath") FROM stdin;
    public          postgres    false    373   O�      �          0    237781    PictureBinary 
   TABLE DATA           J   COPY public."PictureBinary" ("Id", "PictureId", "BinaryData") FROM stdin;
    public          postgres    false    375   l�      /          0    238221    Poll 
   TABLE DATA           �   COPY public."Poll" ("Id", "Name", "LanguageId", "SystemKeyword", "Published", "ShowOnHomepage", "AllowGuestsToVote", "DisplayOrder", "LimitedToStores", "StartDateUtc", "EndDateUtc") FROM stdin;
    public          postgres    false    432   ��      1          0    238236 
   PollAnswer 
   TABLE DATA           _   COPY public."PollAnswer" ("Id", "Name", "PollId", "NumberOfVotes", "DisplayOrder") FROM stdin;
    public          postgres    false    434   ��      3          0    238251    PollVotingRecord 
   TABLE DATA           `   COPY public."PollVotingRecord" ("Id", "PollAnswerId", "CustomerId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    436   ó      �          0    236997    PredefinedProductAttributeValue 
   TABLE DATA           �   COPY public."PredefinedProductAttributeValue" ("Id", "Name", "ProductAttributeId", "PriceAdjustment", "PriceAdjustmentUsePercentage", "WeightAdjustment", "Cost", "IsPreSelected", "DisplayOrder") FROM stdin;
    public          postgres    false    269   �      �          0    237021    Product 
   TABLE DATA           �  COPY public."Product" ("Id", "Name", "MetaKeywords", "MetaTitle", "Sku", "ManufacturerPartNumber", "Gtin", "RequiredProductIds", "AllowedQuantities", "ProductTypeId", "ParentGroupedProductId", "VisibleIndividually", "ShortDescription", "FullDescription", "AdminComment", "ProductTemplateId", "VendorId", "ShowOnHomepage", "MetaDescription", "AllowCustomerReviews", "ApprovedRatingSum", "NotApprovedRatingSum", "ApprovedTotalReviews", "NotApprovedTotalReviews", "SubjectToAcl", "LimitedToStores", "IsGiftCard", "GiftCardTypeId", "OverriddenGiftCardAmount", "RequireOtherProducts", "AutomaticallyAddRequiredProducts", "IsDownload", "DownloadId", "UnlimitedDownloads", "MaxNumberOfDownloads", "DownloadExpirationDays", "DownloadActivationTypeId", "HasSampleDownload", "SampleDownloadId", "HasUserAgreement", "UserAgreementText", "IsRecurring", "RecurringCycleLength", "RecurringCyclePeriodId", "RecurringTotalCycles", "IsRental", "RentalPriceLength", "RentalPricePeriodId", "IsShipEnabled", "IsFreeShipping", "ShipSeparately", "AdditionalShippingCharge", "DeliveryDateId", "IsTaxExempt", "TaxCategoryId", "ManageInventoryMethodId", "ProductAvailabilityRangeId", "UseMultipleWarehouses", "WarehouseId", "StockQuantity", "DisplayStockAvailability", "DisplayStockQuantity", "MinStockQuantity", "LowStockActivityId", "NotifyAdminForQuantityBelow", "BackorderModeId", "AllowBackInStockSubscriptions", "OrderMinimumQuantity", "OrderMaximumQuantity", "AllowAddingOnlyExistingAttributeCombinations", "DisplayAttributeCombinationImagesOnly", "NotReturnable", "DisableBuyButton", "DisableWishlistButton", "AvailableForPreOrder", "PreOrderAvailabilityStartDateTimeUtc", "CallForPrice", "Price", "OldPrice", "ProductCost", "CustomerEntersPrice", "MinimumCustomerEnteredPrice", "MaximumCustomerEnteredPrice", "BasepriceEnabled", "BasepriceAmount", "BasepriceUnitId", "BasepriceBaseAmount", "BasepriceBaseUnitId", "MarkAsNew", "MarkAsNewStartDateTimeUtc", "MarkAsNewEndDateTimeUtc", "HasTierPrices", "HasDiscountsApplied", "Weight", "Length", "Width", "Height", "AvailableStartDateTimeUtc", "AvailableEndDateTimeUtc", "DisplayOrder", "Published", "Deleted", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    273   ��      �          0    236988    ProductAttribute 
   TABLE DATA           I   COPY public."ProductAttribute" ("Id", "Name", "Description") FROM stdin;
    public          postgres    false    267   �      �          0    237098    ProductAttributeCombination 
   TABLE DATA             COPY public."ProductAttributeCombination" ("Id", "Sku", "ManufacturerPartNumber", "Gtin", "ProductId", "AttributesXml", "StockQuantity", "AllowOutOfStockOrders", "OverriddenPrice", "NotifyAdminForQuantityBelow", "MinStockQuantity", "PictureId") FROM stdin;
    public          postgres    false    287   7�      �          0    237113 "   ProductAttributeCombinationPicture 
   TABLE DATA           r   COPY public."ProductAttributeCombinationPicture" ("Id", "ProductAttributeCombinationId", "PictureId") FROM stdin;
    public          postgres    false    289   T�      �          0    237147    ProductAttributeValue 
   TABLE DATA           U  COPY public."ProductAttributeValue" ("Id", "Name", "ColorSquaresRgb", "ProductAttributeMappingId", "AttributeValueTypeId", "AssociatedProductId", "ImageSquaresPictureId", "PriceAdjustment", "PriceAdjustmentUsePercentage", "WeightAdjustment", "Cost", "CustomerEntersQty", "Quantity", "IsPreSelected", "DisplayOrder", "PictureId") FROM stdin;
    public          postgres    false    293   q�      �          0    237162    ProductAttributeValuePicture 
   TABLE DATA           f   COPY public."ProductAttributeValuePicture" ("Id", "ProductAttributeValueId", "PictureId") FROM stdin;
    public          postgres    false    295   ��      �          0    237666    ProductAvailabilityRange 
   TABLE DATA           R   COPY public."ProductAvailabilityRange" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    358   ��      �          0    237534    ProductReview 
   TABLE DATA           �   COPY public."ProductReview" ("Id", "CustomerId", "ProductId", "StoreId", "IsApproved", "Title", "ReviewText", "ReplyText", "CustomerNotifiedOfReply", "Rating", "HelpfulYesTotal", "HelpfulNoTotal", "CreatedOnUtc") FROM stdin;
    public          postgres    false    342   �      �          0    237561    ProductReviewHelpfulness 
   TABLE DATA           i   COPY public."ProductReviewHelpfulness" ("Id", "ProductReviewId", "WasHelpful", "CustomerId") FROM stdin;
    public          postgres    false    344   �      �          0    237574     ProductReview_ReviewType_Mapping 
   TABLE DATA           o   COPY public."ProductReview_ReviewType_Mapping" ("Id", "ProductReviewId", "ReviewTypeId", "Rating") FROM stdin;
    public          postgres    false    346   $�      �          0    237012 
   ProductTag 
   TABLE DATA           4   COPY public."ProductTag" ("Id", "Name") FROM stdin;
    public          postgres    false    271   A�      �          0    237030    ProductTemplate 
   TABLE DATA           l   COPY public."ProductTemplate" ("Id", "Name", "ViewPath", "DisplayOrder", "IgnoredProductTypes") FROM stdin;
    public          postgres    false    275   ^�      �          0    237824    ProductVideo 
   TABLE DATA           V   COPY public."ProductVideo" ("Id", "VideoId", "ProductId", "DisplayOrder") FROM stdin;
    public          postgres    false    381   õ      �          0    237729    ProductWarehouseInventory 
   TABLE DATA           |   COPY public."ProductWarehouseInventory" ("Id", "ProductId", "WarehouseId", "StockQuantity", "ReservedQuantity") FROM stdin;
    public          postgres    false    367   �      �          0    237454    Product_Category_Mapping 
   TABLE DATA           z   COPY public."Product_Category_Mapping" ("Id", "CategoryId", "ProductId", "IsFeaturedProduct", "DisplayOrder") FROM stdin;
    public          postgres    false    331   ��      �          0    237498    Product_Manufacturer_Mapping 
   TABLE DATA           �   COPY public."Product_Manufacturer_Mapping" ("Id", "ManufacturerId", "ProductId", "IsFeaturedProduct", "DisplayOrder") FROM stdin;
    public          postgres    false    339   �      �          0    237796    Product_Picture_Mapping 
   TABLE DATA           c   COPY public."Product_Picture_Mapping" ("Id", "PictureId", "ProductId", "DisplayOrder") FROM stdin;
    public          postgres    false    377   7�      �          0    237126     Product_ProductAttribute_Mapping 
   TABLE DATA           B  COPY public."Product_ProductAttribute_Mapping" ("Id", "ProductAttributeId", "ProductId", "TextPrompt", "IsRequired", "AttributeControlTypeId", "DisplayOrder", "ValidationMinLength", "ValidationMaxLength", "ValidationFileAllowedExtensions", "ValidationFileMaximumSize", "DefaultValue", "ConditionAttributeXml") FROM stdin;
    public          postgres    false    291   T�      �          0    237516    Product_ProductTag_Mapping 
   TABLE DATA           U   COPY public."Product_ProductTag_Mapping" ("Product_Id", "ProductTag_Id") FROM stdin;
    public          postgres    false    340   q�      �          0    237608 &   Product_SpecificationAttribute_Mapping 
   TABLE DATA           �   COPY public."Product_SpecificationAttribute_Mapping" ("Id", "CustomValue", "ProductId", "SpecificationAttributeOptionId", "AttributeTypeId", "AllowFiltering", "ShowOnProductPage", "DisplayOrder") FROM stdin;
    public          postgres    false    350   ��      )          0    238164    QueuedEmail 
   TABLE DATA           0  COPY public."QueuedEmail" ("Id", "From", "FromName", "To", "ToName", "ReplyTo", "ReplyToName", "CC", "Bcc", "Subject", "EmailAccountId", "PriorityId", "Body", "AttachmentFilePath", "AttachmentFileName", "AttachedDownloadId", "CreatedOnUtc", "DontSendBeforeDateUtc", "SentTries", "SentOnUtc") FROM stdin;
    public          postgres    false    426   ��      �          0    237293    RecurringPayment 
   TABLE DATA           �   COPY public."RecurringPayment" ("Id", "InitialOrderId", "CycleLength", "CyclePeriodId", "TotalCycles", "StartDateUtc", "IsActive", "LastPaymentFailed", "Deleted", "CreatedOnUtc") FROM stdin;
    public          postgres    false    309   ȶ      �          0    237306    RecurringPaymentHistory 
   TABLE DATA           j   COPY public."RecurringPaymentHistory" ("Id", "RecurringPaymentId", "OrderId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    311   �      �          0    237058    RelatedProduct 
   TABLE DATA           \   COPY public."RelatedProduct" ("Id", "ProductId1", "ProductId2", "DisplayOrder") FROM stdin;
    public          postgres    false    279   �      �          0    236964    ReturnRequest 
   TABLE DATA             COPY public."ReturnRequest" ("Id", "ReasonForReturn", "RequestedAction", "CustomerId", "CustomNumber", "StoreId", "OrderItemId", "Quantity", "ReturnedQuantity", "CustomerComments", "UploadedFileId", "StaffNotes", "ReturnRequestStatusId", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    263   �      �          0    236955    ReturnRequestAction 
   TABLE DATA           M   COPY public."ReturnRequestAction" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    261   <�      �          0    236979    ReturnRequestReason 
   TABLE DATA           M   COPY public."ReturnRequestReason" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    265   ��      �          0    237065 
   ReviewType 
   TABLE DATA           z   COPY public."ReviewType" ("Id", "Name", "Description", "DisplayOrder", "VisibleToAllCustomers", "IsRequired") FROM stdin;
    public          postgres    false    281   �      �          0    237229    RewardPointsHistory 
   TABLE DATA           �   COPY public."RewardPointsHistory" ("Id", "CustomerId", "StoreId", "Points", "PointsBalance", "UsedAmount", "Message", "CreatedOnUtc", "EndDateUtc", "ValidPoints", "UsedWithOrder") FROM stdin;
    public          postgres    false    301   �      <          0    238320    ScheduleTask 
   TABLE DATA           �   COPY public."ScheduleTask" ("Id", "Name", "Type", "Seconds", "LastEnabledUtc", "Enabled", "StopOnError", "LastStartUtc", "LastEndUtc", "LastSuccessUtc") FROM stdin;
    public          postgres    false    445    �      `          0    236696 
   SearchTerm 
   TABLE DATA           K   COPY public."SearchTerm" ("Id", "Keyword", "StoreId", "Count") FROM stdin;
    public          postgres    false    225   w�      �          0    237843    Setting 
   TABLE DATA           E   COPY public."Setting" ("Id", "Name", "Value", "StoreId") FROM stdin;
    public          postgres    false    383   ��      �          0    237675    Shipment 
   TABLE DATA           �   COPY public."Shipment" ("Id", "OrderId", "TrackingNumber", "TotalWeight", "ShippedDateUtc", "DeliveryDateUtc", "ReadyForPickupDateUtc", "AdminComment", "CreatedOnUtc") FROM stdin;
    public          postgres    false    360   �      �          0    237690    ShipmentItem 
   TABLE DATA           f   COPY public."ShipmentItem" ("Id", "ShipmentId", "OrderItemId", "Quantity", "WarehouseId") FROM stdin;
    public          postgres    false    362   /�      �          0    237703    ShippingMethod 
   TABLE DATA           W   COPY public."ShippingMethod" ("Id", "Name", "Description", "DisplayOrder") FROM stdin;
    public          postgres    false    364   L�      �          0    237711    ShippingMethodRestrictions 
   TABLE DATA           Y   COPY public."ShippingMethodRestrictions" ("ShippingMethod_Id", "Country_Id") FROM stdin;
    public          postgres    false    365   ��      �          0    237319    ShoppingCartItem 
   TABLE DATA           �   COPY public."ShoppingCartItem" ("Id", "CustomerId", "ProductId", "StoreId", "ShoppingCartTypeId", "AttributesXml", "CustomerEnteredPrice", "Quantity", "RentalStartDateUtc", "RentalEndDateUtc", "CreatedOnUtc", "UpdatedOnUtc") FROM stdin;
    public          postgres    false    313   ��      �          0    237083    SpecificationAttribute 
   TABLE DATA           q   COPY public."SpecificationAttribute" ("Id", "Name", "SpecificationAttributeGroupId", "DisplayOrder") FROM stdin;
    public          postgres    false    285   ��      �          0    237074    SpecificationAttributeGroup 
   TABLE DATA           U   COPY public."SpecificationAttributeGroup" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    283   �      �          0    237593    SpecificationAttributeOption 
   TABLE DATA           �   COPY public."SpecificationAttributeOption" ("Id", "Name", "ColorSquaresRgb", "SpecificationAttributeId", "DisplayOrder") FROM stdin;
    public          postgres    false    348   5�      j          0    236741    StateProvince 
   TABLE DATA           q   COPY public."StateProvince" ("Id", "Name", "Abbreviation", "CountryId", "Published", "DisplayOrder") FROM stdin;
    public          postgres    false    235   R�      �          0    237748    StockQuantityHistory 
   TABLE DATA           �   COPY public."StockQuantityHistory" ("Id", "ProductId", "QuantityAdjustment", "StockQuantity", "Message", "CreatedOnUtc", "CombinationId", "WarehouseId") FROM stdin;
    public          postgres    false    369   _6	      �          0    237340    Store 
   TABLE DATA           +  COPY public."Store" ("Id", "Name", "Url", "Hosts", "CompanyName", "CompanyAddress", "CompanyPhoneNumber", "CompanyVat", "DefaultMetaKeywords", "DefaultMetaDescription", "DefaultTitle", "HomepageTitle", "HomepageDescription", "SslEnabled", "DefaultLanguageId", "DisplayOrder", "Deleted") FROM stdin;
    public          postgres    false    315   |6	      �          0    237349    StoreMapping 
   TABLE DATA           S   COPY public."StoreMapping" ("Id", "EntityName", "StoreId", "EntityId") FROM stdin;
    public          postgres    false    317   ,7	      >          0    238329    TaxCategory 
   TABLE DATA           E   COPY public."TaxCategory" ("Id", "Name", "DisplayOrder") FROM stdin;
    public          postgres    false    447   I7	      �          0    237629 	   TierPrice 
   TABLE DATA           �   COPY public."TierPrice" ("Id", "CustomerRoleId", "ProductId", "StoreId", "Quantity", "Price", "StartDateTimeUtc", "EndDateTimeUtc") FROM stdin;
    public          postgres    false    352   �7	      B          0    238347    Topic 
   TABLE DATA             COPY public."Topic" ("Id", "SystemName", "IncludeInSitemap", "IncludeInTopMenu", "IncludeInFooterColumn1", "IncludeInFooterColumn2", "IncludeInFooterColumn3", "DisplayOrder", "AccessibleWhenStoreClosed", "IsPasswordProtected", "Password", "Title", "Body", "Published", "TopicTemplateId", "MetaKeywords", "MetaDescription", "MetaTitle", "SubjectToAcl", "LimitedToStores") FROM stdin;
    public          postgres    false    451   �7	      @          0    238338    TopicTemplate 
   TABLE DATA           S   COPY public."TopicTemplate" ("Id", "Name", "ViewPath", "DisplayOrder") FROM stdin;
    public          postgres    false    449   M;	      :          0    238311 	   UrlRecord 
   TABLE DATA           g   COPY public."UrlRecord" ("Id", "EntityName", "Slug", "EntityId", "IsActive", "LanguageId") FROM stdin;
    public          postgres    false    443   �;	      D          0    238356    Vendor 
   TABLE DATA           M  COPY public."Vendor" ("Id", "Name", "Email", "MetaKeywords", "MetaTitle", "PageSizeOptions", "Description", "PictureId", "AddressId", "AdminComment", "Active", "Deleted", "DisplayOrder", "MetaDescription", "PageSize", "AllowCustomersToSelectPageSize", "PriceRangeFiltering", "PriceFrom", "PriceTo", "ManuallyPriceRange") FROM stdin;
    public          postgres    false    453   w<	      F          0    238365    VendorAttribute 
   TABLE DATA           q   COPY public."VendorAttribute" ("Id", "Name", "IsRequired", "AttributeControlTypeId", "DisplayOrder") FROM stdin;
    public          postgres    false    455   �<	      H          0    238374    VendorAttributeValue 
   TABLE DATA           t   COPY public."VendorAttributeValue" ("Id", "Name", "VendorAttributeId", "IsPreSelected", "DisplayOrder") FROM stdin;
    public          postgres    false    457   �<	      J          0    238389 
   VendorNote 
   TABLE DATA           P   COPY public."VendorNote" ("Id", "Note", "VendorId", "CreatedOnUtc") FROM stdin;
    public          postgres    false    459   �<	      �          0    237815    Video 
   TABLE DATA           3   COPY public."Video" ("Id", "VideoUrl") FROM stdin;
    public          postgres    false    379   �<	      �          0    237648 	   Warehouse 
   TABLE DATA           P   COPY public."Warehouse" ("Id", "Name", "AdminComment", "AddressId") FROM stdin;
    public          postgres    false    354   =	      �           0    0    AclRecord_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."AclRecord_Id_seq"', 1, false);
          public          postgres    false    437            �           0    0    ActivityLogType_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ActivityLogType_Id_seq"', 163, true);
          public          postgres    false    411            �           0    0    ActivityLog_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ActivityLog_Id_seq"', 1, false);
          public          postgres    false    413            �           0    0    AddressAttributeValue_Id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."AddressAttributeValue_Id_seq"', 1, false);
          public          postgres    false    220            �           0    0    AddressAttribute_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."AddressAttribute_Id_seq"', 1, false);
          public          postgres    false    218            �           0    0    Address_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Address_Id_seq"', 1, true);
          public          postgres    false    236            �           0    0    Affiliate_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Affiliate_Id_seq"', 1, false);
          public          postgres    false    238            �           0    0    BackInStockSubscription_Id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."BackInStockSubscription_Id_seq"', 1, false);
          public          postgres    false    276            �           0    0    BlogComment_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."BlogComment_Id_seq"', 1, false);
          public          postgres    false    324            �           0    0    BlogPost_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."BlogPost_Id_seq"', 1, false);
          public          postgres    false    322            �           0    0    Campaign_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Campaign_Id_seq"', 1, false);
          public          postgres    false    417            �           0    0    CategoryTemplate_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."CategoryTemplate_Id_seq"', 1, true);
          public          postgres    false    328            �           0    0    Category_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Category_Id_seq"', 1, false);
          public          postgres    false    326            �           0    0    CheckoutAttributeValue_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."CheckoutAttributeValue_Id_seq"', 1, false);
          public          postgres    false    258            �           0    0    CheckoutAttribute_Id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."CheckoutAttribute_Id_seq"', 1, false);
          public          postgres    false    256            �           0    0    Country_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Country_Id_seq"', 249, true);
          public          postgres    false    226            �           0    0    CrossSellProduct_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CrossSellProduct_Id_seq"', 1, false);
          public          postgres    false    332            �           0    0    Currency_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Currency_Id_seq"', 11, true);
          public          postgres    false    228            �           0    0    CustomerAttributeValue_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."CustomerAttributeValue_Id_seq"', 1, false);
          public          postgres    false    244            �           0    0    CustomerAttribute_Id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."CustomerAttribute_Id_seq"', 1, false);
          public          postgres    false    242            �           0    0    CustomerPassword_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."CustomerPassword_Id_seq"', 1, true);
          public          postgres    false    248            �           0    0    CustomerRole_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CustomerRole_Id_seq"', 5, true);
          public          postgres    false    251            �           0    0    Customer_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Customer_Id_seq"', 3, true);
          public          postgres    false    246            �           0    0    DeliveryDate_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."DeliveryDate_Id_seq"', 3, true);
          public          postgres    false    355            �           0    0    DiscountRequirement_Id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."DiscountRequirement_Id_seq"', 1, false);
          public          postgres    false    388            �           0    0    DiscountUsageHistory_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."DiscountUsageHistory_Id_seq"', 1, false);
          public          postgres    false    390            �           0    0    Discount_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Discount_Id_seq"', 1, false);
          public          postgres    false    384            �           0    0    Download_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Download_Id_seq"', 1, false);
          public          postgres    false    370            �           0    0    EmailAccount_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."EmailAccount_Id_seq"', 1, true);
          public          postgres    false    419            �           0    0 #   ExternalAuthenticationRecord_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."ExternalAuthenticationRecord_Id_seq"', 1, false);
          public          postgres    false    254            �           0    0    Forums_Forum_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Forums_Forum_Id_seq"', 1, false);
          public          postgres    false    397            �           0    0    Forums_Group_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Forums_Group_Id_seq"', 1, false);
          public          postgres    false    395            �           0    0    Forums_PostVote_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Forums_PostVote_Id_seq"', 1, false);
          public          postgres    false    403            �           0    0    Forums_Post_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Forums_Post_Id_seq"', 1, false);
          public          postgres    false    401            �           0    0    Forums_PrivateMessage_Id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Forums_PrivateMessage_Id_seq"', 1, false);
          public          postgres    false    393            �           0    0    Forums_Subscription_Id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Forums_Subscription_Id_seq"', 1, false);
          public          postgres    false    405            �           0    0    Forums_Topic_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Forums_Topic_Id_seq"', 1, false);
          public          postgres    false    399            �           0    0    GdprConsent_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."GdprConsent_Id_seq"', 1, false);
          public          postgres    false    407            �           0    0    GdprLog_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."GdprLog_Id_seq"', 1, false);
          public          postgres    false    409            �           0    0    GenericAttribute_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."GenericAttribute_Id_seq"', 1, false);
          public          postgres    false    222            �           0    0    GiftCardUsageHistory_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."GiftCardUsageHistory_Id_seq"', 1, false);
          public          postgres    false    304            �           0    0    GiftCard_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."GiftCard_Id_seq"', 1, false);
          public          postgres    false    302            �           0    0    Language_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Language_Id_seq"', 1, true);
          public          postgres    false    240            �           0    0    LocaleStringResource_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."LocaleStringResource_Id_seq"', 6721, true);
          public          postgres    false    318            �           0    0    LocalizedProperty_Id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."LocalizedProperty_Id_seq"', 1, false);
          public          postgres    false    320            �           0    0 
   Log_Id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Log_Id_seq"', 1, false);
          public          postgres    false    415            �           0    0    ManufacturerTemplate_Id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."ManufacturerTemplate_Id_seq"', 1, true);
          public          postgres    false    336            �           0    0    Manufacturer_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Manufacturer_Id_seq"', 1, false);
          public          postgres    false    334            �           0    0    MeasureDimension_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MeasureDimension_Id_seq"', 4, true);
          public          postgres    false    230            �           0    0    MeasureWeight_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."MeasureWeight_Id_seq"', 4, true);
          public          postgres    false    232            �           0    0    MessageTemplate_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MessageTemplate_Id_seq"', 49, true);
          public          postgres    false    421            �           0    0    NewsComment_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."NewsComment_Id_seq"', 1, false);
          public          postgres    false    429            �           0    0    NewsLetterSubscription_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."NewsLetterSubscription_Id_seq"', 1, false);
          public          postgres    false    423            �           0    0    News_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."News_Id_seq"', 1, false);
          public          postgres    false    427            �           0    0    OrderItem_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."OrderItem_Id_seq"', 1, false);
          public          postgres    false    298            �           0    0    OrderNote_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."OrderNote_Id_seq"', 1, false);
          public          postgres    false    306                        0    0    Order_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Order_Id_seq"', 1, false);
          public          postgres    false    296                       0    0    PermissionRecord_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."PermissionRecord_Id_seq"', 54, true);
          public          postgres    false    439                       0    0    PictureBinary_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."PictureBinary_Id_seq"', 1, false);
          public          postgres    false    374                       0    0    Picture_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Picture_Id_seq"', 1, false);
          public          postgres    false    372                       0    0    PollAnswer_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."PollAnswer_Id_seq"', 1, false);
          public          postgres    false    433                       0    0    PollVotingRecord_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."PollVotingRecord_Id_seq"', 1, false);
          public          postgres    false    435                       0    0    Poll_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Poll_Id_seq"', 1, false);
          public          postgres    false    431                       0    0 &   PredefinedProductAttributeValue_Id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PredefinedProductAttributeValue_Id_seq"', 1, false);
          public          postgres    false    268                       0    0 )   ProductAttributeCombinationPicture_Id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."ProductAttributeCombinationPicture_Id_seq"', 1, false);
          public          postgres    false    288            	           0    0 "   ProductAttributeCombination_Id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."ProductAttributeCombination_Id_seq"', 1, false);
          public          postgres    false    286            
           0    0 #   ProductAttributeValuePicture_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."ProductAttributeValuePicture_Id_seq"', 1, false);
          public          postgres    false    294                       0    0    ProductAttributeValue_Id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."ProductAttributeValue_Id_seq"', 1, false);
          public          postgres    false    292                       0    0    ProductAttribute_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProductAttribute_Id_seq"', 1, false);
          public          postgres    false    266                       0    0    ProductAvailabilityRange_Id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."ProductAvailabilityRange_Id_seq"', 3, true);
          public          postgres    false    357                       0    0    ProductReviewHelpfulness_Id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."ProductReviewHelpfulness_Id_seq"', 1, false);
          public          postgres    false    343                       0    0    ProductReview_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ProductReview_Id_seq"', 1, false);
          public          postgres    false    341                       0    0 '   ProductReview_ReviewType_Mapping_Id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ProductReview_ReviewType_Mapping_Id_seq"', 1, false);
          public          postgres    false    345                       0    0    ProductTag_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ProductTag_Id_seq"', 1, false);
          public          postgres    false    270                       0    0    ProductTemplate_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."ProductTemplate_Id_seq"', 2, true);
          public          postgres    false    274                       0    0    ProductVideo_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ProductVideo_Id_seq"', 1, false);
          public          postgres    false    380                       0    0     ProductWarehouseInventory_Id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."ProductWarehouseInventory_Id_seq"', 1, false);
          public          postgres    false    366                       0    0    Product_Category_Mapping_Id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Product_Category_Mapping_Id_seq"', 1, false);
          public          postgres    false    330                       0    0    Product_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Product_Id_seq"', 1, false);
          public          postgres    false    272                       0    0 #   Product_Manufacturer_Mapping_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Product_Manufacturer_Mapping_Id_seq"', 1, false);
          public          postgres    false    338                       0    0    Product_Picture_Mapping_Id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Product_Picture_Mapping_Id_seq"', 1, false);
          public          postgres    false    376                       0    0 '   Product_ProductAttribute_Mapping_Id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."Product_ProductAttribute_Mapping_Id_seq"', 1, false);
          public          postgres    false    290                       0    0 -   Product_SpecificationAttribute_Mapping_Id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."Product_SpecificationAttribute_Mapping_Id_seq"', 1, false);
          public          postgres    false    349                       0    0    QueuedEmail_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."QueuedEmail_Id_seq"', 1, false);
          public          postgres    false    425                       0    0    RecurringPaymentHistory_Id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."RecurringPaymentHistory_Id_seq"', 1, false);
          public          postgres    false    310                       0    0    RecurringPayment_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."RecurringPayment_Id_seq"', 1, false);
          public          postgres    false    308                       0    0    RelatedProduct_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."RelatedProduct_Id_seq"', 1, false);
          public          postgres    false    278                       0    0    ReturnRequestAction_Id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ReturnRequestAction_Id_seq"', 3, true);
          public          postgres    false    260                        0    0    ReturnRequestReason_Id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ReturnRequestReason_Id_seq"', 3, true);
          public          postgres    false    264            !           0    0    ReturnRequest_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ReturnRequest_Id_seq"', 1, false);
          public          postgres    false    262            "           0    0    ReviewType_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ReviewType_Id_seq"', 1, false);
          public          postgres    false    280            #           0    0    RewardPointsHistory_Id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."RewardPointsHistory_Id_seq"', 1, false);
          public          postgres    false    300            $           0    0    ScheduleTask_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ScheduleTask_Id_seq"', 8, true);
          public          postgres    false    444            %           0    0    SearchTerm_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SearchTerm_Id_seq"', 1, false);
          public          postgres    false    224            &           0    0    Setting_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Setting_Id_seq"', 679, true);
          public          postgres    false    382            '           0    0    ShipmentItem_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ShipmentItem_Id_seq"', 1, false);
          public          postgres    false    361            (           0    0    Shipment_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Shipment_Id_seq"', 1, false);
          public          postgres    false    359            )           0    0    ShippingMethod_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ShippingMethod_Id_seq"', 3, true);
          public          postgres    false    363            *           0    0    ShoppingCartItem_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ShoppingCartItem_Id_seq"', 1, false);
          public          postgres    false    312            +           0    0 "   SpecificationAttributeGroup_Id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SpecificationAttributeGroup_Id_seq"', 1, false);
          public          postgres    false    282            ,           0    0 #   SpecificationAttributeOption_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."SpecificationAttributeOption_Id_seq"', 1, false);
          public          postgres    false    347            -           0    0    SpecificationAttribute_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."SpecificationAttribute_Id_seq"', 1, false);
          public          postgres    false    284            .           0    0    StateProvince_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."StateProvince_Id_seq"', 1847, true);
          public          postgres    false    234            /           0    0    StockQuantityHistory_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."StockQuantityHistory_Id_seq"', 1, false);
          public          postgres    false    368            0           0    0    StoreMapping_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."StoreMapping_Id_seq"', 1, false);
          public          postgres    false    316            1           0    0    Store_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Store_Id_seq"', 1, true);
          public          postgres    false    314            2           0    0    TaxCategory_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TaxCategory_Id_seq"', 5, true);
          public          postgres    false    446            3           0    0    TierPrice_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."TierPrice_Id_seq"', 1, false);
          public          postgres    false    351            4           0    0    TopicTemplate_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."TopicTemplate_Id_seq"', 1, true);
          public          postgres    false    448            5           0    0    Topic_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Topic_Id_seq"', 12, true);
          public          postgres    false    450            6           0    0    UrlRecord_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UrlRecord_Id_seq"', 12, true);
          public          postgres    false    442            7           0    0    VendorAttributeValue_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."VendorAttributeValue_Id_seq"', 1, false);
          public          postgres    false    456            8           0    0    VendorAttribute_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."VendorAttribute_Id_seq"', 1, false);
          public          postgres    false    454            9           0    0    VendorNote_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."VendorNote_Id_seq"', 1, false);
          public          postgres    false    458            :           0    0    Vendor_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Vendor_Id_seq"', 1, false);
          public          postgres    false    452            ;           0    0    Video_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Video_Id_seq"', 1, false);
          public          postgres    false    378            <           0    0    Warehouse_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Warehouse_Id_seq"', 1, false);
          public          postgres    false    353            8           2606    238277    AclRecord PK_AclRecord 
   CONSTRAINT     Z   ALTER TABLE ONLY public."AclRecord"
    ADD CONSTRAINT "PK_AclRecord" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."AclRecord" DROP CONSTRAINT "PK_AclRecord";
       public            postgres    false    438                       2606    238099    ActivityLog PK_ActivityLog 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ActivityLog"
    ADD CONSTRAINT "PK_ActivityLog" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."ActivityLog" DROP CONSTRAINT "PK_ActivityLog";
       public            postgres    false    414                       2606    238090 "   ActivityLogType PK_ActivityLogType 
   CONSTRAINT     f   ALTER TABLE ONLY public."ActivityLogType"
    ADD CONSTRAINT "PK_ActivityLogType" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."ActivityLogType" DROP CONSTRAINT "PK_ActivityLogType";
       public            postgres    false    412            �           2606    236763    Address PK_Address 
   CONSTRAINT     V   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "PK_Address" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "PK_Address";
       public            postgres    false    237            �           2606    236670 $   AddressAttribute PK_AddressAttribute 
   CONSTRAINT     h   ALTER TABLE ONLY public."AddressAttribute"
    ADD CONSTRAINT "PK_AddressAttribute" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AddressAttribute" DROP CONSTRAINT "PK_AddressAttribute";
       public            postgres    false    219            �           2606    236679 .   AddressAttributeValue PK_AddressAttributeValue 
   CONSTRAINT     r   ALTER TABLE ONLY public."AddressAttributeValue"
    ADD CONSTRAINT "PK_AddressAttributeValue" PRIMARY KEY ("Id");
 \   ALTER TABLE ONLY public."AddressAttributeValue" DROP CONSTRAINT "PK_AddressAttributeValue";
       public            postgres    false    221            �           2606    236784    Affiliate PK_Affiliate 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Affiliate"
    ADD CONSTRAINT "PK_Affiliate" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Affiliate" DROP CONSTRAINT "PK_Affiliate";
       public            postgres    false    239                       2606    237044 2   BackInStockSubscription PK_BackInStockSubscription 
   CONSTRAINT     v   ALTER TABLE ONLY public."BackInStockSubscription"
    ADD CONSTRAINT "PK_BackInStockSubscription" PRIMARY KEY ("Id");
 `   ALTER TABLE ONLY public."BackInStockSubscription" DROP CONSTRAINT "PK_BackInStockSubscription";
       public            postgres    false    277            j           2606    237416    BlogComment PK_BlogComment 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BlogComment"
    ADD CONSTRAINT "PK_BlogComment" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."BlogComment" DROP CONSTRAINT "PK_BlogComment";
       public            postgres    false    325            e           2606    237401    BlogPost PK_BlogPost 
   CONSTRAINT     X   ALTER TABLE ONLY public."BlogPost"
    ADD CONSTRAINT "PK_BlogPost" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."BlogPost" DROP CONSTRAINT "PK_BlogPost";
       public            postgres    false    323                       2606    238135    Campaign PK_Campaign 
   CONSTRAINT     X   ALTER TABLE ONLY public."Campaign"
    ADD CONSTRAINT "PK_Campaign" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Campaign" DROP CONSTRAINT "PK_Campaign";
       public            postgres    false    418            q           2606    237443    Category PK_Category 
   CONSTRAINT     X   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "PK_Category" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "PK_Category";
       public            postgres    false    327            s           2606    237452 $   CategoryTemplate PK_CategoryTemplate 
   CONSTRAINT     h   ALTER TABLE ONLY public."CategoryTemplate"
    ADD CONSTRAINT "PK_CategoryTemplate" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."CategoryTemplate" DROP CONSTRAINT "PK_CategoryTemplate";
       public            postgres    false    329            �           2606    236938 &   CheckoutAttribute PK_CheckoutAttribute 
   CONSTRAINT     j   ALTER TABLE ONLY public."CheckoutAttribute"
    ADD CONSTRAINT "PK_CheckoutAttribute" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."CheckoutAttribute" DROP CONSTRAINT "PK_CheckoutAttribute";
       public            postgres    false    257            �           2606    236947 0   CheckoutAttributeValue PK_CheckoutAttributeValue 
   CONSTRAINT     t   ALTER TABLE ONLY public."CheckoutAttributeValue"
    ADD CONSTRAINT "PK_CheckoutAttributeValue" PRIMARY KEY ("Id");
 ^   ALTER TABLE ONLY public."CheckoutAttributeValue" DROP CONSTRAINT "PK_CheckoutAttributeValue";
       public            postgres    false    259            �           2606    236712    Country PK_Country 
   CONSTRAINT     V   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "PK_Country" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Country" DROP CONSTRAINT "PK_Country";
       public            postgres    false    227            |           2606    237478 $   CrossSellProduct PK_CrossSellProduct 
   CONSTRAINT     h   ALTER TABLE ONLY public."CrossSellProduct"
    ADD CONSTRAINT "PK_CrossSellProduct" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."CrossSellProduct" DROP CONSTRAINT "PK_CrossSellProduct";
       public            postgres    false    333            �           2606    236721    Currency PK_Currency 
   CONSTRAINT     X   ALTER TABLE ONLY public."Currency"
    ADD CONSTRAINT "PK_Currency" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Currency" DROP CONSTRAINT "PK_Currency";
       public            postgres    false    229            �           2606    236832    Customer PK_Customer 
   CONSTRAINT     X   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "PK_Customer" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "PK_Customer";
       public            postgres    false    247            �           2606    236876 &   CustomerAddresses PK_CustomerAddresses 
   CONSTRAINT     �   ALTER TABLE ONLY public."CustomerAddresses"
    ADD CONSTRAINT "PK_CustomerAddresses" PRIMARY KEY ("Address_Id", "Customer_Id");
 T   ALTER TABLE ONLY public."CustomerAddresses" DROP CONSTRAINT "PK_CustomerAddresses";
       public            postgres    false    250    250            �           2606    236808 &   CustomerAttribute PK_CustomerAttribute 
   CONSTRAINT     j   ALTER TABLE ONLY public."CustomerAttribute"
    ADD CONSTRAINT "PK_CustomerAttribute" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."CustomerAttribute" DROP CONSTRAINT "PK_CustomerAttribute";
       public            postgres    false    243            �           2606    236817 0   CustomerAttributeValue PK_CustomerAttributeValue 
   CONSTRAINT     t   ALTER TABLE ONLY public."CustomerAttributeValue"
    ADD CONSTRAINT "PK_CustomerAttributeValue" PRIMARY KEY ("Id");
 ^   ALTER TABLE ONLY public."CustomerAttributeValue" DROP CONSTRAINT "PK_CustomerAttributeValue";
       public            postgres    false    245            �           2606    236865 $   CustomerPassword PK_CustomerPassword 
   CONSTRAINT     h   ALTER TABLE ONLY public."CustomerPassword"
    ADD CONSTRAINT "PK_CustomerPassword" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."CustomerPassword" DROP CONSTRAINT "PK_CustomerPassword";
       public            postgres    false    249            �           2606    236897    CustomerRole PK_CustomerRole 
   CONSTRAINT     `   ALTER TABLE ONLY public."CustomerRole"
    ADD CONSTRAINT "PK_CustomerRole" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."CustomerRole" DROP CONSTRAINT "PK_CustomerRole";
       public            postgres    false    252            �           2606    236902 >   Customer_CustomerRole_Mapping PK_Customer_CustomerRole_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping"
    ADD CONSTRAINT "PK_Customer_CustomerRole_Mapping" PRIMARY KEY ("Customer_Id", "CustomerRole_Id");
 l   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping" DROP CONSTRAINT "PK_Customer_CustomerRole_Mapping";
       public            postgres    false    253    253            �           2606    237664    DeliveryDate PK_DeliveryDate 
   CONSTRAINT     `   ALTER TABLE ONLY public."DeliveryDate"
    ADD CONSTRAINT "PK_DeliveryDate" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."DeliveryDate" DROP CONSTRAINT "PK_DeliveryDate";
       public            postgres    false    356            �           2606    237859    Discount PK_Discount 
   CONSTRAINT     X   ALTER TABLE ONLY public."Discount"
    ADD CONSTRAINT "PK_Discount" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Discount" DROP CONSTRAINT "PK_Discount";
       public            postgres    false    385            �           2606    237902 *   DiscountRequirement PK_DiscountRequirement 
   CONSTRAINT     n   ALTER TABLE ONLY public."DiscountRequirement"
    ADD CONSTRAINT "PK_DiscountRequirement" PRIMARY KEY ("Id");
 X   ALTER TABLE ONLY public."DiscountRequirement" DROP CONSTRAINT "PK_DiscountRequirement";
       public            postgres    false    389            �           2606    237921 ,   DiscountUsageHistory PK_DiscountUsageHistory 
   CONSTRAINT     p   ALTER TABLE ONLY public."DiscountUsageHistory"
    ADD CONSTRAINT "PK_DiscountUsageHistory" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."DiscountUsageHistory" DROP CONSTRAINT "PK_DiscountUsageHistory";
       public            postgres    false    391            �           2606    237864 <   Discount_AppliedToCategories PK_Discount_AppliedToCategories 
   CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToCategories"
    ADD CONSTRAINT "PK_Discount_AppliedToCategories" PRIMARY KEY ("Discount_Id", "Category_Id");
 j   ALTER TABLE ONLY public."Discount_AppliedToCategories" DROP CONSTRAINT "PK_Discount_AppliedToCategories";
       public            postgres    false    386    386            �           2606    237938 B   Discount_AppliedToManufacturers PK_Discount_AppliedToManufacturers 
   CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToManufacturers"
    ADD CONSTRAINT "PK_Discount_AppliedToManufacturers" PRIMARY KEY ("Discount_Id", "Manufacturer_Id");
 p   ALTER TABLE ONLY public."Discount_AppliedToManufacturers" DROP CONSTRAINT "PK_Discount_AppliedToManufacturers";
       public            postgres    false    392    392            �           2606    237881 8   Discount_AppliedToProducts PK_Discount_AppliedToProducts 
   CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToProducts"
    ADD CONSTRAINT "PK_Discount_AppliedToProducts" PRIMARY KEY ("Discount_Id", "Product_Id");
 f   ALTER TABLE ONLY public."Discount_AppliedToProducts" DROP CONSTRAINT "PK_Discount_AppliedToProducts";
       public            postgres    false    387    387            �           2606    237770    Download PK_Download 
   CONSTRAINT     X   ALTER TABLE ONLY public."Download"
    ADD CONSTRAINT "PK_Download" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Download" DROP CONSTRAINT "PK_Download";
       public            postgres    false    371                       2606    238144    EmailAccount PK_EmailAccount 
   CONSTRAINT     `   ALTER TABLE ONLY public."EmailAccount"
    ADD CONSTRAINT "PK_EmailAccount" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."EmailAccount" DROP CONSTRAINT "PK_EmailAccount";
       public            postgres    false    420            �           2606    236923 <   ExternalAuthenticationRecord PK_ExternalAuthenticationRecord 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExternalAuthenticationRecord"
    ADD CONSTRAINT "PK_ExternalAuthenticationRecord" PRIMARY KEY ("Id");
 j   ALTER TABLE ONLY public."ExternalAuthenticationRecord" DROP CONSTRAINT "PK_ExternalAuthenticationRecord";
       public            postgres    false    255            �           2606    237989    Forums_Forum PK_Forums_Forum 
   CONSTRAINT     `   ALTER TABLE ONLY public."Forums_Forum"
    ADD CONSTRAINT "PK_Forums_Forum" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."Forums_Forum" DROP CONSTRAINT "PK_Forums_Forum";
       public            postgres    false    398            �           2606    237980    Forums_Group PK_Forums_Group 
   CONSTRAINT     `   ALTER TABLE ONLY public."Forums_Group"
    ADD CONSTRAINT "PK_Forums_Group" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."Forums_Group" DROP CONSTRAINT "PK_Forums_Group";
       public            postgres    false    396            �           2606    238025    Forums_Post PK_Forums_Post 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Forums_Post"
    ADD CONSTRAINT "PK_Forums_Post" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."Forums_Post" DROP CONSTRAINT "PK_Forums_Post";
       public            postgres    false    402                        2606    238044 "   Forums_PostVote PK_Forums_PostVote 
   CONSTRAINT     f   ALTER TABLE ONLY public."Forums_PostVote"
    ADD CONSTRAINT "PK_Forums_PostVote" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."Forums_PostVote" DROP CONSTRAINT "PK_Forums_PostVote";
       public            postgres    false    404            �           2606    237959 .   Forums_PrivateMessage PK_Forums_PrivateMessage 
   CONSTRAINT     r   ALTER TABLE ONLY public."Forums_PrivateMessage"
    ADD CONSTRAINT "PK_Forums_PrivateMessage" PRIMARY KEY ("Id");
 \   ALTER TABLE ONLY public."Forums_PrivateMessage" DROP CONSTRAINT "PK_Forums_PrivateMessage";
       public            postgres    false    394                       2606    238057 *   Forums_Subscription PK_Forums_Subscription 
   CONSTRAINT     n   ALTER TABLE ONLY public."Forums_Subscription"
    ADD CONSTRAINT "PK_Forums_Subscription" PRIMARY KEY ("Id");
 X   ALTER TABLE ONLY public."Forums_Subscription" DROP CONSTRAINT "PK_Forums_Subscription";
       public            postgres    false    406            �           2606    238004    Forums_Topic PK_Forums_Topic 
   CONSTRAINT     `   ALTER TABLE ONLY public."Forums_Topic"
    ADD CONSTRAINT "PK_Forums_Topic" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."Forums_Topic" DROP CONSTRAINT "PK_Forums_Topic";
       public            postgres    false    400                       2606    238072    GdprConsent PK_GdprConsent 
   CONSTRAINT     ^   ALTER TABLE ONLY public."GdprConsent"
    ADD CONSTRAINT "PK_GdprConsent" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."GdprConsent" DROP CONSTRAINT "PK_GdprConsent";
       public            postgres    false    408            	           2606    238081    GdprLog PK_GdprLog 
   CONSTRAINT     V   ALTER TABLE ONLY public."GdprLog"
    ADD CONSTRAINT "PK_GdprLog" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."GdprLog" DROP CONSTRAINT "PK_GdprLog";
       public            postgres    false    410            �           2606    236694 $   GenericAttribute PK_GenericAttribute 
   CONSTRAINT     h   ALTER TABLE ONLY public."GenericAttribute"
    ADD CONSTRAINT "PK_GenericAttribute" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."GenericAttribute" DROP CONSTRAINT "PK_GenericAttribute";
       public            postgres    false    223            C           2606    237251    GiftCard PK_GiftCard 
   CONSTRAINT     X   ALTER TABLE ONLY public."GiftCard"
    ADD CONSTRAINT "PK_GiftCard" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."GiftCard" DROP CONSTRAINT "PK_GiftCard";
       public            postgres    false    303            G           2606    237264 ,   GiftCardUsageHistory PK_GiftCardUsageHistory 
   CONSTRAINT     p   ALTER TABLE ONLY public."GiftCardUsageHistory"
    ADD CONSTRAINT "PK_GiftCardUsageHistory" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."GiftCardUsageHistory" DROP CONSTRAINT "PK_GiftCardUsageHistory";
       public            postgres    false    305            �           2606    236799    Language PK_Language 
   CONSTRAINT     X   ALTER TABLE ONLY public."Language"
    ADD CONSTRAINT "PK_Language" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Language" DROP CONSTRAINT "PK_Language";
       public            postgres    false    241            _           2606    237371 ,   LocaleStringResource PK_LocaleStringResource 
   CONSTRAINT     p   ALTER TABLE ONLY public."LocaleStringResource"
    ADD CONSTRAINT "PK_LocaleStringResource" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."LocaleStringResource" DROP CONSTRAINT "PK_LocaleStringResource";
       public            postgres    false    319            b           2606    237386 &   LocalizedProperty PK_LocalizedProperty 
   CONSTRAINT     j   ALTER TABLE ONLY public."LocalizedProperty"
    ADD CONSTRAINT "PK_LocalizedProperty" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."LocalizedProperty" DROP CONSTRAINT "PK_LocalizedProperty";
       public            postgres    false    321                       2606    238120 
   Log PK_Log 
   CONSTRAINT     N   ALTER TABLE ONLY public."Log"
    ADD CONSTRAINT "PK_Log" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public."Log" DROP CONSTRAINT "PK_Log";
       public            postgres    false    416            �           2606    237487    Manufacturer PK_Manufacturer 
   CONSTRAINT     `   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "PK_Manufacturer" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "PK_Manufacturer";
       public            postgres    false    335            �           2606    237496 ,   ManufacturerTemplate PK_ManufacturerTemplate 
   CONSTRAINT     p   ALTER TABLE ONLY public."ManufacturerTemplate"
    ADD CONSTRAINT "PK_ManufacturerTemplate" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."ManufacturerTemplate" DROP CONSTRAINT "PK_ManufacturerTemplate";
       public            postgres    false    337            �           2606    236730 $   MeasureDimension PK_MeasureDimension 
   CONSTRAINT     h   ALTER TABLE ONLY public."MeasureDimension"
    ADD CONSTRAINT "PK_MeasureDimension" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."MeasureDimension" DROP CONSTRAINT "PK_MeasureDimension";
       public            postgres    false    231            �           2606    236739    MeasureWeight PK_MeasureWeight 
   CONSTRAINT     b   ALTER TABLE ONLY public."MeasureWeight"
    ADD CONSTRAINT "PK_MeasureWeight" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."MeasureWeight" DROP CONSTRAINT "PK_MeasureWeight";
       public            postgres    false    233                       2606    238153 "   MessageTemplate PK_MessageTemplate 
   CONSTRAINT     f   ALTER TABLE ONLY public."MessageTemplate"
    ADD CONSTRAINT "PK_MessageTemplate" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."MessageTemplate" DROP CONSTRAINT "PK_MessageTemplate";
       public            postgres    false    422            %           2606    238186    News PK_News 
   CONSTRAINT     P   ALTER TABLE ONLY public."News"
    ADD CONSTRAINT "PK_News" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public."News" DROP CONSTRAINT "PK_News";
       public            postgres    false    428            *           2606    238201    NewsComment PK_NewsComment 
   CONSTRAINT     ^   ALTER TABLE ONLY public."NewsComment"
    ADD CONSTRAINT "PK_NewsComment" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."NewsComment" DROP CONSTRAINT "PK_NewsComment";
       public            postgres    false    430                       2606    238162 0   NewsLetterSubscription PK_NewsLetterSubscription 
   CONSTRAINT     t   ALTER TABLE ONLY public."NewsLetterSubscription"
    ADD CONSTRAINT "PK_NewsLetterSubscription" PRIMARY KEY ("Id");
 ^   ALTER TABLE ONLY public."NewsLetterSubscription" DROP CONSTRAINT "PK_NewsLetterSubscription";
       public            postgres    false    424            9           2606    237182    Order PK_Order 
   CONSTRAINT     R   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "PK_Order" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "PK_Order";
       public            postgres    false    297            =           2606    237215    OrderItem PK_OrderItem 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OrderItem"
    ADD CONSTRAINT "PK_OrderItem" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."OrderItem" DROP CONSTRAINT "PK_OrderItem";
       public            postgres    false    299            J           2606    237285    OrderNote PK_OrderNote 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OrderNote"
    ADD CONSTRAINT "PK_OrderNote" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."OrderNote" DROP CONSTRAINT "PK_OrderNote";
       public            postgres    false    307            :           2606    238292 $   PermissionRecord PK_PermissionRecord 
   CONSTRAINT     h   ALTER TABLE ONLY public."PermissionRecord"
    ADD CONSTRAINT "PK_PermissionRecord" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."PermissionRecord" DROP CONSTRAINT "PK_PermissionRecord";
       public            postgres    false    440            >           2606    238297 >   PermissionRecord_Role_Mapping PK_PermissionRecord_Role_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping"
    ADD CONSTRAINT "PK_PermissionRecord_Role_Mapping" PRIMARY KEY ("PermissionRecord_Id", "CustomerRole_Id");
 l   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping" DROP CONSTRAINT "PK_PermissionRecord_Role_Mapping";
       public            postgres    false    441    441            �           2606    237779    Picture PK_Picture 
   CONSTRAINT     V   ALTER TABLE ONLY public."Picture"
    ADD CONSTRAINT "PK_Picture" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Picture" DROP CONSTRAINT "PK_Picture";
       public            postgres    false    373            �           2606    237788    PictureBinary PK_PictureBinary 
   CONSTRAINT     b   ALTER TABLE ONLY public."PictureBinary"
    ADD CONSTRAINT "PK_PictureBinary" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."PictureBinary" DROP CONSTRAINT "PK_PictureBinary";
       public            postgres    false    375            -           2606    238228    Poll PK_Poll 
   CONSTRAINT     P   ALTER TABLE ONLY public."Poll"
    ADD CONSTRAINT "PK_Poll" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public."Poll" DROP CONSTRAINT "PK_Poll";
       public            postgres    false    432            0           2606    238243    PollAnswer PK_PollAnswer 
   CONSTRAINT     \   ALTER TABLE ONLY public."PollAnswer"
    ADD CONSTRAINT "PK_PollAnswer" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."PollAnswer" DROP CONSTRAINT "PK_PollAnswer";
       public            postgres    false    434            4           2606    238256 $   PollVotingRecord PK_PollVotingRecord 
   CONSTRAINT     h   ALTER TABLE ONLY public."PollVotingRecord"
    ADD CONSTRAINT "PK_PollVotingRecord" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."PollVotingRecord" DROP CONSTRAINT "PK_PollVotingRecord";
       public            postgres    false    436            �           2606    237004 B   PredefinedProductAttributeValue PK_PredefinedProductAttributeValue 
   CONSTRAINT     �   ALTER TABLE ONLY public."PredefinedProductAttributeValue"
    ADD CONSTRAINT "PK_PredefinedProductAttributeValue" PRIMARY KEY ("Id");
 p   ALTER TABLE ONLY public."PredefinedProductAttributeValue" DROP CONSTRAINT "PK_PredefinedProductAttributeValue";
       public            postgres    false    269                       2606    237028    Product PK_Product 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "PK_Product" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "PK_Product";
       public            postgres    false    273            �           2606    236995 $   ProductAttribute PK_ProductAttribute 
   CONSTRAINT     h   ALTER TABLE ONLY public."ProductAttribute"
    ADD CONSTRAINT "PK_ProductAttribute" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."ProductAttribute" DROP CONSTRAINT "PK_ProductAttribute";
       public            postgres    false    267            #           2606    237105 :   ProductAttributeCombination PK_ProductAttributeCombination 
   CONSTRAINT     ~   ALTER TABLE ONLY public."ProductAttributeCombination"
    ADD CONSTRAINT "PK_ProductAttributeCombination" PRIMARY KEY ("Id");
 h   ALTER TABLE ONLY public."ProductAttributeCombination" DROP CONSTRAINT "PK_ProductAttributeCombination";
       public            postgres    false    287            &           2606    237118 H   ProductAttributeCombinationPicture PK_ProductAttributeCombinationPicture 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProductAttributeCombinationPicture"
    ADD CONSTRAINT "PK_ProductAttributeCombinationPicture" PRIMARY KEY ("Id");
 v   ALTER TABLE ONLY public."ProductAttributeCombinationPicture" DROP CONSTRAINT "PK_ProductAttributeCombinationPicture";
       public            postgres    false    289            /           2606    237154 .   ProductAttributeValue PK_ProductAttributeValue 
   CONSTRAINT     r   ALTER TABLE ONLY public."ProductAttributeValue"
    ADD CONSTRAINT "PK_ProductAttributeValue" PRIMARY KEY ("Id");
 \   ALTER TABLE ONLY public."ProductAttributeValue" DROP CONSTRAINT "PK_ProductAttributeValue";
       public            postgres    false    293            2           2606    237167 <   ProductAttributeValuePicture PK_ProductAttributeValuePicture 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProductAttributeValuePicture"
    ADD CONSTRAINT "PK_ProductAttributeValuePicture" PRIMARY KEY ("Id");
 j   ALTER TABLE ONLY public."ProductAttributeValuePicture" DROP CONSTRAINT "PK_ProductAttributeValuePicture";
       public            postgres    false    295            �           2606    237673 4   ProductAvailabilityRange PK_ProductAvailabilityRange 
   CONSTRAINT     x   ALTER TABLE ONLY public."ProductAvailabilityRange"
    ADD CONSTRAINT "PK_ProductAvailabilityRange" PRIMARY KEY ("Id");
 b   ALTER TABLE ONLY public."ProductAvailabilityRange" DROP CONSTRAINT "PK_ProductAvailabilityRange";
       public            postgres    false    358            �           2606    237541    ProductReview PK_ProductReview 
   CONSTRAINT     b   ALTER TABLE ONLY public."ProductReview"
    ADD CONSTRAINT "PK_ProductReview" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."ProductReview" DROP CONSTRAINT "PK_ProductReview";
       public            postgres    false    342            �           2606    237566 4   ProductReviewHelpfulness PK_ProductReviewHelpfulness 
   CONSTRAINT     x   ALTER TABLE ONLY public."ProductReviewHelpfulness"
    ADD CONSTRAINT "PK_ProductReviewHelpfulness" PRIMARY KEY ("Id");
 b   ALTER TABLE ONLY public."ProductReviewHelpfulness" DROP CONSTRAINT "PK_ProductReviewHelpfulness";
       public            postgres    false    344            �           2606    237579 D   ProductReview_ReviewType_Mapping PK_ProductReview_ReviewType_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping"
    ADD CONSTRAINT "PK_ProductReview_ReviewType_Mapping" PRIMARY KEY ("Id");
 r   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping" DROP CONSTRAINT "PK_ProductReview_ReviewType_Mapping";
       public            postgres    false    346                       2606    237019    ProductTag PK_ProductTag 
   CONSTRAINT     \   ALTER TABLE ONLY public."ProductTag"
    ADD CONSTRAINT "PK_ProductTag" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."ProductTag" DROP CONSTRAINT "PK_ProductTag";
       public            postgres    false    271                       2606    237037 "   ProductTemplate PK_ProductTemplate 
   CONSTRAINT     f   ALTER TABLE ONLY public."ProductTemplate"
    ADD CONSTRAINT "PK_ProductTemplate" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."ProductTemplate" DROP CONSTRAINT "PK_ProductTemplate";
       public            postgres    false    275            �           2606    237829    ProductVideo PK_ProductVideo 
   CONSTRAINT     `   ALTER TABLE ONLY public."ProductVideo"
    ADD CONSTRAINT "PK_ProductVideo" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ProductVideo" DROP CONSTRAINT "PK_ProductVideo";
       public            postgres    false    381            �           2606    237734 6   ProductWarehouseInventory PK_ProductWarehouseInventory 
   CONSTRAINT     z   ALTER TABLE ONLY public."ProductWarehouseInventory"
    ADD CONSTRAINT "PK_ProductWarehouseInventory" PRIMARY KEY ("Id");
 d   ALTER TABLE ONLY public."ProductWarehouseInventory" DROP CONSTRAINT "PK_ProductWarehouseInventory";
       public            postgres    false    367            z           2606    237459 4   Product_Category_Mapping PK_Product_Category_Mapping 
   CONSTRAINT     x   ALTER TABLE ONLY public."Product_Category_Mapping"
    ADD CONSTRAINT "PK_Product_Category_Mapping" PRIMARY KEY ("Id");
 b   ALTER TABLE ONLY public."Product_Category_Mapping" DROP CONSTRAINT "PK_Product_Category_Mapping";
       public            postgres    false    331            �           2606    237503 <   Product_Manufacturer_Mapping PK_Product_Manufacturer_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."Product_Manufacturer_Mapping"
    ADD CONSTRAINT "PK_Product_Manufacturer_Mapping" PRIMARY KEY ("Id");
 j   ALTER TABLE ONLY public."Product_Manufacturer_Mapping" DROP CONSTRAINT "PK_Product_Manufacturer_Mapping";
       public            postgres    false    339            �           2606    237801 2   Product_Picture_Mapping PK_Product_Picture_Mapping 
   CONSTRAINT     v   ALTER TABLE ONLY public."Product_Picture_Mapping"
    ADD CONSTRAINT "PK_Product_Picture_Mapping" PRIMARY KEY ("Id");
 `   ALTER TABLE ONLY public."Product_Picture_Mapping" DROP CONSTRAINT "PK_Product_Picture_Mapping";
       public            postgres    false    377            +           2606    237133 D   Product_ProductAttribute_Mapping PK_Product_ProductAttribute_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping"
    ADD CONSTRAINT "PK_Product_ProductAttribute_Mapping" PRIMARY KEY ("Id");
 r   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping" DROP CONSTRAINT "PK_Product_ProductAttribute_Mapping";
       public            postgres    false    291            �           2606    237520 8   Product_ProductTag_Mapping PK_Product_ProductTag_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductTag_Mapping"
    ADD CONSTRAINT "PK_Product_ProductTag_Mapping" PRIMARY KEY ("Product_Id", "ProductTag_Id");
 f   ALTER TABLE ONLY public."Product_ProductTag_Mapping" DROP CONSTRAINT "PK_Product_ProductTag_Mapping";
       public            postgres    false    340    340            �           2606    237615 P   Product_SpecificationAttribute_Mapping PK_Product_SpecificationAttribute_Mapping 
   CONSTRAINT     �   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping"
    ADD CONSTRAINT "PK_Product_SpecificationAttribute_Mapping" PRIMARY KEY ("Id");
 ~   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping" DROP CONSTRAINT "PK_Product_SpecificationAttribute_Mapping";
       public            postgres    false    350            "           2606    238171    QueuedEmail PK_QueuedEmail 
   CONSTRAINT     ^   ALTER TABLE ONLY public."QueuedEmail"
    ADD CONSTRAINT "PK_QueuedEmail" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."QueuedEmail" DROP CONSTRAINT "PK_QueuedEmail";
       public            postgres    false    426            M           2606    237298 $   RecurringPayment PK_RecurringPayment 
   CONSTRAINT     h   ALTER TABLE ONLY public."RecurringPayment"
    ADD CONSTRAINT "PK_RecurringPayment" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."RecurringPayment" DROP CONSTRAINT "PK_RecurringPayment";
       public            postgres    false    309            P           2606    237311 2   RecurringPaymentHistory PK_RecurringPaymentHistory 
   CONSTRAINT     v   ALTER TABLE ONLY public."RecurringPaymentHistory"
    ADD CONSTRAINT "PK_RecurringPaymentHistory" PRIMARY KEY ("Id");
 `   ALTER TABLE ONLY public."RecurringPaymentHistory" DROP CONSTRAINT "PK_RecurringPaymentHistory";
       public            postgres    false    311                       2606    237063     RelatedProduct PK_RelatedProduct 
   CONSTRAINT     d   ALTER TABLE ONLY public."RelatedProduct"
    ADD CONSTRAINT "PK_RelatedProduct" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."RelatedProduct" DROP CONSTRAINT "PK_RelatedProduct";
       public            postgres    false    279            �           2606    236971    ReturnRequest PK_ReturnRequest 
   CONSTRAINT     b   ALTER TABLE ONLY public."ReturnRequest"
    ADD CONSTRAINT "PK_ReturnRequest" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."ReturnRequest" DROP CONSTRAINT "PK_ReturnRequest";
       public            postgres    false    263            �           2606    236962 *   ReturnRequestAction PK_ReturnRequestAction 
   CONSTRAINT     n   ALTER TABLE ONLY public."ReturnRequestAction"
    ADD CONSTRAINT "PK_ReturnRequestAction" PRIMARY KEY ("Id");
 X   ALTER TABLE ONLY public."ReturnRequestAction" DROP CONSTRAINT "PK_ReturnRequestAction";
       public            postgres    false    261            �           2606    236986 *   ReturnRequestReason PK_ReturnRequestReason 
   CONSTRAINT     n   ALTER TABLE ONLY public."ReturnRequestReason"
    ADD CONSTRAINT "PK_ReturnRequestReason" PRIMARY KEY ("Id");
 X   ALTER TABLE ONLY public."ReturnRequestReason" DROP CONSTRAINT "PK_ReturnRequestReason";
       public            postgres    false    265                       2606    237072    ReviewType PK_ReviewType 
   CONSTRAINT     \   ALTER TABLE ONLY public."ReviewType"
    ADD CONSTRAINT "PK_ReviewType" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."ReviewType" DROP CONSTRAINT "PK_ReviewType";
       public            postgres    false    281            @           2606    237236 *   RewardPointsHistory PK_RewardPointsHistory 
   CONSTRAINT     n   ALTER TABLE ONLY public."RewardPointsHistory"
    ADD CONSTRAINT "PK_RewardPointsHistory" PRIMARY KEY ("Id");
 X   ALTER TABLE ONLY public."RewardPointsHistory" DROP CONSTRAINT "PK_RewardPointsHistory";
       public            postgres    false    301            D           2606    238327    ScheduleTask PK_ScheduleTask 
   CONSTRAINT     `   ALTER TABLE ONLY public."ScheduleTask"
    ADD CONSTRAINT "PK_ScheduleTask" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ScheduleTask" DROP CONSTRAINT "PK_ScheduleTask";
       public            postgres    false    445            �           2606    236703    SearchTerm PK_SearchTerm 
   CONSTRAINT     \   ALTER TABLE ONLY public."SearchTerm"
    ADD CONSTRAINT "PK_SearchTerm" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."SearchTerm" DROP CONSTRAINT "PK_SearchTerm";
       public            postgres    false    225            �           2606    237850    Setting PK_Setting 
   CONSTRAINT     V   ALTER TABLE ONLY public."Setting"
    ADD CONSTRAINT "PK_Setting" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Setting" DROP CONSTRAINT "PK_Setting";
       public            postgres    false    383            �           2606    237682    Shipment PK_Shipment 
   CONSTRAINT     X   ALTER TABLE ONLY public."Shipment"
    ADD CONSTRAINT "PK_Shipment" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Shipment" DROP CONSTRAINT "PK_Shipment";
       public            postgres    false    360            �           2606    237695    ShipmentItem PK_ShipmentItem 
   CONSTRAINT     `   ALTER TABLE ONLY public."ShipmentItem"
    ADD CONSTRAINT "PK_ShipmentItem" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ShipmentItem" DROP CONSTRAINT "PK_ShipmentItem";
       public            postgres    false    362            �           2606    237710     ShippingMethod PK_ShippingMethod 
   CONSTRAINT     d   ALTER TABLE ONLY public."ShippingMethod"
    ADD CONSTRAINT "PK_ShippingMethod" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."ShippingMethod" DROP CONSTRAINT "PK_ShippingMethod";
       public            postgres    false    364            �           2606    237715 8   ShippingMethodRestrictions PK_ShippingMethodRestrictions 
   CONSTRAINT     �   ALTER TABLE ONLY public."ShippingMethodRestrictions"
    ADD CONSTRAINT "PK_ShippingMethodRestrictions" PRIMARY KEY ("ShippingMethod_Id", "Country_Id");
 f   ALTER TABLE ONLY public."ShippingMethodRestrictions" DROP CONSTRAINT "PK_ShippingMethodRestrictions";
       public            postgres    false    365    365            U           2606    237326 $   ShoppingCartItem PK_ShoppingCartItem 
   CONSTRAINT     h   ALTER TABLE ONLY public."ShoppingCartItem"
    ADD CONSTRAINT "PK_ShoppingCartItem" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."ShoppingCartItem" DROP CONSTRAINT "PK_ShoppingCartItem";
       public            postgres    false    313                        2606    237090 0   SpecificationAttribute PK_SpecificationAttribute 
   CONSTRAINT     t   ALTER TABLE ONLY public."SpecificationAttribute"
    ADD CONSTRAINT "PK_SpecificationAttribute" PRIMARY KEY ("Id");
 ^   ALTER TABLE ONLY public."SpecificationAttribute" DROP CONSTRAINT "PK_SpecificationAttribute";
       public            postgres    false    285                       2606    237081 :   SpecificationAttributeGroup PK_SpecificationAttributeGroup 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SpecificationAttributeGroup"
    ADD CONSTRAINT "PK_SpecificationAttributeGroup" PRIMARY KEY ("Id");
 h   ALTER TABLE ONLY public."SpecificationAttributeGroup" DROP CONSTRAINT "PK_SpecificationAttributeGroup";
       public            postgres    false    283            �           2606    237600 <   SpecificationAttributeOption PK_SpecificationAttributeOption 
   CONSTRAINT     �   ALTER TABLE ONLY public."SpecificationAttributeOption"
    ADD CONSTRAINT "PK_SpecificationAttributeOption" PRIMARY KEY ("Id");
 j   ALTER TABLE ONLY public."SpecificationAttributeOption" DROP CONSTRAINT "PK_SpecificationAttributeOption";
       public            postgres    false    348            �           2606    236748    StateProvince PK_StateProvince 
   CONSTRAINT     b   ALTER TABLE ONLY public."StateProvince"
    ADD CONSTRAINT "PK_StateProvince" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."StateProvince" DROP CONSTRAINT "PK_StateProvince";
       public            postgres    false    235            �           2606    237755 ,   StockQuantityHistory PK_StockQuantityHistory 
   CONSTRAINT     p   ALTER TABLE ONLY public."StockQuantityHistory"
    ADD CONSTRAINT "PK_StockQuantityHistory" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."StockQuantityHistory" DROP CONSTRAINT "PK_StockQuantityHistory";
       public            postgres    false    369            W           2606    237347    Store PK_Store 
   CONSTRAINT     R   ALTER TABLE ONLY public."Store"
    ADD CONSTRAINT "PK_Store" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Store" DROP CONSTRAINT "PK_Store";
       public            postgres    false    315            [           2606    237356    StoreMapping PK_StoreMapping 
   CONSTRAINT     `   ALTER TABLE ONLY public."StoreMapping"
    ADD CONSTRAINT "PK_StoreMapping" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."StoreMapping" DROP CONSTRAINT "PK_StoreMapping";
       public            postgres    false    317            F           2606    238336    TaxCategory PK_TaxCategory 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TaxCategory"
    ADD CONSTRAINT "PK_TaxCategory" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."TaxCategory" DROP CONSTRAINT "PK_TaxCategory";
       public            postgres    false    447            �           2606    237634    TierPrice PK_TierPrice 
   CONSTRAINT     Z   ALTER TABLE ONLY public."TierPrice"
    ADD CONSTRAINT "PK_TierPrice" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."TierPrice" DROP CONSTRAINT "PK_TierPrice";
       public            postgres    false    352            J           2606    238354    Topic PK_Topic 
   CONSTRAINT     R   ALTER TABLE ONLY public."Topic"
    ADD CONSTRAINT "PK_Topic" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Topic" DROP CONSTRAINT "PK_Topic";
       public            postgres    false    451            H           2606    238345    TopicTemplate PK_TopicTemplate 
   CONSTRAINT     b   ALTER TABLE ONLY public."TopicTemplate"
    ADD CONSTRAINT "PK_TopicTemplate" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."TopicTemplate" DROP CONSTRAINT "PK_TopicTemplate";
       public            postgres    false    449            B           2606    238318    UrlRecord PK_UrlRecord 
   CONSTRAINT     Z   ALTER TABLE ONLY public."UrlRecord"
    ADD CONSTRAINT "PK_UrlRecord" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."UrlRecord" DROP CONSTRAINT "PK_UrlRecord";
       public            postgres    false    443            L           2606    238363    Vendor PK_Vendor 
   CONSTRAINT     T   ALTER TABLE ONLY public."Vendor"
    ADD CONSTRAINT "PK_Vendor" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public."Vendor" DROP CONSTRAINT "PK_Vendor";
       public            postgres    false    453            N           2606    238372 "   VendorAttribute PK_VendorAttribute 
   CONSTRAINT     f   ALTER TABLE ONLY public."VendorAttribute"
    ADD CONSTRAINT "PK_VendorAttribute" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."VendorAttribute" DROP CONSTRAINT "PK_VendorAttribute";
       public            postgres    false    455            Q           2606    238381 ,   VendorAttributeValue PK_VendorAttributeValue 
   CONSTRAINT     p   ALTER TABLE ONLY public."VendorAttributeValue"
    ADD CONSTRAINT "PK_VendorAttributeValue" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."VendorAttributeValue" DROP CONSTRAINT "PK_VendorAttributeValue";
       public            postgres    false    457            T           2606    238396    VendorNote PK_VendorNote 
   CONSTRAINT     \   ALTER TABLE ONLY public."VendorNote"
    ADD CONSTRAINT "PK_VendorNote" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."VendorNote" DROP CONSTRAINT "PK_VendorNote";
       public            postgres    false    459            �           2606    237822    Video PK_Video 
   CONSTRAINT     R   ALTER TABLE ONLY public."Video"
    ADD CONSTRAINT "PK_Video" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Video" DROP CONSTRAINT "PK_Video";
       public            postgres    false    379            �           2606    237655    Warehouse PK_Warehouse 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Warehouse"
    ADD CONSTRAINT "PK_Warehouse" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Warehouse" DROP CONSTRAINT "PK_Warehouse";
       public            postgres    false    354            5           1259    238278    IX_AclRecord_CustomerRoleId    INDEX     a   CREATE INDEX "IX_AclRecord_CustomerRoleId" ON public."AclRecord" USING btree ("CustomerRoleId");
 1   DROP INDEX public."IX_AclRecord_CustomerRoleId";
       public            postgres    false    438            6           1259    238460     IX_AclRecord_EntityId_EntityName    INDEX     n   CREATE INDEX "IX_AclRecord_EntityId_EntityName" ON public."AclRecord" USING btree ("EntityId", "EntityName");
 6   DROP INDEX public."IX_AclRecord_EntityId_EntityName";
       public            postgres    false    438    438    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    238100     IX_ActivityLog_ActivityLogTypeId    INDEX     k   CREATE INDEX "IX_ActivityLog_ActivityLogTypeId" ON public."ActivityLog" USING btree ("ActivityLogTypeId");
 6   DROP INDEX public."IX_ActivityLog_ActivityLogTypeId";
       public            postgres    false    414                       1259    238459    IX_ActivityLog_CreatedOnUtc    INDEX     f   CREATE INDEX "IX_ActivityLog_CreatedOnUtc" ON public."ActivityLog" USING btree ("CreatedOnUtc" DESC);
 1   DROP INDEX public."IX_ActivityLog_CreatedOnUtc";
       public            postgres    false    414                       1259    238106    IX_ActivityLog_CustomerId    INDEX     ]   CREATE INDEX "IX_ActivityLog_CustomerId" ON public."ActivityLog" USING btree ("CustomerId");
 /   DROP INDEX public."IX_ActivityLog_CustomerId";
       public            postgres    false    414            �           1259    236680 +   IX_AddressAttributeValue_AddressAttributeId    INDEX     �   CREATE INDEX "IX_AddressAttributeValue_AddressAttributeId" ON public."AddressAttributeValue" USING btree ("AddressAttributeId");
 A   DROP INDEX public."IX_AddressAttributeValue_AddressAttributeId";
       public            postgres    false    221            �           1259    236764    IX_Address_CountryId    INDEX     S   CREATE INDEX "IX_Address_CountryId" ON public."Address" USING btree ("CountryId");
 *   DROP INDEX public."IX_Address_CountryId";
       public            postgres    false    237            �           1259    236770    IX_Address_StateProvinceId    INDEX     _   CREATE INDEX "IX_Address_StateProvinceId" ON public."Address" USING btree ("StateProvinceId");
 0   DROP INDEX public."IX_Address_StateProvinceId";
       public            postgres    false    237            �           1259    236785    IX_Affiliate_AddressId    INDEX     W   CREATE INDEX "IX_Affiliate_AddressId" ON public."Affiliate" USING btree ("AddressId");
 ,   DROP INDEX public."IX_Affiliate_AddressId";
       public            postgres    false    239                       1259    237045 %   IX_BackInStockSubscription_CustomerId    INDEX     u   CREATE INDEX "IX_BackInStockSubscription_CustomerId" ON public."BackInStockSubscription" USING btree ("CustomerId");
 ;   DROP INDEX public."IX_BackInStockSubscription_CustomerId";
       public            postgres    false    277                       1259    237051 $   IX_BackInStockSubscription_ProductId    INDEX     s   CREATE INDEX "IX_BackInStockSubscription_ProductId" ON public."BackInStockSubscription" USING btree ("ProductId");
 :   DROP INDEX public."IX_BackInStockSubscription_ProductId";
       public            postgres    false    277            f           1259    237429    IX_BlogComment_BlogPostId    INDEX     ]   CREATE INDEX "IX_BlogComment_BlogPostId" ON public."BlogComment" USING btree ("BlogPostId");
 /   DROP INDEX public."IX_BlogComment_BlogPostId";
       public            postgres    false    325            g           1259    237423    IX_BlogComment_CustomerId    INDEX     ]   CREATE INDEX "IX_BlogComment_CustomerId" ON public."BlogComment" USING btree ("CustomerId");
 /   DROP INDEX public."IX_BlogComment_CustomerId";
       public            postgres    false    325            h           1259    237417    IX_BlogComment_StoreId    INDEX     W   CREATE INDEX "IX_BlogComment_StoreId" ON public."BlogComment" USING btree ("StoreId");
 ,   DROP INDEX public."IX_BlogComment_StoreId";
       public            postgres    false    325            c           1259    237402    IX_BlogPost_LanguageId    INDEX     W   CREATE INDEX "IX_BlogPost_LanguageId" ON public."BlogPost" USING btree ("LanguageId");
 ,   DROP INDEX public."IX_BlogPost_LanguageId";
       public            postgres    false    323            k           1259    238457    IX_Category_Deleted_Extended    INDEX     Z   CREATE INDEX "IX_Category_Deleted_Extended" ON public."Category" USING btree ("Deleted");
 2   DROP INDEX public."IX_Category_Deleted_Extended";
       public            postgres    false    327            l           1259    238456    IX_Category_DisplayOrder    INDEX     [   CREATE INDEX "IX_Category_DisplayOrder" ON public."Category" USING btree ("DisplayOrder");
 .   DROP INDEX public."IX_Category_DisplayOrder";
       public            postgres    false    327            m           1259    238455    IX_Category_LimitedToStores    INDEX     a   CREATE INDEX "IX_Category_LimitedToStores" ON public."Category" USING btree ("LimitedToStores");
 1   DROP INDEX public."IX_Category_LimitedToStores";
       public            postgres    false    327            n           1259    238454    IX_Category_ParentCategoryId    INDEX     c   CREATE INDEX "IX_Category_ParentCategoryId" ON public."Category" USING btree ("ParentCategoryId");
 2   DROP INDEX public."IX_Category_ParentCategoryId";
       public            postgres    false    327            o           1259    238458    IX_Category_SubjectToAcl    INDEX     [   CREATE INDEX "IX_Category_SubjectToAcl" ON public."Category" USING btree ("SubjectToAcl");
 .   DROP INDEX public."IX_Category_SubjectToAcl";
       public            postgres    false    327            �           1259    236948 -   IX_CheckoutAttributeValue_CheckoutAttributeId    INDEX     �   CREATE INDEX "IX_CheckoutAttributeValue_CheckoutAttributeId" ON public."CheckoutAttributeValue" USING btree ("CheckoutAttributeId");
 C   DROP INDEX public."IX_CheckoutAttributeValue_CheckoutAttributeId";
       public            postgres    false    259            �           1259    238453    IX_Country_DisplayOrder    INDEX     Y   CREATE INDEX "IX_Country_DisplayOrder" ON public."Country" USING btree ("DisplayOrder");
 -   DROP INDEX public."IX_Country_DisplayOrder";
       public            postgres    false    227            �           1259    238452    IX_Currency_DisplayOrder    INDEX     [   CREATE INDEX "IX_Currency_DisplayOrder" ON public."Currency" USING btree ("DisplayOrder");
 .   DROP INDEX public."IX_Currency_DisplayOrder";
       public            postgres    false    229            �           1259    236877    IX_CustomerAddresses_Address_Id    INDEX     i   CREATE INDEX "IX_CustomerAddresses_Address_Id" ON public."CustomerAddresses" USING btree ("Address_Id");
 5   DROP INDEX public."IX_CustomerAddresses_Address_Id";
       public            postgres    false    250            �           1259    236883     IX_CustomerAddresses_Customer_Id    INDEX     k   CREATE INDEX "IX_CustomerAddresses_Customer_Id" ON public."CustomerAddresses" USING btree ("Customer_Id");
 6   DROP INDEX public."IX_CustomerAddresses_Customer_Id";
       public            postgres    false    250            �           1259    236818 -   IX_CustomerAttributeValue_CustomerAttributeId    INDEX     �   CREATE INDEX "IX_CustomerAttributeValue_CustomerAttributeId" ON public."CustomerAttributeValue" USING btree ("CustomerAttributeId");
 C   DROP INDEX public."IX_CustomerAttributeValue_CustomerAttributeId";
       public            postgres    false    245            �           1259    236866    IX_CustomerPassword_CustomerId    INDEX     g   CREATE INDEX "IX_CustomerPassword_CustomerId" ON public."CustomerPassword" USING btree ("CustomerId");
 4   DROP INDEX public."IX_CustomerPassword_CustomerId";
       public            postgres    false    249            �           1259    236845    IX_Customer_BillingAddress_Id    INDEX     e   CREATE INDEX "IX_Customer_BillingAddress_Id" ON public."Customer" USING btree ("BillingAddress_Id");
 3   DROP INDEX public."IX_Customer_BillingAddress_Id";
       public            postgres    false    247            �           1259    238451    IX_Customer_CreatedOnUtc    INDEX     `   CREATE INDEX "IX_Customer_CreatedOnUtc" ON public."Customer" USING btree ("CreatedOnUtc" DESC);
 .   DROP INDEX public."IX_Customer_CreatedOnUtc";
       public            postgres    false    247            �           1259    236833    IX_Customer_CurrencyId    INDEX     W   CREATE INDEX "IX_Customer_CurrencyId" ON public."Customer" USING btree ("CurrencyId");
 ,   DROP INDEX public."IX_Customer_CurrencyId";
       public            postgres    false    247            �           1259    238450    IX_Customer_CustomerGuid    INDEX     [   CREATE INDEX "IX_Customer_CustomerGuid" ON public."Customer" USING btree ("CustomerGuid");
 .   DROP INDEX public."IX_Customer_CustomerGuid";
       public            postgres    false    247            �           1259    236909 0   IX_Customer_CustomerRole_Mapping_CustomerRole_Id    INDEX     �   CREATE INDEX "IX_Customer_CustomerRole_Mapping_CustomerRole_Id" ON public."Customer_CustomerRole_Mapping" USING btree ("CustomerRole_Id");
 F   DROP INDEX public."IX_Customer_CustomerRole_Mapping_CustomerRole_Id";
       public            postgres    false    253            �           1259    236903 ,   IX_Customer_CustomerRole_Mapping_Customer_Id    INDEX     �   CREATE INDEX "IX_Customer_CustomerRole_Mapping_Customer_Id" ON public."Customer_CustomerRole_Mapping" USING btree ("Customer_Id");
 B   DROP INDEX public."IX_Customer_CustomerRole_Mapping_Customer_Id";
       public            postgres    false    253            �           1259    238449    IX_Customer_Email    INDEX     M   CREATE INDEX "IX_Customer_Email" ON public."Customer" USING btree ("Email");
 '   DROP INDEX public."IX_Customer_Email";
       public            postgres    false    247    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    236839    IX_Customer_LanguageId    INDEX     W   CREATE INDEX "IX_Customer_LanguageId" ON public."Customer" USING btree ("LanguageId");
 ,   DROP INDEX public."IX_Customer_LanguageId";
       public            postgres    false    247            �           1259    236851    IX_Customer_ShippingAddress_Id    INDEX     g   CREATE INDEX "IX_Customer_ShippingAddress_Id" ON public."Customer" USING btree ("ShippingAddress_Id");
 4   DROP INDEX public."IX_Customer_ShippingAddress_Id";
       public            postgres    false    247            �           1259    238448    IX_Customer_SystemName    INDEX     W   CREATE INDEX "IX_Customer_SystemName" ON public."Customer" USING btree ("SystemName");
 ,   DROP INDEX public."IX_Customer_SystemName";
       public            postgres    false    247    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238447    IX_Customer_Username    INDEX     S   CREATE INDEX "IX_Customer_Username" ON public."Customer" USING btree ("Username");
 *   DROP INDEX public."IX_Customer_Username";
       public            postgres    false    247    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    237903 !   IX_DiscountRequirement_DiscountId    INDEX     m   CREATE INDEX "IX_DiscountRequirement_DiscountId" ON public."DiscountRequirement" USING btree ("DiscountId");
 7   DROP INDEX public."IX_DiscountRequirement_DiscountId";
       public            postgres    false    389            �           1259    237909    IX_DiscountRequirement_ParentId    INDEX     i   CREATE INDEX "IX_DiscountRequirement_ParentId" ON public."DiscountRequirement" USING btree ("ParentId");
 5   DROP INDEX public."IX_DiscountRequirement_ParentId";
       public            postgres    false    389            �           1259    237922 "   IX_DiscountUsageHistory_DiscountId    INDEX     o   CREATE INDEX "IX_DiscountUsageHistory_DiscountId" ON public."DiscountUsageHistory" USING btree ("DiscountId");
 8   DROP INDEX public."IX_DiscountUsageHistory_DiscountId";
       public            postgres    false    391            �           1259    237928    IX_DiscountUsageHistory_OrderId    INDEX     i   CREATE INDEX "IX_DiscountUsageHistory_OrderId" ON public."DiscountUsageHistory" USING btree ("OrderId");
 5   DROP INDEX public."IX_DiscountUsageHistory_OrderId";
       public            postgres    false    391            �           1259    237871 +   IX_Discount_AppliedToCategories_Category_Id    INDEX     �   CREATE INDEX "IX_Discount_AppliedToCategories_Category_Id" ON public."Discount_AppliedToCategories" USING btree ("Category_Id");
 A   DROP INDEX public."IX_Discount_AppliedToCategories_Category_Id";
       public            postgres    false    386            �           1259    237865 +   IX_Discount_AppliedToCategories_Discount_Id    INDEX     �   CREATE INDEX "IX_Discount_AppliedToCategories_Discount_Id" ON public."Discount_AppliedToCategories" USING btree ("Discount_Id");
 A   DROP INDEX public."IX_Discount_AppliedToCategories_Discount_Id";
       public            postgres    false    386            �           1259    237939 .   IX_Discount_AppliedToManufacturers_Discount_Id    INDEX     �   CREATE INDEX "IX_Discount_AppliedToManufacturers_Discount_Id" ON public."Discount_AppliedToManufacturers" USING btree ("Discount_Id");
 D   DROP INDEX public."IX_Discount_AppliedToManufacturers_Discount_Id";
       public            postgres    false    392            �           1259    237945 2   IX_Discount_AppliedToManufacturers_Manufacturer_Id    INDEX     �   CREATE INDEX "IX_Discount_AppliedToManufacturers_Manufacturer_Id" ON public."Discount_AppliedToManufacturers" USING btree ("Manufacturer_Id");
 H   DROP INDEX public."IX_Discount_AppliedToManufacturers_Manufacturer_Id";
       public            postgres    false    392            �           1259    237882 )   IX_Discount_AppliedToProducts_Discount_Id    INDEX     }   CREATE INDEX "IX_Discount_AppliedToProducts_Discount_Id" ON public."Discount_AppliedToProducts" USING btree ("Discount_Id");
 ?   DROP INDEX public."IX_Discount_AppliedToProducts_Discount_Id";
       public            postgres    false    387            �           1259    237888 (   IX_Discount_AppliedToProducts_Product_Id    INDEX     {   CREATE INDEX "IX_Discount_AppliedToProducts_Product_Id" ON public."Discount_AppliedToProducts" USING btree ("Product_Id");
 >   DROP INDEX public."IX_Discount_AppliedToProducts_Product_Id";
       public            postgres    false    387            �           1259    236924 *   IX_ExternalAuthenticationRecord_CustomerId    INDEX        CREATE INDEX "IX_ExternalAuthenticationRecord_CustomerId" ON public."ExternalAuthenticationRecord" USING btree ("CustomerId");
 @   DROP INDEX public."IX_ExternalAuthenticationRecord_CustomerId";
       public            postgres    false    255            �           1259    238445    IX_Forums_Forum_DisplayOrder    INDEX     c   CREATE INDEX "IX_Forums_Forum_DisplayOrder" ON public."Forums_Forum" USING btree ("DisplayOrder");
 2   DROP INDEX public."IX_Forums_Forum_DisplayOrder";
       public            postgres    false    398            �           1259    237990    IX_Forums_Forum_ForumGroupId    INDEX     c   CREATE INDEX "IX_Forums_Forum_ForumGroupId" ON public."Forums_Forum" USING btree ("ForumGroupId");
 2   DROP INDEX public."IX_Forums_Forum_ForumGroupId";
       public            postgres    false    398            �           1259    238444    IX_Forums_Group_DisplayOrder    INDEX     c   CREATE INDEX "IX_Forums_Group_DisplayOrder" ON public."Forums_Group" USING btree ("DisplayOrder");
 2   DROP INDEX public."IX_Forums_Group_DisplayOrder";
       public            postgres    false    396            �           1259    238045    IX_Forums_PostVote_ForumPostId    INDEX     g   CREATE INDEX "IX_Forums_PostVote_ForumPostId" ON public."Forums_PostVote" USING btree ("ForumPostId");
 4   DROP INDEX public."IX_Forums_PostVote_ForumPostId";
       public            postgres    false    404            �           1259    238026    IX_Forums_Post_CustomerId    INDEX     ]   CREATE INDEX "IX_Forums_Post_CustomerId" ON public."Forums_Post" USING btree ("CustomerId");
 /   DROP INDEX public."IX_Forums_Post_CustomerId";
       public            postgres    false    402            �           1259    238032    IX_Forums_Post_TopicId    INDEX     W   CREATE INDEX "IX_Forums_Post_TopicId" ON public."Forums_Post" USING btree ("TopicId");
 ,   DROP INDEX public."IX_Forums_Post_TopicId";
       public            postgres    false    402            �           1259    237960 '   IX_Forums_PrivateMessage_FromCustomerId    INDEX     y   CREATE INDEX "IX_Forums_PrivateMessage_FromCustomerId" ON public."Forums_PrivateMessage" USING btree ("FromCustomerId");
 =   DROP INDEX public."IX_Forums_PrivateMessage_FromCustomerId";
       public            postgres    false    394            �           1259    237966 %   IX_Forums_PrivateMessage_ToCustomerId    INDEX     u   CREATE INDEX "IX_Forums_PrivateMessage_ToCustomerId" ON public."Forums_PrivateMessage" USING btree ("ToCustomerId");
 ;   DROP INDEX public."IX_Forums_PrivateMessage_ToCustomerId";
       public            postgres    false    394                       1259    238058 !   IX_Forums_Subscription_CustomerId    INDEX     m   CREATE INDEX "IX_Forums_Subscription_CustomerId" ON public."Forums_Subscription" USING btree ("CustomerId");
 7   DROP INDEX public."IX_Forums_Subscription_CustomerId";
       public            postgres    false    406                       1259    238443    IX_Forums_Subscription_ForumId    INDEX     g   CREATE INDEX "IX_Forums_Subscription_ForumId" ON public."Forums_Subscription" USING btree ("ForumId");
 4   DROP INDEX public."IX_Forums_Subscription_ForumId";
       public            postgres    false    406                       1259    238442    IX_Forums_Subscription_TopicId    INDEX     g   CREATE INDEX "IX_Forums_Subscription_TopicId" ON public."Forums_Subscription" USING btree ("TopicId");
 4   DROP INDEX public."IX_Forums_Subscription_TopicId";
       public            postgres    false    406            �           1259    238005    IX_Forums_Topic_CustomerId    INDEX     _   CREATE INDEX "IX_Forums_Topic_CustomerId" ON public."Forums_Topic" USING btree ("CustomerId");
 0   DROP INDEX public."IX_Forums_Topic_CustomerId";
       public            postgres    false    400            �           1259    238011    IX_Forums_Topic_ForumId    INDEX     Y   CREATE INDEX "IX_Forums_Topic_ForumId" ON public."Forums_Topic" USING btree ("ForumId");
 -   DROP INDEX public."IX_Forums_Topic_ForumId";
       public            postgres    false    400            �           1259    238446    IX_Forums_Topic_Subject    INDEX     Y   CREATE INDEX "IX_Forums_Topic_Subject" ON public."Forums_Topic" USING btree ("Subject");
 -   DROP INDEX public."IX_Forums_Topic_Subject";
       public            postgres    false    400    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    238441 )   IX_GenericAttribute_EntityId_and_KeyGroup    INDEX     |   CREATE INDEX "IX_GenericAttribute_EntityId_and_KeyGroup" ON public."GenericAttribute" USING btree ("EntityId", "KeyGroup");
 ?   DROP INDEX public."IX_GenericAttribute_EntityId_and_KeyGroup";
       public            postgres    false    223    223    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    238440    IX_GetLowStockProducts    INDEX     �   CREATE INDEX "IX_GetLowStockProducts" ON public."Product" USING btree ("Deleted", "VendorId", "ProductTypeId", "ManageInventoryMethodId", "MinStockQuantity", "UseMultipleWarehouses");
 ,   DROP INDEX public."IX_GetLowStockProducts";
       public            postgres    false    273    273    273    273    273    273            D           1259    237265 "   IX_GiftCardUsageHistory_GiftCardId    INDEX     o   CREATE INDEX "IX_GiftCardUsageHistory_GiftCardId" ON public."GiftCardUsageHistory" USING btree ("GiftCardId");
 8   DROP INDEX public."IX_GiftCardUsageHistory_GiftCardId";
       public            postgres    false    305            E           1259    237271 '   IX_GiftCardUsageHistory_UsedWithOrderId    INDEX     y   CREATE INDEX "IX_GiftCardUsageHistory_UsedWithOrderId" ON public."GiftCardUsageHistory" USING btree ("UsedWithOrderId");
 =   DROP INDEX public."IX_GiftCardUsageHistory_UsedWithOrderId";
       public            postgres    false    305            A           1259    237252 $   IX_GiftCard_PurchasedWithOrderItemId    INDEX     s   CREATE INDEX "IX_GiftCard_PurchasedWithOrderItemId" ON public."GiftCard" USING btree ("PurchasedWithOrderItemId");
 :   DROP INDEX public."IX_GiftCard_PurchasedWithOrderItemId";
       public            postgres    false    303            �           1259    238439    IX_Language_DisplayOrder    INDEX     [   CREATE INDEX "IX_Language_DisplayOrder" ON public."Language" USING btree ("DisplayOrder");
 .   DROP INDEX public."IX_Language_DisplayOrder";
       public            postgres    false    241            \           1259    238438    IX_LocaleStringResource    INDEX     t   CREATE INDEX "IX_LocaleStringResource" ON public."LocaleStringResource" USING btree ("ResourceName", "LanguageId");
 -   DROP INDEX public."IX_LocaleStringResource";
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    319    319            ]           1259    237372 "   IX_LocaleStringResource_LanguageId    INDEX     o   CREATE INDEX "IX_LocaleStringResource_LanguageId" ON public."LocaleStringResource" USING btree ("LanguageId");
 8   DROP INDEX public."IX_LocaleStringResource_LanguageId";
       public            postgres    false    319            `           1259    237387    IX_LocalizedProperty_LanguageId    INDEX     i   CREATE INDEX "IX_LocalizedProperty_LanguageId" ON public."LocalizedProperty" USING btree ("LanguageId");
 5   DROP INDEX public."IX_LocalizedProperty_LanguageId";
       public            postgres    false    321                       1259    238437    IX_Log_CreatedOnUtc    INDEX     V   CREATE INDEX "IX_Log_CreatedOnUtc" ON public."Log" USING btree ("CreatedOnUtc" DESC);
 )   DROP INDEX public."IX_Log_CreatedOnUtc";
       public            postgres    false    416                       1259    238121    IX_Log_CustomerId    INDEX     M   CREATE INDEX "IX_Log_CustomerId" ON public."Log" USING btree ("CustomerId");
 '   DROP INDEX public."IX_Log_CustomerId";
       public            postgres    false    416            }           1259    238436    IX_Manufacturer_DisplayOrder    INDEX     c   CREATE INDEX "IX_Manufacturer_DisplayOrder" ON public."Manufacturer" USING btree ("DisplayOrder");
 2   DROP INDEX public."IX_Manufacturer_DisplayOrder";
       public            postgres    false    335            ~           1259    238435    IX_Manufacturer_LimitedToStores    INDEX     i   CREATE INDEX "IX_Manufacturer_LimitedToStores" ON public."Manufacturer" USING btree ("LimitedToStores");
 5   DROP INDEX public."IX_Manufacturer_LimitedToStores";
       public            postgres    false    335                       1259    238434    IX_Manufacturer_SubjectToAcl    INDEX     c   CREATE INDEX "IX_Manufacturer_SubjectToAcl" ON public."Manufacturer" USING btree ("SubjectToAcl");
 2   DROP INDEX public."IX_Manufacturer_SubjectToAcl";
       public            postgres    false    335            &           1259    238202    IX_NewsComment_CustomerId    INDEX     ]   CREATE INDEX "IX_NewsComment_CustomerId" ON public."NewsComment" USING btree ("CustomerId");
 /   DROP INDEX public."IX_NewsComment_CustomerId";
       public            postgres    false    430            '           1259    238208    IX_NewsComment_NewsItemId    INDEX     ]   CREATE INDEX "IX_NewsComment_NewsItemId" ON public."NewsComment" USING btree ("NewsItemId");
 /   DROP INDEX public."IX_NewsComment_NewsItemId";
       public            postgres    false    430            (           1259    238214    IX_NewsComment_StoreId    INDEX     W   CREATE INDEX "IX_NewsComment_StoreId" ON public."NewsComment" USING btree ("StoreId");
 ,   DROP INDEX public."IX_NewsComment_StoreId";
       public            postgres    false    430            #           1259    238187    IX_News_LanguageId    INDEX     O   CREATE INDEX "IX_News_LanguageId" ON public."News" USING btree ("LanguageId");
 (   DROP INDEX public."IX_News_LanguageId";
       public            postgres    false    428                       1259    238433 '   IX_NewsletterSubscription_Email_StoreId    INDEX     |   CREATE INDEX "IX_NewsletterSubscription_Email_StoreId" ON public."NewsLetterSubscription" USING btree ("Email", "StoreId");
 =   DROP INDEX public."IX_NewsletterSubscription_Email_StoreId";
       public            postgres    false    424    424    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            :           1259    237216    IX_OrderItem_OrderId    INDEX     S   CREATE INDEX "IX_OrderItem_OrderId" ON public."OrderItem" USING btree ("OrderId");
 *   DROP INDEX public."IX_OrderItem_OrderId";
       public            postgres    false    299            ;           1259    237222    IX_OrderItem_ProductId    INDEX     W   CREATE INDEX "IX_OrderItem_ProductId" ON public."OrderItem" USING btree ("ProductId");
 ,   DROP INDEX public."IX_OrderItem_ProductId";
       public            postgres    false    299            H           1259    237286    IX_OrderNote_OrderId    INDEX     S   CREATE INDEX "IX_OrderNote_OrderId" ON public."OrderNote" USING btree ("OrderId");
 *   DROP INDEX public."IX_OrderNote_OrderId";
       public            postgres    false    307            3           1259    237183    IX_Order_BillingAddressId    INDEX     ]   CREATE INDEX "IX_Order_BillingAddressId" ON public."Order" USING btree ("BillingAddressId");
 /   DROP INDEX public."IX_Order_BillingAddressId";
       public            postgres    false    297            4           1259    238432    IX_Order_CreatedOnUtc    INDEX     Z   CREATE INDEX "IX_Order_CreatedOnUtc" ON public."Order" USING btree ("CreatedOnUtc" DESC);
 +   DROP INDEX public."IX_Order_CreatedOnUtc";
       public            postgres    false    297            5           1259    237189    IX_Order_CustomerId    INDEX     Q   CREATE INDEX "IX_Order_CustomerId" ON public."Order" USING btree ("CustomerId");
 )   DROP INDEX public."IX_Order_CustomerId";
       public            postgres    false    297            6           1259    237195    IX_Order_PickupAddressId    INDEX     [   CREATE INDEX "IX_Order_PickupAddressId" ON public."Order" USING btree ("PickupAddressId");
 .   DROP INDEX public."IX_Order_PickupAddressId";
       public            postgres    false    297            7           1259    237201    IX_Order_ShippingAddressId    INDEX     _   CREATE INDEX "IX_Order_ShippingAddressId" ON public."Order" USING btree ("ShippingAddressId");
 0   DROP INDEX public."IX_Order_ShippingAddressId";
       public            postgres    false    297            t           1259    238430    IX_PCM_ProductId_Extended    INDEX     ~   CREATE INDEX "IX_PCM_ProductId_Extended" ON public."Product_Category_Mapping" USING btree ("ProductId", "IsFeaturedProduct");
 /   DROP INDEX public."IX_PCM_ProductId_Extended";
       public            postgres    false    331    331            u           1259    238431    IX_PCM_Product_and_Category    INDEX     y   CREATE INDEX "IX_PCM_Product_and_Category" ON public."Product_Category_Mapping" USING btree ("CategoryId", "ProductId");
 1   DROP INDEX public."IX_PCM_Product_and_Category";
       public            postgres    false    331    331            �           1259    238429    IX_PMM_ProductId_Extended    INDEX     �   CREATE INDEX "IX_PMM_ProductId_Extended" ON public."Product_Manufacturer_Mapping" USING btree ("ProductId", "IsFeaturedProduct");
 /   DROP INDEX public."IX_PMM_ProductId_Extended";
       public            postgres    false    339    339            �           1259    238428    IX_PMM_Product_and_Manufacturer    INDEX     �   CREATE INDEX "IX_PMM_Product_and_Manufacturer" ON public."Product_Manufacturer_Mapping" USING btree ("ManufacturerId", "ProductId");
 5   DROP INDEX public."IX_PMM_Product_and_Manufacturer";
       public            postgres    false    339    339            �           1259    238411    IX_PSAM_AllowFiltering    INDEX     y   CREATE INDEX "IX_PSAM_AllowFiltering" ON public."Product_SpecificationAttribute_Mapping" USING btree ("AllowFiltering");
 ,   DROP INDEX public."IX_PSAM_AllowFiltering";
       public            postgres    false    350            �           1259    238410 5   IX_PSAM_SpecificationAttributeOptionId_AllowFiltering    INDEX     �   CREATE INDEX "IX_PSAM_SpecificationAttributeOptionId_AllowFiltering" ON public."Product_SpecificationAttribute_Mapping" USING btree ("SpecificationAttributeOptionId", "AllowFiltering");
 K   DROP INDEX public."IX_PSAM_SpecificationAttributeOptionId_AllowFiltering";
       public            postgres    false    350    350            ;           1259    238304 0   IX_PermissionRecord_Role_Mapping_CustomerRole_Id    INDEX     �   CREATE INDEX "IX_PermissionRecord_Role_Mapping_CustomerRole_Id" ON public."PermissionRecord_Role_Mapping" USING btree ("CustomerRole_Id");
 F   DROP INDEX public."IX_PermissionRecord_Role_Mapping_CustomerRole_Id";
       public            postgres    false    441            <           1259    238298 4   IX_PermissionRecord_Role_Mapping_PermissionRecord_Id    INDEX     �   CREATE INDEX "IX_PermissionRecord_Role_Mapping_PermissionRecord_Id" ON public."PermissionRecord_Role_Mapping" USING btree ("PermissionRecord_Id");
 J   DROP INDEX public."IX_PermissionRecord_Role_Mapping_PermissionRecord_Id";
       public            postgres    false    441            �           1259    237789    IX_PictureBinary_PictureId    INDEX     _   CREATE INDEX "IX_PictureBinary_PictureId" ON public."PictureBinary" USING btree ("PictureId");
 0   DROP INDEX public."IX_PictureBinary_PictureId";
       public            postgres    false    375            .           1259    238244    IX_PollAnswer_PollId    INDEX     S   CREATE INDEX "IX_PollAnswer_PollId" ON public."PollAnswer" USING btree ("PollId");
 *   DROP INDEX public."IX_PollAnswer_PollId";
       public            postgres    false    434            1           1259    238263    IX_PollVotingRecord_CustomerId    INDEX     g   CREATE INDEX "IX_PollVotingRecord_CustomerId" ON public."PollVotingRecord" USING btree ("CustomerId");
 4   DROP INDEX public."IX_PollVotingRecord_CustomerId";
       public            postgres    false    436            2           1259    238257     IX_PollVotingRecord_PollAnswerId    INDEX     k   CREATE INDEX "IX_PollVotingRecord_PollAnswerId" ON public."PollVotingRecord" USING btree ("PollAnswerId");
 6   DROP INDEX public."IX_PollVotingRecord_PollAnswerId";
       public            postgres    false    436            +           1259    238229    IX_Poll_LanguageId    INDEX     O   CREATE INDEX "IX_Poll_LanguageId" ON public."Poll" USING btree ("LanguageId");
 (   DROP INDEX public."IX_Poll_LanguageId";
       public            postgres    false    432            �           1259    237005 5   IX_PredefinedProductAttributeValue_ProductAttributeId    INDEX     �   CREATE INDEX "IX_PredefinedProductAttributeValue_ProductAttributeId" ON public."PredefinedProductAttributeValue" USING btree ("ProductAttributeId");
 K   DROP INDEX public."IX_PredefinedProductAttributeValue_ProductAttributeId";
       public            postgres    false    269            $           1259    237119 ?   IX_ProductAttributeCombinationPicture_ProductAttributeCombinati    INDEX     �   CREATE INDEX "IX_ProductAttributeCombinationPicture_ProductAttributeCombinati" ON public."ProductAttributeCombinationPicture" USING btree ("ProductAttributeCombinationId");
 U   DROP INDEX public."IX_ProductAttributeCombinationPicture_ProductAttributeCombinati";
       public            postgres    false    289            !           1259    237106 (   IX_ProductAttributeCombination_ProductId    INDEX     {   CREATE INDEX "IX_ProductAttributeCombination_ProductId" ON public."ProductAttributeCombination" USING btree ("ProductId");
 >   DROP INDEX public."IX_ProductAttributeCombination_ProductId";
       public            postgres    false    287            0           1259    237168 7   IX_ProductAttributeValuePicture_ProductAttributeValueId    INDEX     �   CREATE INDEX "IX_ProductAttributeValuePicture_ProductAttributeValueId" ON public."ProductAttributeValuePicture" USING btree ("ProductAttributeValueId");
 M   DROP INDEX public."IX_ProductAttributeValuePicture_ProductAttributeValueId";
       public            postgres    false    295            ,           1259    237155 2   IX_ProductAttributeValue_ProductAttributeMappingId    INDEX     �   CREATE INDEX "IX_ProductAttributeValue_ProductAttributeMappingId" ON public."ProductAttributeValue" USING btree ("ProductAttributeMappingId");
 H   DROP INDEX public."IX_ProductAttributeValue_ProductAttributeMappingId";
       public            postgres    false    293            -           1259    238427 ?   IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder    INDEX     �   CREATE INDEX "IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder" ON public."ProductAttributeValue" USING btree ("ProductAttributeMappingId", "DisplayOrder");
 U   DROP INDEX public."IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder";
       public            postgres    false    293    293            �           1259    237567 +   IX_ProductReviewHelpfulness_ProductReviewId    INDEX     �   CREATE INDEX "IX_ProductReviewHelpfulness_ProductReviewId" ON public."ProductReviewHelpfulness" USING btree ("ProductReviewId");
 A   DROP INDEX public."IX_ProductReviewHelpfulness_ProductReviewId";
       public            postgres    false    344            �           1259    237542    IX_ProductReview_CustomerId    INDEX     a   CREATE INDEX "IX_ProductReview_CustomerId" ON public."ProductReview" USING btree ("CustomerId");
 1   DROP INDEX public."IX_ProductReview_CustomerId";
       public            postgres    false    342            �           1259    237548    IX_ProductReview_ProductId    INDEX     _   CREATE INDEX "IX_ProductReview_ProductId" ON public."ProductReview" USING btree ("ProductId");
 0   DROP INDEX public."IX_ProductReview_ProductId";
       public            postgres    false    342            �           1259    237580 3   IX_ProductReview_ReviewType_Mapping_ProductReviewId    INDEX     �   CREATE INDEX "IX_ProductReview_ReviewType_Mapping_ProductReviewId" ON public."ProductReview_ReviewType_Mapping" USING btree ("ProductReviewId");
 I   DROP INDEX public."IX_ProductReview_ReviewType_Mapping_ProductReviewId";
       public            postgres    false    346            �           1259    237586 0   IX_ProductReview_ReviewType_Mapping_ReviewTypeId    INDEX     �   CREATE INDEX "IX_ProductReview_ReviewType_Mapping_ReviewTypeId" ON public."ProductReview_ReviewType_Mapping" USING btree ("ReviewTypeId");
 F   DROP INDEX public."IX_ProductReview_ReviewType_Mapping_ReviewTypeId";
       public            postgres    false    346            �           1259    237554    IX_ProductReview_StoreId    INDEX     [   CREATE INDEX "IX_ProductReview_StoreId" ON public."ProductReview" USING btree ("StoreId");
 .   DROP INDEX public."IX_ProductReview_StoreId";
       public            postgres    false    342                        1259    238414    IX_ProductTag_Name    INDEX     O   CREATE INDEX "IX_ProductTag_Name" ON public."ProductTag" USING btree ("Name");
 (   DROP INDEX public."IX_ProductTag_Name";
       public            postgres    false    271    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    237836    IX_ProductVideo_ProductId    INDEX     ]   CREATE INDEX "IX_ProductVideo_ProductId" ON public."ProductVideo" USING btree ("ProductId");
 /   DROP INDEX public."IX_ProductVideo_ProductId";
       public            postgres    false    381            �           1259    237830    IX_ProductVideo_VideoId    INDEX     Y   CREATE INDEX "IX_ProductVideo_VideoId" ON public."ProductVideo" USING btree ("VideoId");
 -   DROP INDEX public."IX_ProductVideo_VideoId";
       public            postgres    false    381            �           1259    237735 &   IX_ProductWarehouseInventory_ProductId    INDEX     w   CREATE INDEX "IX_ProductWarehouseInventory_ProductId" ON public."ProductWarehouseInventory" USING btree ("ProductId");
 <   DROP INDEX public."IX_ProductWarehouseInventory_ProductId";
       public            postgres    false    367            �           1259    237741 (   IX_ProductWarehouseInventory_WarehouseId    INDEX     {   CREATE INDEX "IX_ProductWarehouseInventory_WarehouseId" ON public."ProductWarehouseInventory" USING btree ("WarehouseId");
 >   DROP INDEX public."IX_ProductWarehouseInventory_WarehouseId";
       public            postgres    false    367            v           1259    237460 &   IX_Product_Category_Mapping_CategoryId    INDEX     w   CREATE INDEX "IX_Product_Category_Mapping_CategoryId" ON public."Product_Category_Mapping" USING btree ("CategoryId");
 <   DROP INDEX public."IX_Product_Category_Mapping_CategoryId";
       public            postgres    false    331            w           1259    238426 -   IX_Product_Category_Mapping_IsFeaturedProduct    INDEX     �   CREATE INDEX "IX_Product_Category_Mapping_IsFeaturedProduct" ON public."Product_Category_Mapping" USING btree ("IsFeaturedProduct");
 C   DROP INDEX public."IX_Product_Category_Mapping_IsFeaturedProduct";
       public            postgres    false    331            x           1259    237466 %   IX_Product_Category_Mapping_ProductId    INDEX     u   CREATE INDEX "IX_Product_Category_Mapping_ProductId" ON public."Product_Category_Mapping" USING btree ("ProductId");
 ;   DROP INDEX public."IX_Product_Category_Mapping_ProductId";
       public            postgres    false    331                       1259    238424    IX_Product_Delete_Id    INDEX     W   CREATE INDEX "IX_Product_Delete_Id" ON public."Product" USING btree ("Deleted", "Id");
 *   DROP INDEX public."IX_Product_Delete_Id";
       public            postgres    false    273    273                       1259    238425     IX_Product_Deleted_and_Published    INDEX     j   CREATE INDEX "IX_Product_Deleted_and_Published" ON public."Product" USING btree ("Published", "Deleted");
 6   DROP INDEX public."IX_Product_Deleted_and_Published";
       public            postgres    false    273    273                       1259    238423    IX_Product_LimitedToStores    INDEX     _   CREATE INDEX "IX_Product_LimitedToStores" ON public."Product" USING btree ("LimitedToStores");
 0   DROP INDEX public."IX_Product_LimitedToStores";
       public            postgres    false    273            �           1259    238422 1   IX_Product_Manufacturer_Mapping_IsFeaturedProduct    INDEX     �   CREATE INDEX "IX_Product_Manufacturer_Mapping_IsFeaturedProduct" ON public."Product_Manufacturer_Mapping" USING btree ("IsFeaturedProduct");
 G   DROP INDEX public."IX_Product_Manufacturer_Mapping_IsFeaturedProduct";
       public            postgres    false    339            �           1259    237504 .   IX_Product_Manufacturer_Mapping_ManufacturerId    INDEX     �   CREATE INDEX "IX_Product_Manufacturer_Mapping_ManufacturerId" ON public."Product_Manufacturer_Mapping" USING btree ("ManufacturerId");
 D   DROP INDEX public."IX_Product_Manufacturer_Mapping_ManufacturerId";
       public            postgres    false    339            �           1259    237510 )   IX_Product_Manufacturer_Mapping_ProductId    INDEX     }   CREATE INDEX "IX_Product_Manufacturer_Mapping_ProductId" ON public."Product_Manufacturer_Mapping" USING btree ("ProductId");
 ?   DROP INDEX public."IX_Product_Manufacturer_Mapping_ProductId";
       public            postgres    false    339                       1259    238415    IX_Product_Name    INDEX     I   CREATE INDEX "IX_Product_Name" ON public."Product" USING btree ("Name");
 %   DROP INDEX public."IX_Product_Name";
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    273                       1259    238421 !   IX_Product_ParentGroupedProductId    INDEX     m   CREATE INDEX "IX_Product_ParentGroupedProductId" ON public."Product" USING btree ("ParentGroupedProductId");
 7   DROP INDEX public."IX_Product_ParentGroupedProductId";
       public            postgres    false    273            �           1259    237802 $   IX_Product_Picture_Mapping_PictureId    INDEX     s   CREATE INDEX "IX_Product_Picture_Mapping_PictureId" ON public."Product_Picture_Mapping" USING btree ("PictureId");
 :   DROP INDEX public."IX_Product_Picture_Mapping_PictureId";
       public            postgres    false    377            �           1259    237808 $   IX_Product_Picture_Mapping_ProductId    INDEX     s   CREATE INDEX "IX_Product_Picture_Mapping_ProductId" ON public."Product_Picture_Mapping" USING btree ("ProductId");
 :   DROP INDEX public."IX_Product_Picture_Mapping_ProductId";
       public            postgres    false    377            	           1259    238420    IX_Product_PriceDatesEtc    INDEX     �   CREATE INDEX "IX_Product_PriceDatesEtc" ON public."Product" USING btree ("Price", "AvailableStartDateTimeUtc", "AvailableEndDateTimeUtc", "Published", "Deleted");
 .   DROP INDEX public."IX_Product_PriceDatesEtc";
       public            postgres    false    273    273    273    273    273            '           1259    237134 6   IX_Product_ProductAttribute_Mapping_ProductAttributeId    INDEX     �   CREATE INDEX "IX_Product_ProductAttribute_Mapping_ProductAttributeId" ON public."Product_ProductAttribute_Mapping" USING btree ("ProductAttributeId");
 L   DROP INDEX public."IX_Product_ProductAttribute_Mapping_ProductAttributeId";
       public            postgres    false    291            (           1259    237140 -   IX_Product_ProductAttribute_Mapping_ProductId    INDEX     �   CREATE INDEX "IX_Product_ProductAttribute_Mapping_ProductId" ON public."Product_ProductAttribute_Mapping" USING btree ("ProductId");
 C   DROP INDEX public."IX_Product_ProductAttribute_Mapping_ProductId";
       public            postgres    false    291            )           1259    238419 :   IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder    INDEX     �   CREATE INDEX "IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder" ON public."Product_ProductAttribute_Mapping" USING btree ("ProductId", "DisplayOrder");
 P   DROP INDEX public."IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder";
       public            postgres    false    291    291            �           1259    237527 +   IX_Product_ProductTag_Mapping_ProductTag_Id    INDEX     �   CREATE INDEX "IX_Product_ProductTag_Mapping_ProductTag_Id" ON public."Product_ProductTag_Mapping" USING btree ("ProductTag_Id");
 A   DROP INDEX public."IX_Product_ProductTag_Mapping_ProductTag_Id";
       public            postgres    false    340            �           1259    237521 (   IX_Product_ProductTag_Mapping_Product_Id    INDEX     {   CREATE INDEX "IX_Product_ProductTag_Mapping_Product_Id" ON public."Product_ProductTag_Mapping" USING btree ("Product_Id");
 >   DROP INDEX public."IX_Product_ProductTag_Mapping_Product_Id";
       public            postgres    false    340            
           1259    238418    IX_Product_Published    INDEX     S   CREATE INDEX "IX_Product_Published" ON public."Product" USING btree ("Published");
 *   DROP INDEX public."IX_Product_Published";
       public            postgres    false    273                       1259    238417    IX_Product_ShowOnHomepage    INDEX     ]   CREATE INDEX "IX_Product_ShowOnHomepage" ON public."Product" USING btree ("ShowOnHomepage");
 /   DROP INDEX public."IX_Product_ShowOnHomepage";
       public            postgres    false    273            �           1259    237616 3   IX_Product_SpecificationAttribute_Mapping_ProductId    INDEX     �   CREATE INDEX "IX_Product_SpecificationAttribute_Mapping_ProductId" ON public."Product_SpecificationAttribute_Mapping" USING btree ("ProductId");
 I   DROP INDEX public."IX_Product_SpecificationAttribute_Mapping_ProductId";
       public            postgres    false    350            �           1259    237622 ?   IX_Product_SpecificationAttribute_Mapping_SpecificationAttribut    INDEX     �   CREATE INDEX "IX_Product_SpecificationAttribute_Mapping_SpecificationAttribut" ON public."Product_SpecificationAttribute_Mapping" USING btree ("SpecificationAttributeOptionId");
 U   DROP INDEX public."IX_Product_SpecificationAttribute_Mapping_SpecificationAttribut";
       public            postgres    false    350                       1259    238416    IX_Product_SubjectToAcl    INDEX     Y   CREATE INDEX "IX_Product_SubjectToAcl" ON public."Product" USING btree ("SubjectToAcl");
 -   DROP INDEX public."IX_Product_SubjectToAcl";
       public            postgres    false    273                       1259    238413    IX_Product_VisibleIndividually    INDEX     g   CREATE INDEX "IX_Product_VisibleIndividually" ON public."Product" USING btree ("VisibleIndividually");
 4   DROP INDEX public."IX_Product_VisibleIndividually";
       public            postgres    false    273                       1259    238412 9   IX_Product_VisibleIndividually_Published_Deleted_Extended    INDEX     �   CREATE INDEX "IX_Product_VisibleIndividually_Published_Deleted_Extended" ON public."Product" USING btree ("VisibleIndividually", "Published", "Deleted");
 O   DROP INDEX public."IX_Product_VisibleIndividually_Published_Deleted_Extended";
       public            postgres    false    273    273    273                       1259    238409    IX_QueuedEmail_CreatedOnUtc    INDEX     f   CREATE INDEX "IX_QueuedEmail_CreatedOnUtc" ON public."QueuedEmail" USING btree ("CreatedOnUtc" DESC);
 1   DROP INDEX public."IX_QueuedEmail_CreatedOnUtc";
       public            postgres    false    426                       1259    238172    IX_QueuedEmail_EmailAccountId    INDEX     e   CREATE INDEX "IX_QueuedEmail_EmailAccountId" ON public."QueuedEmail" USING btree ("EmailAccountId");
 3   DROP INDEX public."IX_QueuedEmail_EmailAccountId";
       public            postgres    false    426                        1259    238408 7   IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended    INDEX     �   CREATE INDEX "IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended" ON public."QueuedEmail" USING btree ("SentOnUtc", "DontSendBeforeDateUtc");
 M   DROP INDEX public."IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended";
       public            postgres    false    426    426            N           1259    237312 -   IX_RecurringPaymentHistory_RecurringPaymentId    INDEX     �   CREATE INDEX "IX_RecurringPaymentHistory_RecurringPaymentId" ON public."RecurringPaymentHistory" USING btree ("RecurringPaymentId");
 C   DROP INDEX public."IX_RecurringPaymentHistory_RecurringPaymentId";
       public            postgres    false    311            K           1259    237299 "   IX_RecurringPayment_InitialOrderId    INDEX     o   CREATE INDEX "IX_RecurringPayment_InitialOrderId" ON public."RecurringPayment" USING btree ("InitialOrderId");
 8   DROP INDEX public."IX_RecurringPayment_InitialOrderId";
       public            postgres    false    309                       1259    238407    IX_RelatedProduct_ProductId1    INDEX     c   CREATE INDEX "IX_RelatedProduct_ProductId1" ON public."RelatedProduct" USING btree ("ProductId1");
 2   DROP INDEX public."IX_RelatedProduct_ProductId1";
       public            postgres    false    279            �           1259    236972    IX_ReturnRequest_CustomerId    INDEX     a   CREATE INDEX "IX_ReturnRequest_CustomerId" ON public."ReturnRequest" USING btree ("CustomerId");
 1   DROP INDEX public."IX_ReturnRequest_CustomerId";
       public            postgres    false    263            >           1259    237237 !   IX_RewardPointsHistory_CustomerId    INDEX     m   CREATE INDEX "IX_RewardPointsHistory_CustomerId" ON public."RewardPointsHistory" USING btree ("CustomerId");
 7   DROP INDEX public."IX_RewardPointsHistory_CustomerId";
       public            postgres    false    301            �           1259    237696    IX_ShipmentItem_ShipmentId    INDEX     _   CREATE INDEX "IX_ShipmentItem_ShipmentId" ON public."ShipmentItem" USING btree ("ShipmentId");
 0   DROP INDEX public."IX_ShipmentItem_ShipmentId";
       public            postgres    false    362            �           1259    237683    IX_Shipment_OrderId    INDEX     Q   CREATE INDEX "IX_Shipment_OrderId" ON public."Shipment" USING btree ("OrderId");
 )   DROP INDEX public."IX_Shipment_OrderId";
       public            postgres    false    360            �           1259    237722 (   IX_ShippingMethodRestrictions_Country_Id    INDEX     {   CREATE INDEX "IX_ShippingMethodRestrictions_Country_Id" ON public."ShippingMethodRestrictions" USING btree ("Country_Id");
 >   DROP INDEX public."IX_ShippingMethodRestrictions_Country_Id";
       public            postgres    false    365            �           1259    237716 /   IX_ShippingMethodRestrictions_ShippingMethod_Id    INDEX     �   CREATE INDEX "IX_ShippingMethodRestrictions_ShippingMethod_Id" ON public."ShippingMethodRestrictions" USING btree ("ShippingMethod_Id");
 E   DROP INDEX public."IX_ShippingMethodRestrictions_ShippingMethod_Id";
       public            postgres    false    365            Q           1259    237327    IX_ShoppingCartItem_CustomerId    INDEX     g   CREATE INDEX "IX_ShoppingCartItem_CustomerId" ON public."ShoppingCartItem" USING btree ("CustomerId");
 4   DROP INDEX public."IX_ShoppingCartItem_CustomerId";
       public            postgres    false    313            R           1259    237333    IX_ShoppingCartItem_ProductId    INDEX     e   CREATE INDEX "IX_ShoppingCartItem_ProductId" ON public."ShoppingCartItem" USING btree ("ProductId");
 3   DROP INDEX public."IX_ShoppingCartItem_ProductId";
       public            postgres    false    313            S           1259    238406 1   IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId    INDEX     �   CREATE INDEX "IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId" ON public."ShoppingCartItem" USING btree ("ShoppingCartTypeId", "CustomerId");
 G   DROP INDEX public."IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId";
       public            postgres    false    313    313            �           1259    237601 8   IX_SpecificationAttributeOption_SpecificationAttributeId    INDEX     �   CREATE INDEX "IX_SpecificationAttributeOption_SpecificationAttributeId" ON public."SpecificationAttributeOption" USING btree ("SpecificationAttributeId");
 N   DROP INDEX public."IX_SpecificationAttributeOption_SpecificationAttributeId";
       public            postgres    false    348                       1259    237091 7   IX_SpecificationAttribute_SpecificationAttributeGroupId    INDEX     �   CREATE INDEX "IX_SpecificationAttribute_SpecificationAttributeGroupId" ON public."SpecificationAttribute" USING btree ("SpecificationAttributeGroupId");
 M   DROP INDEX public."IX_SpecificationAttribute_SpecificationAttributeGroupId";
       public            postgres    false    285            �           1259    236749    IX_StateProvince_CountryId    INDEX     _   CREATE INDEX "IX_StateProvince_CountryId" ON public."StateProvince" USING btree ("CountryId");
 0   DROP INDEX public."IX_StateProvince_CountryId";
       public            postgres    false    235            �           1259    237756 !   IX_StockQuantityHistory_ProductId    INDEX     m   CREATE INDEX "IX_StockQuantityHistory_ProductId" ON public."StockQuantityHistory" USING btree ("ProductId");
 7   DROP INDEX public."IX_StockQuantityHistory_ProductId";
       public            postgres    false    369            X           1259    238405 #   IX_StoreMapping_EntityId_EntityName    INDEX     t   CREATE INDEX "IX_StoreMapping_EntityId_EntityName" ON public."StoreMapping" USING btree ("EntityId", "EntityName");
 9   DROP INDEX public."IX_StoreMapping_EntityId_EntityName";
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    317    317            Y           1259    237357    IX_StoreMapping_StoreId    INDEX     Y   CREATE INDEX "IX_StoreMapping_StoreId" ON public."StoreMapping" USING btree ("StoreId");
 -   DROP INDEX public."IX_StoreMapping_StoreId";
       public            postgres    false    317            �           1259    237635    IX_TierPrice_CustomerRoleId    INDEX     a   CREATE INDEX "IX_TierPrice_CustomerRoleId" ON public."TierPrice" USING btree ("CustomerRoleId");
 1   DROP INDEX public."IX_TierPrice_CustomerRoleId";
       public            postgres    false    352            �           1259    237641    IX_TierPrice_ProductId    INDEX     W   CREATE INDEX "IX_TierPrice_ProductId" ON public."TierPrice" USING btree ("ProductId");
 ,   DROP INDEX public."IX_TierPrice_ProductId";
       public            postgres    false    352            ?           1259    238404    IX_UrlRecord_Custom_1    INDEX     }   CREATE INDEX "IX_UrlRecord_Custom_1" ON public."UrlRecord" USING btree ("EntityId", "EntityName", "LanguageId", "IsActive");
 +   DROP INDEX public."IX_UrlRecord_Custom_1";
       public            postgres    false    443    443    443    443    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            @           1259    238403    IX_UrlRecord_Slug    INDEX     M   CREATE INDEX "IX_UrlRecord_Slug" ON public."UrlRecord" USING btree ("Slug");
 '   DROP INDEX public."IX_UrlRecord_Slug";
       public            postgres    false    443    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            O           1259    238382 )   IX_VendorAttributeValue_VendorAttributeId    INDEX     }   CREATE INDEX "IX_VendorAttributeValue_VendorAttributeId" ON public."VendorAttributeValue" USING btree ("VendorAttributeId");
 ?   DROP INDEX public."IX_VendorAttributeValue_VendorAttributeId";
       public            postgres    false    457            R           1259    238397    IX_VendorNote_VendorId    INDEX     W   CREATE INDEX "IX_VendorNote_VendorId" ON public."VendorNote" USING btree ("VendorId");
 ,   DROP INDEX public."IX_VendorNote_VendorId";
       public            postgres    false    459            �           1259    236659 
   UC_Version    INDEX     [   CREATE UNIQUE INDEX "UC_Version" ON public."MigrationVersionInfo" USING btree ("Version");
     DROP INDEX public."UC_Version";
       public            postgres    false    217            �           2606    238279 5   AclRecord FK_AclRecord_CustomerRoleId_CustomerRole_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."AclRecord"
    ADD CONSTRAINT "FK_AclRecord_CustomerRoleId_CustomerRole_Id" FOREIGN KEY ("CustomerRoleId") REFERENCES public."CustomerRole"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AclRecord" DROP CONSTRAINT "FK_AclRecord_CustomerRoleId_CustomerRole_Id";
       public          postgres    false    438    252    5607            �           2606    238101 ?   ActivityLog FK_ActivityLog_ActivityLogTypeId_ActivityLogType_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ActivityLog"
    ADD CONSTRAINT "FK_ActivityLog_ActivityLogTypeId_ActivityLogType_Id" FOREIGN KEY ("ActivityLogTypeId") REFERENCES public."ActivityLogType"("Id") ON DELETE CASCADE;
 m   ALTER TABLE ONLY public."ActivityLog" DROP CONSTRAINT "FK_ActivityLog_ActivityLogTypeId_ActivityLogType_Id";
       public          postgres    false    412    5899    414            �           2606    238107 1   ActivityLog FK_ActivityLog_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ActivityLog"
    ADD CONSTRAINT "FK_ActivityLog_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."ActivityLog" DROP CONSTRAINT "FK_ActivityLog_CustomerId_Customer_Id";
       public          postgres    false    414    5598    247            U           2606    236681 U   AddressAttributeValue FK_AddressAttributeValue_AddressAttributeId_AddressAttribute_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."AddressAttributeValue"
    ADD CONSTRAINT "FK_AddressAttributeValue_AddressAttributeId_AddressAttribute_Id" FOREIGN KEY ("AddressAttributeId") REFERENCES public."AddressAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."AddressAttributeValue" DROP CONSTRAINT "FK_AddressAttributeValue_AddressAttributeId_AddressAttribute_Id";
       public          postgres    false    221    219    5551            W           2606    236765 '   Address FK_Address_CountryId_Country_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "FK_Address_CountryId_Country_Id" FOREIGN KEY ("CountryId") REFERENCES public."Country"("Id");
 U   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "FK_Address_CountryId_Country_Id";
       public          postgres    false    237    5562    227            X           2606    236771 3   Address FK_Address_StateProvinceId_StateProvince_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "FK_Address_StateProvinceId_StateProvince_Id" FOREIGN KEY ("StateProvinceId") REFERENCES public."StateProvince"("Id");
 a   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "FK_Address_StateProvinceId_StateProvince_Id";
       public          postgres    false    237    5572    235            Y           2606    236786 +   Affiliate FK_Affiliate_AddressId_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Affiliate"
    ADD CONSTRAINT "FK_Affiliate_AddressId_Address_Id" FOREIGN KEY ("AddressId") REFERENCES public."Address"("Id");
 Y   ALTER TABLE ONLY public."Affiliate" DROP CONSTRAINT "FK_Affiliate_AddressId_Address_Id";
       public          postgres    false    5576    237    239            h           2606    237046 I   BackInStockSubscription FK_BackInStockSubscription_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BackInStockSubscription"
    ADD CONSTRAINT "FK_BackInStockSubscription_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 w   ALTER TABLE ONLY public."BackInStockSubscription" DROP CONSTRAINT "FK_BackInStockSubscription_CustomerId_Customer_Id";
       public          postgres    false    277    247    5598            i           2606    237052 G   BackInStockSubscription FK_BackInStockSubscription_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BackInStockSubscription"
    ADD CONSTRAINT "FK_BackInStockSubscription_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 u   ALTER TABLE ONLY public."BackInStockSubscription" DROP CONSTRAINT "FK_BackInStockSubscription_ProductId_Product_Id";
       public          postgres    false    277    273    5648            �           2606    237430 1   BlogComment FK_BlogComment_BlogPostId_BlogPost_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BlogComment"
    ADD CONSTRAINT "FK_BlogComment_BlogPostId_BlogPost_Id" FOREIGN KEY ("BlogPostId") REFERENCES public."BlogPost"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."BlogComment" DROP CONSTRAINT "FK_BlogComment_BlogPostId_BlogPost_Id";
       public          postgres    false    325    323    5733            �           2606    237424 1   BlogComment FK_BlogComment_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BlogComment"
    ADD CONSTRAINT "FK_BlogComment_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."BlogComment" DROP CONSTRAINT "FK_BlogComment_CustomerId_Customer_Id";
       public          postgres    false    247    325    5598            �           2606    237418 +   BlogComment FK_BlogComment_StoreId_Store_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BlogComment"
    ADD CONSTRAINT "FK_BlogComment_StoreId_Store_Id" FOREIGN KEY ("StoreId") REFERENCES public."Store"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."BlogComment" DROP CONSTRAINT "FK_BlogComment_StoreId_Store_Id";
       public          postgres    false    315    325    5719            �           2606    237403 +   BlogPost FK_BlogPost_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."BlogPost"
    ADD CONSTRAINT "FK_BlogPost_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."BlogPost" DROP CONSTRAINT "FK_BlogPost_LanguageId_Language_Id";
       public          postgres    false    241    5582    323            e           2606    236949 V   CheckoutAttributeValue FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute    FK CONSTRAINT     �   ALTER TABLE ONLY public."CheckoutAttributeValue"
    ADD CONSTRAINT "FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute" FOREIGN KEY ("CheckoutAttributeId") REFERENCES public."CheckoutAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."CheckoutAttributeValue" DROP CONSTRAINT "FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute";
       public          postgres    false    259    5616    257            `           2606    236878 <   CustomerAddresses FK_CustomerAddresses_Address_Id_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."CustomerAddresses"
    ADD CONSTRAINT "FK_CustomerAddresses_Address_Id_Address_Id" FOREIGN KEY ("Address_Id") REFERENCES public."Address"("Id") ON DELETE CASCADE;
 j   ALTER TABLE ONLY public."CustomerAddresses" DROP CONSTRAINT "FK_CustomerAddresses_Address_Id_Address_Id";
       public          postgres    false    5576    237    250            a           2606    236884 >   CustomerAddresses FK_CustomerAddresses_Customer_Id_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."CustomerAddresses"
    ADD CONSTRAINT "FK_CustomerAddresses_Customer_Id_Customer_Id" FOREIGN KEY ("Customer_Id") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 l   ALTER TABLE ONLY public."CustomerAddresses" DROP CONSTRAINT "FK_CustomerAddresses_Customer_Id_Customer_Id";
       public          postgres    false    247    250    5598            Z           2606    236819 V   CustomerAttributeValue FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute    FK CONSTRAINT     �   ALTER TABLE ONLY public."CustomerAttributeValue"
    ADD CONSTRAINT "FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute" FOREIGN KEY ("CustomerAttributeId") REFERENCES public."CustomerAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."CustomerAttributeValue" DROP CONSTRAINT "FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute";
       public          postgres    false    5584    243    245            _           2606    236867 ;   CustomerPassword FK_CustomerPassword_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."CustomerPassword"
    ADD CONSTRAINT "FK_CustomerPassword_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."CustomerPassword" DROP CONSTRAINT "FK_CustomerPassword_CustomerId_Customer_Id";
       public          postgres    false    249    247    5598            [           2606    236846 1   Customer FK_Customer_BillingAddress_Id_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "FK_Customer_BillingAddress_Id_Address_Id" FOREIGN KEY ("BillingAddress_Id") REFERENCES public."Address"("Id");
 _   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "FK_Customer_BillingAddress_Id_Address_Id";
       public          postgres    false    247    5576    237            \           2606    236834 +   Customer FK_Customer_CurrencyId_Currency_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "FK_Customer_CurrencyId_Currency_Id" FOREIGN KEY ("CurrencyId") REFERENCES public."Currency"("Id") ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "FK_Customer_CurrencyId_Currency_Id";
       public          postgres    false    229    247    5565            b           2606    236910 ]   Customer_CustomerRole_Mapping FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_I    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping"
    ADD CONSTRAINT "FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_I" FOREIGN KEY ("CustomerRole_Id") REFERENCES public."CustomerRole"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping" DROP CONSTRAINT "FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_I";
       public          postgres    false    5607    253    252            c           2606    236904 V   Customer_CustomerRole_Mapping FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping"
    ADD CONSTRAINT "FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id" FOREIGN KEY ("Customer_Id") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Customer_CustomerRole_Mapping" DROP CONSTRAINT "FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id";
       public          postgres    false    247    253    5598            ]           2606    236840 +   Customer FK_Customer_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "FK_Customer_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "FK_Customer_LanguageId_Language_Id";
       public          postgres    false    247    5582    241            ^           2606    236852 2   Customer FK_Customer_ShippingAddress_Id_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "FK_Customer_ShippingAddress_Id_Address_Id" FOREIGN KEY ("ShippingAddress_Id") REFERENCES public."Address"("Id");
 `   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "FK_Customer_ShippingAddress_Id_Address_Id";
       public          postgres    false    247    237    5576            �           2606    237904 A   DiscountRequirement FK_DiscountRequirement_DiscountId_Discount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."DiscountRequirement"
    ADD CONSTRAINT "FK_DiscountRequirement_DiscountId_Discount_Id" FOREIGN KEY ("DiscountId") REFERENCES public."Discount"("Id") ON DELETE CASCADE;
 o   ALTER TABLE ONLY public."DiscountRequirement" DROP CONSTRAINT "FK_DiscountRequirement_DiscountId_Discount_Id";
       public          postgres    false    389    385    5845            �           2606    237910 J   DiscountRequirement FK_DiscountRequirement_ParentId_DiscountRequirement_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."DiscountRequirement"
    ADD CONSTRAINT "FK_DiscountRequirement_ParentId_DiscountRequirement_Id" FOREIGN KEY ("ParentId") REFERENCES public."DiscountRequirement"("Id");
 x   ALTER TABLE ONLY public."DiscountRequirement" DROP CONSTRAINT "FK_DiscountRequirement_ParentId_DiscountRequirement_Id";
       public          postgres    false    389    389    5857            �           2606    237923 C   DiscountUsageHistory FK_DiscountUsageHistory_DiscountId_Discount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."DiscountUsageHistory"
    ADD CONSTRAINT "FK_DiscountUsageHistory_DiscountId_Discount_Id" FOREIGN KEY ("DiscountId") REFERENCES public."Discount"("Id") ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."DiscountUsageHistory" DROP CONSTRAINT "FK_DiscountUsageHistory_DiscountId_Discount_Id";
       public          postgres    false    5845    385    391            �           2606    237929 =   DiscountUsageHistory FK_DiscountUsageHistory_OrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."DiscountUsageHistory"
    ADD CONSTRAINT "FK_DiscountUsageHistory_OrderId_Order_Id" FOREIGN KEY ("OrderId") REFERENCES public."Order"("Id") ON DELETE CASCADE;
 k   ALTER TABLE ONLY public."DiscountUsageHistory" DROP CONSTRAINT "FK_DiscountUsageHistory_OrderId_Order_Id";
       public          postgres    false    5689    391    297            �           2606    237872 T   Discount_AppliedToCategories FK_Discount_AppliedToCategories_Category_Id_Category_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToCategories"
    ADD CONSTRAINT "FK_Discount_AppliedToCategories_Category_Id_Category_Id" FOREIGN KEY ("Category_Id") REFERENCES public."Category"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Discount_AppliedToCategories" DROP CONSTRAINT "FK_Discount_AppliedToCategories_Category_Id_Category_Id";
       public          postgres    false    386    5745    327            �           2606    237866 T   Discount_AppliedToCategories FK_Discount_AppliedToCategories_Discount_Id_Discount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToCategories"
    ADD CONSTRAINT "FK_Discount_AppliedToCategories_Discount_Id_Discount_Id" FOREIGN KEY ("Discount_Id") REFERENCES public."Discount"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Discount_AppliedToCategories" DROP CONSTRAINT "FK_Discount_AppliedToCategories_Discount_Id_Discount_Id";
       public          postgres    false    5845    386    385            �           2606    237940 Z   Discount_AppliedToManufacturers FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToManufacturers"
    ADD CONSTRAINT "FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id" FOREIGN KEY ("Discount_Id") REFERENCES public."Discount"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Discount_AppliedToManufacturers" DROP CONSTRAINT "FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id";
       public          postgres    false    5845    392    385            �           2606    237946 _   Discount_AppliedToManufacturers FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToManufacturers"
    ADD CONSTRAINT "FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer" FOREIGN KEY ("Manufacturer_Id") REFERENCES public."Manufacturer"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Discount_AppliedToManufacturers" DROP CONSTRAINT "FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer";
       public          postgres    false    5761    335    392            �           2606    237883 P   Discount_AppliedToProducts FK_Discount_AppliedToProducts_Discount_Id_Discount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToProducts"
    ADD CONSTRAINT "FK_Discount_AppliedToProducts_Discount_Id_Discount_Id" FOREIGN KEY ("Discount_Id") REFERENCES public."Discount"("Id") ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public."Discount_AppliedToProducts" DROP CONSTRAINT "FK_Discount_AppliedToProducts_Discount_Id_Discount_Id";
       public          postgres    false    5845    385    387            �           2606    237889 N   Discount_AppliedToProducts FK_Discount_AppliedToProducts_Product_Id_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discount_AppliedToProducts"
    ADD CONSTRAINT "FK_Discount_AppliedToProducts_Product_Id_Product_Id" FOREIGN KEY ("Product_Id") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 |   ALTER TABLE ONLY public."Discount_AppliedToProducts" DROP CONSTRAINT "FK_Discount_AppliedToProducts_Product_Id_Product_Id";
       public          postgres    false    5648    273    387            d           2606    236925 S   ExternalAuthenticationRecord FK_ExternalAuthenticationRecord_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExternalAuthenticationRecord"
    ADD CONSTRAINT "FK_ExternalAuthenticationRecord_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ExternalAuthenticationRecord" DROP CONSTRAINT "FK_ExternalAuthenticationRecord_CustomerId_Customer_Id";
       public          postgres    false    247    5598    255            �           2606    237991 9   Forums_Forum FK_Forums_Forum_ForumGroupId_Forums_Group_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Forum"
    ADD CONSTRAINT "FK_Forums_Forum_ForumGroupId_Forums_Group_Id" FOREIGN KEY ("ForumGroupId") REFERENCES public."Forums_Group"("Id") ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."Forums_Forum" DROP CONSTRAINT "FK_Forums_Forum_ForumGroupId_Forums_Group_Id";
       public          postgres    false    5872    396    398            �           2606    238046 =   Forums_PostVote FK_Forums_PostVote_ForumPostId_Forums_Post_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_PostVote"
    ADD CONSTRAINT "FK_Forums_PostVote_ForumPostId_Forums_Post_Id" FOREIGN KEY ("ForumPostId") REFERENCES public."Forums_Post"("Id") ON DELETE CASCADE;
 k   ALTER TABLE ONLY public."Forums_PostVote" DROP CONSTRAINT "FK_Forums_PostVote_ForumPostId_Forums_Post_Id";
       public          postgres    false    402    5885    404            �           2606    238027 1   Forums_Post FK_Forums_Post_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Post"
    ADD CONSTRAINT "FK_Forums_Post_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id");
 _   ALTER TABLE ONLY public."Forums_Post" DROP CONSTRAINT "FK_Forums_Post_CustomerId_Customer_Id";
       public          postgres    false    5598    247    402            �           2606    238033 2   Forums_Post FK_Forums_Post_TopicId_Forums_Topic_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Post"
    ADD CONSTRAINT "FK_Forums_Post_TopicId_Forums_Topic_Id" FOREIGN KEY ("TopicId") REFERENCES public."Forums_Topic"("Id") ON DELETE CASCADE;
 `   ALTER TABLE ONLY public."Forums_Post" DROP CONSTRAINT "FK_Forums_Post_TopicId_Forums_Topic_Id";
       public          postgres    false    5881    402    400            �           2606    237961 I   Forums_PrivateMessage FK_Forums_PrivateMessage_FromCustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_PrivateMessage"
    ADD CONSTRAINT "FK_Forums_PrivateMessage_FromCustomerId_Customer_Id" FOREIGN KEY ("FromCustomerId") REFERENCES public."Customer"("Id");
 w   ALTER TABLE ONLY public."Forums_PrivateMessage" DROP CONSTRAINT "FK_Forums_PrivateMessage_FromCustomerId_Customer_Id";
       public          postgres    false    247    394    5598            �           2606    237967 G   Forums_PrivateMessage FK_Forums_PrivateMessage_ToCustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_PrivateMessage"
    ADD CONSTRAINT "FK_Forums_PrivateMessage_ToCustomerId_Customer_Id" FOREIGN KEY ("ToCustomerId") REFERENCES public."Customer"("Id");
 u   ALTER TABLE ONLY public."Forums_PrivateMessage" DROP CONSTRAINT "FK_Forums_PrivateMessage_ToCustomerId_Customer_Id";
       public          postgres    false    394    5598    247            �           2606    238059 A   Forums_Subscription FK_Forums_Subscription_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Subscription"
    ADD CONSTRAINT "FK_Forums_Subscription_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id");
 o   ALTER TABLE ONLY public."Forums_Subscription" DROP CONSTRAINT "FK_Forums_Subscription_CustomerId_Customer_Id";
       public          postgres    false    406    247    5598            �           2606    238006 3   Forums_Topic FK_Forums_Topic_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Topic"
    ADD CONSTRAINT "FK_Forums_Topic_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id");
 a   ALTER TABLE ONLY public."Forums_Topic" DROP CONSTRAINT "FK_Forums_Topic_CustomerId_Customer_Id";
       public          postgres    false    400    5598    247            �           2606    238012 4   Forums_Topic FK_Forums_Topic_ForumId_Forums_Forum_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Forums_Topic"
    ADD CONSTRAINT "FK_Forums_Topic_ForumId_Forums_Forum_Id" FOREIGN KEY ("ForumId") REFERENCES public."Forums_Forum"("Id") ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."Forums_Topic" DROP CONSTRAINT "FK_Forums_Topic_ForumId_Forums_Forum_Id";
       public          postgres    false    5876    398    400            z           2606    237266 C   GiftCardUsageHistory FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."GiftCardUsageHistory"
    ADD CONSTRAINT "FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id" FOREIGN KEY ("GiftCardId") REFERENCES public."GiftCard"("Id") ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."GiftCardUsageHistory" DROP CONSTRAINT "FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id";
       public          postgres    false    5699    305    303            {           2606    237272 E   GiftCardUsageHistory FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."GiftCardUsageHistory"
    ADD CONSTRAINT "FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id" FOREIGN KEY ("UsedWithOrderId") REFERENCES public."Order"("Id") ON DELETE CASCADE;
 s   ALTER TABLE ONLY public."GiftCardUsageHistory" DROP CONSTRAINT "FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id";
       public          postgres    false    5689    297    305            y           2606    237253 :   GiftCard FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."GiftCard"
    ADD CONSTRAINT "FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id" FOREIGN KEY ("PurchasedWithOrderItemId") REFERENCES public."OrderItem"("Id");
 h   ALTER TABLE ONLY public."GiftCard" DROP CONSTRAINT "FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id";
       public          postgres    false    303    5693    299            �           2606    237373 C   LocaleStringResource FK_LocaleStringResource_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LocaleStringResource"
    ADD CONSTRAINT "FK_LocaleStringResource_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."LocaleStringResource" DROP CONSTRAINT "FK_LocaleStringResource_LanguageId_Language_Id";
       public          postgres    false    319    5582    241            �           2606    237388 =   LocalizedProperty FK_LocalizedProperty_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LocalizedProperty"
    ADD CONSTRAINT "FK_LocalizedProperty_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE CASCADE;
 k   ALTER TABLE ONLY public."LocalizedProperty" DROP CONSTRAINT "FK_LocalizedProperty_LanguageId_Language_Id";
       public          postgres    false    5582    321    241            �           2606    238122 !   Log FK_Log_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Log"
    ADD CONSTRAINT "FK_Log_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."Log" DROP CONSTRAINT "FK_Log_CustomerId_Customer_Id";
       public          postgres    false    5598    247    416            �           2606    238203 1   NewsComment FK_NewsComment_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."NewsComment"
    ADD CONSTRAINT "FK_NewsComment_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."NewsComment" DROP CONSTRAINT "FK_NewsComment_CustomerId_Customer_Id";
       public          postgres    false    247    5598    430            �           2606    238209 -   NewsComment FK_NewsComment_NewsItemId_News_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."NewsComment"
    ADD CONSTRAINT "FK_NewsComment_NewsItemId_News_Id" FOREIGN KEY ("NewsItemId") REFERENCES public."News"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."NewsComment" DROP CONSTRAINT "FK_NewsComment_NewsItemId_News_Id";
       public          postgres    false    5925    428    430            �           2606    238215 +   NewsComment FK_NewsComment_StoreId_Store_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."NewsComment"
    ADD CONSTRAINT "FK_NewsComment_StoreId_Store_Id" FOREIGN KEY ("StoreId") REFERENCES public."Store"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."NewsComment" DROP CONSTRAINT "FK_NewsComment_StoreId_Store_Id";
       public          postgres    false    430    315    5719            �           2606    238188 #   News FK_News_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."News"
    ADD CONSTRAINT "FK_News_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."News" DROP CONSTRAINT "FK_News_LanguageId_Language_Id";
       public          postgres    false    428    241    5582            v           2606    237217 '   OrderItem FK_OrderItem_OrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderItem"
    ADD CONSTRAINT "FK_OrderItem_OrderId_Order_Id" FOREIGN KEY ("OrderId") REFERENCES public."Order"("Id") ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."OrderItem" DROP CONSTRAINT "FK_OrderItem_OrderId_Order_Id";
       public          postgres    false    299    5689    297            w           2606    237223 +   OrderItem FK_OrderItem_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderItem"
    ADD CONSTRAINT "FK_OrderItem_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."OrderItem" DROP CONSTRAINT "FK_OrderItem_ProductId_Product_Id";
       public          postgres    false    5648    299    273            |           2606    237287 '   OrderNote FK_OrderNote_OrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderNote"
    ADD CONSTRAINT "FK_OrderNote_OrderId_Order_Id" FOREIGN KEY ("OrderId") REFERENCES public."Order"("Id") ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."OrderNote" DROP CONSTRAINT "FK_OrderNote_OrderId_Order_Id";
       public          postgres    false    297    307    5689            q           2606    237184 *   Order FK_Order_BillingAddressId_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_BillingAddressId_Address_Id" FOREIGN KEY ("BillingAddressId") REFERENCES public."Address"("Id");
 X   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_Order_BillingAddressId_Address_Id";
       public          postgres    false    5576    297    237            r           2606    237190 %   Order FK_Order_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id");
 S   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_Order_CustomerId_Customer_Id";
       public          postgres    false    247    5598    297            s           2606    237196 )   Order FK_Order_PickupAddressId_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_PickupAddressId_Address_Id" FOREIGN KEY ("PickupAddressId") REFERENCES public."Address"("Id");
 W   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_Order_PickupAddressId_Address_Id";
       public          postgres    false    237    5576    297            t           2606    238461 @   Order FK_Order_RewardPointsHistoryEntryId_RewardPointsHistory_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_RewardPointsHistoryEntryId_RewardPointsHistory_Id" FOREIGN KEY ("RewardPointsHistoryEntryId") REFERENCES public."RewardPointsHistory"("Id");
 n   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_Order_RewardPointsHistoryEntryId_RewardPointsHistory_Id";
       public          postgres    false    5696    301    297            u           2606    237202 +   Order FK_Order_ShippingAddressId_Address_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_ShippingAddressId_Address_Id" FOREIGN KEY ("ShippingAddressId") REFERENCES public."Address"("Id");
 Y   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_Order_ShippingAddressId_Address_Id";
       public          postgres    false    237    5576    297            �           2606    238305 ]   PermissionRecord_Role_Mapping FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_I    FK CONSTRAINT     �   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping"
    ADD CONSTRAINT "FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_I" FOREIGN KEY ("CustomerRole_Id") REFERENCES public."CustomerRole"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping" DROP CONSTRAINT "FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_I";
       public          postgres    false    441    5607    252            �           2606    238299 ]   PermissionRecord_Role_Mapping FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_Permission    FK CONSTRAINT     �   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping"
    ADD CONSTRAINT "FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_Permission" FOREIGN KEY ("PermissionRecord_Id") REFERENCES public."PermissionRecord"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."PermissionRecord_Role_Mapping" DROP CONSTRAINT "FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_Permission";
       public          postgres    false    5946    440    441            �           2606    237790 3   PictureBinary FK_PictureBinary_PictureId_Picture_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."PictureBinary"
    ADD CONSTRAINT "FK_PictureBinary_PictureId_Picture_Id" FOREIGN KEY ("PictureId") REFERENCES public."Picture"("Id") ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."PictureBinary" DROP CONSTRAINT "FK_PictureBinary_PictureId_Picture_Id";
       public          postgres    false    375    5828    373            �           2606    238245 '   PollAnswer FK_PollAnswer_PollId_Poll_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."PollAnswer"
    ADD CONSTRAINT "FK_PollAnswer_PollId_Poll_Id" FOREIGN KEY ("PollId") REFERENCES public."Poll"("Id") ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."PollAnswer" DROP CONSTRAINT "FK_PollAnswer_PollId_Poll_Id";
       public          postgres    false    5933    434    432            �           2606    238264 ;   PollVotingRecord FK_PollVotingRecord_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."PollVotingRecord"
    ADD CONSTRAINT "FK_PollVotingRecord_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."PollVotingRecord" DROP CONSTRAINT "FK_PollVotingRecord_CustomerId_Customer_Id";
       public          postgres    false    5598    247    436            �           2606    238258 ?   PollVotingRecord FK_PollVotingRecord_PollAnswerId_PollAnswer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."PollVotingRecord"
    ADD CONSTRAINT "FK_PollVotingRecord_PollAnswerId_PollAnswer_Id" FOREIGN KEY ("PollAnswerId") REFERENCES public."PollAnswer"("Id") ON DELETE CASCADE;
 m   ALTER TABLE ONLY public."PollVotingRecord" DROP CONSTRAINT "FK_PollVotingRecord_PollAnswerId_PollAnswer_Id";
       public          postgres    false    436    5936    434            �           2606    238230 #   Poll FK_Poll_LanguageId_Language_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poll"
    ADD CONSTRAINT "FK_Poll_LanguageId_Language_Id" FOREIGN KEY ("LanguageId") REFERENCES public."Language"("Id") ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."Poll" DROP CONSTRAINT "FK_Poll_LanguageId_Language_Id";
       public          postgres    false    5582    241    432            g           2606    237006 _   PredefinedProductAttributeValue FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAt    FK CONSTRAINT     �   ALTER TABLE ONLY public."PredefinedProductAttributeValue"
    ADD CONSTRAINT "FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAt" FOREIGN KEY ("ProductAttributeId") REFERENCES public."ProductAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."PredefinedProductAttributeValue" DROP CONSTRAINT "FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAt";
       public          postgres    false    267    5628    269            l           2606    237120 b   ProductAttributeCombinationPicture FK_ProductAttributeCombinationPicture_ProductAttributeCombinati    FK CONSTRAINT     	  ALTER TABLE ONLY public."ProductAttributeCombinationPicture"
    ADD CONSTRAINT "FK_ProductAttributeCombinationPicture_ProductAttributeCombinati" FOREIGN KEY ("ProductAttributeCombinationId") REFERENCES public."ProductAttributeCombination"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductAttributeCombinationPicture" DROP CONSTRAINT "FK_ProductAttributeCombinationPicture_ProductAttributeCombinati";
       public          postgres    false    287    289    5667            k           2606    237107 O   ProductAttributeCombination FK_ProductAttributeCombination_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductAttributeCombination"
    ADD CONSTRAINT "FK_ProductAttributeCombination_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 }   ALTER TABLE ONLY public."ProductAttributeCombination" DROP CONSTRAINT "FK_ProductAttributeCombination_ProductId_Product_Id";
       public          postgres    false    273    287    5648            p           2606    237169 \   ProductAttributeValuePicture FK_ProductAttributeValuePicture_ProductAttributeValueId_Product    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductAttributeValuePicture"
    ADD CONSTRAINT "FK_ProductAttributeValuePicture_ProductAttributeValueId_Product" FOREIGN KEY ("ProductAttributeValueId") REFERENCES public."ProductAttributeValue"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductAttributeValuePicture" DROP CONSTRAINT "FK_ProductAttributeValuePicture_ProductAttributeValueId_Product";
       public          postgres    false    295    293    5679            o           2606    237156 U   ProductAttributeValue FK_ProductAttributeValue_ProductAttributeMappingId_Product_Prod    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductAttributeValue"
    ADD CONSTRAINT "FK_ProductAttributeValue_ProductAttributeMappingId_Product_Prod" FOREIGN KEY ("ProductAttributeMappingId") REFERENCES public."Product_ProductAttribute_Mapping"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductAttributeValue" DROP CONSTRAINT "FK_ProductAttributeValue_ProductAttributeMappingId_Product_Prod";
       public          postgres    false    293    291    5675            �           2606    237568 U   ProductReviewHelpfulness FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReviewHelpfulness"
    ADD CONSTRAINT "FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id" FOREIGN KEY ("ProductReviewId") REFERENCES public."ProductReview"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductReviewHelpfulness" DROP CONSTRAINT "FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id";
       public          postgres    false    342    5779    344            �           2606    237543 5   ProductReview FK_ProductReview_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview"
    ADD CONSTRAINT "FK_ProductReview_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProductReview" DROP CONSTRAINT "FK_ProductReview_CustomerId_Customer_Id";
       public          postgres    false    247    342    5598            �           2606    237549 3   ProductReview FK_ProductReview_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview"
    ADD CONSTRAINT "FK_ProductReview_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProductReview" DROP CONSTRAINT "FK_ProductReview_ProductId_Product_Id";
       public          postgres    false    342    5648    273            �           2606    237581 `   ProductReview_ReviewType_Mapping FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductRevi    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping"
    ADD CONSTRAINT "FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductRevi" FOREIGN KEY ("ProductReviewId") REFERENCES public."ProductReview"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping" DROP CONSTRAINT "FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductRevi";
       public          postgres    false    346    342    5779            �           2606    237587 _   ProductReview_ReviewType_Mapping FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping"
    ADD CONSTRAINT "FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id" FOREIGN KEY ("ReviewTypeId") REFERENCES public."ReviewType"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ProductReview_ReviewType_Mapping" DROP CONSTRAINT "FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id";
       public          postgres    false    346    281    5659            �           2606    237555 /   ProductReview FK_ProductReview_StoreId_Store_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductReview"
    ADD CONSTRAINT "FK_ProductReview_StoreId_Store_Id" FOREIGN KEY ("StoreId") REFERENCES public."Store"("Id") ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."ProductReview" DROP CONSTRAINT "FK_ProductReview_StoreId_Store_Id";
       public          postgres    false    5719    315    342            �           2606    237837 1   ProductVideo FK_ProductVideo_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductVideo"
    ADD CONSTRAINT "FK_ProductVideo_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."ProductVideo" DROP CONSTRAINT "FK_ProductVideo_ProductId_Product_Id";
       public          postgres    false    381    273    5648            �           2606    237831 -   ProductVideo FK_ProductVideo_VideoId_Video_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductVideo"
    ADD CONSTRAINT "FK_ProductVideo_VideoId_Video_Id" FOREIGN KEY ("VideoId") REFERENCES public."Video"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."ProductVideo" DROP CONSTRAINT "FK_ProductVideo_VideoId_Video_Id";
       public          postgres    false    381    379    5837            �           2606    237736 K   ProductWarehouseInventory FK_ProductWarehouseInventory_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductWarehouseInventory"
    ADD CONSTRAINT "FK_ProductWarehouseInventory_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 y   ALTER TABLE ONLY public."ProductWarehouseInventory" DROP CONSTRAINT "FK_ProductWarehouseInventory_ProductId_Product_Id";
       public          postgres    false    367    273    5648            �           2606    237742 O   ProductWarehouseInventory FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductWarehouseInventory"
    ADD CONSTRAINT "FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id" FOREIGN KEY ("WarehouseId") REFERENCES public."Warehouse"("Id") ON DELETE CASCADE;
 }   ALTER TABLE ONLY public."ProductWarehouseInventory" DROP CONSTRAINT "FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id";
       public          postgres    false    354    5801    367            �           2606    237461 K   Product_Category_Mapping FK_Product_Category_Mapping_CategoryId_Category_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Category_Mapping"
    ADD CONSTRAINT "FK_Product_Category_Mapping_CategoryId_Category_Id" FOREIGN KEY ("CategoryId") REFERENCES public."Category"("Id") ON DELETE CASCADE;
 y   ALTER TABLE ONLY public."Product_Category_Mapping" DROP CONSTRAINT "FK_Product_Category_Mapping_CategoryId_Category_Id";
       public          postgres    false    331    327    5745            �           2606    237467 I   Product_Category_Mapping FK_Product_Category_Mapping_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Category_Mapping"
    ADD CONSTRAINT "FK_Product_Category_Mapping_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 w   ALTER TABLE ONLY public."Product_Category_Mapping" DROP CONSTRAINT "FK_Product_Category_Mapping_ProductId_Product_Id";
       public          postgres    false    273    5648    331            �           2606    237505 [   Product_Manufacturer_Mapping FK_Product_Manufacturer_Mapping_ManufacturerId_Manufacturer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Manufacturer_Mapping"
    ADD CONSTRAINT "FK_Product_Manufacturer_Mapping_ManufacturerId_Manufacturer_Id" FOREIGN KEY ("ManufacturerId") REFERENCES public."Manufacturer"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_Manufacturer_Mapping" DROP CONSTRAINT "FK_Product_Manufacturer_Mapping_ManufacturerId_Manufacturer_Id";
       public          postgres    false    339    5761    335            �           2606    237511 Q   Product_Manufacturer_Mapping FK_Product_Manufacturer_Mapping_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Manufacturer_Mapping"
    ADD CONSTRAINT "FK_Product_Manufacturer_Mapping_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
    ALTER TABLE ONLY public."Product_Manufacturer_Mapping" DROP CONSTRAINT "FK_Product_Manufacturer_Mapping_ProductId_Product_Id";
       public          postgres    false    5648    339    273            �           2606    237803 G   Product_Picture_Mapping FK_Product_Picture_Mapping_PictureId_Picture_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Picture_Mapping"
    ADD CONSTRAINT "FK_Product_Picture_Mapping_PictureId_Picture_Id" FOREIGN KEY ("PictureId") REFERENCES public."Picture"("Id") ON DELETE CASCADE;
 u   ALTER TABLE ONLY public."Product_Picture_Mapping" DROP CONSTRAINT "FK_Product_Picture_Mapping_PictureId_Picture_Id";
       public          postgres    false    5828    373    377            �           2606    237809 G   Product_Picture_Mapping FK_Product_Picture_Mapping_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Picture_Mapping"
    ADD CONSTRAINT "FK_Product_Picture_Mapping_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 u   ALTER TABLE ONLY public."Product_Picture_Mapping" DROP CONSTRAINT "FK_Product_Picture_Mapping_ProductId_Product_Id";
       public          postgres    false    377    273    5648            m           2606    237135 `   Product_ProductAttribute_Mapping FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductA    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping"
    ADD CONSTRAINT "FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductA" FOREIGN KEY ("ProductAttributeId") REFERENCES public."ProductAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping" DROP CONSTRAINT "FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductA";
       public          postgres    false    5628    291    267            n           2606    237141 Y   Product_ProductAttribute_Mapping FK_Product_ProductAttribute_Mapping_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping"
    ADD CONSTRAINT "FK_Product_ProductAttribute_Mapping_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_ProductAttribute_Mapping" DROP CONSTRAINT "FK_Product_ProductAttribute_Mapping_ProductId_Product_Id";
       public          postgres    false    291    273    5648            �           2606    237528 T   Product_ProductTag_Mapping FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductTag_Mapping"
    ADD CONSTRAINT "FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id" FOREIGN KEY ("ProductTag_Id") REFERENCES public."ProductTag"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_ProductTag_Mapping" DROP CONSTRAINT "FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id";
       public          postgres    false    340    271    5634            �           2606    237522 N   Product_ProductTag_Mapping FK_Product_ProductTag_Mapping_Product_Id_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_ProductTag_Mapping"
    ADD CONSTRAINT "FK_Product_ProductTag_Mapping_Product_Id_Product_Id" FOREIGN KEY ("Product_Id") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 |   ALTER TABLE ONLY public."Product_ProductTag_Mapping" DROP CONSTRAINT "FK_Product_ProductTag_Mapping_Product_Id_Product_Id";
       public          postgres    false    5648    340    273            �           2606    237617 e   Product_SpecificationAttribute_Mapping FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping"
    ADD CONSTRAINT "FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping" DROP CONSTRAINT "FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id";
       public          postgres    false    273    350    5648            �           2606    237623 f   Product_SpecificationAttribute_Mapping FK_Product_SpecificationAttribute_Mapping_SpecificationAttribut    FK CONSTRAINT       ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping"
    ADD CONSTRAINT "FK_Product_SpecificationAttribute_Mapping_SpecificationAttribut" FOREIGN KEY ("SpecificationAttributeOptionId") REFERENCES public."SpecificationAttributeOption"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."Product_SpecificationAttribute_Mapping" DROP CONSTRAINT "FK_Product_SpecificationAttribute_Mapping_SpecificationAttribut";
       public          postgres    false    350    348    5789            �           2606    238173 9   QueuedEmail FK_QueuedEmail_EmailAccountId_EmailAccount_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueuedEmail"
    ADD CONSTRAINT "FK_QueuedEmail_EmailAccountId_EmailAccount_Id" FOREIGN KEY ("EmailAccountId") REFERENCES public."EmailAccount"("Id") ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."QueuedEmail" DROP CONSTRAINT "FK_QueuedEmail_EmailAccountId_EmailAccount_Id";
       public          postgres    false    420    426    5912            ~           2606    237313 W   RecurringPaymentHistory FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_    FK CONSTRAINT     �   ALTER TABLE ONLY public."RecurringPaymentHistory"
    ADD CONSTRAINT "FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_" FOREIGN KEY ("RecurringPaymentId") REFERENCES public."RecurringPayment"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."RecurringPaymentHistory" DROP CONSTRAINT "FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_";
       public          postgres    false    311    309    5709            }           2606    237300 <   RecurringPayment FK_RecurringPayment_InitialOrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."RecurringPayment"
    ADD CONSTRAINT "FK_RecurringPayment_InitialOrderId_Order_Id" FOREIGN KEY ("InitialOrderId") REFERENCES public."Order"("Id");
 j   ALTER TABLE ONLY public."RecurringPayment" DROP CONSTRAINT "FK_RecurringPayment_InitialOrderId_Order_Id";
       public          postgres    false    5689    297    309            f           2606    236973 5   ReturnRequest FK_ReturnRequest_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ReturnRequest"
    ADD CONSTRAINT "FK_ReturnRequest_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ReturnRequest" DROP CONSTRAINT "FK_ReturnRequest_CustomerId_Customer_Id";
       public          postgres    false    247    5598    263            x           2606    237238 A   RewardPointsHistory FK_RewardPointsHistory_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."RewardPointsHistory"
    ADD CONSTRAINT "FK_RewardPointsHistory_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 o   ALTER TABLE ONLY public."RewardPointsHistory" DROP CONSTRAINT "FK_RewardPointsHistory_CustomerId_Customer_Id";
       public          postgres    false    247    301    5598            �           2606    237697 3   ShipmentItem FK_ShipmentItem_ShipmentId_Shipment_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShipmentItem"
    ADD CONSTRAINT "FK_ShipmentItem_ShipmentId_Shipment_Id" FOREIGN KEY ("ShipmentId") REFERENCES public."Shipment"("Id") ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ShipmentItem" DROP CONSTRAINT "FK_ShipmentItem_ShipmentId_Shipment_Id";
       public          postgres    false    362    5808    360            �           2606    237684 %   Shipment FK_Shipment_OrderId_Order_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Shipment"
    ADD CONSTRAINT "FK_Shipment_OrderId_Order_Id" FOREIGN KEY ("OrderId") REFERENCES public."Order"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."Shipment" DROP CONSTRAINT "FK_Shipment_OrderId_Order_Id";
       public          postgres    false    360    297    5689            �           2606    237723 N   ShippingMethodRestrictions FK_ShippingMethodRestrictions_Country_Id_Country_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShippingMethodRestrictions"
    ADD CONSTRAINT "FK_ShippingMethodRestrictions_Country_Id_Country_Id" FOREIGN KEY ("Country_Id") REFERENCES public."Country"("Id") ON DELETE CASCADE;
 |   ALTER TABLE ONLY public."ShippingMethodRestrictions" DROP CONSTRAINT "FK_ShippingMethodRestrictions_Country_Id_Country_Id";
       public          postgres    false    5562    365    227            �           2606    237717 Z   ShippingMethodRestrictions FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShippingMethodRestrictions"
    ADD CONSTRAINT "FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_" FOREIGN KEY ("ShippingMethod_Id") REFERENCES public."ShippingMethod"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."ShippingMethodRestrictions" DROP CONSTRAINT "FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_";
       public          postgres    false    365    364    5813                       2606    237328 ;   ShoppingCartItem FK_ShoppingCartItem_CustomerId_Customer_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShoppingCartItem"
    ADD CONSTRAINT "FK_ShoppingCartItem_CustomerId_Customer_Id" FOREIGN KEY ("CustomerId") REFERENCES public."Customer"("Id") ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."ShoppingCartItem" DROP CONSTRAINT "FK_ShoppingCartItem_CustomerId_Customer_Id";
       public          postgres    false    247    5598    313            �           2606    237334 9   ShoppingCartItem FK_ShoppingCartItem_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShoppingCartItem"
    ADD CONSTRAINT "FK_ShoppingCartItem_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."ShoppingCartItem" DROP CONSTRAINT "FK_ShoppingCartItem_ProductId_Product_Id";
       public          postgres    false    273    5648    313            �           2606    237602 \   SpecificationAttributeOption FK_SpecificationAttributeOption_SpecificationAttributeId_Specif    FK CONSTRAINT     �   ALTER TABLE ONLY public."SpecificationAttributeOption"
    ADD CONSTRAINT "FK_SpecificationAttributeOption_SpecificationAttributeId_Specif" FOREIGN KEY ("SpecificationAttributeId") REFERENCES public."SpecificationAttribute"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."SpecificationAttributeOption" DROP CONSTRAINT "FK_SpecificationAttributeOption_SpecificationAttributeId_Specif";
       public          postgres    false    285    348    5664            j           2606    237092 V   SpecificationAttribute FK_SpecificationAttribute_SpecificationAttributeGroupId_Specifi    FK CONSTRAINT     �   ALTER TABLE ONLY public."SpecificationAttribute"
    ADD CONSTRAINT "FK_SpecificationAttribute_SpecificationAttributeGroupId_Specifi" FOREIGN KEY ("SpecificationAttributeGroupId") REFERENCES public."SpecificationAttributeGroup"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."SpecificationAttribute" DROP CONSTRAINT "FK_SpecificationAttribute_SpecificationAttributeGroupId_Specifi";
       public          postgres    false    285    283    5661            V           2606    236750 3   StateProvince FK_StateProvince_CountryId_Country_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."StateProvince"
    ADD CONSTRAINT "FK_StateProvince_CountryId_Country_Id" FOREIGN KEY ("CountryId") REFERENCES public."Country"("Id") ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."StateProvince" DROP CONSTRAINT "FK_StateProvince_CountryId_Country_Id";
       public          postgres    false    235    227    5562            �           2606    237757 A   StockQuantityHistory FK_StockQuantityHistory_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."StockQuantityHistory"
    ADD CONSTRAINT "FK_StockQuantityHistory_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 o   ALTER TABLE ONLY public."StockQuantityHistory" DROP CONSTRAINT "FK_StockQuantityHistory_ProductId_Product_Id";
       public          postgres    false    369    5648    273            �           2606    237358 -   StoreMapping FK_StoreMapping_StoreId_Store_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."StoreMapping"
    ADD CONSTRAINT "FK_StoreMapping_StoreId_Store_Id" FOREIGN KEY ("StoreId") REFERENCES public."Store"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."StoreMapping" DROP CONSTRAINT "FK_StoreMapping_StoreId_Store_Id";
       public          postgres    false    5719    317    315            �           2606    237636 5   TierPrice FK_TierPrice_CustomerRoleId_CustomerRole_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."TierPrice"
    ADD CONSTRAINT "FK_TierPrice_CustomerRoleId_CustomerRole_Id" FOREIGN KEY ("CustomerRoleId") REFERENCES public."CustomerRole"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."TierPrice" DROP CONSTRAINT "FK_TierPrice_CustomerRoleId_CustomerRole_Id";
       public          postgres    false    252    5607    352            �           2606    237642 +   TierPrice FK_TierPrice_ProductId_Product_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."TierPrice"
    ADD CONSTRAINT "FK_TierPrice_ProductId_Product_Id" FOREIGN KEY ("ProductId") REFERENCES public."Product"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."TierPrice" DROP CONSTRAINT "FK_TierPrice_ProductId_Product_Id";
       public          postgres    false    352    273    5648            �           2606    238383 Q   VendorAttributeValue FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."VendorAttributeValue"
    ADD CONSTRAINT "FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id" FOREIGN KEY ("VendorAttributeId") REFERENCES public."VendorAttribute"("Id") ON DELETE CASCADE;
    ALTER TABLE ONLY public."VendorAttributeValue" DROP CONSTRAINT "FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id";
       public          postgres    false    5966    455    457            �           2606    238398 +   VendorNote FK_VendorNote_VendorId_Vendor_Id    FK CONSTRAINT     �   ALTER TABLE ONLY public."VendorNote"
    ADD CONSTRAINT "FK_VendorNote_VendorId_Vendor_Id" FOREIGN KEY ("VendorId") REFERENCES public."Vendor"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."VendorNote" DROP CONSTRAINT "FK_VendorNote_VendorId_Vendor_Id";
       public          postgres    false    459    453    5964            5      x������ � �            x������ � �         �  x���Oo�6�ϻ�B��b����4i�Ik�Nr�E�j�D��*Rv��;$g(R���@{��)>�?i�����{��O�o����Y���Q߾D��j;&���纛_�F�Z!�	u�\x�k�/ښ<����������+��Q��1C���6���;��J�[�l����SaIR=��_�,C�����*%���~w��cE�y�ھ�DT�G[��í�<�@�V��Tq̛*;�9�n�6C���|��uRu�S���+�h�T����ݛf-mU9���X����Ύ�
%�j��`���u���T;*��b�P��n�<y�s� �D?����;~k{�w��\$��-��/-�>ɀ����҆���#S���p��Ո%�(�aP����C+%﯎\`D���6������^�5���!��0���GW��.�����.���7U��I]�SiM���gP��G �g8�(ʏ�3ٷ�m3�b$U���?�z6��<Ih!��[�$	����ں���zj��Y��[!��������^L$��]۵�}�H�����+p�RǷ�$]#��}AI��3��y��ZX�86B1X
�΃P�V���n���`��u�q�.+wЕ&V��B��4%͆\K��Ҍ�ȩEn��R��\�hWZXR�QYn��J�h[i�g�S�ZY�ꡩ�u"�2
�B�Jfe�Ǭe7���Q��Y������Ȳ2�X���*W��(��G�WY�ېW��UVZ�0���6v�==I�g���<vF77�9�UN��1������?��)��n�r��G��!u�X�橯	l�P�̷tl=��@�}l!��c��ܺѤ�����PX����v��STDw�[��S2>��.ۋ8�4l��ݢ��4}�/� ً��(�;Z���}�&`:����*(a�ۆ�_P��t+�D/rOX� Ћ"lZ�t�</(ԅ���⼠`狈h^Ƈ��\:,W�I袇s��ԍZ2�X#�8�@/OA���]���21v�mkq@^��l1n4��LW-�Q⠸�Q���
�ea�7�V�w�Ҙ��$��-+3N�%���*Fb�*,v+�)�!�:�Mn.��J<���څ��L:�(s0[�p<�R�k�V&&X���2IY���Akeb����V+��� �ű�A����,f��qj����d�Y�2$)�M,����DF�$�h�Xd����H㖉,�]�f������� WKC���
�0{�Б�z@�LH>B�ol �X�j�O+u�ɘ	�3@r� ~���/�Bc	���p�1�c-��1�~WC&���E4c��f����12]������ff�1V�ޱ��>v2�-�C�>v2���:"���$�P$;!����o�����%��h'ٞt�E��� �]�N�HW=~�=O����.��2L$^~�����Q�j��}
�
t��)�K@[Ҍ�2�����B�:���]�N�W�L|T-���z$܁m�$�V�>�#����yu��?��D����	꿻��+E��{�����#��QXOW���Eൂ�{8ѺN}�h���z�b$��znQj?{�I�ç�\�75���������>1�>s�[~3`�ϻH�:����1{�6����$�&Ƞ�p���g����Z}�X@����|����ʥ�T�<��o�^�|+�'�£��f]��݅�'����G8S�s��L�����D�R�&����0� KxN��"P���L�j������D^h�Y��v��25�ek-<�oŪ�ԧ������V�6�G���~߱��}���گ^x������gk�/�4�'���Dp*���9w��k������n|[]��l2�@���]�~�S�*<��ٙ>��xo��7yہ����y9@�g��O��񩽵�H�J�`�F�Vp��y����\��1�zX��;���|gD      l   �   x�˱
�0 ����Jq�\�K�Rp)5�Ts%���}��;�)�E�q[t�Ǵ-����D���l0����.�w��� C��]���vŖ�QKJ
@�2�kړ���rSU�\oC�vu��g����&~      Z      x������ � �      \      x������ � �      n      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      !      x������ � �      �      x������ � �      �   D   x�3�(�O)M.)V��Sp/�LQ�/R���K-�tN,IM�/�I�-���`J=�@
�� ��b���� Ӿ2      �      x������ � �      �      x������ � �      b      x�mZ˒�H�]{��2�iK��%$�HdVbw	Q�N!e����|�������	�S%�{��U[uyD��#h������R���S���t�+�l�����Z��_�J�����B�/4\+^�ӯ1�4L^ M����R't@8����2���K�3{�6Bu� )|K�Ո=��,���p5�۹�10�Y�ޚ�[#���C�v;�^]� �B��[��#�t����K�0z���<��n�٪k�٤a~��"iXR��he��u�L��n�N�����'��,�ݮ3���R�*1b�@hW�k�ٵ$C�@����9+
�����i�dL� ��F���B��F3�V���f�Pr�����R�v���D��D�1�<k�n]尴Q�:dXlD��u�n]��&�t���g-�bM�o�����L�	��bz�÷چh� eg�ZDH�Ԝ�"V슂�#?���ֺ�8Q�F����(����fI�-V�OAR�p�"�R�4�B��}�L�5`ѫk85���0N��&���r�P��F�}�nԭ�d�bŝ��C�o�{GC�g�'N�0m�'+.��p� 5N]��QV~�'=������\}�	������Gy\ėSc�b$��^��H���Y~������K�./S7��Q.*Q����2�X&GeBe��n��][�2�vSu�h4��]q,�K�:���Y�Ȩ}r�K�x��A��Hn�hi"Y���_2�3��Ș�h�t�e)�>��I��)U�Sw��R�w�����
���g^R��N�\�9������V�$��)�O�G���'u�hL�;f��"]��X�;������|�]���芝9`�{�V7�s� ���+d���������󏣻.��o�0I�d���]�O&Hinv�r$�,�f
�G�w32r=0<f����W�Ƨ�>g�a���gd�Fqҟ	�t׬ξ���e�?�� ��$���͐5S��>�ہy����������9`��-%�Ny��*B)�mط�Z<ua)S��-0b�h`�2W�����'�n��^��0��͔�8k�r�y������1��po�9M����W/h�Z0�_�h�g���EL�{�*�%\�צqv�S�ɱp?%����T���^�f�K�}������̩>:9^�
�x��MK���E%�*I�#�Kk�VKl�O��J��#��2N�"��E�6�	Rq�d�NDChL.EfZ�Ʉ&aĜ��&8��4�pG�ӎ�E�(3��goFR�XR�#�6MU�Z�l�|y���.ټm!����L���隦n/�u{8]���4���q�i�{�s�;�N�+���J�� �&�z�A2��:ݟ�L����m��;ܘA�\S}���)�7r��HL��'������P�i!��D#�o�����7F̨;C�F�=`�Ȍ�6y:ˏ�3X���A*��T��J�	�������w�t2X{"]����(����ޏH2}��\k�E�۸6�����b��-�Z2Kê*,�Zo3fN}K�;��:��7,@�MXm��&A;�րτ��q
}FWC^0K��T]º}%�8+�h@��+�h�r�'t���Q�F�$�	d�̞dB�嵲�3���
�)tt4� <m�-}�i�߂�jM�����?GU4B3�U,bs0�B�jM�C b�����,K�.�X��W�wM�:6��f��99�ܵhV���4���N�v4Qm�{]��<؅DwӄCUm.��۞�r�]C�l��� /ד[��٥��(�,ۆ�4� ���Y��_4 �b��C�s>�$>Rs����fri�|�>�b�s,&��%W:��Zٰ0qd���B%��#��z�/�X��=�SSt�}�r8��t��۹ >�HM��{����� ����.�g���Y<��	�#Z�C�����Ŏ��'���B�W4�`Ţ�EP�q��4�bl8�Ih���V1��[��q��_l�����lhq;��� �(�δx��A�.M��k~�~XUx��y��i���{�Z^Z�5-����&hBO�|�N�i�Ĭ��/*E[� VwK���@�d�)�e�j��ib`_�/�}�rI���TNߐ`��3(�L����δ���1�5&L��e\���n�*v�}r���[cd,�#-��� �K�j���_�?t�"�@]eyqB������`�R�NX��Q���G��=��|�(nw���ъ����'`���jù��?|�ԕ
q�C��?b=��vD7ބ��jK�W��c��R(�P*T��rRI� �3�/����Ĥ�id�*5���R%Ϙ�D�U�C����.�Y��b9�`}�a��1�fE��'y���NW��~�w��ݿ�?a��e�P��m�i|��Fꃽ��T)a�Ӕ/o�}y1	�d�!��kA����2	�P���fS.�'3�nߌ����_�w�,_Ѥ�9�M��`B[P�5+�]�*��]��Q�}�{��!p#	}a�����V��!�v�Ǆ����&>|�v�$�ui�zmZ�����c�@*�V��nK�ܡ�~S	����%��b��Ы%��2ob�^����N+`��cBb�;��a��(c��
�:W����4�3�*>�`�Մ�/#wE1��!�����bXg��J�0G�k���,�ݗ�j
,�+7߳��LN��4L�ϼ�����c�zWWZ�>��u�Zk�=����^w@�z��:���!�P\~�˨ &()x�`��&}�
0p��/HT��/�)�!��^���1Y��@>��y+U�x��G�kW>�X�bTEWb�dO!vh8{06��@���$~{Â
f _������^�9������x�b�S�qNp�to֧�&� .PbA���t�k��0���Y��l��^���2s��`Y�W�l����2�Ѿl& ?5�6�x�����YL���~S^.�:��{%t��9��y�> �	��4�-��Be�F�}���I��J�%`SXON:�-}�Ϳ7��=� 죚������A5�2=)
g [Kf��V�".
�����-V �+�?Fu�ɲܛn�no�b���-�tC{o򆿢�MQ���P��~�(1ڎ��<$�s�S�Rd�Bɳ�=�)�QT�!�4��B�܏.�"3�}���v�~_����Yi�]P�U�'&��x�������0�D>�����1̕�^�`��e0��Ј�pE!O==���(B�A��B~��y5=���I'Hc�>�"������j,5���.'��p����� 
=��չO��[h�~��������v[J��4F�F=
,�~j��z �`���,XȼBd?k��e���a��:a�	��ٹ�	�bn�=�vC�:�Ӕ����{�^j�+��C�}y0�g�J�=�,),�8���wF-l |3o˓`����)�	��qc��WD���|qWc��y�1��m�]5a����P��!�N�\Ї�T�b.���jH�Xǿ,��#�3��ɺ��m�s�X�q�a�2rg��(��9��ޣ���3r���;4&�H�H�#��3ﾺ��j�p{P���?c�9�{��'���K?L����Mc32�& �v ����h5):��:p4n/��բ(>g�?1�cȉ� �+1��Zm��cF��Y�8\'�^�i��`K����tAB2�h��8r��R��AY'��e� ^X􀭖CJ��l�E|U����`�2�W�6�-rs��c~Gb����t�ďF�0metUl�;o�� +[LR�E%*��P�#�����v��Ǫ-�z �V4o�g�j~�i;��b�$aYx�K�ʓsl�'4ܰ���e���/�ׇ�lUR��0ulۈ]������4��M"��>Jd�X�Er�?T����u�M!��E�Ŀy"�Uېt�#�7}��e� o�i�p_ ����Es nw �K�7?��TEI�[�v	]���4����&��g'�#�' _��(G'��ّP�W�b"6�	�!�� �?� y   �h�2%%w��G�?�?��`���
u����$��=-���iJOK[��2\ѱ>�ܑ�ߠ�0y�d�z�?si��8��^�<nݔ#(}��׮��MdG��.>���wM�'��Y����o�������	      �      x������ � �      d   b  x����j�0��ק��Z�����JQ<vIi�:\�l��gO�'Yt
���B�����CU��ix�Ok�T%��W�A�R�wsXh3oE�+?"4x��Z.b��;��\�v\�v\������!��{���c����8���$\L�g��H����Xq�������Z�^�'��B��Z�k��>oNz �{��0�d�k�U���M��t+�`�|�ض��·m��6_�ns $�<�И���o��Bb<�;��n1�ğ��K����:7E��SN��xĝ奱�(�q�w��(���Sf@D":�����f��1r�z�C1$n7$B�3G����'bY�/�a�1      v   I  x���ϊ� ���S�GMԞ��^����P4�6tY5�����.%](�:��0�!Ӷk����.����w���{��O}���t��g�eRa��0̍�X9Ya��fѪ�ȼ�GK������H	� �@�6DmJY��p*�;�2��N���4ڋN��tp����!�������͍^�>��.���Hl�)1��`��Vj�Z���N��G����qp1�e44DgQ�ØM����;��@��X�K+LTAAr�։]U��ofF��c�Coq���Am{m�1v�Wk�-���Z��T��R1�+%(��
��=���h�)JL�?(-*��"��o�ݾ      y      x�3�4����� ]      r      x������ � �      t      x������ � �      x   �   x���1 ��Y�#6��R`0��A�����N:8�F��u�Z	Ws#�V��h�4��;0�¶���tw#���F8�OC�9@�sxRg2[�+�%=�^h�����ǁ�	p�܀�:�>�0�������eG&<      {   d   x�3�tL����,.)J,�/*F�a	�hN.#N����\���T�� ]�1gPj:��Ԣ�d&�:N����b�.o�����F������� �R<�      |      x�3�4�2�4bc.#N.c ����� '��      �   .   x�3�4�5RHI�,�4�2�4�5�pL��9�SS�9�b���� Ѓ	             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      #   ?   x�3�.�/JU�K�M�,I-.q�M���K���,�-)Ѓ�����Ȕ3�� c� �+F��� 5#�      ~      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      ^      x������ � �      �      x������ � �      �      x������ � �      p   )   x�3�t��L������zy�i@h�Y�i����� �y?      �      x�ܽ�rG�(�\�yx��c �� (�z4F���"��E:s���U	 �U���,��Lf��6�2��_�ᗸGdd�=mk&���7��x�/����o���/yW���9�ɌW�?M� ���X����6�n�6�*�*������Y5E�����a�3�v�.�����8�ө.ٶ���׮h�|�o���K~�੨�r!A���K܏�-o*�<9�e�:����t�ĺ\��h�E�,[�l�W�*�ݛ�tWv�Y[���w$k�ۮX���)�g��jUߕ�M��o��pUߔ���(�m�E���oEK�ɖ��Ew[/�|]�������"��X��j���i|2�<m�U�v;z._44��vS,��XfXؠ"�����b�����k#fK�g��Q�WKx���b��ژ��G����?��Ӥe�U��EFc{]6m��?����}�r	C)z�h
5�	T���=��&{����M������G@kL,��=�?�ө��x�-���v���e��.WE[�V������e�FYZvu�- ;s�QK�Rj#���nq��ي*���z�vb�31��^� c��^��߬�N	���U_g���/�C�����j�z��^���� q�������2���p��p�,V�����|�Գ��'C���w�
��(aЪ�x��w�/V|#��v%�h�����ԕ����8]qU�}���Ȫ��ۦ�����r%�!,��>�q{]ep�DiA��0V��E��t���E�ڮ��;zXM�ۼ�)6���Ě]�c��E�Y���ն�Ā@Nc E��MK��lE�D���$��C#�x�:�J�\�2��� SЫ%�������z����u�V�X���O�|�ᇃ.�O�<�T>�]'�����[P��f7M񥬷Dk�
ױjvw�#E� �$���Άk^�r�da���k������̳��S�`ALOb���Z�ǋ�\~-�4��+�z���f��l���/�m�R�Qo��ll�`�y���-k1�D @����ɝ��mPR�a󣋐�`��E� ]�>�H�����.JM����AiU!����ߢ'A�PAtu��Ţh[=�w#����+�X|q�.�	
Y�J0����V����+��b ��D��������o�Kz���g< қ�%�/-T�����������F�Vˢ�[���1{�Ϣ�A�B��w#��FL H!�(x/�� (�$� ��X�5��	>gLN��I����Ų�F/�?f�= ��Ob����o�Eƪ�����rcOO<����a�C�O��8X�j�I7�t�K�h��O�G�F��.qYџZ�	���h��^�O���$�I�ԧ�ڮ����xK�'��r����O"&P'V݊a>�o�� ��U0
q �z/���_�u5���?G�E�]��0�D�p�XDh�KR�Y�$��d�J�%4���Y�x\d�+�>�^�Q�����g>9o�osd���"i���aJ��R�R��t���tH��W�$�?�Ҥ� )��{����@�Qɗ���F���m$�C�bZ;�38�>�=��m��X%���x8l�ܧb>π�[ܵ�7��&_	0�tm��|�w��ʏ���?�|��l�j	����
>�:(���^��_
8L�5e��U��^e��ʹO�F�Q��呏����$L2^�K��,`|2�aP�)$"}�O�;��Ӂbq.�/�	a}�t`q����W�}�s �踱bG�Ce�Os�V[������>�9�]٭
	��A�#V�����́5UF�O�����Z�񲾫�q�B�(4m�� �1A��(���[�i	Oۂ�@+G�a:�/D��xy���<���=57C�b���� #��H��l�le*J�8���.+���EqW׫Zp��:�%�O�?]��"R�V�`��[�zz-P�{Q�Ӂ�_�%�Ӌ� ����\f751��T<�nӔ_����^������f�:��~6 ��rt��Vsq:F*�m���m�K:^���j�P�<p�����:r�1��"R�@o@8ՌON|p�N��A�j
e����u*ݞ�D�L"�}ʡ�GTZ4>�HO��<��B�X�o����~�}�fd�����S��;������l�[��댞��G"F�c0�����P2	���
���2㑈	�mU���#Ǵ5�(��uk��*�x�p5j��U���"ٱG8̾ՖSh�� y �v)F��=�	[|O�#������?|�hG|�]����h�n�=~�_�������F
���G'7B2ǅW��xd@E���	1��%=z��X��,��)���m׈s�[�e���cv�����7����7{b�nW������zs���;��M�	�x�C�<�xD����[Rӎ��,c�c%�`Iy t����# ����z� N�ֈ���=z��Z�f�j��h���������Ms��Vz�ӊcY�I��|2��G,�Y�	�U���f�O�#+(Z�ī�#��\��|?�ߘrf�(m�'���<��4��r�E_3�R�j�	l�ݙG=_򎵂??��4�%=�Q%�������o����נd`g�B�]�aq|s���>[$�����#���ͦnA�#�F��� )�Ą@=Y@z<hwN��u�l׶I�x��Ÿ���V�����bЯH�!��՛r��:I�'�oC}���lE��~�!ܸn_�?�B���o���x��K+�:���ޗ7�n��75h���,T^Z�x��?��-�g�r%ڍ	��rU�A��B�B��ik���O-J7��̳�^gP���8�KQl�@)�P�S�ˑ�`p�i�68>HmM.HP�����Ct0�h� 'h/�p�{p ��?��Y|��M7z�t�T�c��Pq9�����r�FOja�1{�p��
)G �"�
���MY�vTÊm��\s������� ,�F@���loG�'3?f�c>�&� <å83�=�$���NVt�X߈���N��j<���sh�ڈ�H�K(�6J��"�r�J]�x{#�TV<P��X��^#S�+"q��9����vy{::2%�g��
� �i?T�H=>��+P����l��aQ��yZ�5�+�b��1eZ�<`����r��v�3[� �i�	��A�#GTm!��`��!4���"��K<b��X<J�+v)�(�_�����#�5\Y�0x����Wm�G��ܭ��7�u}��!x
ShZ�J���g`��D$ ���Yk����%{�:_#9wI��8Ս��{���K}�J�aPa��5_k�#��E��$}"vD��&/�=���{WYGP�/��Hb�sB���o���]#6��*�r���xΤ�r!�S��K�..���Ԫ`�V�v9��Im<w���G��Ұ�|\������b)�����f�������#�x^�n��9Bo��VBH������Ȭ�̈́E)��)t�]u�hD���ޖ���wk�9�!�3�r��a��%X,UQ,������?s�|��z�ݟW�w�c��!R ܃׭`��f�b_�`���QJO���ۺn���-L�M�qL��b��3��7ۆ� e�A���{���ʹ٢qO��Y�ŷBB�N��5�}PUJ�ܼo`�p�6�e�<����WbĮa?i�/�J9\�%�a�zW���}��l�K

wP;t	�*x	H�p����$���"I� )ބD�4�#=݈�| 5�n��� �滠�!Z�o���� trj��?���d �]��컋�yY��z	vv�u��"�7�X�{yjyso`�T%H�jv�h�T�9�'�G]�)"���K��k�z �Q Ǜ����a�z`yώ�� �%���CH�i��
-��3���91�Qa�ۼ+n~4��G���P���`��:�w�0]��+�rB[>�$�*��a�WY$�"H�\0N�{\�''q��;�%ONzh]��O�e��U��}.v�z���    �(�z���=�r�-wwjgϺ�/z�6���4����I�j�NWnb'+�uE%=m�Q�^�fՋ5=k屮�\T�_�g�p�+����)�i�iiG��PJ/2u}�ϣ��'��3�M�b�nn�$/.8g�8#�)&c��=ǰ@���E���1t?�cF���I�v3c:�a>T����L�O���Ϊ225�QģҰ���i��Uv�L0'!�l����C�Dˋi )����^�x�-���os$�'�[5�IZւtc8;� 4f�z72�3p������<�q啊e�:r�5��-�ZXX�ʶ�=o��橆 
s�		n���
]�!�'(�W�S~���e���󥨖59���?����0��B�q�� �C �NkbN�B	��İ���]zK*��au�h�����2,���\�-���������ׂ���FD/�9�tƥ�kqM�pY����|��">$��J��P(��+(���R�>.�}��� �g��x�PNs'dU�����J���'h���@��!&ܗ��R�C�� ��"H������쟤��-�)��=lSh���ͥ�k1��l#�o]� �+��ax��@�$�a��7yySY�K�4��+njqt����C�	z������-�N\O���4��l66�:�9��Qo���K�ykLm��s��X�GD�#d<���ӧ� �!��Y9-׫R�bN�i���6Ogz�|iA��DɅ��EH�f��(�����ŚX�eo���Hz%[��&�|��"�u^mA�"�MF��!J�&�ؖ�ؽ[Jb`�����+D�tW�u:��>��BT�T
x��H�}�-XDb�Y�N�\xeI$AVs�W
���76"�Հ�N��Bt�z9��Z�T8?�{�'��"^�MSo7��bIy��m�-/�cՍ��rF.D�hwЀm��2��X����A�lIв �[i�t�dx�K���������ti����H[����L|ꭋ¦k�_o�1e��w`mG�iЕ�t���g�@�b�i���L|��,�A�p
AT�;?��(� �梛�)yP�H��Ap�Mp_���`=Y�@�+	��!t,	H�r�<D�J4��R�<D�J
4��2�<D���[��F$�^��E0��%�P���<D�J��B��<D���g,�>�o"_%��F���*�OGľ��Zb�F�.Bd�	}���w�c[����I�ZC�ج,v��L~r����G�" <^���|��,�"D�7m�GOې!:ݬ�����������\݃B�[N���h`��� SB�X)8=ixz"WO�Q����$D�V�r ��MOB$lE��+���"^C>7�D���I�l�t�����$D��ln�'%��I�v�y�+�OOBm���~�|z�q��M$�L>=	Q2ep4�Ez���t"b�um�?����x��y�B��#�-O�!��=([�t�[-�kl�}:��L(�3����8|F_ �����%��?�'��8����G��wYXz��/<p���~"���N��� 
�mx_��N���pXV�N&X��XOP�N�>�'�k}R�t2�q���1�D��ħP%�kР|>��ĩ�s6$�O'>)����$F�� #ry�iO|ڴ�r�#�O�>i*�\A���'KK��G�N}U���>$�O�>�*A\A����ԧHK
W�!|:�	��5�~	|:�)Ֆ�=L!�{:����D}��t�,J�
���S�M���əO�$skZ
%,"�ه�=��E�h�q�L�әO�,�������@�Z��q�b��'UO����t��-�{h���'_[�Vhz��O���m����3�d��*���ku:��Җ�U���O�Q;�ѓ�O}"��l�2!f��KB�����O}�����'�'P�5�+_����ҵ�	
ק>鹢�� ���������B[�O�Z�V�b2�c���A�J!5C�(�(y����Aul_ϛ7��'ڱ~�'s#֛ �q �΀`G�>�͎'��PsJD�āL>�4 ��Y�|������~���\�!,6��PG� ���b���L`W��T�
"��6� �!z/}t�-��g��"U"b�;�A��y@�f�Tu�S&0wN��������:��|�W{t�­(��M�ctc��5hA�Ѓ֠�e�Y(�4 ׳P,�Y v�B��x�A��B�,�
R���Or�kz�M�;hY���m��Z���ΗK��/M��1��0�°a\m-}lIO�p=�E;�6[Wc�����	<l�������-Ĵn �T,�^�Nt6�I?�;��b���,|�(>vkܶ�����1��a���(�J��c0�Ա�9%9ƑB���,+�a61�����F��<N�����z�NW���<*�14qR*R:�w�Afy����ƈ�W|َ�?NȀ�:lG갎ޱz.�$���Y�
I?Q�6�o+�8�n>��M:SǈG	�%Z��݇�o�Xa�������qQ������r�bRN1u��rTP^� ���r:����M �l2,�'m�,b�,�\��:;6A�.u*\d���X����ݟ�`��Q��X���Xn+�=��wX����f`���k�����`�$�(u>�X���񄖄s��)-��,R�Og��?�A�N����Y�Po�G���/��r<�N�9���s<�N�y��fco���6����^�_9��TI�fco�UI;���f���w$��l�M�N�gco惩�fco�wH�7{��x�̴wXڣ ����.6�$���&Y��k�x��NA6�xD�O
2�_�Ϫ�

�_�Yb��}���?~?����?��&"L	0�	��/�<(���vn ,z�������S�!�U��e."��^�2��D+E�.1�l��	:hg?�7�i�x\�����)����`�1�#;��/V�$�X�rf�JJ��{�R��.c��9�����0�xD4K"�;Ժ�x�[W����&��$,x����tQ��|6 �&�הbcY\��U����֚�3WT���Vg.�����*�� 1!$��*�*m�
L6�c#ϓ�D�|����cT�qe6�'1K	F��CWS��VpI��F��.��S�QR�[��V��u�iBl0_�f'C�d\�ƈ�m%�Yra��P����q6�8�d#��"L)+
n��_e�+<u*��U�����$��Yz-{�/�`G�VblH��h�WZ.h� B�7:c���+�D0'�=.TL�M3��׈���|� �S�"g���f&f7I�v��ψ1��1$��v�Н��kԺ���~ѻ�f��J+�h��K��+��it� K�J�>ƅ�"��rDl�;M�$F<�K���U��@�5(R��8�1�%���iz9ٍ�itz�wM�̸�uv�^f=��/��S� ��m��1���f���6j,S�^zq�����iz!���������j � �q:t��B�%f����������{��{#�����Ty@�x�֝���O	3;s׺�����$E��1��.�ݕ8��H�Ұ*��]J�B'��	�㮚=TAg.��Bg.A�j!�y�� .��#��d�&�GhB�̖�+��`U�y�F
����VK�G�8��:��(���A�����T��:�P���:��6)���� �Gf}�~l����l�j�+3�x�@���M�6�PPL�6��ֹ�-V�TW�tv���#$���#��twFsW��������S���"BC��h�� �:#4���"Bai=�E��lm��b�u�P"�6@�x�5[�h��o.jA����K^���/\�K(OO\�Q=��(ڒ1�`�B��W�Uǩp��:��d���TD@�|���M5�l�'�>���Q]�N=�ٳ(K�>=9��Z*;Tb*�ӓy��ѩ������G���VE��*��u�|.0(lӀ]����ݖ�[pٶpL�[-�n0	�n'��E.@��-8<C����5fR����M~�L�<cm3\����ע�p�	� �U�:5*��q�nJL���6    _Q6:qjX�]mw��g��;��d�ɜ���;+��>T�����t|⣐�-yA!�Q�ӱ�`��B���_�DO]�9}H4����{`�)!{�¥����:����
 r�LhJ�Y"=�&�ZXxrwf;��Y�<��٧�?�m�tXax9`�5m�@7E����:�Zy�S�����%�Vh��N���ʢQُ�!������IkL�ohT�A�Ь�:�fb� ����$Go��J��]p����¦�� �3[��gZ��3<7��-$�l;�߻��3q-_#���.���
̆�w���i�4}z��U�ՉJp���rP{���`�9�X_�>	���p/h_��O4�s�grp��{�S��>��~B �Dm��X���ۧ���Ъ�D��H��yCtO'����j�mbA�z\�K"�iU`�#Z*9M�N,&EEx��?����$��LDCx�$@�q�&�H�e�%AX����il	�@~�#��4@ɼ��H��i�ly�1a��~e�8��Q���>�P��G� 2�D�֗�N�e�V�N��c<��;������C����2��풓�R��g��jq��V�o 
P	Q�D���'�?� }�@{z���R���%�rNgQ�;noK����|�G�qq*��{Z��h�yo�.J���4N�ȍ� ?X�}']���z��ڲ��Ǌ�-�T����C�K����o��royw-�ʀ7�Ax��� ��1���J��:_����gz����>�)c��B��<�?��8Z��6o���l,�]����r��u�����~�<b��5p���ø2�C��+����_��l?,�yG������a��Ty�d`tG�����-���V�~���8�=fB����%�O�����$�tM�c�lo��j	y��ƕ��0I�g������V�9G=�J��wtnY�&����X�	;�{�	C,�����$1U�B
.S�.l�neO��ӳ����
pB�cg 
i��Bm0�AEo-i�D���UI�����`U[4_����?����22�59b?�#�:y��)`Gw�qq���ꤳݸ��h�g�����L;=ۍcJ�����B���~2�g�1� NSk�4ѓN�b�g�q�!4��q�^7�i��twz��S�U��Z_;�"�Nz���3�=T��꫆ExcZ��gm�+�^ZW_�{7��x�<,G7"[%ixv�|F����r�]��o����
�Mv���"��N�="k�21��U}u�����rC��W����
�f���Ŗ��4O��bh���W����k�?�^�����[F�ˑ�VV��o����{r6�UI҈	�덋$��x�\���8�v�#=#���z�KtP�X�Mz�ͅϮ����E���62�������ܬ��k!6,�+2Ae��h�����;%�e]t|öH�[gU��W��.Ok�u��+{UT7ݭb(��b�
c����,c�� �[e�vk/��0:ݲ��Э�8�������^��@-݋Y��<��źPu�;���a�@��XO�26!V�?�V��mT$��J�9��^|M0h���z �{1�&!���muz(���!���(��[̹& ���8�����$�]�G�Vn�3�*�.�Nѿ�
��k/����i�����߀o/��G�N����ƍ±����=�N/vc9�ӋݸJ,�!ppQG���XKoX��Ǎ�8�؍��^�zU7��[����j�������Nv[�����7~��(UTlr�_�S>�c�vc;����n��D�Nvc;�������#�%���G�����Qv�eTH���^g7q��d/�#]c�rQ�K����<g���!�Ʃ@�ƩI�PŎgRlm���=��'��Z�n�gㇰ1��j�/�����CX�[��;������?{5(�( %C���=����
7&;YZ[��ó<��"��=�'X�-2x	fg�q�~�Z6C��{���zOs�ٸ��j��*�"d �A��ff���ub���N�+�t+>��\<��98�e%�60��}�V��"쑖H��EMW��Q��VG�}�#4�uVWt��Z��w��H�U�4E�����O��^��m�Kޔ���6�١^J�{əM�V2g ��{h���~cG�5�8�$�QmQPrAa��E�����I�[�|b��٤�_��(�H��Is�ϐ��K��{=�q����h��X2م�őH3wb�;J"���$�#_�a�l�3�Ⲹ��Ow��}�;���]�>�����N��C>�i�;�8�:���ದ�`����Ci��pd2����[�M�+ʹR������`,H���p�'B�����G�|\*JK��BXD+Eǒ�n���+��ґ�[�-�h�E
L��dQ���ZdK�bgh�|E�Vu"Df���	��V�a;!֩z���qLw�>���?�Nwb7C��{�_�;��X���k� �����U�78�Nw☱VZ���A�4���}�}�aߋ���%*r�ؚ���7����g��0���ؒ�c���F<�`h�ZL����� y8F����e�p:*8������n6�Qxj_3�[����&29+)���A= �0N�Gd��裰�aZ�٣0ۿ��b�06�1��C��z*q ���8���ɾ 	�Bh�qRoA)** g2X?�6��x.~d����O�Ɓ2��ˊz�0�?D[㟷(kԩ�u��o����3�5������Ub}�"~u�f���m�DK�RC���HG,��W�+a�|w����g�_��Ƿ >H��SP:n�8{��u鎡j�����/ ��:��p�ꕄ|-��LD�qq�A�� -�;�I�}���3�B�(clPo�Y�V�zi���q]��p�U&�t�&e�W�*?��hU�N#ꪪ�Ɛ����]�|D�N_tEl����֪��b����h�����Xm@+��J�f��;v�}�u�
jv^~���0�=�w��I��<5)�P~�|�}�!;�`_5u_�ȎM��7c�n(9��@vl� ���\~����x���E{��0� ��?���������v<��e�Ws�+���
��j������A������WՕ�I��~<6��:��ر��o����
�}��a�w�Z�o��9��/6���f7J�K�Ex�Y�ǫ� �G���+n�) 9�5�����>�\��V+(���������z�.�g}!�P�����x�&v?��qx<��GF��T%��5e=�� '�v�'��c�N�,��/���Մ�����L��BE_��[����:o�z��Y�N�:�돖Ƨ/^d�VѮ�������j%[V����Ov�Ӿ���x�]��V���<���B�/�偕��m}�,�UH�eL�BrpJ����gk)^�y؂G�Ԃ=t0}�-{5�WĨ�����S[8�w(g�ע�s�3�	��6�j�/be����3UF�4}�.���R��A�j�q苕٧]��ؾКG�t?��Mأ�Q��������:v���~d������O��6�ȟu
�}�@�T�F�Iν �����|_�'�t9�.��i�Il��^ԍ�҉�Q��^L��-%�[չ�b����I�՞{�/&Jb�%aqwŁ�ʚ��5�2��ܥc R��Uʳ�^�1�*%}��bH#�2��QB'ۮe�ÄW��箲����9�c�����;i��)@��P	���U��&�
0&)�I�P�^a�!,�Ͱ�T�
�����R�&�u�灬��0���3�-]����=�U�xX;1��+׻g����";��1}�;���ǌ��R!k��o��Zu�y�G�0��=Ay�Ӻ~���$��ϽP�^�^�w�a�Kk�2��o���/�L�i�Y�ֈ������5�ۭ�sb�s⺦�������4��M�j�᷵Qs�E�AЗg����5`=T��R���<_� /:"؀�8y�C�#���Y~�&�3u���Hw�s/.¯���������kz�I�J|����E    �N}�nN%qfW9e�W2��o�W���YT�������%X�jk�|ɓ��Kh���4�?$�̹g��ӓ`�ܲ���˜{Q!~G�U_�C������M!o�A�R|��B�3ͳ|��V���p�a�Ȼ���ڶb���B%�`^j���IN��fէdzo9�`y� e��fZ���K��!̀�Bt37�7���M�9:hh(]\,0��m��(M�9�6<�BY�~.���j�"����D`4W���4�*j��~h��)P^�b�52�$��>f�K�9>�
[77t/j¯�<��{���F�?���3���A�>�{�>*%A�3�d/r ho���[7�A���J��]d,�u��^<AO���-����}������s����]�<����a�	�3?��ƭ$;đ�e�G�X�?9��^.2��D�q���/���ѷ�S��+�m6)��*��9��~��v��G��P�l=7�P�ƚ�R��$[rr�	(:$_��?�^�i��`����}�K��م��mz����"`z�oJ��D�j���>���D4`���
������T%��������W���hj#Ƈ�9�M�ԕ!Pvpr�-����*7S@9��Y�@������Xe>>O�BQG7ة�Z>`ApW���j�<��8
hN�Y�h�0�O��M���'�@X'\kx�D-�h��	Z!�=W�HgF�����-yZx
��	��$ء��Y��K/Iq���o�(���2n��]�o�9�|~c��f���qļ��iyvU��3%�(�����<\�sp�u�o�������|�3��ɿ�QxY�`��&(�B�$�yF඾���z]@�G@�%����I��I;�z�F��d3�6���rq��W�-ܚ���<�5�'1�K��,�*a�g�X�Xo7	Հ�<��.O��y��8��r��lm�v<KSe������ײ~]V����3h�^�`Mޖ���ZޛעU��Xԍ8�oj�A͔�d�m�l��#�R��8����=/a���eݸ��X��������&.jQ�1�E��x��};h��s�M�z��<Qmy�tN�)χ6�Z��8#�E;B�=�3�P� ��~�H{V�����O��Y[.T�MI��,=�Ķ�7� ���lz�]��=/� @4o"�!R�`�6��d��T�v']� Ղ|%��π�sP���{e�{ޅ!�AY����⩣�w�{��Ph4Ĵ_+ȴ������E��7��w��*�X��oI+��h�a������.���{��<i��<�l4�Y;ܽ�i��ns0��m�͆ B3�XFn�q���s/�q�e�����n������L��=��p'���9��Q�������[0{.b��M���J!�5��Ա�5�o��������F>�����J��o`'�{�Z�6ą���d��a�����Y���V�	C�s�kk�[������s��,��]M�s�m ���YM��\t$�K��Ƣ��4����t��֡�L�P/����ntڂ<����`fD���g�^�ި-y�y�%q0'��zs�X�瞇\?��ˮH0�<߂�������҉�I5��s���J[���[[��<���zaw�7[��os�{�m�����<�\�z��<�='�!����s�nP�w�?�PImx�{.s�=S��sU��=��:�\���bF׹�	���v׹�5��?az�{�Wq|��s�k(�=�s�+^�k��{X}��h��{�X��Zb瞃VW�f0�ܬ���챶�6�&k���e瞇W���M�s�۫�C�������B�VZO,�|��QHKO<�9����`x��%l��{�h6`�iD�dPI��Q�������h���Tm���s�Sn0>i�\�h���L,i��{�hi��r l��{e�',�s��l ��˹��k�/��Y?����J�q���sϙ̆	2��X�ϖ9���"8i,=W�~d�-�s�U��oԜ{n_C�3d���H'���&�����̜s��L�]��,���M�@܅`��m�_t�������瞫�����$*"͒s�e��d�%I���s�
"w�j����\e������.P��*x�w]�=�ϓ�Wa�t.��,�Q�].	p� %^|ӕk�B�ejݝ��ip�?R��F�����k� K��ݭ��4IK,žxB���$ց�����5�K~���M�|�[]Q�.�Ap�ql�(_�eW�'�?�x�:��࢞'S/d�eH.y��/�������M����� \b1Yp>M�zAQD:l%5�fuY�F�4t�O ���nV��d�$j�t�OQbg��8`)�3����o9qOL�(d�|���&bU����U���q�H��akT#0��0Q[��H�R�S�w#�a��=��(y~���ePV��ۣx�]Sv]�9��V��&|�6�a�ʸ���i�C�g��wl�7�?���m���fInL� (�Ga�t�_�(K/lU�. �	ʷk�j��O�KU<�<�>ָ�R0N,jKzn�M��U�<rz�TC���d[�����Q�W�TW��b��ǲ�����h�#佛���x}]�ӂ����E+8��	UY*V=�SYY@�ò秔�tZ����Hqgy#dy���{�I��Vs�J�,
���~�9�ͣY��;�]x�A������c��SY}����s����v4��!���4;�[U��<w�SL:�]�]�Î#��8D�q������ϕ�MUw�88~�.`kO�S
>�7$a����p"�I=i�1F���R0�zuR��e�r���J�@�Y�$����ϣ��e]s�բq.��~�	e�D�ʈF,��R�4u����_��h���.��pW�B'>b\x�+�i=V�\xn(
xQoJ�I).A�,6�Ȣ�] ܏.�?����H����ޭŔ�m<��� p�Y:��r�zd��R�z�|Ll���b0P6\x�$>\�`k�Nj@tAjD��~?�#{��A��B��!��s�@9C�Λ���D�8tID%LD�~��<���<,4HS�-\��
�Y�|F�&Nu
��
�I���DS�i{�!p9����^����Mِ�R������J:x_m�q�Ӂ[�3T���7��Tw�J
��{iϓi�I�rUw\�ˡ�0���`��G��d�����kϥC�(��Mjx/<�����V�كy]��ELѥhhe��X����34��1��r�-��5�^gm?�Qq�R55�j$��P�B�<�WZ�].���=#���uܪ�`��8�����ԒGٗ�Z⏛m�fg��J�rκ,��" !�����D�ݵ��g�ǌ6�;�.��(���(��.�꺼�6t��<��C+~^Rkůפ|{~�#�4g����,�=.<�oioK4$��l#F�5g�_2�x�2�׸�8Z�<�DU��^�ͨ��!�O �Np�(��7�G�с	C�P�=BO��"*����Af|Im�O����E�9yIRd���2@�g�*
uG��u;{<���)��]�M�͝����ZnmIX�W�Ĩ	Ԗc���:�Pζ�_�
V	�jľ�r�Z|����es�@^��MT��R��rjP��h3����sA٩V������E��8t1�:Y�  ��A��EWY=�_K���O���n�a���Y�����i�]1875?��h��u�W��8�]�v� J�4��Q�#�9%��N��q�k������a��t$
��\�_iJ�=(�u4N^ݫ�h��dM�(J��^6���N�h$<�i�.<oX�Y������[J C"��wb�fC�@���X[D��!���N�A�^��I˃VPYn�|�t[�f�Xc�-'jt���S���N��
�	ԍpR=W���- ��a4����m#:P�%�H�L/k!G���D۴b�� ��>^�d�-Er�i�t�(آx�4v���Nr$=p�Gڳ�z'����&    _w�[��\m��lȓ�n1��z�U�J�tO�I��4�b����G�z�䆲Um'�f���N2� >=���<Ŋ`'�q\��b��|B���I�[��K��[����0z��k9=�?�U��ܥbX�G�]�Դ�rWH�7�}q-~�() ��O�!�������9N�т��h>��j���Z��ej�(��:z�����bU)��`E|����s���V�H0T7�l�i<�\DJ@%hY��*����O�u*�''�`�*Ġ ���dŶ���9����6��Pq�C�H�^�� 'S���PJ ��R50����Q�R���kD]���x��25�Y�iON�3�4���ۺ+��L�Pa��P�l�[S.bZH�Q��ͩ�,=:;��\Ak&tS�1��P[�Z?���*��
�=��Ieۖ�Y�]襞�X6�M�͗e����;'ۈi0��)~�,V�1������Ns�;��K��^��̶��}i{��n��\�p5ZR��]�K�bӘfRl��y=�E�k̴��\m�I�B�@�ί Oj�x|�t|���ff��
& �C����냪�@K�ۍ���h�R삛$�6N��:G�A�S�c�@8u�����F8��E�{m�$3j�3��E���Z�"�B�7�t�d)�.S�� ʿ���(Ȕ
�JH-��'�Ր�#S�58��&ј$�M��G�c�'Ɏ��9$K�s��skE}�y�R�[/� ��ҍZ�_�{�=n:`�	 A�b����I5��)!U�� .�����*4��
 ۓ�^leT�F��-/�L�R�%3[�x�m,"iO�/'�L:b�4�!S��p�2ړ�f����J����$+��U�`��r��7��>��3�^�8�����gժ�>�J@2.���6z�_7%	BKA]Ƶ�����$��p*�Pf�m�6E���b�Q������)3fO�	\���TЋa+�m�m�����T�+��7���$���OƐP�]L2���S�Kk��#��$�\)k�)��E�,��^���-%�	)�b"Ps�P����n,���ٗ�� �ț��Կ��<����WߢU�)�z)o���4�w-g�`"+���gO@�~��jEGR�F�����o�ÛU}%Z�5��R�0>%L)��̳|]v�=E��O�%�8H�C��}zw������6{.�]�ӣ������ܰŋ���o�J<����x	B�U]n��@���m.dv�3�X���mF�l�H�R���ƷER�NtR��7MQ�aF�d�"J�:�%����M-�_I���;�f�:�)[�O~�~R��Hb�]sϺ55��&�$��n���V��A��#�ٕ�G$qWU&����@��Z�g���*�f@g��Ƴ�B��-a��E�%�{�\�4MQ������ؖ�,�3�k`#�s�8��_�,Z�kn9c�K�2�ϫ+pT�E�Qz;���Y��p�t�L$qg[�.HO�Ō~ �TO�!�Lm!3�R��ky���_�T�pSSl�l�V��j�!����N)5�����8�쁢74������Kv'�����9Q��)WCTus:��EG�BY�AOk�.u��?���^1�9P�<��aI�ͲD�m0�{��^�)�i��m�">�~��@�D9@�c�Z�/ȝ��.Պs�m�f�����'[������7�� :����J|J�_�b�.hͥ���j��9F|jr�i��!f�˧!FS} �<鎤�Hm�o*���T;�ή���H$�VP���G��m��I/ГQQ��%D�w4�q�o58��]K�l��K�H����h�Y�L dhܔ�`+}!闹�i���_����9����'¦٭�e�N!���J���s*ց�#;�߸}E���f�*i�-0AKr?�$��M[�Mw;��� H�-�/p�{B�bbC�94)F6<���N�����o�,Mn��f��'48`�Ů>	��9H�Up3Ce(K@s��8���N�BD)F�"b}�����u+�Pȓ�R��,�����Pl/bU�OIp{SV��nC	B�X��S͸�ꅨ��X�����hk�/�!�6�����[qz�~pd�1�ܧ�t�\��L4��lM!���0Mj8�q�Jb�����v� b�A\���[P��[O�}�m&6������-�(�h�@I�}we��V8X9�����Dx,�kt��l�`�8�hxhJ�kw?� ��v.�Jm+fҥ��I9B㍝�IȪ�����0�h�d��&jLm#VV)�� ���i�L���D�������Iܩ�e����g���I�hz�zR�D��-���X���4�{h(�ΤvBz��sob2 ��<^()ŴU��m�0�r���>�㓤�{���Nw
�+E_`R�a���i��-���n}0�!��b���vŌ;���e���;1����Qa��O�K��(>��jm!�֦�WbM��2"@3��M��W���d��6�.b�,��*N_~ �$�>�&
�� Q]r���w0>I�s�x�A��I��2���zk?L�Q�I��1�@�5������19�6��8�Hپ!�������S���ȓ���H�@�.�g�O	f$���N"?�A���&��1XEre��`�u�	)�@�O1>I�cc�=��-GL�0���M�{EZ�=X�mj{��(:P��K�F,�n<)� @�BHkp�qT��!��-}
t����FC�y�ڃ+������	\��q/SL�^1��i�T��.�$���Z"𼐔�x�'bY�zh�nWuu�J�+Ɂ��g3����&�:K�XљO����5��� ��%��C������n9����>h;�T��.���8�(Ge;Uk;I��S�z���g
�rF��>`4��Fc
��52�Ш$=�k�	�p� �xo�I}0lJƾ��[�a�<�d`e7�e"���..:��^��T���ʗߒ��hm�-�.ݭ؇+q��6+�� �e�����T8���ڇ�������|�ܔ�V���E� :~e�k�{g��*�`�d�F��eW_�h$R��X�;�����wsvG�B�zq�oT��R�!����lN]Q�����'D��t1Ğni�HZ���/�B�+	�n
��Ɲ[��ca3��=�t(� ��ɳ�=�z��ab�R,=:ff���$���ϋ�U��2|@��4�i�Ldq�6m+c$ȴ�ޫ{/GG"=�h[�C�s�������i�����֖��l�w(?6s�;����讑�^���4��l�Ҁ���o1��@�b^�[�-�1 fo�r+Ŀ��w(A���W��.yO�}q����k'�i��L^�)��N�Q&��/�n����'4�o@;�N��6^�C� ΂���5,�:NЅHf�ne���1�S�9�����Z�����*Tl�-��`����M������U7+�t�θ�x�p6��I2X`�}\�aï�=�p�ƥ��r�AO��_���J��!4,��uJxV3�b�d�xy��?$.19���?�1vk5w�M�1���:�_�Sr�C�pk��{�.�EÒ��8Ւ���v�~g��hR|-���7n Z�h傩4�+\/jL����ʌLi����$�O�p��da�>g�<L�ZjI�K�-!��U�\H�m�.��x��0*f�* $in� 	��p���w�Ҕ�Vt�SH���EK�Ҍ�Ef��l��3�<����aI�h�5Ա4On�a,���?}|�m������J�q�g²!�M�h)������G�s��;�������Oy���!0�C~��GW����y���ǱO���w�*݌E��_qB->D�,�I��P��	`��%]�ߝ)������d��2Sbx��2ͭh�t��O��V��}�ψ#�jl=D�Y<;�Uq̔M�9���U�Uȃ�oQ��K��@*�08�U�x����<Bgs����e��
ySlQt��L3�x���Ig}Ӥ�lx�    rN�㺠���7�%w-w3���[W�B(h�{o�3��zXR|������ueD�������L�l�pT��d��zj]��}ގ>��Nr��[�IJ*����r6RL�z�t\���j`�h��t��C9��ڛ/���mݙh�;��XYF�_#G������2zp��$��ݬֽ˛
�3�M�=tF|��Rv~����R=� )�]ޒ���d�0����!�!8 ׸GoӬ�{t�*E��|�!x���p���8�c��&9�o����,1�;z������B�x�m\=hVy��,��x��N���0r���J����i$���Iۊ�׵'�'���n'�}\��=B����b�`�0�VU�1��)�$�t����h����7�!��
�svo3��#ht���`�n�k�]�Ϥ����	}��E��:�*Ş<TQ���2����L1.ʅ>��� Hj���T����9��Ho����mU�\�x?cd��!&6#�ID_o�z髹�Uԅ{��l�`XM���5�K�܂;�Y�����-���,��l�5��D;S���SP
��bK�h�e�J$�?&��[t
]tt/����� ʙ��Jv(z�h�=��8������S�Dz�<���S�r	�8������ ������ly���)F��b��I/�;��E����n�w�P�;*>N:1ߕ��v��� )�� �J�5���[=��ǽ��5��c�{���ht0��+Ot�B�d��XP�_�˅��fB����۫�hR@,N}*�3�(HaR�tF�''��"�(���
�DX�
�>�������������Nܥ�;#�E{ �K.ΨR{�%l���� �ha��B�~�q`Ktqw�h������`K��[b�xh���J�����5W��: I7A��`'��\���@H]����(��
�R'7%4N��G~�.���R������%�P9�������fy��N����޽���D����e������Z�0���?��fz���⫚�3�(/M� p-�ɼ�+�d�ݢ6PQ���Ī�(��Ѫ�����n�ji^⡶r���]��Ŝ��\��'�1 ��fT!���d`�ʾ��/$r�%��.�J7ٰ���.E�D�Q��6߸<4�A�3�V1�޿�[j�N�㸯p����1q[����)��1�{�1�C�1Pr�����;�8�$6�k�CH��.@V-�o@��P�Ƭ~a�Q�U^�,�!r�Oym0�O���9���K��b|���7���3�=��i�y��ec羸�b��E��;,7��1/0Q�6.e��VzI��{@W#k��qܥ0�jU��H���q"'}<\#9౉�o�>����8��=g_�[n�����)х����/����Sv��oG�N<��퉑��O��͓�_>��1+V��
-�,/�*h�w���86�/��;��K�q�(C1�qW����c�_�^����\�F��8�ŗFd�s�$4J-�Y���pCYn�Ը(�|�X������;[�	��*��a��g08�[6{$
��w,4z���]�Wrl@�I�.�/x��,	��g��`C8 _�,�(��n0T�H��p>��f��!\K�A��q���y��� �c\Y����!�3�~k��ӡ�h=�v`���W���� �=�5{�^5���E���{!�
�"�!k�FCS &������az	��e���n�f69h�jc����:4�Z*]f��,�#�%�8�\��jU �����M�`ߍ �GW��)��o»�u�	��3Ҩ�"�'q����㪿ƕ.]�F/�F0v�����l�^�v���vY��=*ҀLO>e���1�}��<�}� #���;,쩲thTot���t�z��TbKs<���W���K�����0]�3sǲe�ƭ�H^V
)��ӗ��E�U�[����c�^i,�eMC���	ޫ�.����P��1r���5���|y� H��l{��w�e����9��Ȥ�P�Z���s�?�}�v�B��'�f���|����ߎ��#?�$���(���.z��h��N�s&qo��חg4cR����˳����S�
Y�?�o�qǑ��?�=��6-���!�eyr&q��{��\p��7C坙��!V��+�l��O.iw�s�2X��!L�����rk�d�У���y�BW0���ܑ�]���u�0/�����8B��0 ܲe2h}�����h�
�wDո{�SЂM⮡�!��퓸r��8���%��ݏ��*�鬦T[�%�	�-L@^�z�ه��	����� �`ɽMRD��u��A	�����H�N�=�C��v����A�ס��~$�$�ۻkS���Cjm�O҃�8��x% �of/X�%j�����k�w���V�Af�bu���`���I�'悎N���;������`-U�ښ�?�gƕ��5T��Z�X��ָ�ͯ�U�s���o�V瞬���&
4��Rl�z�TpI<�{�$� ���ޙ��؇��*5�������I��Q������69��Uz�e���\�)�0���J�n]-�t�sZ�5X�K��p��x�a�.�/D�/1���0��
� �JO�y�Sw`M�rU\ݨ
�H_�����W�+4-2���݄���,�5Y�݋��[D~��+��B�"�|�8��C� #����=y��}!���eD��e���&q���D�iJzII-,����W��0Ɇ�\W�.�MA��h)�C�D�4x6Ա�|ˑ��
������bk��r����C4��܏�.�v�y6��:�~׽�A?ԣ�g������ُ��:l�'���w�G��T����a١:��=uX�k:~���LH���liH��l?�u��}i���.��G�hǀ������u�?�u�ɤ<�x?��!6c�+{��E�X�iޫ��D�n��@��K&�b��Zi������.�6'��n���oD����F�NבJ�K7�	愪>��꽵c��kt����{�p�E�]�� ��;��Tq��[��l��z�+��~<��}��\��`���Ž���Ŝ��Y!Jh7����T?�9ٶ���j�a��o��x���bUl{�#뙟#+��ӄ���"�K����B=�t����R�c��2y���R����D�������.�\�W���Q��ܐ�k��ُ�����Dr`t޿I<a�:�C!�Q��~��kVYɮ�i�����@]��u��]��7��C����V,b���r������Y�U��c'�dkJ���=��Em�u��b�C
 �̘�)��/+OQ��5�x�Ɛ�ñZG��ă9�`�Ҵ2I�s/�ն7W�M����F���^zk�25����ޜ��z�&z���݋�({��7ќ%�������+�'۸̞Iqof���P!��^��N����1tW:��v�|/9�$���	)�֫�:	��.5���*��Pҝ{���\�x뤗u��u[��B�T	ڎI�žƣe�W�T���u>h�q���ϝ�Ei@��.��R���:�w�n١	�zU7��ۼ)���j������*c�p�����8�e�I$���^�<����E�|�$i�#ʐ·�������:ֽV�~��+TQ�"L�����V^X�����$�]`D�"$�Nbe��,�W���ӛ��/�����e���b�Z��l�e�j9'�������V�a;��z�q'�أ]Fۼ���K�U�W�GB< �!u2r.���		�3�g�<��K�+5��Ц=��t�<�[DJ��.���ƣ�vh9�IW��i�����C�V�'�TA�!ȱ��p�ڥ�-�A%�\�g��1���+:�2��Rb�8ѕv�T�N��x0c7�� o9C�t�����n`���^<`�.q�30Rk�[�@t�WX�[[��s�W�X���9�+,�z�L�-?�c�Z��	��r%�q`�Wd��m���_Ś��y
�̌X�c0F�&��9�E�2S�F�	�G��M��Od���D�W�    �i�����?@:9���7E���/nĲ�G���18��Q��u���gv����y��g�5�>fR����[�͓�� ��W��$�n�����vEIr�x����t�0�X��E/50�|��c��ۿ�J�܌ea��Ԫ�`�΍��a��]��~;�)��gRQ--,j��<W���)���@(5��Rc;p��<�έt���+|M5�Qq���/���B)}�t�H6�o^��3"��u�J���7@�
���B7�|��ώ� ��	r�I�z�pl��`��,�]5]�G����(�/�|)책k�)���2�7�0gn�"鲁��:��j�BĶ�%oн���*ODwM.p0���j[�T��9td��	Si�ֺ�o�Ĩ)S����9����8�[,�����&?�NG�����ku��s��0�S '�9���'h�s�k�r2�'�u�u���'�ֈu?�8$��	��"JU�u�d�L}?�.y�;�Հ	�z��:�\�ܸĊ�˱����C��2M�@����?MF�(Lg���/�3�7کWp���:8����/��T�k�,�}7ܳ��߬���{W�+7J���n�E5�� #��.޹/Xi���o�t���*��]����Z7�+��Ԧh��0��Z:Ӎ&ԩ=>�Z9)��� �dhZy0|I�M��q��|��d�� �9L7S.�Q)��[�)�g��;\VAw�$Y�q��D"[��=AY��^�,��2��w$ �[�_�>j޿�l�D��)/�L@R�}p�*5;3�x4��Z��v��$��+�w��<��p3�$��Ɔ���M.�az�x�R�l�;�Q���"Q�)F��h�x�
��45%J�d�/��W��e��de*~�+�'.��\p��#��"x��o�>H"�d��b���~�)��B�K�7��[ѕ�|m)���oy��H^�A��XftEG����|���ƣ�"蜴~�a���lNFW�6�j�&����٫�B�. �H��/�^ZLk�p�X�f~��r�AQ+Y��3��p��69��#���+�:Ru�7�C�t��Cuv�lGuX�p��-QI���g�{6�G�G�m��^�B:����V4�Y��磬����G�$�Ll-����l��ҁY��D��rI.m�Rirc�cgf�C�4��1����M��F���x�N�u��vX��l_����g�`��Q�r|�VB#c�b̐�>{u�����ju��4��v$(jȾ���r�"C��D��[N��y�<.�2qdG�W��xЙ�>}��Ȗ푹LB��q���F��씠�kO
������Q��___U���jMeıgSÁ����d��y�[8u{����w�e��� \;o9�����a�S<�y��'���=�#�,5� Fm�����k���
a�^w:0@�7'��4QՋ	q	!��+�����s�5�0{�����ܷ�|mՔ��1��Ò�*He�������Td�P� �������,At�2�x4PW͆�M,�,�xz��@���S8Et�(tZZmf�Ƴ�X�Ŧ��;�W�Ut����w �^x�͋.�N��}�-�ȉ�b�0�Eٺ����]_~�j	1���|�-F/�%�$&<�e�£E��J�4Z_V�e-�����T�_���W�G�$;���S���F�t��������^�+�s��7��ă?�"�&Y�OO�.��?��3)��д�}H����*���xLD�-�uT�xxCV�}�M�������~"�X��qoњ�(����2Nu��C�;Q�)G2r�G<����x���J���_1.J]ל��!C��A3�:�D1��_W�[��"��-o�銩X^�7�8�{�ȧ��W��F��$\:9�4����7��|��8�̩��
��l��ZG,fV|@^�Y̫�¬���3����g1'wDd�(�o�E������Yz;(ͽ�,\� 7�Y�w�DƯ0]-���1m�b��&�N�	�O�v���Ur��N��np=Xt]3��.qY�����)��W��s�X�CR���}���):��w/�r>͏�3;@W��G&'m:�3!;H-�LBE�b!6.�숏X~�S�-���R�@�c����p�:"�4���Ԅ�(��
u`*��N˻�BvB����\"�f���?�>Ԁ�[V7BuxC=Y{�6*@(.\����%��T �`�M�ęz��,����`	g��5��?X��ft���wg��Zo�ҁ�2�t.��!�m�1��&δ/�/������*9�l�L'q����%�C%��PQ�+���!�ak������GߙFu(įSg"1 �If���3*�� �ٌc�~�a�N܂�������J�v��������Tz.�0�c3�i؁�!��Z�"<ӳ>j�<4�DN��X�����7?R�y���f�؝b:�^Da�v��M=zU�g�o�V=���:�M�z�U�Tb*"5�8d3��l��Y7a���N{���{���]�T`]fD��A�^��Z�A$������� ��H�U�C9�P�0[S�1!&���dϲ�щ��5[,�G�Ƚ�="�WEב��nV%' ZyL��e�v�I�3���z�������l�m}�-4k�9�)���>������N��j����c���ˆ��k��&SL�ԡ:��X�S�P;�����-Q�>����9��N4��WgLŞY-!��K9��W~��c��t Od�,S�[95=u���г,�:B�j��œ.^j`/=�d�%��ֈ`?;�b�[�/�sZ�ٙ3�H?KB8s�쮩Es�B�?3��E���/�ѿ��Azf�m��ԩ�Y��e����yL�f�<�X�v�t��ƩE��tl p�
��,'��#��G��r���8_��0�y}�W�����<^suF��O}��&�<�<��q��C�]ll��ێ�o6�z@�q
�8�M�7W��j�~eߋ��{�omQIc���m��eW:��y��2�R�6��Z�(����L
5)0]�w7�(j��0áG���F�e��O�䉘��NQ�*�Z�]�.Ջ�� ��z��W�.�JPw�O0w(��c��y����Nc�Ü��ND�i�Z��r�Y;���}��-��� W�� �*���}*4�:��t:����䝉E
.ZيC�(��)��y��v�d�,������^� �;��8^��V>թKc�j��o��`R�v�v���A�~ �]��D�wE1��50߅3���L�3��}�����˩I/�����`u?�� %�.����6O�.D 3���TnZ|��+D�fJa�R�٩$�3^*)����S�y�Q=���uY�0�n�������Մh/���r�D�?�~�o�80���lPF�L T*Y��Jae-v�H�F������� d
�w�VH�����F�q]���7y&sAQ�t�d���X,�����!,_E�!�#{ᓭx�����%p�2#q^ƃ��=_� M1$C�q`1����B�/#��]�Uys#@!@�Z��+N��@G=ffi.K'������H�C��k�UрZ��7��-VkՑP����K*I���LC����-�Ԅ4?ݵ	n�c��s��K7p�F1f���h7���N3c��CG��4[V۰�H����.��|i2��ct�u�WP� ��
\r��oŁ�r�JI��h0�����L�����tN�wQ})�Pf����?�PqҎ� ��mUS��	I}�ǰ�Ψ���ڑ���B<42��Tڱ��dh2�3�qm��j��1UK�"u������_2�<g�w�	E��&�a�Gǐ�o��iw��[�-������L�Gh=����ZVtB<�����5���ɀ���g���E��N�~���j�wX&�Bn�L�Ú���!5����D��DwQ��b�!�>�'�w�io2"��$� $�y�Fb��b�ފ�2_��}B��.� �ҭ@ L-1b�����HX�6x�h��J-@�m[F�廌^�0Ax    o�2��j؋Nz�C.=W�4 <�t��_����'��z�vUty��S*f��
����ćL~A��{�vŠ��茁r(��+�^��r*	00sd��$�$h��
61V[[�.����1�~[}��
*��S���5��΂n���l>XO���@���ٗ�����N2�{�%@m��Y�F�I�bw{&c�Nǃy��}-
Ϭ<����'�`0��T�
M*��	5��MO�[!��-R�(��}ƣ��Nǃ���|�����d��w���$D���F�	��Qp+��D��k��$dx|.\rZ���biX�Te&;f�A��STh�L#�[��f�i��V��3^�j��q�����v�q:�C!�t��,L���R����3I�(*�l0GMT6@�#+���j�q���" �z��e��
sN(PY��r�N�r<�,:2B`�l|:NsV h8���^���t���z:I�;�m�5��&͚<4V�&JnZ�K!���^LT-�D�o?f�ʒ&i��HM}MF]p�]�q����Z�{��se5�;���Xl1^N6�竓�6P<+�$~$�"r������۩:��mE��HQ9����P�]!Q�ȧY����|��O?�t�fH�Otx��83��?�����GZ�p���:I�$��V�!�ʞxw��������ɥR�
��̭|�&�\�PMiͺ�ں*4��G�	��'l9���H$:��Nq���|[�܉D�����gL~�#Fn�BT�@ #z]2au�h��̂҂�x�9�n������~��!77E�OO�/q��>?��M��8�A����7�wfj;N5�.�r�pjA�o^)��i���wi5��F����D�|3Q��c)�L�e��K�Q�/���l���w��1�y�P���P=6�����x)�:`�R���o���n�T�]ȭ�v�#X�D��R�6Tc� �`P`h+z.gf��}�Qp҅�
����\Y�O���8:_=�j��ᕖ�貰�U������v0�� ê�������.t
�B�Ǻ��m|-gQ�x��z7Q��.�:��R�8A��'4��=��f{�*[��h�_C�8|��W��e�{� ��\�Sp��so�7���~��+xq��[�e[���v\���ѹv��r��؈V%q]U�!Y�5s��_�� ��g7&���Kf"	$�ē�  T|QAN�n��!����,/�ؿп��{�d�= 
�d���e��ﲁ��ە�;��D�zf�Wq;�D��*I5dY-��РQ�����q�x����ײ4^�jh����iޣ�����O_�\�H؏����G2�_���iY��x��S�_7�O�/�����m�݃S����]4���g$> "��٫|Sl��l�+&H�&1�꙽zLVkHjѨ����'�������.��%��ȷ��[Ɲ�+�?�-|���2�1-���h��j�i���rȾ��MYWIr|2� ȵ��<�Z>��bQm�C�g���u܎Z�l���i��y_�'�|܌z�O4����ϰj.�`$��TX�����ɫ��Gϟ�x�����ы�g��5���"6O�v�"�4�N��l(5���"�톱�n��\0�Q'b���)��p�[a��W+�����Q7�&�#���I��w��\@�qs7E4ԛ��������Y�I����I�!(�|z�R�K�"�q�3M9p�r>'��'qCe��?��+:�F:L!w����@I|��-�S�4@�cټjI���Ϸ.��'qsF}J�����$nZ�؃ݦ+�*��L�z�"3C�i��7�x��L�T!�O3��,�������3%��8���j\+4kp.)�C	v��W�z���w����߫v��n�\����\3,�hŭ�I�0��P�љ�o$�9$��F��&up��X����#�* ���*j�a�ŭ�-S��AkU������.�:��Wߘng����Dҁ��!lmp%&���z9m��V����_�Ol1HI":�./�A�)U���e�#nw�yأ��ʘj��y<D�0t�cF�FtV�o��I��� ������¦����P۲J
ݭx��)s�le���R&T���/�U�tWtR�y��,Ja��;��A�0�DqS�Q�mr�ކ�NT��q���ܧ�7h����qC����mI�i�����t��b�-��9��:C�p���w�LC�(`lȆ��,!.(���f��{ �^��[�'�0�֓Gr2A�r��}R1������˪S��p���:n3�P��IY�P��4���ѯC�3I���Z���=�W~���4,�D[-��6�����ؕ$��}�Wk�㟆���j�Ec������'����y�^`P����:�k�S���o�&K�����I%鋡ЌT��
�H%;�#a��t��<�>�l��#��Dɯ�;�Ź��RI���ׁ���]݁I���a5����"��ʁX�����l԰`ֲ�\�@������Lx��^���qz�Qdd�9	��*fE�n�&RlB5�"!�&dV��Kf��������V/+�X��B���|��wF�� \=B�_���AI��$ �$*"����i5N���Q-���V�~��uD-6���&�Y� zH.KD�Q8���R(,�s��=���GX�rUQbȺ#�1�Q��bV�W)�$�����OCh��  �O.!�I �=&�F����/:��/ �ā�hU�.�k0F��Y�_���&N��-C�Qϐ��TDn1��>[�7:J��]q����=�6Gw��z��GM{�~=SO���''O_�;�d�&>���������~?\��X ��7�C)���Y��^�L��31��l�1�.юt;���۲W�U����o��Dbҡ��9����c̕Ѡ�#�oo!���@��ه]�l�ry����[\�|)�I�-@�V���b�ǿ����9=�@�����Q�'��r��)��$�`�)�P����/�ө�2Mٌ�>	`�Sk�g��S��J�p�]�|�������(A�ۏ)�����r��?ʱ�U
l#�TD��)B��GC�9��D#;b:��q��YKo�@���O�k�oi�:��e�{��'��9' �u����L��Áb!�C9f�0#[�c*8`�'��W,���CZ��H��Y��;�ս�2<�Z ~;�Ƴߐۖ�g�R�Y^�\R��эk����.���?bD+f"���=�i��[2�C.���J������S����~��n 8;b;b����Zr���7r�9�Zd�����V��	7�yq0��䬋�೹E���k
�讐õ���PlH{{��N�����D3m�eouX����< @���^��5��,t� L)v aO��H[kf]��$�R�m\���\��k sjP2R4��v�4�'0(A����CP?��F�F�9z Mڔ9�>Үg�o���Ͽ���3��ڛ�wٰ��e@�>ۼZ������������߯��T��x�6�o�r���H/���ɑ 2q/JX"(���3'����3�x��T��ݖR*oL�� ��LI�* Bm�9e�J����>&�wS�4�}� ^�$ Dh%��T�j9��I 3�{�����%e�?	�$��}�qѾx�O`F�̰Z��q.z��P����b����
����3��>!�$6�mo�h���'�A��L�v���@.���x]�NP0��p��)��wJ�4�:�7��`�g�]�`X�i:�����Se�`�TF�ؤv���W�/NI��h�I�Rm���� J3�@v���(�嵱�d�FG��spc+�XDG��3�b�y6	$��5$�)���� @�߭9��5V�<*���7\�۸���?@�*�=\vp?��H>��rS�m��z�X� �I��zi a8��wpP���v�"�T{bQ�)���������`�+5�%s�u��Y�@F%+_ �a�S-Ad���M�	�q�}Y�$����2�at���8��^^��-    N`�4VYLH����-I�Jo�P19��yY4�������^-!� �mL=�\7�R���:ؕq���d7���W��k9�>�'0Km�Kv�v�p���F���;<��������
 �i���id]�S��(��S���	�"c���p�1'ܰ~�]k����Q�����u	�B�:5 X��q�L�K|��I߸ƝMK��9SO_-��R�'�{��,'! �$�AE�I�%�������!9{Z����
���U�c�a���^��Xyk�  f�4Ν�u/��7ڼ��~x��)�=T{u�U��� ��z�q�U&���4��q�}Z��%�]Ӵ
&q�X��yG҂a� I ��m��q3���fKL�kI�6ה�xH��s�@��ۋs������(�����x��}Eg��]�7���}p
G'�|�Pm;�^����/�ٶ|h�#���4 �əN�@�
z�N�=�8��+���fix�N`>��lJ1�@����d�O�� A0!IkP�Y�ѹ��	��f�U���E�K��@�(�q��� �.���Ȳ�3��?���]\���:��Z��� /���5&9̟I1)�.��d�e�*P�� �.FN�EBi++A �$��릖�l������D	h�<�e	^�!F���0���/;W,Ǔ�����m��5T�/�TpA궤6vа�.ӶlѬ�m��.Za��Dtq\
�ϰA��E��8+bM�H:Z\��Rd��F���/v�ϰI���������@s�o;ᝰ߽�=���Y|� Ϗ彲����c��6`�s�Q#:����ћ��wY�������\Q�a��	7���D̜H��]o���KL�sW͑73�<���2�F�q�Wj��<m�Mz3?� �Ȭ�o�٦a��B|�f؝�aY��Q���e`I�,�D\3�ʘ+a����`��wu;"�ʆ�9˒a� ��h��?�B�
�Z�ؚ�@�iz��%w�;�~�ƴ��� e2�a4��\�h�1؜�)�_��̧�\�ͱ��."��kx��]�C��O�f�3�K��1�7�K�����7D-c�;���66TBW� XKg?p����	�G |o	��ؓt �y���܄�/����'RC]Hg�y�^ױ)~�M�B��W�קz�6]s�6}[�D����f�f�eЙy��EuӬ s�wţ��.��W��I�v���? ��#�M���m,�h!u��a+��q��;�c; ڳ����e׮h�������������O� ���Aiy�����#^Ba\��k(���]�\u�c�� �V�+Pt$d��~H�LT�L��B�t�\�A���&�6ŒY��@�H?�ȝ�4�[p;��Rq��>�Rޏ��ئ�2����_��b�lj�&h�k��;�eu��L']�y�ԝ@9vek0��жjY�;�����r���Uy[�+P}|���:.&�����Qr������]?���VM_A�+%�5�@���%���Wv�����!��dIFF�Yi�({��V��o�8������	�_9�Ɇ��R����IPQ[j�R�i����[x�9# '$�ƿH~�,��f�_������o�N%u���a�I*��� ppx�����i�] >8PY���d�峢5$��]%j.mG_����3�`6�zW��#QD{(0��I�Q)���������3�5XA��W�ş�.ܗs�Om�������r�]��� r �J�e�)5�E G�0|^���z�H�����������ơ�i �#fL����(�� ���
���t�ƥ#�u��А �VwO���h�@F5N0�q�&�*�L�$�TehpT�4���p�*��5����_�j �~�5�0��x����/3�����r塍u+�ⰽ��ʒ]�ۿ�����^W���H����_`[�g1ND,6��Č�oB5;@+�Lܖ+��u�W�٤�jNh��	L�V�CL�i �9j��:9 2�o�A'�H�D��9�%G@�� J2��tԐ�V\?,�aA���+�٤X�
��t��9 �0���j��������UuE˨ ������漏�IR-)�8��E�0����KXnG[?y���!vk]vy�9?��>��j@Qݙ����ti*%���650W���*.?ߧ�4����e3�[�s1c9���V�ډ�hwq���wwwG��/��Y�yv@���f4�.�8�� g}��lpﭭ�nӁX�Dj�@i3��i XQ�8�[���> M#�Vbgnf�hS-A���5�u_敹~����$L 'j�G�9S�p���a�լf�(;$�W)���8�B崐�ڮ<� Vb��0W7��<�J�-�i��0'��gVB����.�b�'��	{:@<V����N��`7=�[��g�:,>h�!7�'�ߵ�ƴ w��ǒ�Gl��x`�e�!
���S�PK�4��rHP��%���q�Ar�ry�9j��ہ$ߠ�l�{^O}N*���� d=X�(d��謺�1��$VlbUe���߁!���ѓs���7�,>��H�b%$�Ow�����z��G����]�5U�Q| S}��O��^�VK�;%��v �����Q��y!��:N����}�,�z`}S������_/ݲ��v�t K�H��nsp��m�w��̜� ;ʂ(�� w �m����_?}ĕ+��g����~1���/���r�y�e�����,Q̒������_���5j͙3�`�my�#���T��TqvA�
�"��[�0�#I;ʹb���xLP1�j�oKPT��0o�V��,'.h̄7jl��Ԫ���N5锞Kl�����9}� XwBb��l���;"q�K���u�7���Ϋ>g��|�?�]]�����K| ����9lx���(�L������	�����$���%yX�X� ��,�g4l��?��Y  �j���G���2 �F@�N��)rC.����#� ��(��Ѽ��j��b�q(Z����1�`��w�?�n� �����2i��&s���ٟ�?H"m��`�� �S�Q9Pp��V������JM�gpX��^��'�Ra��.}D��0��t`E.� ���Ms���8	Ƞ��za�F��D л� ��B�D[͛�g��s/��h�z$f������S���<�e�"J��>��a���06�H�OB4y1�A4�S�0�Ld�B���.WS\�D�,��1?�=���9����>c�+��ہ`V���u9��].�F�!�����]��#���R#u�e��D�Kq� ����Ռ��\��k�(�J�3����Uވe ib��a�buD��Wn�M�b�@�,�n��⌅�6-j��(w���e��J?���1�i�@_�S��N��Sg�g���~����U��>k��A��v&@Ԋ$p��l&E}����� �p��U�+��c͞�%3�Z�W�Ը���m�5�8o;�5ݦ��� 4�y/��� ��	 2{O��{���z���ӄ�θ���.���t %8Ad�P�U8���U| $8A���Ԝ6�j�^MK�Q~ܳ ��!}�f���g�/����٤J�Mz3���$������s:`�(V�%I#BO�B��8��N�;}�<��o�w�˜S�u'/���t��g�=$5`f�$4�Y Y6MkK1����!)��7���v: vsޙع n��F��o�/|;i�鷇!�ɌY Q�Є��0����⛑�eU�W�� ������1jC &�\@fY����e"0=Jp��-�C߳ �Jޡ�زR}7^K��t����Ү�K<����m�HV�0�Y m$���"��y��k�c ~d�	-�P#y����u����y�ŗ��5� ��G��5���?^�_'�]�W�Gذ?��42 A���~7}�(N�S����g���0�Q-
`!�	��2�%�]>�=�e    ܀0��x8�Z*{�j�����#Wf	`���]�@Z!8���7��=����"o�-��Y @|��t�5
 n������/�?=���!	�����N���Gr����wßH+}�1�����sE�P1�;*��D+cp��Z�Չ�Y�G}	�f�/���L��6Q.���ۢ�	m���DD���@dX�ai@�+^ (B����M���Q� ��&�zy�;&P��&��zW�x����iz��Q��P�P����z�1%��'�|���?.��{$�͞H��ǳ_3��� �@��rGo�--�( �����n��ͽg>c�b �𥜬b	f�U�͍�O�6��	4P\-��wmݫ9�$	�f<���>f4�ktgc�r.v�
��j��O_.Hb�����eSu��G�|a5Y�4Ӧ����[�󛚖1���$��r'�T���?er�͝�1���a�}���*���ҁ����"v�����D�����63tqX�p1B.�3���6#J8�������)�;�!��H��`�I��$r����V���O>CB�� Q���D�7�G�I�c�w�& ���ꠎ��Q�5`�� ^҄h��2�M ��Ff5�o0�8��R3ӘP�̦�#�j�j�g?��h�D�E�F�g��V�jNR�%���^*��w\�����> }�`��s�-�I椣 ���nv��Z|ԝݘȰs�Q�\��:�M �1������y�����Z2�/}YDF_���e��O2�^j���##EG.6�H��& ��������I��&�����X_ݗ�f�v�wV��ox#���n�02'X8m���� sn`� �TD}ymV����X���M g&f��e�($����<��	�V]/�!I ��1���w��Ֆ~a�x���L�H�Ȉ�<#S�-M#	7��*6a�?��趢�t��U���q���9γG/�$D��d�=k�H�7h�X��m�ڶ�v�J�G"�ϗ���	����ms��P9;ڼl�_�xw�E�H����Gnw�2,ʾ�9��kO�؉�2Mu��ܯ�]���(!O<O��L��9[����F�z2W���^�g��H�4���au���_a=@7������# &{p��5ReaUDL�%��}C�B�c���Ť��#�W���g���M Ѳ'�BҤauD�[\pa\���iSTb>o�%b����S�H*VO�Zbq�7d=H'��H5ͤ�����DN�����Ϭ2>j(��&���	F�!|kh1\ƃ�B�@9F1�!<�4��ü)2� ��e�4e�d�1	Ҡ�W���X&{�c'�ܽ?CNIx�Vq|�p�<�d���E[ޭ`4a�m��A"�
��P����a��4�J���t0F� �m,0� �i���S_�F]�қ+�u�d����h9y����FX�c�i�6��j��"X5�z�5-���u�����yr�Zף|��Sg���uC7���h�!О�e�&�$�,��|��w��}}�'�涟.��B�����M �5I�YoK<��u�$z�FޠGY�8n�rM=��}��h��\� \߳�o$�h�Mr�@r<Τ,���XM������� �,��,@/<� ^,�����Y=���Jf�}�D$�t7�/�H"h���Kɛ� Dk��7��7z=��/��M%_K	�Q��V3|i&v�1Mg6\x8I�jW_o����XG�FoZa�����C�	�pJ^�Խl� �שU&���o`�)���� U)u��:�й��
T%%3��yZNK�9�Z.Z���N0<�p�r��h��y�Z���U=^}<$>F�@	���b�-����Z
�DLb_ᠱ�͍+��>-}
N�8��ah����z�x�ڀ_� �jL�U ���=�4�7_��pwc��!VD� 3ۓ���2�v�O=��q �G��=�� �o$'�%�Nw��D-��9�F5�.u\�,�Y��O����RZc�R�l���!��<�{ge�f��F��|�����	]�G�+(F)j��P���C7g�Zo��D�H��vȥ3���a�m"*��D��\b]�
��V���~X�s�i����R��4rN�"�~ZK���D#-b�$�Q�vՒs+��Iɓ?����D(J ��`Q*zdwJ�j�|���.%�Ps��6�<`��P� !��N?�k�r"�+��h��02���jv-8��jۦ����SbQ��0��+���sxN�i4	�{5�S��LeW�7غ&P�<��H�{v�$�|����������D;�u�v���e9�u�CWJU��Α:�.������mޤ��Q�1[��3�����!=A�ndm���)��*����y�H�/��<<�c?W�^�I8o��h�x��nlBId�!�
˛�"�:^��Pc���4��ɼ�f�#�
�p�Y{yS��=;�%Sqh���
̛��H�>w&i3 ��[�={�O�.]�xb+ ������Z��
x�՗7aN0~�0�����zb���a�Z�gXa�,���%$r��8k���z7��:z���}
ግ�+Ax ��A�s��z�&b��Q��}v8�E.�F|�K����w��$I�0��u�����x�il ��"�T/�@K�����ć�zz�j�1�x��@��Lb�FT��f��y��Mb�(�}41l�
:I��s�i�h#�<]��]F��V[؉P}*�~2yu0�̱p �t��#4,P���/I��a1W*R�c����ûo�Lr9��Γj0Y��65�u�a<�Sm�CG��PY��H�T;:�j�@�T�b�W?��@dI��~��[�lH��g��R��(�C5A[ê&���q�Fs�c�eG����dY��iHNV�֛y�����bJ_�Vnj�G$�V<(��Z�H�������m�EԠ�_����g���B2�%��Æ{�:��M�ᬌ=��fԺ�cV��)��y�S+�{X��	�k�t\����^B�@x��'l� !��^=��;�/wjQB�G�Ċ��|�6�uAhu�� �|��ebY �v�������R5R�ee����p�i��z��y�X��������
U�u5��%�9����zF�Ef��:���=p�9�}c;��MTS���Դ�9���ɢ2}a��D����+��%���v�X^�.�G/h��r}!n�������SL�Րhĉ5N81�񇨁&�!��Q`�$Zn?3�2B��!�a�:5 c)ۇ����V{��\��G���s�`4�� �1tN	�8w$
��
${�\�4NX	�j�I@5]�}����$�B�rE�(i,X\K��1��cuKPa��2aD�Y�r�DK���Ro���+9��5-�	gA&Z��x������Av�T:Ġ;`_�7 �Yf4�'qH��i:C#�� ?X�!�C�zS�^ȧ˛�XT���]=���X+҉st�s��9rN+։�`���0X��T��Ø8%�Z'_L�fi���yޙ�ڔ,�V�#�	߻НJn�1qanS�]��j��S�RVG�Gŋ�O��O�����!I��kL��@������UI��!w�,��-�4�F���j������E�v8��?�:AVD��E�81E"�4�(�|�x���$�9q瞈G%N���x�9�n�`��5��e4�Y��? �Jj��$7o�z����\ި)&���1�,���'����`}�Nо"�jj��'LmZ��h\�=�۪�p5ˀ��
	�h���F/�a����X�C��K!����b��l�/<�Q�Sc���C(�UŠ
I�ϕV�D�fђ�Gd�]�Gŏ�b��w�A+��P�/��kok٣���Y�D���]Ċ�]��)��'3`qkI�;4�oxEI4w����r�G�K�Ϲ1@2|*�˙�����ж�N�'�ȗ�EqJ4�S�j���|Q�$�4[��ٔ�gY�Y"���H�NK�4����O/�bAW՛��(7[,��߳? �e��6p�5���0([_6��o�l��o    ƬH;�C��<�s�`�܆�u����L��z��5<0��#Q"�����Sj���8�mU9,��B(a�]L#oDJ�RS��ys��%5��+7���b�֐o{DL�L����n�ã��*����ԨC�i~�(�Fؑ1�78���c�RC3���7��(y�z�O$gƄ����XJ��Tt@X�����2�U�2�ϳ�!�#H���w5�����W��/=�<�D]:ɯ�C;���	:㶴A��a��g��ݐ���g˛tHo�S/��e��Wj���W�LK�#�H$@�b	�7c��ڤ�DN1���_�I���[�l�D'�~{ ��̹��st����@�����)N4[����78V�-�����{��b����[2�:�>��	;��14V��ǎ�>�I��cߑS��z`�p�����A�k�a =P�
�?�AN�M���
��v�8����E}� � `ޣ���dQ�	h�[ւ;5�1���Ŗ6_v1q�y�ۚi�F"8�/ӭv`>wZI��Ɯ�R�q�A8��I�۪����� �;\����`�N�Lց|���^µ�j�����[j�6[,���zbf�Dʹ������i_Mz�^��e��_Ww��js�Kҕn�H\��\2M����u�;l01� 7.�Z�ڕ���Y��G���F���S���G��Av�j:xƏ<���)�`Mp�L���z�A�\}��Ǥ����ZT��!g��h�3ߖ�!�����S��&�eD7��b���,95��/�ȣ��%��)n>W�D�G����Ej�D��V;�'��xy���p:�qo~ڤ������'\S�.��F_2��h8�(�&�a��:I�K��J��ǂMRc��=�K҈�%5�n��?��B���\R��]�>���A#�~A&���_�H�
4ڤ7a��\�Cjԟ����wH��	s:�]��%�}���h���]H͛d��k���l�.�_WBj�݈���@x�x7�b�{0����8�CԪ=Î6=����oA&��cOSmV�⑦1>�$����8C��d�K�2��l�XW��Ɔٰ�%f�]�NJ�z�fS��f�+ROH _�{���W
�#1�6
�1�(�\�D�a�V��Do�<���c�'�f���F���X��(b�#G���Tc�8@=R���A.�^�n�,"��z����_���M���#����m6�`䐴�ܰ�H����5��/��멖�_�5�a�$H[�06�/R㷀d���%7^��I��J�ОF�F��cw����7�H�#� ��}+�Q���x NE��$O��I��3#y/_�~x�� ����n����5U)�իj��U�!���ʰצ'
+8ۊ���,31ɰ�~&�b��e���aH�5R����u>�.�a_����f�~G�fXW�&�>@4)$u�"5`+L8�%x�h��1���9�0�o��7a25RRjd׸-}9�A�VGV�)\8~�it����tͳ�ѲZշU��^;�S�WA?Q��?-�oX���5�1Y������v�� ��� �-�_K@�k�Ϥ|��s� j�P�i⪉^��5���������FdXZ7.�I2}I�=����N3��f��i�S�:.+!Îv_w�v_����[���=�8G�l�`�E`f"K����D�2�U�QB�ͳ<k���j�TW�'�V���i��L�LɺS�e�g�P-�BR�6� e�8V��N-���&���WS���U�����_�'w�G�����|Y̺6�~����U�{���u���k��y��'Ł����@�;x��@&9o�ۛfø�����ݖ�z�/���H]mZtǩ��U�BV@W�]!�/���e� @�"��I���q%�K��`��)Q��Oe�NbX�6���˲XT[�yr[.����4�-�+�fAw���ј�4^��}��J� �r��d*/�I��}��@�(,!
���D�l��Lc�j39�P?��N2upD��#���879N����H?f���;�šA��hUB!���@���F��!��󙄟����AI<��%�������2�dF����U����j���jѐ��Wc~���@[t�f����5�y4&+O�L��V>Њ }�k:��.�@�b1��qS���0��'�ܙt5#��f]l�b�6G��3��8S�{�B��ݖ�A�*Ε �5I)�����z8�k�C�͈�u�A 8�ƒ8^	��,��L�U�M����o�|��^4�$��=�Lv�}DY���c�h�G2w�9M��X4�c�-.�(Sc��|��Y-����l��/�0��l�og���,����~�&:_�a&���Vs��B×������-�A�]������������c��f�@q�4�af��s*J����0;d�0t�1c�kG�#����qo��~}�q�n}�㨿�d�S��캻�]Rm���_��<�6Y�	}L�S>�JyYNI�w|���{��6ʆ� �����ު�$���,���P�����;z�a2�������x�=�����x��GC,9�8.2��~Q��y��z��:>W������y+.���2c	ă@�`?�e�z@�{{��ݟ��D��)Fp�r
 8p)ɭ%��S��!--⯡�qW^ъ^h�g����n��N��!z�����j&M�)�^D�,��F���5��$<���S����Z1FYǿR}��U���h��N1�0ˀ�"�S���ji7�3)�d�e���p�{���'Y���Ϧ�3��P#� �T'eR�MHb��9����#k�pھ��1�ڻ�e���@!O �hG2CI#v[�v��fP�tb[,RD4fb$��6��r�U=��LXY�H������Jɞ]����d`�ֆԺ�J:r��AFٳ��(�~:SbP�W�
�=�F#����Uu�#r���EZ9Fנ�ϛ��`G4�!@IVʳY2cռj�k���"�cMҤA����/�Q
&-4���̊Ҳ�.Ip�6^�����:�*��A�8D04r\IK��ƺ����^�1�����y��v�� � ��3��h��K{�D�8���v�v�\��'��GC���֎������h4���s��(���?%;�b����Ď��{�p�u���O����>mG!�#.igw�Qt}�p�I�q�>f�x.wE��Ig��GQ�3�a`;4R�wGA�ӄ3���gY&�E�>Ԥ�
����J��i ipG��ӄ�Sz���Qȷ��Tjk��u��|1�A�j���ڣ(
Ȟ�m%��;���� �5�nX�V_+�y�WGi����:��0��cq��z�cd����R��X5�a���a6�G�����#�]+2�����=�t��J�W:]��b���oʆ�qV 1���c%�Є�(b:L/	�೉!$�eM4�q�=$���4���:09*.VU����-V�Q�2�[��o��YI8�>�Uw�{�mQ7�@�dY��[ڏ'_�\^���8
��Q2�,�l�Yf��R�G��&wL7�.cY���^T���%\ȍ�t��X�1yjZ�GuzEd����j)=��m��`��٧�%�j����zv���<<�B-��"48~�7C)V��G�ɱ۟u�cwl阝zK�~d�إm�0��8!=�˜4�Z]t��z�C0X�@��,�u��8U���8)��:�BI�:�K_A�X��Ɣ7�$��w��p�:Z7X���e)���{����,��}�	���`N��Mkg����O���9f��9�F#h1�>,��Pi�s�m:�0��s��.�a:T�X-��Q��Oo�-a}��z�&$�i�]�n�K0O����cz�T�����`�%��E��D�Yo6��$Oio L�1m�P�T��~Ɵ���y[��q+��1���T;�4X9b�BW��D>Ǡ��[�����l����i�_���S����9|��2a�k)���
���N��,������r������n7�>���I�/~,��l
|��:��g�c2#|�#�$)�1��Y�p�u�LV}	���޸k��M��	n^-�y    O�?|��[��U�'b���$~8�Bp{O����NLؚ]'t8��x�Jg���.4�P�Q�^\����&�*àl-2�P�.Yw�a�o/1�p�ΧǽN�z*�y5���`�p��C�7��D�NtB�E�ˏ
�trƍ�e����Y�Y͖/9]5�ތ�ڝ�����,$��G�/�V��=;"̯L� ���D>9F%�'ꥳڊ'٪�azMW*�(�~-m]���T�SI-WM����j�|���I��)f��؍ңxz_ڲ��� ǒ�M~}����� �3�Ҵ�����B΅g�m[3��}�9���u� �Gp����#��"{�QT˚s������!y�����	o�����:�����J��>ҙ��#Ҷf�~>܆��՛QF����p�#ҡ6X|�Y`p�A!'�K��y���m̧�z�Iz9�ؿI�~��x8�\R�3���˦�`X�@a��d��C}]��ǅ�*��4w���ʱt>^���s =�&�c[_�����m;����g+��q������쪨��'��>&��9����;��],Ʀٔ��2�;�@��*`hk�0�m��)��q�zZ�=�����d�v�mb�D��XN��>Cjx�ȂL'F�g���=�B7�q�l2"�E8�ժ,8�П<�}g�ɋ�G|���I�,��R��7�O���];|F��
�u< ���������LC� �Mp��0൏~�p�Q}�J��H& �YVا�LgI�i���b��ՠ���G=�g������,�"�_fa��Us[���sL�>ӣ�n>���$Qr�r�(R;�䑘!]!���ec=�Xs�.��h��&(���%�눧 �9��K?p�D�6�XcK�Uc�����n8�{�-��OB0XC�Ǫx��{����e��i^f��-vfx���4D/� �^�`�Q�l���`G/T���nv�n��b��Ds��KT��և}O,fPU�cHeyT�{��Q/�=.
�5����9ģa�O;���k�"<�z�z覞�=W5Ϻ_��a�̯�e5��Ǭ�,;���U&{��@�R��|Yg)}���Q�iSʻ��e�4�����eT�����2��_掗Y���+O��,TvV��Y`�׆}���#'��,���ev�Y�8=���I��ߌ{��`(��2�?���N��%��$@�8-��9�S��#ʎ�&W�u��j@�xS}��R�B���댷�s���x��Le��$�Rw����߳� \���~�И�g��U��"�S����_���;L,����-fXv��a��n��z�=�Y�"�ػ":
{V^fE9��*;�lH_f.�eE��O%�Ky���gw��{��N��(/�b*��xO<|�[�is�q���=4+��c�,a�ٴ-k��k`����9��*#Ҵ��;Pd�g�c 笙��yTu�{��"j����ʶ?�T�Km+Z�*�[�
1�М[X��+k�->`��[ARr��϶m6hC���a0!�P+���<v�7�=��1T�|�*ފ<	M�C���o�{^�۴쉢�kx]9�>y�^fű�Y�^f��엣�eV��e,�Eu�ݺ��nm����E�ЛGv���;4P�UU-%�⠍{�,t&���H�(�!^��� �n���3��0���y�ɠ4��X�ɔ :/H��f׎ŝ$�p ��ϗ���Q;�72blC�uYqO��/c!*1S�K� s,�|�����l'�T��k"29ɝ�T!���M�D���l"&$�f�|.�0/�����1?� T��$ٚ0��0l~�5sd��hݧNBpEV�z��lҙ�a^�b�Rb11�\�;(��7�U�K��%RZ��G�bQ"F�v[���i��n̙,f�m|Y$���֙�<�b���6p�����|J>|�36�4%����a�؏�V{!�9F�ﺾ�d3��C6\JU�r䖤٘��j/c!c0���)�j+;��Bf\&�6|MR�2��g��H-mH�?`Л����i��9���HԄ
�7��X��)̰*&Q��p,"�K*g�{����i�N3��A|�#���X�b�m|�eN_�%�-j, �G��*�'�jڸ[���
B��ey���5\��U��6�lzv��{N��w$|X�qI����a+��k�cqQ԰sZ&�>Caa�^N� �j"3��;���ᴥ�C��w@1����Ԯ��0�id��c�ub�yqk�ZM�#2L>��EAO���1eǃkU[����P�6���aOp�<Q�Aͤ�����X�I�y�?�]���ֱ�)�S��)"����D���\Um�~o�\�~#ϋOD+��ش�-P�T}&�(��o����0��tx�1��0��������=�-͖t�����R�X�U�"�-YBnݢ�n���m ͫ�m���A�&qT��c(֎9���MO�?d�� �B��\i��&55�؀����qŷ�aC�C���=�TP��Ő|��);�-ă�j�y,�v�O�1���C�/ʗ�F��[4 x�o�n�Z��ŋH0�-��zZ�*�i6��5<ҩm��(?�P)�=���M�?��q�~I��;�͓��/c�d��Fi��jХ�3o��!�S�= _1�r��&�$�V��!�����P��A����Mɽ4�/�Gۢ��	6��{�Z�=e�C���c`�9� �Ic����-� 0:��W1lp���A���qz_ 5S�mϱ����Or=��nҥ��o�S�>6f%�d2���9�_�is*BN��J~�h�h�):�,:^����E���Z��!���C�����fƀ��B�U�:
`f9C|��]�;�9�|�����*��EF4w�:v�]�`���f���E�1�'4Ə!˔Agi~hG����M�g&ʭ��V�P˜"$�<��h�f����,T���W1��K��_A��?W�
�'�y/ڦ��!��1hX��j���b�?6�ţ��#�b��A�N�V&šb�ғQ�^mo	U-�L�>��U�j������`�k�4�l� �"���&yu;� ���z!7�n����4��%��1sEÃ�d��X�W1��E���c �2%�7�7l�!��
�p��[ÞuDZ��3<���~������F�����T��N�������5D������(o�M}p}~A<bV+�kÌE1��KJ���d��YJ�rꍐzH`�x��r��h�J��&�8Ԡ;��%Uۖ-�[��\u/�O�����x�����ы���篎^�HO�Z[�q9�>�D��l��ZY��.fF�%WZ+%�3�E2Ĭ�-�P��Q-fTwUDWʨ�`�ּW��B�^1\l2/��S��y�Q�8�U?o�;0��5�3��|f�+�(#�9��:�-����3.�HĲ���)��2L
5xӯW\��ӗO�f��2���Z������f?�%���bAW�K��2�4�����!�]���5��R���N���$�5����JR�~2 ٬1k��/�f��@$}i�y�w��~F��Hq���]�^Š����_�Ⱦc�
��vv��"�}G��\ ��]���@�����ٮ�͎z�f[�/�S��6�E�i6`Bw�J�бx���}��ĳF�����neN4���q$u 0�����r����5W���*�[��k ���v]����N�^�;5'�oz���Q_]An��X��{������-�q�:��QC�XZ�,f�v���Y�M��V���ެ՚�/���?=�?�������Ӈ/oxV�N%l��0��t�.NVG��X���Kत]8"�J��e�L�,nv��#v�|ڮ���}{��a	�;��j^� =RK�-Lm������{E������M�o�{������i�i*|�V,�#����/��}��_��V,�����!�3�V�$�$_V�[�AY��-0�����mU�q&�+�LZ(-�X.o!y�6�Wu�\�w�)��������|<7��V��    S
�B%��WSs��4���J)��1'8�v������)_-��n`����MOa�� @P7�����G�3���\�=�C��\5�ku�m��4$�D��=e�S!��Go�*sa��P���+��@�V�s)�[�"�w41�a��%��j�ݮ�)�B�ᨸ������¬�LL�f�)�N�Z���5�Z����t�� �N��|�����!Y�yE�=H���;�Ёх�Nc�^���`�" �HE��]� �;d��k�l�QEHV�>������o�W��2��>v��$�R�550�����h2���檭���z@x3��quD�g��b�=��!&+fÇ�����J�4#τT�������`����"��FD��B����"���cv��(8��<Vr�U���D��z�I�o	!m�n���a����Ťc8 �`�%�sK�)�/M���﻿Դ#�8Rsb��	�pj���wZ����yE9H05����q��nhy��
 6�[/��T�=̩�Rנ�D�b��	qx��*՝��e�[Ɣ�P�p�|t����{�������0�z����)�?��U���_�����Do;5df���..u��I�~g����|�l��P��6o1��q�g����=ó�j��b;b`m��F��o��]�6�Ҥ���ː�)�(��ȳy^�G�˯Jk��^,�A�.ۯ�����|w�~-(���9���k"�҉CU.�u%��Å��E$��E�Ĵ��A��{\@V���'	�V��PP�2�����Ç��_[�\mVb��7t�6[c=dYG�Z+!:�`��b������nP;��k��<x������s�I�NR��U����F�eY��`�a���<��Y�$c�H��0�շ��q�e_�cp�l�=� �,+��I�˫zs�ԋ
<�[�|W�"ȳ�q�����O�<D�5�X��!�,g���Wd� ������e�A�2qj�G$e=eg8Ӈ5��qH����;��4>��ۀ3��K���@\�B'6F�� �ԡ�@���3�|�۠��\A0��^	����!��v��2�?@���}��u�Y&��]գyj�W�Vr�<��N8)[��ڧ�w��S��q� ys��"��-���}��}?T���v�?�����M��c�E�4Y��Dϝ#3D��I�ȼ�_n�&sg��E����B���?n25�k|���2_G#g~oQ\=e+�u4V����"ȧ�_����B���dq�P�7�Q��Oy�,����MY� ��X����=�7!��7���Mu7�j���}��7)yeq�oI�G���&&�{t(���!��Gi�=^ٻ��q��|z�B��6%E }G#�~w9\ų4��4o���m�:�A�+������ɂu,A4R��UsPм>?Agϑ��_GJ�-�Pe��~\���/��͚~iF���i�Q��M����j�n����o$�H},����=�&�4��Ǫ�㦿���({(�әa�ÆgJ�y�b����� _X�hrRN4$qA�wb�!�G�:+�p_�v�8*{�����9���n��"����;wGq0�!�i�7V�����܇�6���`�C�ި/
�bc5��YS.#��L|*sWW�{��0��Fv���:/�qo~��������4��}�Xy��./~����sT���v���ZW���l7�A���t�P7����1�cN���+נ���)��r�sQ=]����e��#0�����(���è8�[c������JA�P��B���r�k����ԶU�	PE��-�-8w��P�e8��_zg�u<A96�tUm�$Le%r��,x�d����_�����D#�,�l�=��K��W�bϗ�|�!��k�F�@T�u��L�P�FuEοY���Vm�w |�N�W����okV7^�,C�pne=�>��P�2,/N��U���y^ �U���j�����O��/�}�H�,�I�.���a#�����pW6$C�����"jǁ�G�J���c@X�.�P�`~J�y1 "�0z�T�}��RW��P�!�Z|�jH��S�@�$ SA97*(�N0Z�	����$�������$S�)1�(>�i��jU!��h(�F�qiE{P��Ɠ"��<��-�kՎXH`X }��%��#a��5$����Y"��j%&�����c�UeW�:�)���И�2C�NS�H=Q�5�x�ma
���mi:Po�l�U��R(1Ͳ��L�@^mv�h����-j��e��?���J�����W�9���f��h��;X���
be�iشj�R�Du�GL���b$�fMr�D2�bpn����u^�K�Ĩ�����R�#/JU"�yy�VӸ�,�}�hr�	d�5UM��~1Jl۹`���^�ա\�5e�	�?���m��M��㬩L��Y��Ɲ%kZt�F;��t�,#��E�[Ӷ�D�e��e���(iy���ͦ�ێ��Dx��
�JHR��s��MyQ�5Ϫi��ϲ)/x�Q�d"z5�,��n�y��7�x���pU]��O`$��h�37s$2��\e�Վ���Yj=�C�U}��lIH�ȋg�x��G[_�8
�2r!n��B,Y#Yv	�}e/1�Q�h�e�lp����>ª �t6��/(��<�L���$S���� v�q��a�-��~|C����}"Y%6Ȋ��@��#����Q^��t�Ź��jy��brR�x	F�V2B�rq����C���5fW-{Җ��
^��X�B�-���jXWU4��c�.D�x1ԋ���E�
�?�t����U�5�*���� ����%�.	O�c�n�5$��윮0�h��ξ�k������Xm�:r�4�j�@F=�@���� I�7��-~W����&SrQ����?�[P���u���m�c�5��ܵ��%�
'�`�b�U�)z��>Y�m�{��t��5t�	����������N6E�� X��j�.�J�W�#��,v-nM�z^X���ܯ�����'��T�n&��j��65x1�����8p�����1��ar�X���?� ��Q�^[��ԨNé�Y����l�;`���˺x�e.E�H��л�+���re���W��&�����ɏ�)�C����/�&�u�P^��'�����P�
�w�9D3��΋�������,3	�_��ԗ��K����Ml�y!�~NT�6��	�����h^���C���O����믿}�����G�~����� x(ը=�n�G�kl���b��5�7\D�Y�~L���n=l�Y�}��RN@�$�'@"�xǮ��:/f:D�!�.G*L���b�,v�w�|��xHm�w&�JȲ $�;`�×*�$�YkL���a;�[3��ȣ�-���H ��z��e�m��m�
!�f�\q�Dp�t���D�,�����a��76/z�e�r����Eo�h R�5`#�R��$�i��m�2��)��H�!�q���y,�,���*�v^,�����A+�06hyA�S��wڣsr�,�6�h�f�kL�m�,o_vLa�V�M�Zm�}Y�b�����\��3�M�-_=�!�����w�VP��i�t�X���I���ؼ�?��"�pp���`����׬�,+I���%��R[*#�,�@�>$��S�%
Izj�4���Kz�����������"-k�P5�݃�C�T9�*;"���a���F�Yf�G��a�wԾ��]��h87)˾2o�P��z����\A�y��G�[؀�t*J̇Ɲ䅱a:1���c:j��Ԩ��˥��[龤�@Ob�, ����-�>?\B�yF�O|@�`�Ap�i/����9y6���FS�'ͳwc��&�e��{���L`���pC�1[�����|#�y��YfE���Iڕ���@ׇU;$��4�
X+�_���;HbdY��>?�i���XF�o�y	N ����<��]�~�{V�-}���2g	�g���]+Z��wR�	��    ���+���5K�C��ku���J�$/,R�������J���ER�%p��p��}B��T����i��R�^������V���R?�����B\c�?��@��2��h�v�?����h�YK�|���W��b�[Vك%׵�|����'s>�p	m�T��Q���{CC��-TҺn���Ը�l�Ll�MBS���Mͳ���r��*�zZk�Ffy�4�,�����f�CKd��"`�EǍ$�p�8j^^ț�]�M�w��>��a��H�)i��#I ��P+�k�$/-�)���5�F�*����ב���Ih�PD�n�>FH���U���$/�ˡ��"����������'�I^���,VM3:��� �ue�r�r�H�L\'��×�<��;�d���v��P+;�"k���F���*P\�Ӝu��噐0;�Fۨ�>ȟ[LD���'yP��D�E-����V��I^��A΃�sd��N�?���L8[�f'y�P�Й��U�X�$/i�UxH`�kV�'���Mg�R�qx9f��I�vs����es�
R�m�p��I��za� y�K~��+����h�\�!F`�=�����F`�-��C�U??�,��o�u��4�̴���v��m)�DF����jEj���37�����D, �^(�b�e�Y:�	�mf���z�S۬q�Z�|Ϲq��9���W湫�jH�[H�pPnݐC�5MO��԰GK]��ȋ��7���_��e!���[a^F�Y&ئ+Zm�O����swv��.����F�����{�(=<��,k�(��9�$�y��7zj6�J�SyaGE�<��3Uł����'��U��$U�/R)����p4 \��gF����R�'��/eﺄ� �2׻Ò��a�:��G	����!VPfO:���X�M�������j�=ƙ��ѩ� �Tqp�6�mE�x��V!��ުEEk�����1jI�4v,{����b�'�Ж	��ĝ�m6a$�Vd��h�]�H$etA���F��O�N]|�])
no`^p�Q�0�qH�Lz�m�����L��q����4����ޣ�n~,de�A�
���RH &�/�m�i�tQj_-�O�ϟ?&�I��C}h�M��,:_��Ҥ���B&�0�A!]_U=��S�wi�ݡ~D+I������2������L2A�~����bF �7M��b_��M�3��bl����o�&�� �I2:S|<+[ wz{������eq��e��1pC��N�({L�.A���%� ��H�3f`$��\Q]�`��ާhz\�
oVp��4�#c�ɸ9a0��������E�H�i\����nM/R+�۬��Omh�zD�8��U�[V�u�h=%+7 ��j�l�I�xj�&�O��O�zд�A�뱴�`U$?9KGE��OrȎw
�RO��!�~C�����ګ��j��I[�4�����܃�����u_��1W�wX�#\�o�v�a���l-BZG�s�O��$��%�{���;�]bH}K��=�����P�.9
�0_st���^�gR��A�I�k��^�dc��(Y�V�ř!N��F�I&j�6�tܖ� ���P@��o��a�e!{� }�\?*̾�_~����=y���j�>�y�����h�Rp������6�� F;��N� ;ִ�K&X:T�ۺm6:9�I,B��F�5��4&ZIV�Cˊ2��`N�4yJ��6�3  8�:��8�0�օ��t�V,D B=�t������,��&�?H��X �$��g�Ro��u���I��󋪋�ʧ�N>�'G)KP��?[��O��m�?�EK:��D��X85������O.bS�S�t���]'[ �����m�v���[�_�AxU��z1���/ELBt�>����x�k9e&)-K��&8�R�Ƥ��������Me3�md12켞�s�&˃�'=�1�K��<��7�q��#9q�����4�D7��o��Lm���#�=H}]R�pj�N�������Q�?�a4�5� �ě�/̍�)d���dI�J�le��4=�#i�)# �!}� 5�䟜W���Vz����)�md�20�,���$C�ہ�5�x�H����Dh��꾜7�^����*���m��-e��Y8����Oe� T�Ϝ�p#w(�M�ڮ۵+�5	~��,� -�2��B2Vr5;�h�_�}p�E�H�!Y�Gnw�%9L]o�ⷕ�y��@בr�5	QvZ�4���A����A����7�f�4�жQ�'6p���6WD-Ų����а��i�]C`�o��/�B�4��������_������,�*x�ȿ�
x���8Nbx}L� �!���q�j�G �X��9`ɤx�xCU�T�x���G���� E��z1��iyEO��v�5 �����l�Oc��t�~8�iû���5����B�1zI�b� ��0cQqܛ�-!��P�܂M��_7�1��3��[�Q����G�4u��,�,	� ���ŕjs]o��b�z�v�����>�?���Y�/7C	���s��->e/QO�O>"��cb1s��5�]�� ��ɖE�����q[�q��C�ZR�f�e�F1��H���V�"���c�B�lq�m�JLQ�JI����b�Ճq��G-��0�9��TR��R��f�]�Y�NS���7���|��O���I3�q6�&,��;,��}c��g����_?����w��(I�ٷz�G�fWtV��e��e<O�n�8�5��I��Sދ��}DB��f?�%QJ�x&k�nrzgt�$+eb����],����$�#*��.Z�:�;�a�yn�~�XB���E��V�,]'�HhŭN2C���E�ޠ����r��˧��1X\�<�ȣߵ����R��e[K��i��,"O���/�jU߂�:���k��.�H�3a��Ae�F������H��ԘuO�t��oB>�����~t	��D���IQ�iv�7��$�FF�&к��a^A�I��K�Lfx�\�����O�e�IQx�)ea���&��8�Z1<G��0�������vn1�v*��z��O���2x��d˒�W������+�\�
2�.�k�N�k�=O	�d�R� 1H�(�4��cm�9��9N�2�7�cN��OIܧ�O3+�`X��e�9���kc�tjܲ
��f��+���9�'B?;�D�@�YB�����F1�FĐ�Ӓ!$4I9��X5IF1I��)�ୢ�$�J��D����T�@��Nr�a�w��J�I_9�$#f>��DI2ļ���I��+k�����%�~�g�%�e�%VI8�*��3.�;\����yL��۶zzUø��[W©�n()�G�V�
�"uh�l@��� 
����a����o�&y�k�,�QoO�C��I�ꦴ��+�t����^6U��s=�mm�t�;��QJLI��d;���;ϯ��G��c�F��!��S�0�6�;�Ch�ve�-t��U��E��o�*�y��b� x֯��OCoJ��L�A:�����e�_T���a-�&�z�ڌ^P3�o ;����}%�ke9�c1!�Ά���zCƻ~�x&M4u�R�_�y�I	�����X����Dp5�����!_+�]��4O�������j�E�͟❂o!����O��j&q�<�8��S��X_~��+WP]P��p�
�N/�I�+.���"M��R���f�`�%Y3����G9�$j�ń�'�e}�X�1��Cs���j��7�NȽv��:L���x��êrxH�0q$�+�|](u�J���L�I��,�G8���N�y!@�Nk�V_�Q�@�yIH2�����$�h�S�
W���D����H�җ��f���&���3O�ۺ���YSu��}��?aB�� �j�����p!��S��BTr�jc�����$��l�c��`
�����@��J]�[nN�K���CMPb�d³�� �vDb    �)�m]�8U�%U��M��O";cA^�͜�t҄�l�$�'�N
�.O)�)u`	1�w�ᘏ����g���A����I�	�[���}��=��4ov`X~��/p�����X�g�ߡ����<b�rlP�g��,��OXqJ���j�ݩ�%��YE`^��`+#n �H�H�:L�`l��	-?�X.�X�I��Z���)E�[���C�-|x\w�4�2�_1���a�G����#}F`R�+_C�d�d%���ׂ*����)4�P���Roa�O�,v���L�p�>��BeP�~--Mя��>��A��ڭ[X�@f��u��i,�dBDh8�rg��!���d��P9'2_4}z1#)�(%����5�,�����$���v�~�� ����}i|��?b��4� n@�B���䱿������͏z�v,N���8+s&��,�1I|���i���%ȑ�{8As���Ţ@�9z����729W�˓o���������-ܽ�C�Oo�B1�֞B��A�o�Ts:�2K.��`	S�^f�C�e�Y,f���2��"��IxėY�PYf���c&�M,�\u�Yg�@�)��ˬX�L"����m|�"�,g3!bl�$����X��7k���E�Y,gB.k�t����}i��9���%,��b�4<&I��.��bA4�T:3%p� �%�H5��T�N�/'q�����ۜo�:c�~ah����T��s�?h�y�*�@)
1�Zo�.N�|@1,�n��릹�@$����v�>�ǜ��q�l:�	~�ݝ�I�YR8��Y�s���3��Rg�8K���R��2�A��A�����V�u��V��"Y󭙎kr>f��YZ`i���&ΧfV �D�o<���=-�'���+�2d!�����˫7�5��S��8��X'E8K�ۉ1��5�~��q�H�NT���v�IJz�Po8e�\����$��6@2QA"����dU�ƒ,i���1�����	��t�b5{'����|g�8��.�'peWZ���C=>�[�%b].�Q7U�!�@~!���r�Q(�����p���z��!w¼��<Y��_,����(J1xI`σ���We��|&�qKD���p��x8J��� ^���B.#�,�/c'��+��=�Vӭq	�Fl�CV��j�D��[=�C�Kq$��bHT1���e
�dH���� y<FrĦ��A�q=��/��?�N��E��I�ν�?�h�H5�֛[5@�y��B�Y��J*��,�_no�h3(�E�	���8�z�<��r�ZVo\�M�u�J�6�.=�k(�,q�P�q]��g���D�xє:�+r��=�d���u,��!V+�ޡa{?��t����aw�|%`I8��KH5�2UI�쐖���ީ��5�
忀J'?���\Fy�`&�N���㉒o�#i����.��5�{��y�g���L���	$��{�"�5�ڪ�V�'�C�b�X��Vg?9��8�^5s�$�[�rr����V�1l�M����Gf'JYCЏ��\��B"Y�pO��!� >�G(���}	�f�;3���'u�	�� �@Y#Ϯ7�ɭ>x���گeN�O�/pu��H'k�0���x����q��7Vg��%<�M�1�6٬��d�k��RЄ��κY�+���[p���� �M|G�#�	�#=i��z�U�o8�Arm*�>	^P��ؼRcHR4�jB鬠��"k8bn8p�<�� /�b [�\�Z�*����X/Đ�6�m����]��\��8��YQzlfl;��^��KOY�^���l�����b�_MݸS��
�,g�rY4�.�Q�$�5Ņ%�t�L��vP�IU�-��rrIf�!y�5��$�5t���Zi��A���d�� �.o�.�E%�Ѧ�V �S7d��Y.X���%�2���ue��!9c�>�$������3de��T�}X%t�e��j��:��5@`��Uj~WmUWخ�o$�5L�q�l �W8��YF��
V\��0:��u���ps^�x�K�V��/������ꈲtYc��+�w�/u�{`&�5pv]%���ʶ�i�p�P��������t��~5�_w��� ��m���/�?ӵº�����n��/vc�/�LU_�����?�~dh���嶩7hP�G�����00_�9��g�Ƽ�8Hu�:�U���Md(��ᄡ|�+��J�Xrp�2iu��d{�f�DQ,+��j)���Ȉ��l�����q��K�=&\�zx;$��JLZ����Pq�ˣ₮�3��D��m�eU�!�WY����t0U�_��|ǘ{��e�ո-�v��5��Qq���������,�8.���R�Ita�r��|Y�Z�� f��r���a%s��������*�-�/d�A�Exl�������b�D��o����
>,.g �`���J�3�61a��XvV�6��M�f���;���A���>���`/n:+�G^��+ޣ9#��P���I���B�&�@�ڟ��e�e!��y��.n�F�m6i�`�p���˱�&���֝7��b61H� �X�1Fz^�䏜c%�oT֡���hys�&�
ҲM��ڢ2ِ�1L�4����E�/D���yo����6���
C���G�G�LΠao��8�H�v�iH�7Ȋ�h �fz���$K�#$^�H�,i7��n�v����qdhG����p���N���!����P��8V��N3J����L�8�Vr��,ː.ə���j6ܻrl�V�p�������P�d%�9�(ƘÐ�3%�O�?��_Q�M%P���cٕ:j�v��Hlr�f�M��l���=���sw&v{*.�&��H��)��ͧq<�ϱ�a��Ֆ�x�E9�����i��1�,�
�ȲN#=Đl���,ÅY��M��aG���(�dKBt�� ��<�th'ʧ�Apob�4[�GQ٭1i�R1U�e�V�bw�M��ժ�ӎ�71Y:�Q�sy
Y�
��6ż\A�(G��kh�p%A�Taq��*	V�
R�r���������Z^��YƠ����Ͽ����wE͂u��)�U��#E�"�o9rμA� �B���s��p �9�C��=h�T�S�A�Fc�9���=��6�:��1�^�M��b`:��h�~ߖ�z	Gz��<�d�cv,BmDO������z�$��14]�d[e֯�o��J��cz�/�h���Jͧ��.��޺�r��ԛc�'�k8brF�/��&���	�h��a���7��uIy����71L��h�M�!�����3���E����=�_�+,H&�"r�O��3b�t�b����@�^J��M裂G�|J����/�K�<мߖ]gg��U�3i}����G|lX҃�Q�|Bmu��E�y�!b@2ep�2�$~���������L$~�,i��}(��*q�Em�w��w�P1<5�J��U�����﶑$���-j���%��-����������1�vk-�g��F�,J5&YiY=`_�;`�ee��2>������m��̈Ȭ�����xP�!)�^D���z�J����ح����I.���G�Է(9Y��`�_��B���l�$X�<�Z�fM�W鎠���!4�l).W�J�C���
���T�g� e����g�c�hKa&��u-{�d�D�����&�y���b6�[.d���]����̠G<��B70FJ�	i���j�F�͕�I���-��lщM+8�b�	$}��IN9��BU�%�]�@(Rr�]#�[���t����E�-he�Tuh
�(�l�n҄���f^����L�ӥ�P�
�ʌ����&U��	����[Kߙ��\����B���ۇ\"�1+}����\������σ�U�+�y��ϋ�bc�/�����>�A�݃��sniJ~`�!w�\���ᮛo��^=�z7՟vpe@�[���i�9D��)m5զ3z��|���rL/��ɿ=!��W��r���(-[��N��^��Nt�7�c���;�B�e�͓E�"���&�C���H{��&��?!F���N��' �!S�D4�l��)    �d�'���/��������wMs����ז��c�8���7�!��s�m���g�se�4��)��6��4��;�'�Xn&�'t���.r�m�'�%O
q$��U"@OA�d��V�H�A�`u�l%��yQc��BV#q:��+�����z/Jy�r�E��"���^]�B.�:�h��`%e-��2^�*t7$*W�%*4��F[Q!�<�����f2
��VrmS߉�2�kc=&���R~h����5$�w�8�\)�@��k`�a�J����Y��Fɓ�+�87	}Ԝ����*@���7p�?h蔹ҵ1��j���خ�@��QD�\8���;{�T��#V+c=��0%1x���+Uɀ��P0�|p@c�m>[�����T��]�]�%s��G=U<C�s%����v^4Ŀ���li�m'�26����fw���Ӓ�:���GL˞���0�p>Y�X�ϱ�:!�K���:�cUP2��F�9)f{a��t�s�JW3��TTH�&���\�Sf��yƘU��'jz�1r�Q.#i �"�ֹ��s ���,D�"�<dd��kx
x�C<ԓ��)�z��e�]�f��8�ms[qč�֞���0���L�)�y��s{*fZ�oơL�e�8���bP��I΄ �G�%>�'�6S�� ���[SR�44��m�vY�n��CU�ؓ�%�P�/�dz���l��p�
R�+�>�|`��K�K)l�r��4t�DQ��챆3	o���p�"�C�uɑ'�+�~�Sq*�'
Y'U\�Q��^�����tt3+3bv����A���e��#(����d!)At�B�GvEQ�l����e�<I6!Za�t��|y"t\��3F�l�X����|(ۭ.��*'bA��ᾞ�[����ՂK�'�f��U�&�������P��D��-){� c�m^R�=�ү�!�ңtu�T�X]�Ɠ�إ��,B�6�n�C5��f�����m4CU`��-�:����ÿ�����G�(!RJLB3�W*^.$����I�d?��,T���K=�R�W����>UA�+��H�!úg�89zK��pV�y�8)	xL�Y3ƞ���%]���e�"������1*�)L�
5pN�N�6M�DN�ݎɑL`X�(c�}�5�=�i껂�>ۆ��J������3WM�l��.BR!�b�9�(nj.AU���������w޲"�6 ��V�[偳Kk�g��>ry�|�p���'Wg`x+~�2wE���"JNP���,h����^�I�.�)�@� ��Y��g�i���A���2[�m��D>(�	�L���@/V�+�H�����{�x�4�T��Y2ŗ�.Z���G�90cC՘�k!h�a�Dt��sd�2@s����H���E< ;�*�=�F*�-N����;WXn[�N��@��3C�Th"��;�����0�Ê&����d_8#�1�u����DË��eMaË��U�
*���u�ե_%`�ę���@���s��
ORJ�u!�$!�@̝�p[�ʳ���5N����u�T�PrS~6�D��x�+�2�.�E����6���=[�8����e	�	)��7]�)���솩�L�$�,?L)��j�qpiՓ�����L𯯌�J�-!�،�f�=����d<i�m�s��Q�R�+
�)g�'�ѩ��bp.E1�Fe��I�1+,�a �����[�"�tB���D�@B�8 ������T4��Y I��^� �F�Q/!hx�����Ꚗǳj^
�+>�u���૖��0� �Q�lш�Vw���Ĥ"��хg9'�<�9�5���	-^țNBB;]�b���PS1RHK��3^3��P�f�^�g	�F�"���@M�DǕh��w�FNQW`�_�	x�j���ޤ̅�!�~ua%�k�shtp�3]�����x<�X)���	����I}���!�vA�i�~� 3���9ڐ�G}�r�`��Z�w��M�~F!�xݫw?<��_y���i�ݲ��%~�ѕ�����0C�� �j4�5����[�s�o����e���L�+WY��$/���ծ!��S�
4�[�{�fbAC��ɐ\8�pcS0 � �q��j&�(�-� <4:�mu{D�!�Ҩ#N�b�D��3X"��2y�2��)�?_��R#C��0��>|/���F������A���%޷�h�ΐW&Z�?���3�8���!��p�x\���X��x���2���JW5��V����YC�5��T��R�w
2j�R�$P��� em�.X��/Ca�se8�U����{Zu+�S u2��`/�~��3)��s8��?@rr%�EN��)���^��ieJO#}�k�N:�֜��ՏŻo
�aN��=<u:C^PV��!&9���"���*L+�� ��.���ݒ����7sՈv8JU��!���Fٹ���G&�J<���US�Sϖ��J���N>s���<�U�y5�rd2��=@�����γJc�����T/�r �/K����d��o���!��psT��jڋ�b�t k5���U�T(���jӀG_8�F@Ȑ���qI$���8@�gRr�֮����0>���u��/��<�T�M6��L��	�)��ʀ&,����U�����K'C�S�!,�T�x!���Lt�٩P�<�vL�y�VF��d8&��G��I~�Y C����Gk>��;8y �J�z-�w�fH����.6">�b��	0��ҕH�����!u���2��
[���#�\JE���epLk#t�#�H���M�92�2��`|ݟ�K LE�j(Fbii4A�i{L�y*�"�&gǜ��C�L̟ ��i�Ց� �S����rYW��
r���;������37��T0E�~��ےT��U���JP��U�J�<�Ϝ��w��PS�ϑ�'���7$�Š�#���^�O.��+'��u��Z_x��!b�\�/"!���tK���T[N-
��%�E������2&�*7���G^�چ�ꓬ�!�&dJjz.B4��>Aj͙�Q�%�b!LJxb�E"�"?סGTU O�(p�H}�6K�Pt/dx��OPa[�1 LoQ�"���T���rY=-����:�� 8�� ����ru���Cx���j�A���W�!=^8P�-�����K�M� �ݬN$eI�("�j$:7�rf�`6/_������%O�F�pS�� mͮ�=�y"�Z���sLȼ�`e���u�%
��~3���ݪ{�4/&R3r����	+��ڿR����=��ǆ�M�G�bD�����3S���1t�V�Z
�
�K�1ٖ��IC����ܡ���׳�"�Kw���,!%�N6x��'y���m�l��J7�l���>O
y!�e9Cd��ZC9A����ʓc�E"������GD�'��(h�x�om���zџ�;�g�	z�y�9Ȝ����ՊQ��=�*�mz�ٍ̬�o!���ڝxQm;�	���
9UQA�[p�(��`��� oK��5�	qF�H?Γ�K���VmyV3�M|s`?*Ў�'�ԃ�@��q˟I��H(r]z{P]U�l��%�S���L��Q���s\@����j1�"�ȶYS[zq<���
����� Rw�!&��%���6\e}b�]�S�&�^��elZ�Ƿ��+��i�xHB�-�O�n��8�:���:!�a�j)�i��o���m��X�ű�f9�z���׋�}eB�5|��*`<X\�ו������������7_/�o0��\Δ�N�������-��wy�B�����+��+���@,!'6r�G�3O����?����3J��i�K͟�s���� ��BrV[���M���7��N��H*8�"��JBX�0����rO�Ia({�
ks]� �V���u۝jB��g4T꾃Jֽ�KH�>[ʇ��3���^�Z�\�sQ�H��;rl:x��{�o�C>�    ��A�z����C"0�V������Ap����+�ޟ�-��W�ZHyD��kxx����~F<.�f{<�;$��Mi�=~�;�5���=�ϕ�q�a�B>ȡΉM�S��w���qW�v�7�6�P�܍ �q��H�\��TY=W>8Э5��\�o�ɕ[�\|s���ϋKK�_n�Qr�M!�ysv{2mB����=䠛B���!��^���'^C�����!7� Noe
snLh����D�/�|�����ms���4mP
y�z�ئ$K20�\!)���4MH�Y�Bn�]4����������wd��PR��Ius������gp��>��0aI�'���E�-��;�M+��邖�1�W�g���(Stt���M��m4qM#�9�-�`8#��4B^���9����|�m�<c�s���wY����-��c&P��kZ˂R"h/��n ̤=�ɬ���W2-��bw�}��._Jr�|U�h�!��<���Ӣ8��E#�VP6�?!�+{���uȃ14�w[`ٙ����,�N0ht�R=?8�'�`��Es���?)��1H�6�8YI�cN��Y`�Z��8��|�r�u�#�?�OF8�Iȣ0	�Q��A<i�)䍘E��Q�� L)�b�qzxȊ�C��i��.�3�a�,�昦��Я��!�T�B��iJ�V�%q/�)�$<�\M%�ŘM�����{�3���[�
H�U��U'䷘�d]1zF#�+���'Q�LSd�P9��~�	4��cD`��O�ӯ z����jIr�	i;!G�.�Y���F��bwW�ZDF�N�[?�+���6��eq���;���ssWmw����\}<�,������{Ȑa��<��K([!� ���r�±ժ��]�{X��<庰�q�X�-��.G�!�SB�o75�#�X�
�G��`0�ñ�����!�5/ ����֭���m>V����;m��0�����K�9�
(xa/%Q�`S�Z�,�nj�\{Ð��Ģ����?b���\lWW�Ii��T� ��ª�R��H�l�a9<L9� M�3���9Ly�8@�T_-�Rc4T�a��� ͒DF�]��aʳ�E4'�� �� �� ,��h&T2r֠�AD���S��."KI�����M��4ތRΆ)�� ��o��3@��ĳb��$�GI"�U��aȷ���8	� �!_5ҹ4�j��c���O[C��(��Q�2�I��CnY�?��un2y�3�������\=J�~I_� �a��*�\�T�܆���v`�?I�RbB�Q!A�4����| ��ͪ� I>c�o]�A�ARMDr��ɇrJR9��0�����W�a����ʩe��Jk��-ܻ��.ԡݚs$�j������<�(T�!]!�+w����Q���-� d��@�G�k=����Ty%����E!�F�a�Z�Bo&��m{�Gs��]�
�*��Ҿ�#d�ܼ'#�9��ذ0p�N��SG�
��7�����F	n!^<סf��Uw.m����y�rĕ1��o�ROd���̍����Tm��3�#3eRQ<M�)� &z��rd�	�;�88�%�.fc�Z�!߰ ��!T'��7�e���,��B��$�L��F�V��k�,�|6��
��m�������^:!�0M�^3ijs��}����DS�fǮ�28���d�pȦm1U��on�~60�s˭�'����֓�5MmKu�
�S�4U�u��|
f��Y��Ec�g����vd�\�� SWJ^��ӱwǱ�FQ�����5e!ǳ.���Vȭֶ̂U�����aiݏ]������C����j[�)����3G����V��U�h�H���?�bY݃EJ��j�y\�Zt�*�0�j��J�G�Ռr]n �ÆŲ��b�8,���C�uaH)J�-A~��E��r`�M�p��4�j�T��v�m�Љ`��3�㷐DX��&J�����,xx��7G@�n��EO���n�_=����`|�[�K
D΃ȑc@MĿQ�!�7��)4^s�a�ݍ�9m��@��cN�	6�j�\!3ݓֆ�v�(3C?�X�H��T�|�x_�E-W$d���>ţX�fU�R1���RsS��̇� i`4�!w4�Ӳ�F��1'��NEZ?�\F�W����c���$K�J�;��P�JW���O�m08����{���Lo6o�ܜ-,�F���'�y�tp����j[���|�lh�[�a������]p�`6=Yw�À����������y��rKWPܠ|�{��[|����;���Hl�X9sT�L7�@~�/�9��JY��d����e�E�J�m�<�r?�;yy�����:��j���"0���o�l�e$j������oe�¶���[oU*{��~Y����N��N],U��Ww-��cLzj����Ds�76L3N������$�����a	j���B=��K��H���JOUU���n�ٮG��i�e��{�3��X7�cc�����C  �ԯ9�*������Qs�-�l*��b���C&Z�n�y�^�N�'_�.�3�݅���|�i���Pa�7�GD�5l\'pP��f�Y}�Z�0li-�{`ŉ�F�·~'� PvA�����_	q���䅓\
&�L���Te'�Y>��[�O"`N���1+1.�aŘ�Q���"28�S"��Hl��>��d-�疨��#M�5��5Z3,�Æ��_�X�>V2ݪ�n�w��e+�>&��S�J�i_ļ�v����f]L�d5&=X�wJu��o/&�J�g��]e
��G6��M�_�ף��[~��tF�}6r�K|h������ྂ�eD
�3e�j;J������-,H�2��Ӕ��d��Oq�K�n���x�=L>WJ���_Ɛ��./�pc����E�ʹF�1t`�2���%��o��h��qH�	z�Um�t��s��g �����w�&��ږ%'P0���X���ІA
��y�p}�Rz��}�l.����!��7�7�3xA=��L��Q�Z,RS�M�W4��i��x�A!���`1���y��倱k�����{cT�B|l�T�+�	��F3.$9�m��
�z}}��L�h�҈x�Pʗ5t��}�<��e�b�tg���)�dOJ�=�n�>a������)r���\��`�Uy��v�#V���z3r����Rc��)��+q3��P}�߭��Y�Tͤ� U�,�I�t�_1��PB0K� 8�l��F����nxq�x�E�P�\�Y�}2���n�zoh�U�E�+4	r7�(�w��tw+��Z�*���Q�1���k����^|Ԏ�V��߽�M��:�[�I�*B�5m���Ol�U�+[���#z���>�}貜,�� S@ m$��怕�+Se=���P��~~�EyH�����u*A̔�ԯOh4r�i+L�}S�ǜ�ŏp��מH��	R�vB�j��Yw�b^�����)X`P�QW%j��WU�����_X�5��ۇ~U���;���`YF~���Cu*]=e7 ��~b�\F�(���]���*��U��.*(��9���p�c?�>Tt�&ǃ�B��Q��m�M[��͔�މ�nD���a&�w��	=����.�	�P눤��C��x��渦���t�@�Ćt4Z�%l&�[h�����3����	�� ���Fħ�\�%�hl��������̷`�g������x]�)8��%��1=��)��d��5b�@'�����"m���=��8.aQg�9
7l����A�)����m�T�2���ՏGO�'�����E��xې�N�b��"S��z,�-\�q�VL8��+�nUmz�2Ao ��D� �#�W@c�*��e�#�1�F�׺x����F��\�ȅk[]�;g�y�Fh���_��Wbk��	TǴ��$EyxH4G
��� G���Mu�	��ʅ���-�/�����    2�Z�	���t*�p1qX��L��aw`col6t pؤ)˻���s%]w��<�����~�聦��:�Z�a�C�704� �*��Q6�+bs�l�V	xedLU�S]
rd�g�$��I����2�Y�=�6πoo�9�d^X�LŌ�;ʸ;�;G_�4���6W�C�� F�((���r]wL`�ir�,�SЗ�k�rIc2/X��m K�K�3ǰlM�G��,��X?�x�&���n��΁�+y��cF���@+&U�R�"S�Xy%�t{+�z��:O�#��H�/U�/�	��{#�败	m���=��P�^V�02�w.ntF}C^X��Q��FhY��S~zϗ�w���J�G���%5�div��Ş@o7^��W��f�(u������W�\ �{S�RE{��l�o	���t�'_ez_��R�����>�>X�ḵ����hP���8<��(���n&�h����*D�!L���@�G�;�n6�/JvD�]֎)��g|e���wO��Mtz,��J`��Ş N�FB�=ٷn��Jj���Ԋ=
q�q�4>�P���Ƿv��xr���Q�lU�.�>��� ��N�ʗ�/��c"�������:bc�wcON���b*�J7 ����M������YTP]`�N�`�v�@`��S�1���Г�a�4P���㿐�`��ޏX&��:#�r�x��U����$|�4��tQn�$A�?�=
Rl�5�lR�]<K�K�W����7+%�3P����/�����y'���8���e�h���`=ݸ��w� ���>��H?��8��Vjr�:�7�����EJ�}#�@+��n��@T$�QL��R|��QXl{ֈT�{X����\9<Nj6|j�(eݛj+NM�QF����KN�y�]:�(��?�9_�K{9@v�=2��u�-���EC�D���B�!-]�-w�4�$���.���(�T�y���3�0~��̵<c�vNa���,vbxJ��>��aB�e�;��a@�����dq�Z
��^Y���`;�>�c�Pܦ�d��
�|�z?�F㞼��Ѕ��FzcsgN���I������R�����O�̩���<[7-��]�[h�����u*�2�V�%G6�,��T�p&�-�;�E�,]�i����J��$����P�ƨ�"��	[&��T�I
u!ǅ��]jn�Y�T�6�����g�jM+x�!|\I �'��o��	ua��`WC��� �x�j�K	�G�M��-pa[�W��R0�EJc���+6����:����S��G-�}
���<J/�W5�[쭀ތ?b%>��K��VM�b��&���k$��m9�������kBg-_�lƃ��G~b��0:/;���p��~4�"���cZbԥ0N�rmҊl�zx*p�P�>��[�Vg�;���#4��mv��
1U�݄zo��F��]ɀ�r�Y���z�ΡA�12���@�7�&rsf	VlW���E?6�#A��+B����D�e�w<B�]Q8O���ܲ@����V��M�e�?X�E���� �"쐝�Zf�t�6����T��nvI~y��1r��M
��`��=l��d�|T��A��íR��Ic���~U|=�?}�u��+���w����l��8An=��p"ΐ���������o�~�ifb�ޝ+۷�h����԰�o! Ιa9tՀ@A=:\��F��o������~�ݐ���!n����m��&��;0��=��?��$���M]�{^L������+`	7X�U�E5�&� NQ�G�[�3�ĉ�!�Θ��[յY�b��6[jwaI3�*����ډ��P�ݹn�ǝ_��|�s�����g�OU���_����u��*��B逽�e-�S�����$m$��Ao�aY�czo���m�M=�x�)�?��F|��Xǩ��N���W2"�QG
�-�J�ϡ�N�����B�"t
�T�����0bC���`;�7�&��:N��ǚ�yH�����s�W��$�5m����"w�� �$cW�w$��/^���fmn���cQ}]l��T��w},��*0T_�-x��&�
X�68B����rM�)B"�h�>�`-�U�+'��:�PP��΅#�ҹVY_�|:���5E��v�b+��[-|��c�Xr�u�T̯�g�ww��[�h�x����X�T������E�I
��� n��LEiv�<�H�S�i{x�OG�!� �"Q1d��	+�t�߇�s�����f7���B肣���Fpc���Fz����[q{�yFc�豑�q�V2�Q,����1�_��,��9=��q�eh*Nᬊi�O�[��0�i+ڣ}����4�t���T�q,ƌ (���LfB��2��'����o��h�"��ud�R�Xm�	�94y��(&��X��l��K����6b-���x�l��x۠��{ݻ6��ɚ��x^��C������M������:�� /��{��>�Xu�\E~���<wX�sਅ�Q�W�0[�\��7�9����%�T8���b[���>��j��J�J��)��J��F�<�o���k�/��n�D�{(%���z
S'��h#���\#�?���c�}��_'H���#u����7*����e���Xl�,8=ݴN�X쟆���B�hu�Wg+7��.n�"1 �X ��I%<��Tw�T�t;�.�C��v�I%���5�d6�r��A�e"Ǣ���st�$�q�e[>��rS:f*yT贈;fPl�,���"qI�,V6n#xS��;�/��pyw�x^��%���[3s)����֪�Sr��o�b˝.��4?�=:�y&��ť���=�ctĽO}�X�e����o�����g=�(���%�<B������4~v��XL��If3�*�3�Zt��ߢE�����ݮ5�BY�\�q,:3N*� �);�z\�6�K��j����q,T42d�aX'�q,>r۬�x/է�zP�2��P�IwĖ��`uIL�T��)4$&�v=�ZY��/\�:���x�۶�w�2���q��S�zw� K�ފc�>2��)��9���: y6���΁P^��E�� ��]�Pn�]i���t�`(��{�Fj��l!����^����t��Q���6��r���2���Q�jXmu���?��DS�����Ձi���-J�N�1h�Y�s�����l
~���?�G�E"��c[����8����'�_��A��;�T�3d�L}+��#�͆��>F�){�V��
=���8>��L��g�w�pF������������&Oe�&�&#
MO��������������fh{o���q� s�3�:y���rAJڨ�#���j!�x�Sҹ࡬)��7���Q��^�����j�p�K��Ue�Ȏ.��O>.�W�\���<������?����?XR�{W��V@�8N�\�B�ל�AZ��ʪF�V�2�^�=��3p���X����~�'����V�o��M�������x��t����^2����I�Ǳ�����6F�?k,]
��G���i�L�p���J����),�4�'�&X&��1Jqxf�5�ȃ���f�Rl��UwM�3ܭ�f�Q�,dj=W-l�-��"ċ/�H���@n���#\�����O�B�6
r��Vh;EJN�|�䶙=���{�i��u:w����wH��3�J�4�Ph6@!��������&��M]�T{:�+:ۻ��ꭝ��t�!���<��f.K�UFpt��y�f�Sߨ��fy]E���O@���O��]¢��?x[g��4��R��AzpqÐ8��O��0C��,��L�����j��;<��	�?� ƺ:�M-6��7/����f��[����>I����Z(O� 葏 �/{��iTF2��Y�*M �!�}E�*�ƨ8���n��JW��H��R_�"C�g�45��p    y���!�$."��lY�K1c�mC�=o軪KJ�4�+b�4?�9Ģ���7>Txu�B%TέX)j���#��0Վ���'�¥|�Qǖ[?�R�G�MI���.q�6��\1�+��j�o=U�Ɠ���[���.���Y*���B6�S���D���u��'}e[�����P��-@�X@�*����
*���QѨ&G�'Ý
Ϗh��ä�f���R�����8-��T���㖬�A�(W�������M����PU�'bd��Q�������ғ\���><q|��ׂ`b��O~�}o���}��.��3�Wj�iwv*�6����RA
m�B�+m�g}Eڶ���<��:>�+��;o�%�tj6�/;ۀ"^��`X��(�I;TŐ�9��h�fZc���tZN_I��Y5�F����-�JUˑ�1:>�+�+^��7�b�~��1�+�S;8�+�.CǦ����s]	tN�ٲ�*�6>�fo�آ|��k	7>��l��l����VemM>�fK~�f3��K���aB��.f%�%X@i|�`u�CӖu�;O���^�y�S%���嚽��v����A��+��b�Jp��U�.q��#f�Ly��w�m�&�.�>x�F�9:0BG�t ��i�R~@(	6p��	�A13�A%�
9�Suv|����3��iFM~A`��̨����4�\�P ?���e׶Qdo��. ɐ�&Hp._2P��K�埾�e$���ݕ �� ����;�e|���!�Z֘r�ɇ����!�"���rY�ܻ��Il l�9}ы�4�Nt�ZR8�� �yN��ݲ��j��O�LC��u�a�0{8�2�,y'szf	��"�0�K�ӓ0KX��}i�p��Nk6��"�j���$�p��!����.�'�uoJlj�'��cZ�^ٖ�ӓ��N�2
�&#�������i�ǴʱS�U�3�b�*_��e���a���E���afU�=f2���
_�6�n]ψ������?,i��SZ����ɐ>�������9v�3��W��t�Ɍ�R�(�2=kO-�a?.����P�Zg^2��<	9B,x
:�1:���r��GZE��VBr[�q*�	�-�L�0�<�#��6CSa�5Ɣ��8��v�gB�(�	�ځ�v܆W�f4��B�ڑFy\iKH�Q�A�n�{�|�ǟE���`�\	&��[���0uD���z�ia�%��\s�$,�"�NKR��R,�m�J���OB��]>��%�l-�"�R��f]�<t �ɠF�\�0_�=^b6q~F ���a��0�a�q����ڧ�J�Wq(�5����p
S�1��������rƤ�6	��?T�'�˗2��aeV/$ȿ�ռ+���r]|�n7���w�.��\Bۯ�s3��1���2�����8+��iĉ,:�Rn�zg�f�1g�����W��-�v�t�R�m��E��[�lx�+K�e���l(N�іi�������VtgΤT�@辟���!��[J��Pylk��g�!��
���[�f^��\�Q��4≗�v0a���T.�.��j"9ˊQsM���x<���Ɯ~�p�W�8�o���Ҙ�Qp�K�Ҕ�w�S�ׄ�9�o}���f���fe1�GpP�6�z&D�#�-�6�U�҄�Z�)�]C\ Na�2o
� B}I�\��YLyeK'�<2*�`�ĈO�fr&�l���D�X�qH77�ΫT��Bm�y��m}C�9�AKhN��_}2��i$AҴ�M�d�5x͗!�����]�4C{����M��|����AOGe:1<RV饬^�@��I��lAGe�9�(����{��zi�=�?��9L O�A(71z����"��Cm��w7[oX�s9�Go?fĜ�Pװ�h��,]�F�K�գ�É�?��f��Ig�D*�z����+�4�=�eg@HF�}1�{�w�|uŎM�f . m�Mr	�u�;N�R�+�1�{jfbƴ��'٘oEa�+Y�/<�BP��ܭ��5����	z��2B	�~����� ���j����sІ�C ����F����_#���֎C���qvO�M��d8�,Lz��p(Gb���U:���H@rv�`�q���.�>��Sz+g�ȑg�A�7�DL��S�	fV}�pv�}T��M�W8�\TfЀ�^B/�^*Ȑ`�Ba	�HͿ�o_,{~��� ,	po.u�)*��eL�K�j����SQ�;�7��ך�=UH<�N!'d��ն)m�g�Hg��$N;�1�H}�ͼ.�k�yȅ^eD#�����`�g�g�Ï\{��-0�fq�E��<�{��4��]
�ǿ�$*d�$�q��B��]��)-�z���T��+�Bl#̊ʘ@V��N -�SpB���ތ�E��|^/�q}���%ĦQ�f���
&G�7�%�8�s���Zw$�'s���*	Uf&�rju����*��Е�,xJ�Ե���1��jJ����m�3ؕ9���ٴ�w.��ߟ#qc�D��o%yQ��bmR�[H�$W"/X���٣y�{���P3�N��Q8Vm-D�rǳ���k��ߛ��g]�9�l��7ִ�2͘�l��j��_��Oɽ�0I�fa��D��2������ߙit�L��E|�%�覚�V��FH(\�]��dC�'��PO�`w���77ϼ8��B�3���?�#f��I��=t}���o���ї��2M����Hz�y�&ts��-y�����٦Z������+�KTr�V+����et�y�N�.�)�̯�q%�άiZ%�ವcj��d_�۲���͙BN)J�E����I\gN�X?�!C��|Wo���5&۱�;/G�e����N;�{��xǪ�Qr��,=:���r N^�a�J�������z�[�b��|�!x�S3��W�k:*g*MyT]j¯��e"�z���RvZzM{u���ۼ�칗�-;������S�?o6���I ��T��Ӻ�Yl�����������P����,������A{jp|�bF����gֲ�?�D�]z�3��`ϙ��.���M��gRw��BA��W=#�K�"1�O�l^k�ΐ���g \f��K�F���n�P6�������I�un��)T⏩��2��eׯ�0��YX{]��$v+����+�$dG*����� ��%���Y�!����f�}(��!)&TJd��t��SNu {0A{*�+Z�ۨ_�i$
.�a��I��5L�,^�Z������ѠN2	4�=H�V���� Z���qo������� �a���"@Rs4��q�jK�Q,�@��S�X'>�Dm��^�HbGW����xFU�6�N�A^�aQFz������@��T��QT���Y��<��/�@�
	 v�}OU��n��F��wݔ�8��C�7�My�RJ�D$��	�hp9%��Eĳbi/"���{=��\�7T�bJy�M#H$	Sg��59�t杹5lD�4E�͐X�c����#�j��E��∙c�F��D����,-�g�D��:�}5è���.�*��T�)��i$T.���3����AZK<�$��)��5|FI��@EJr"�n���/j~�(DH�آ��؝n�v��˗���f$�_@�(�J�F�>��D����C*S��T=Cv5�I$�T�3	�$�`*���M[i��I*+T����=@�?&�+I����@��,�qAϕ�6�G�[;�e\����������F7�Ό�#��׻��g�f	o�B��n�j�c�=����/`	���k�d!�����آ��۹�����R�O"ɣ2G������L�D�]�Fn�ݘD�\� �n��:�`u����	��u�0�Ņ��B� n$�U&\��ne�i����a����4�k��`������!J�������P9���
8���*�1T���`��վã�n=��V����m�C�%tď*��$��*T'��DrS%�t�5�n�F'_�$��*��^�SЃ/�4��"SoV(�DRU���i��<A����ST�П�ZǑdV1���|z�^���~    z�[����`a��g�[�ˣ`� 6�<�@Q��:a$+U���!���� ��(�!�ᩂY�Gu�K�������	.[<�j�,�"�$P�VUv3�O�]�Sz0"����:vO"�b ���WB�JG���/uƖ�D��G>��@�{���_�w.��>	� ��k8��`�a.�A��K�fU.��6Ff���CQ}�,h-:Q��ƻj�?�yqH�e���@٨z�?��k&�����_�H�*�@�5s,F�������N�fQ�kV��I$я-��}ɐ���N�>����a�y۩^��ݘ���'
�k�34Y�`��HT8�����僟D�ex����O"*���!�B�r�O&s����O"Il@i�'�
)`}��O"	b�:i�'�H�8�~i�'��z�HZ�I$�<	���#q���i�'��4윴�H�nCvZ�I$�5��M+?��tF��i�F�{'��$I�r4� i�,�}//hwtr��D�L��H]�]�we	�H��ȓ�S,�tN"�c<3�g�����Hؖ�.��7�L�3��&�H(pfQ�I$6(���V��$��$\�u���
���?$O%���3ge{ۀ����6�n�i�:Q�*�'�?�Sc5`�j�uk�N"��~�K�C�_���$��w�SYs�uqY���)�]<ca�3׏�[Cv�0���Ԑ5�"^CV5̩!;��~Hͺ��Bf��\�h��G��8T��SCvqẑ�WCg֭�:��7�q���N"N�ix�c���� ���*�N"�x	H_X9�	}��zw+����W��+� �+H()�W�uk%S]��Ou[�.�#}�m�?$?)=
�N"�G1�_R@~A\�����5�M_���71~��#�"~N`�5�5��G��b���`���Eܞ(5��"~K	H!��׮	|���=�80E ���:��,�����'{�lr�Z�d�"�KN���Y�[)$�B�,���y��|��'��ok�=�x:9���=x�p�I�n�,~��b�0`Sǀϒ������j�L�1u/|�j��
�{�׶�3Zݧ��}�"�LIp��>�h�3K��E\���X�Eg��`o��4M4��LW�_�����9�x�ab6�f���Z9�(���A��� �b� /H�l`��x���O�JJG�V2��~��P%u9����������A0-~6��}g� 
3�,�B7L{g� c���(X��7�V=zcƇ2ł!���`E�Xz��S\�'+"~AA092"W8D܇,����,�'��lkh�~]��Yă�"�kv:�8y{G�M�
�v&�40�E|�l�r�Jg����9	_�?�%�,�e���">P�^Z|�,SF��l&V�TqqW���X(�k϶N�E<�,����Ь����7�-�e�c��ӈ�R�)���#iDl P���L�<�F|�� <��W?�F<�l�[qx`s���I�!��4�aɰ �:���A�L��O�T���f�[�@�R��_pM�#I�TP���xO�xZP�و����b#NR��y�׈��5��j>F��T
�1�ؤ=�NaƤNΑ���$τ)�>R�f=��ѝ�0�<G\���=;�
���(	����Wx�r/к�vY��q�bHRKF�A�C�/.��B�߳�����)��D�5��ë��t ����s�d.V���2HqBP��0��-$�M�ʔ*V@_Xķ*L�9�F=�	�!��ܪ�%k�����m��Ʀ���xx��Y��4w-�t+��,����ĆLE�U��To�0üJ���9M��T��K����B�|
���vv���d! �!	��k��~�L&��l�0o�Iss���� ���i�;t���SqB�;�����aQ�� OQ�q���O�^ ��^7���jĩ,��ad�<��ʏ`�9���\q�%q���A�s-��s0�1�� �h/����#�+�\�٣��	]��S��c�� ���΅�= ��G�-�ZY&RH�-9�_�����@]����$���0usB�+N��*_�(�Xزܹ��,+�<{�9�9g?�(�<��Eם�,�q�Ev�9�xԅ�d8���!�k] B�m�L�.�*g��<��u��6���0�Pr�J&�Ǵ抇��-�q ��i��gp�x���{��E\�|@�p��,Q��3x���� #��L�c����y:�=e�LWf/����&-W8���^;�����e��O�4��T�<�t��ȸ�̈��ٗ�-O_�}C;��}�Ɋ@rV�ւ����!�2���Ʋ�H��oY:�xp��6��`A����~5���%rq�b`�c�yċ��g�;8�xL�!Y�Ylv�a�:i�U-	I���U�s���<�W�pM۱c���#�T�
v���y����FK?)#�y�9JB�����v�c�5��tq�r ���r;�r�<�� �[9�8C9 »�����m6$L��,¿�j��'���-F�����|�ݕ̶�9r���幯��0�W��^�ں|�݇�V�f[.����I��bSsx��w��U�]o�i5������G���n����P��G���	e��nʩ#�f��QR(� _��$��x*Ά���E��{��,����q]Y$�a��K�3�����x�A������s���ى���ޓvN���:?�>*�@�F��k��,�(��QgE& �.?Et4���(������D]�|'�����ֹF&L�Z�xDYK�^s:���+Y싺g�iսC�G䌣+�f��G8r�r+��F|�@tq� ,��|]����c�b2�%�qw!�O�^���F����.�f\WJݎ����޾!�RKк��ͣ�u�i�l�]����g��{��qw�{�k��k:�K��'3�P^ aH�-�Q ��1�լ�R!+�BJ��dȳ(�Qz��+�p��Zw��I6.��O��/�M]w�f"W���z>��d?�֙Ϣ�7'V�S��U,�N�,ƛ��Os�8~'���.���,��4|��^~@ Y��b$. �05��*�1/�B�����*���˓����#r,�z�c��4K�xE�i�I8g��#S�%B�����t��,vG�ƥ~��1��fsc�H���6��l�I�<~��x��:�a�Ũ�$~�KHZ��t�d1Cϓ,�,��z�w�+)d\n�g��y6����άv����)��'Y��pǂ�5	�\ q�8���&�4gY<ۅ��7�	C_{0䈜�\�����<LP��zz)w���9ם��E������E�֡�¢AAH/��`�e��)�H�җ���J�LU90԰�|f\���|���Δ�ga�#�����4u�a���<�n4��RZ-�IU�ҫ�	�f>*�Co"q}�������a����c[~f����+>���j'P*�y�]������g�S�e���e���W�z	!a�X_��v�������eZ��|���P��b������ �VKy�bTe��*(2�����K��!��z�D}�[:'�Յw�P*�@̷�b��'�Y�<��j�%�A�����J��g2�	G��x��֕���4q��<o���웱#�d�n�&|�ɱ;�8�@���bb�"�k�H��ؘ�=!�<�L�^� e[��Z]�ȇ�;Z��\d���1�N�ո8�Q��]K)h��I��t�i�մ�ĎQ�Z����zvt\�Z5[v|`
O�Z�T��j>|t$��dW��)�v迲�����(��^,Q��e
�ll�;��@�������F�X���P�+�"S�������E��	_�^��8�?���!nR�q�:��r�"S6��8�~�w�"SX	iP}7�����d
"��.HZ���[�|�-S��F�}$�*m$/�2ɹd�x�2��֋a���q�W0o�;��!par�q���3�c�0�8�YC/N�cC]f]���| �^������$    ���'�lJ��l�ă5�j��@���"}�vx��rO�B��$�/�cl�{q��镺F��.x�>a��rWE��'�����f�|�ѕo1������$�&t{rL
�Q~P0�h�f�s�7���(�(�x	Ĕ���"+�"
�ev�-,��q.YBE",t��7�Ō
b��'�&x8�n���ɇtR�0Atٔ�fs\\b��]U�o��1�)�g� �`��X�b1�_��8cF	E���c軴��f�/}q��L����n+.So�5�����s�6�Wv�[�X:�(n��2dP�@V�ń��E�����/��}/6/Y�E�������Kqnmf� ^Z���pDeK��(O��WQ6(~&n+(�-D���b�J?>��b���L��<>J���⻧�ݭ��o߂Ф '����ƤR���\��[��xܔ2 z</<I�Z�����dC	Y������d|���mU��]�6�-׹W��:����O\l5g#x-ݒ���;Z�:�Sԫ;Ҳ�i'�M}wO�����>91�Kz�i[���J2��~���{�����i����ŕ][�,�7�b�Yq�H���v'�a3���Ք�h OG�%5�gЙ��,P@ bL��RȄCIa���]�I��J����������}c���5|L��ᾱ�%,��G�s����A��$��Rl��{�8Dz,���K�����+Y=G���D/"�Hv_eQ��
��` �.���N��W[o"^DngcJƚ�`�h����"��c@�AF_��b��%�����Tj������?�8 �~��q�;�5�#g! c:-@�i�8�h�!�E�צ���ڐ�!US�	L͙��Ul;�������{g�*��0�9���j��w�]�z[�qA3]����j-�	�%ݑ1L���o�8�bL�!d�����'�	�	��!Wŏ���}�DT�M�"�ޢ��σ����>��b�7JɈ/�3�!��.S~���3�L��LJvG�D���7W yLt?���"��z�	%J�~�?�+c�Q��x���=���k�;���?������[EC�R㎫j'����;��#.�ٴ _歈�F������R�%'��"�a�j�Т�K���B����"j4Li��qJ;8��|��*~B`2�ƙH>��ԌE}���(��o�NW�^�/G|,x�#A��kJ�+@��M�"����̔���!&h�(�#"6���m@"���tq��+�`���Ϩ�k�Q�]�$���w������ՙ�5D�.��E�Њ��`"����w;�ޖ�/���K��,{ĭ	C#z�\D$�9J�IІnLkN�us�,�~$p�����
��>\�}�\+��zgp5�N5���#�/"��
����){�@�©D\lj3X��-,��I����r~{���3c�c�rd�����PL�ҷ��c��������}�ޫE��n�6�'z�p2V�G(��ꆫ�z2�y(X	@� :c,�<��p@��9�4zy/�0�e���
����������h��� ������|��gƺ�=��N�H�2V��rK@?]��;g,j�٬v"mG�q��Ǜ�*�w�����<#�΄�9�~��899���x0̡�Y���e[�>�͐��7M�%x��O:�;\�A���Q`A.��������f�+ɷx/@�[�	 ���[ ��:��̎�[ɏ��3ZZ�d����.�;��H�Ž@��� �%ܮ�f����5e��^�bp˃[��}Ji�N��R�׍x/X����^��p��Ƶ�h����C��]���;R2z!7[�c�����4�vД�W�W� �?��1����gx���J��rL���Lj��̺�b�L���m��Q^J���nJ��G���Z�i� ��jQN+vS=4~8B0��m��1;
Шl���� ����44�2"l`��8
n��� �'�d)K�h���t�xz]�����B���yh	�Xbp|J2zU���Q�Qfq�,�š����$�>o�'���f W%�����ϊ98T��7�'Gb�)?�wh�&���=�r��$O��HPbBNA�v�	�x�ZOЋ��m�����L0J�^�B�]������G�ox���x)���'�T�͛U�л�V�;&�L�ৃ��7�|�a7Uy�������e�|dd��?vn�ИȢ~�����^KP��5�Aq��ݎ�G�>�Q����+�
k�px*�b#��#������i����d{b�U<�ղ��pp+=���h8�P�e��9hmrTGӍQ����ư��Q����?+��e������z����G����F�7���F=�}�<q�1���^V�"F@������^�<���;sl���0�1���S��g��#�=/���B��e����"�0�#�/���~���I�L�y�� �+�Х˾� 3�|�k|�"����d�����4�c�.�/3w	x�l����c9��L�1�m��-�Ȩ�CV��pb/�)�I���{&��沴n�LN����_&��S�
|,�0�=�P�A�<�2����C�{�(�N	����&�e��"�P,��0x}F�+�0C�-Ѩ���o��XxzG�m��K�űY��	>�*�����bJb<��4�(tCC�.[|��5Bq\=�8Fy�5ڳΈm�?��T��_!��[�u��8�p�/�F#��Ծ�A�g{\�%=퇘c�p�AT�wM��� E��QO2+~�?�<Ʀl�
8S��1~���~a�+b/�� Ę�!��R_�� b|f�ܮ?�1�2���1n�����	��Y4ĸ����~�v-��M01~�`,Or�'�r=����O4��9�F=C09ь�~�,]r�����,�B�0��"��L�KL:Z�A���5�F�/�T�f�n��k���o�7��;�2�i��7\}~�Fa��:H�w���F`�n��nZ�.�1npA���K�i�H��@�(`aR�ܦy [�T	��P%�#��h)�5s1^�@�>�p	�O�岚�y~�(W�z�o�*�o�P���w۬v�+'+��y`��xF^�1>��
N#��k0A�3r:����p�g��8�ov���r���V�y
��V0M�⠽4s�_D�e|t�N��P�J6�G�`|P<%��lv��5,���-�b�,�#���A|3uS�f��Ҽ�W	�0��w	����q�+�uʴ`���1Ws��sO9��\N�n�$��1�+B�����1���A���7SB�1�H<X�M�o���8[[v�$��\�͸|}+�[�\U1�0�Q妅@�C�eO�5��r�aF��RO��;��]޼���� �elG;:�:��J��r�B�(pJd�`��\I�;�-w�Rf.,��78��d��Df�2AdLf�>D��kP�*i-<���^T�җn����vw���;�E��1�����m3�K\��/%�J?S�-5��1���*�R���{0�L��1���]�c��Q9问�|u�ѐq��J�/��QN��>AX�������s�w���<����X���]C������$�0�K�zC��q�8��Qg�e��;}Sܠ��Fr�����	�(H��[�����z�:�Hx�הZ�o����V�C� %O�-�,~fMx�_�H ����N'QǙ�K��M�Q�f�J��Y�ƪtC���_�����@/)�>���������^͖�R�{w��	��~�	������x�*%3��1��_��ױ]\?��Wc�Wn��
*�Y�l�N�#(�q!9GQt���o�3��F�U��;�|c��oE5��-�U�>���d�%>8����u�5w�@�s҉�����?���O<> &UFÿ��Ft� �eJ?�|%!p2Dѽ�w�{�n����ꕺY-�mF����{�|=� ��qu&¥sc    @d���>e��&ݥ�Rٍ�p϶0r����(��zU��?�w��uנ�/s-z���gDw%�@K�}p���.�T�ӫ����h��_Xw-G��¢���̓י��?2#��B�pƟ7�J�#�˵=+���F䄜�������3M��^��A^��oK=/:=�8�8l����Dy$�{��Qs��$���@h�=��]���u�&U�x�V�[ҁ��k3Bal�Sn�ދ桅�5҇P��'�Q��8�s�t�.����t��T��f%7��=-����z�B8�"�Als1Ro)���070yEy��_�Ŷ��U���|+N�
!@�;��|�塹�f���y��;K��i{��Y!5��B���O���.�n�׭9�m� X��k6u����I
{����b����F?L���A1�e��-��)�`h�r<�L��i�Sc'���!�����@z��to�����M���Ҵ7B썯��k�)�#vOJ���q���2Ya_|��;u��d����uY߭�Ī�+�g)Ad��3��EȘG�rR�J줻e��S/�%%�0��'<����Yc�ʹ�SB讞Cq�Y�A�{jd)��e�i��Sh����-�RBG,n�팗]=�]5����L�`G�m��Vg�3%t�U	6��踟Ɣ�4lTD�}ld���
�yJ�p�m%��� ��Q�$
�b�/RL�]5��h��
}A�!%K\;COd�c�ЈSrE��z��^KJ����b]�oJ�Q{"f@�&(MMJ�X�|!	��LS�)	�������C��|7���@����c��[hk<OI�u�X�G
������c���Y��s��H	 ��7f�Ѧ��f����H�c[��=:��Ѧ��Y�����}�* Ew�)�����g��M�II�<��eE�hS��'��nQm��co�����kJ��UӬ��rO��.�ju[�	I���C�A�2��e_*�O�!�_�D��,/*�ϽĮ ��f�"%����ָރ
�ָ���[=)�%o����R����)Ѷ-?� �o)�ě��* ����j{k��|�"%ٶ��PZ���BY1��H�LI5����U����m�D�C���]����Ʀ���
BxՇ���f�zQ^��B>-�1@8y��Y�޿��'��P:w��4�/y��?t�S�o�Uf�V߱��� :��N�q��q��6��y)fb��Ǐ���1�ɩ����~4�v�i�Zdh4j�������<n!=N;e��T�R
�S��b��T<S�38T�N&�#��c4B@&!�µ%܅C���s��O�Ky4�^xe�����������ݻW?���7?�\��kx������ ǤS���h���by�O� ������"��"��G`�,�� �OV��5������w,��Fc`qd���u1]�m��'�-��3���@y[��=����5����ax�G�yC_�j�<tD�5ԃ N�0tjt�i�x�MM�=MV������M.<M�p�h �K~��#�E�^�N_���;���-������ ^F��]C�"t��ϊy�[�*�m$�AY=���m�T�RV�T�,��ˮ���Q�I���D�&A���s��hV��*�!`�w`AQ��*ʡ~GC�y�!H�}tg�^��Z0�2`�c袽�k��ʸ��1(�8'�R�=S�a�����9&��Z3�P�4��UIM����l�N�&��.�P/M�M�ڮ!�3�ݘ��B�ɨ���٭��6�ď*�y8��`gkc��V��^o��|��+;^���Dp��:�3�S=���a�(���>bz�k_>@?4%v�[��4�fOm�mx\�u+� I�ȭ���(�
@����<7K*ࠣ3��Ԑ�Hq�i�C�V��z]�����S�_=,�S��+��V\Ϗ�DET������9i�9x�>�F/
ؕA��N�<A^�Q�@��� cz�醧A>��1�A�BS�Yv�n���yG�	����_����YN�lcw7�`c@ҁ�I�q�ۃ�&!\At.�s���b8	��к������;��Q��"t���>l8��y\�ɲ�X��xG�jt4g��0̷\�Ԛ�Uˎ�������/�v�錇g�uz�7������I�6�J���b�9�D�Yw��~��BϺ�Nv�L:�1W�Yw��QL�kҙrx�]L�f�7�Kk�9������n��2q{/��-���zpZ�b���Ueo�gݥ�@;�kG�)
�U��CK漻d(��V���O�켻��β �W�9.�`�@� Л�mx�]z�% �Tn��yw�u;v��M8�$v�kW� 9&��C���K`�k��񜻂q<CuALiM��r)���K�X�glzf7]4wB�~��-��T@�|��b���n����^/���{zT�Ϡ��v�;�;`2��ن���Z������xl[?��o�zd�f//�,ޭ0�=��c�e�,vX�Cи{�5?(��tju�����|����Ʋ�-eP~�~����vC��F~�6��6�I~�0��k-0(���]��U����8���������#uE�q&��v�����D��?���hs'��H݂8���A�������v����pz��E��@�nbϑ�@�uK��g����~�˹�K���t�dZ�N^���Ze�M�m��\ߋJ�No�I�7:	��t���I�f$E�8o�c�E#�b����֋d��L�Q��g��V����y����e �.��K3��F�h~o+�J�ݚ������n{�l��ZH�U[���8�]�?�o��W�'H�+�punb�r���4�?6�M!�� ��C���zi�w*YH�N������D���XF?���k�����4�Ԟz���I6N�ၵ�D��nf�O����h^��������FY�t��a��q"w��j\T� ��g�X}^הc��#u��X�T����'< 4�&�|RG~V�1=��ۢ`w�*�v��	{���	���v�Qh�SkM�{�U.!F`�Jd�*2�Q�'d���'���G#�K�\;���m��o��2���2d���:u]A;֠���QXW@�`��U!��8�^�M��n_�ֵ�ƁE�]]hX�fs6	)�hXs2z�C��tأq`���,���I�>`��RVPPgB��.�c&��8���C�,����"Λ�DI)�x���{�֣�˜#��L�հ����S�j}��<]l�����W�ÿ$��PD��5z����GR5䬨��x�_��μAoD�G�L7�R)��~��k��ݚ)W�W��_���q�om���h��s+�s��_�ah!J��^���Y#��M�����}��:=�L"�Y�tfΚ�Idyw!x�SS�F��Ih�'�X�o�ޓ�yU����,�W�0`g�/M"l��=��'�����ά�GdlB#l#�n�'RQQ�w����%H�T����_��h���g�L���r���-�vZ��fѬ���0M��x
e=�;��,�=z�Zi~���|"��m���كO�<%����̿�<ߺ���@i*kF�_���n'�>�����A�^^Es��r��m,�3��LnUg�%�٥nzlPg��iAuwj��_SVGw�Ǝ���E����G��e�9�$��B(��G�K��WV�뢚�W�T�J�iT�_nP���9�Ⱥ������}�3H��2ITG>ɔ���h�Cș���j3+w?D������1fXfӬ7h��������\SH�f���(t>��OeJ����iۧv���]�����_��vzTP�1p'�A�I$�p�[��G��'Ϫ�k}��y�#
�y�-]�&����خ�vcC��u��w]���1�u xE�E�w�s�?��c�9�j�EdE:"�\�@�nV��}�Q����y/���ݤ�yY�����tTo��jt6��4$Z�)^��x0~6�K�
����������W�Տ�O��]�o˶1 �_��x��R:0�	��G�.�|:(A3��)�|���g"    ����=cZ)���*���<�f>�p����� ��:8�
��g��^�Ή�pJ�1-qX+\�b����B�iE�lV��n�ō�Q��q����sܗ����dfp.ҧ��{��D擩c�n3	�'`��ͧ%X<f�ކ����~5c4�=�����bxe�ƛfı{{��Md�@���{������i�B�Z��Ok��IH�5��M3�I��4���g�b0v�W���o^C2~��`o�jt{˗	�a�I���ؼ�\s�`S�ݸٓ����`q�%d׍�nf}�������)�;Y/0��$ſ�y_{�����)5�fʏ��N��������66 �M�{�{���C�0�锂���8p�	]L��u���m�TĤPE�L���t��?����NLo���T��1+�:p�i��������;��)����<�K+⌏*��gϿ��E�Ɓ;R�ghQ��_�]tc�mui�Kr�cw��Y����� c,�ݭ*n�/\�x�Ɓ{� @^�!���ƁKՎ�w�MU�ޛ���:�@3N�X�7.��3h�:!z`����VV?��%
������K�S��Ɵ.o�;�q��U�'�H��Y�2�n'��J��L�O�w��7�x:��~j�r��!��8p�� m����^�B�:�%�9���F9y�8�j׃A�C�.���,57v�b����\�����_����,�x�,���kZ<�f���{�.��+%#��������~nq�A�60�q�F~ �N�il��l�o�^��&t�j'K�f�{	��$�.�<v/aM��)i1+S��D�$-�b�c��a�����;U����$K	y���;Tq��j�%l�ۆ�CS�g�9��	�o�vAA~8L�o�����j��׃ג��or��]��ӥA�r\���:� �J9{$��r�ZH�?U��8Ȁ	�1~^5�Ƒ>c{�:���p�Z���O�XE�}�`߭�I�o�}"A6��l^r&z&��Iӓ{��!���2v�JM�^�ό{M��A�9;We-I��cr���>��1�܂`�Vi\�3�[�>��KDkä9x�l��jK?J>r�\	D��h���%�ܛV��u
�n^I�^�2��^��F�����߽M����h@�t��o�Q�n �'P��� H�z�Ȫ��ܑP���JZ4�����}�Q5&R�`��,:tO��,���`�h�o���da�VK�СIG27Q�v�Y�A�A�Ү�#Y�`�*�h%���b.S���K��6��S;�]#Yo ��<�OW$v�]�%�`��c���g�Wl�ʅ�=�[mÛu�^7f��',��Li@��<�=0:�:(wU��r�+=�dT��-��Pc��2��X�$��X 5;�g�L�ef"��@�  Qh{A��;��!�Ee ������,X��"����:��e�N�U�����.�g�w3��ؽ���Rn�V�yM`�q�j�<u�$׳y�G�i%�y��8�z��5>	5�xF�zM���]0��ۭ8=S11�Q��>8�G�O���ʨ�s���VfB���hN��:��/�L旕�g������y<u��\(xƔ�
N��5���v�j���*?@/�>-��\��Ap�����\��j����AV�Cy�H�ݽCK �xс�#�#���d��$S_f.U
S�X������T��ƹ�?u/ܼ��&'OD�'&��X�h��n���j��y����B�j�3�k0͚{��,_&�g�L�z-%B��Vݫ�d<��ҫ�x�|pWmi��R��Z�]Q�љd6��z�ߘ�S�O�T�=�'�S��N7��܉1?�);ݻ�NW�C��~�����F�Zܝ\�4�w�<;?o���Խ���Tm��!��G�=��#݉��C
<�D��S��nO��a�3�aN�{;����+�Oh����ے�F� �̿�h�O�̪($q���X*u��*)���e�cckH��.�`dfe��l��<���/9ᗸG (���Ñ�*	��G �=.��ȉ�r�Z����f/go�/��.���~�5�8��U�Ij*�� K�b(I��U}1n<l0�
�f���K�h��A�iz!�k�\�y���K׀���˹k�R��=B�@���?.ϧ�(9^&�=6�g�/��D'�7N��wV x��qJa�{���7���\�&'�)��������+KׂĀ�a���_��#	|�������"h�]Y��G�8_��i�i���F�B�4�/��c�.][�EQ��K�cL�ѿ���U\��Ik��E��Kx�	�	q9q�ڋ���<�(t�7����-����Rc�t-5��#�k�����n��GPh�_:�.]kL�/bʓ?����C)����a�+\ӍE��ɠ�B�T�	M�`� �&�@2Qv���TI��e`Q<�xs�F��� �Ľ�y����O���k��T�8m��6|��g��ۓW��]3��?�D�/]{�Eyu�J]r��(S���pw	��!���ӊZ���ps^_1A ���Q���� htB���Ň�W��V�H��m}{��QG}u�k��P��,��l� �(�KL��q��U���Mj�V���k�Ѱ�5�5��b�A����% �c�X)E�koq��q����%��W����tm1!j�`SK�<�j���͉�X���t�/a����B1�ʌ��e�2�t�0N-�����->p��g�<3@ƴ�͹�^Fg��kj	v�K��ch�tM2cH��-�����������
�D��\�6͵�8tc�إk׉���ŗ��Ưi D��5��Q�5��leY�F���(���Û���h�-];M/��F�l�ܼ~Q��y���&�f���<��ҵ�D�"N���}g�ۃ
F;�宍G�ݷ���*�S�?�4O��Ǥ�~�dt�t�lOs�f��Gi��WHs�d`�� �R��w[�q'��z��K�es�J$��(���.��k��]�R?]����a�km2i;1s��]���7ǃ����;̍���g�eq��S��8�خ�)�Џj�}������tb;�x��v�h Z�s�&�&;Ș���ؘ�L���F�=\k��/��oD�aM���d�����41'#�n+��
�ө �E�����:!:��j(s�� �,/�kE�C��ڶkD�N@�z����D<��PLr��/��g�4���f-����a[��R�]�So����9�t7�9Kݓ�{*�4����:�������a�����W�5}�*�N�ӵ�F�A����{F��zo��
O0��iry�k	��WjuT�ly�ڄ�к��>2�j!L/*�z���!wmh��i��cn�
r�
_���ֵ����-���4]���F-���|�'�ܵ��S
�r��6@B�(!G�1��&�=��:w�p�ۖcռiu\�ܵ��D�Hj�21��Ds�������k�W;$/r�"�Q67I��5�و�T����������^��bl�\�_M�?e�&B��Z�*��ܵƐM&:��D8|V���Q�cY�o��s������҅4�a�j�Rr��I�4!�b8�@���Id
o>E������HB�+��%K����e�z�3�2a�A���J�8'[=h+y�����Y�MH�/�v����jĀ߮�C�_wR�I0imB�	ɠ��S�;��s�^�L��4b5i��c������5$7�������SKX���ð���4T�a*��,�t��J& �Z�i)8���n�r����,�ר7�ù���k|�p��\U�Uk=��eJ=��B[�@*d��w�zs/ ��/�U���c{��m�2�ƨ�)De�f}��U�,鷚+[h��)�'E�~����bI~��+������5�m�>�1J��$�~���ϥ��w�A�
��٠��7�UwQ�;�bD+n�����Q|&��<AK��f�q�ES-�3��)z%b�&G^�r�n��n��l�as����H�W䤕�����U�肰�p٩mA�+=    �Z�X��dJ�#n���L{K8.�4�y�+;Q�V�1��_[�f���dȳw�!�4n�v`�!��l�DbW�+rb��.V��Kc^��C��a94��*᤯�v�o�>@��Q�c�������eC�6`��!5%`r��"�r���ݐ��/��q�P�	E!��b�˷��cY	}z9F.����"��_D#\�h����_9F�$e��f��P��Sӝt����Ot,(����I�Q�,IO5�ۡTP�U-wD�\蛥������a�������������B���x�#������,��U��@���h|���~�� ~t|	�W���4}�S�E��3C����o��^������մ�_/�8��T`wF�ܝ!X�Vg�	ڲ%o�bd
�_ �L���H���J'������;y�tp'_�ɢj���0�y*��@g�ܷǍ�K��x���K+t��2܁�����S�W���Ӂ�"1&`��7��� ���a.�{q�MF��b
� �d��tA��j�p����b@$�(��`ـL�����H��M��?:.����T�<�0FE�C:������¸�T��	�k�6M��l��j3�?��������^I��O(�^!7�	���'i��B��'K���0��E�+�R ћE�+��2���6�ιA�q/Q����6p�@��H�����\r���:���H�W�z���U绵� �������E�7bWp�p/�x��C>L�{����.H6�ç�_�l[���i�a7���w
���g��ή]��R��$�f�m"�;	�$�;;Ғ�ˠ��*%a�ۢj^����^y�!0�+�E�+�*G�����E�+�A:���Q�k��*��W^��;#����͜vZOs��3���5�S�%UQ?��\dv�u����Nb㽇ɣUh#�1O�_���<f�/�V�$V��;�7f������;k�P���!�/0{�j���Xdc٤�gwTCDǈ�|q>n'޽!�ԕ3��?G %C�QC�3���LQ'��I��Z]�5]>�	U��f8S~)s����N�孷�ڹc;�8y�-��Z#�P[:�&�%�n���q�i�b��+�3X	�<A�>3�.-�1�N���]kC 6�(�n�)h��o���.�_�;f���2����l�FV��3?��8��خ+�����؊\[���&Un�q���;V`9��5jm��t�*���=wb�(�c���kj̝��?i�t"����ڜD��;p$�^��qE���&d��W�Leze �}7�)��H`�<���Y)A�X���![�@斏��܊�ݺ��1Sݮ�$�s��#��[w�'�c� Y�I�M�n���pr� _�����V�]���ۧ�/l�Ra>_X���z���o��,}�����f��	��i�e�2�t'�N�����c��ː�a�Ķ�ߟa��F��O3{F?�aٝ�	��+�XL��Uo^�^�c5��O�����0��9�Wp��V,�8�@]Z@v�teV�ڞ�`F����KH��&�����dhgI��c�|as�8/�o
}�䘵Ĳ��1�C�"�8{�Ř5�6��L~������c�Ř��	u����6b�1s�O�_��2��tg���	x�vV�A���y�3�����1sn�v�?��Y���q� �	"��YN@'�]�X�c&�
�·��xMgz�y,#��
쯅@�n�7 �G��<]�����@�E�P�|B�^9eH�-���^�T�}��e�$J�̎W��b��,�P��*>�>�ܝ�+�:$�ZYD�Kee�r����W�h^{�S<�1y�-1���$=��I�{���;�:�J��"�c��(�x�p�#�`RH��$
�E�G"�+f��\��W�l<�.���Z���B��z~�"��������`|V�L��$_�(C�d#i��W�<�z+��Z1��&U����D��WܐY/݈2&�B6H'�>,$���@t����/Y��LE�],H6������)�>^���4i��Păw��������'���V�ӻz#�U�7�PV���R���,�tZRUpl�ƺ{�D��6�њS�9�r��y��+M�usW������!v(��$�P	Tr�V�NcxS�|����X�+�V�Y.Gx�ۍ�ǃTӦI�\�1?����|I��H��	�&~�GX��T��:��Ђ�����t�,N���ɚe8�9���=���y��+*�;o��mrB�=ľ�I�ƶ5&ɐ�ô�n�*[���5A���'��v|&�MݻR%C�����c�/�9�*�p�Wz3?�'˽g�=0�/���s�;>TA�;��I��a.��}�;��>� ��F��ͣ���a��? �O��!��I��;���2�
��?�����q!�`+N��1R�֦C��bJ,���P 6n�~@:j��j���tj|�t�x_`��/��y��Ӛ�/���4(O�`Ad���5��P%�Kv�r���C7��8���r��c�|L�]CΒQ��#N�s����%����׎�?��g��0f�׈�����c�����&�6^d��Q���?r�p��NI־��1�ߵ�k�:��P��v�eV5f�e�9^F�ܓ��{Ӌ����Ж��R�ʐ�� ���-�wuʐ�� 9�~�N�@�!��1$��ܡ��)0l�0�IDgk���*�"V��Xu�ϸsԩL�4�� 7����Ϭ�;k<�ƃ��!G�1TƝ�ːa/yB�� �78���&#�����ZgV���S�'��]j�~r_ğ�Aj�S>CM��3G�|�ƒ��}�y���h�<�ƒu/�������!W�q���J�ŧ��sRB�!Si�b�c!?�KD9���'�7Q}g�1�B�����T�r>U+.�K3��\*W�E�q��H�=�>�3�I�ʱ�(���ȱCwޡA"8��S�ނ2k�C(f\���n�,j��R����۷j$�j,o��j�r��c?��bX������N����@7�gV%nIT,R���Z���]�!x�_��)q�0iuG�р�́��|�d�R&C���VVUn]\�3�zB	��y�K%�~s��[�����H��$ ��*�F����5���ؕ�Aε-f!t�]�W_���}�I	<,?�g-�r!Y28?�*I&��z�r1���很�iz�E��\e�1J.��%� �G��� �;����� ף�D��5��
������D*.ҏ�G�OP.��|p)�ד+|���-�\�&�#�e����	����q>�d �:�$��$d���X��%�qҵ�s��6țM�q֕�}��F�G�c;��^�J��w](����_RqF�uȐV�L�D%���L�����E����U�����*l��8���%�fT�T��A�j����]8�ȵ�����৷Mw�}�?$?�q�����E�s)^�#lx�XD[��̗C�ʉ<�6R�C�z��y9?�������s���b6D�w�)��@�9�a�S\��\�!��"�Ҳ�����r�D_�z�85����V�d��Y1��6��#�}Y�It�T��������_`���F��������Ƿ|40å�b�"�2.8�v/Ηo�_Ď�M ��i>N~�7.�gѣ��7.������ߩwNߖq&�q�Î���8��P�c�>-�q��3M����Q�}	;�t��;���aڅG�0(�y|�21�Iy�,��Ä�gL�ϒ�8��{z9yw����p\^߶O}�}� ���c]��|��t���Z�B<��cx���r98��M�_��ղr�9JT�B�"�T����(���&�A?�\�j8���܁�S��7�oDqy�C��n�[���c���z�)���ˈCT����lᬪ6��6i��j�rc��3�3�GQ��f.���P�fT5s9ا��S�\�#Z��W�y�����햫���Q�q��j�r�O0t�����    ���%=	;
�9ǫ�0G���M{��ٺ7�N��I�g�-0�=��}��*���e[_��|?����a>�]6�U:,�5�J�e ����a9���u���c��a�7̙<����;�w����A3g�˅�'�ʆ���]e�<NH=�� D/��r)���	�%�0��.87gatpF��Y�'%1mqj���z�������;VX8��*3����L!���0SJ2���<�j�`����SV28���|���Sۼ�y��ڼ����ռ��?�1����qt^��s��ϩ�0K����k�k��_%�3����e5s����0{X#�E�[5��Nm�Q�e�E��4&5.�k^��/�l$�T�)���L���avuk���-�<�Gdts���"��nm�`.�������*%�r?ǂ/��C�O5���r��M�h�C�zr�>�C��35��r{�Cb�t�C�����2(Cb���BPn�!�O�q���A�����2(#�lx
X9��}f^%@�N�� �:(#g�<�͒��zm+\pW���\���P{�����z���1���9B�=��'�f�X�`f�$B<՟&������ex���/�r�L�(4Ĉ�}˷�H������W�
������*������g�����g��g�1�y�l~q�߼w��}v~���3�0��c��<��E,���vZt��lra��k�g�s�����C�c��,gU�o?<S\ ~�����	��ÍPEL��c��v�;J���K�2�n	ә���i�#�CU;4e��wLYޣ�x���K��q(e�
�k�_�ܞ�ɏ�q��nw��[pt拕�g�Tl����������w�z�pv�K�EлK%}V�����=A���*��gh�W�W�`!��ʰ��!پ��Mu�Q8["��"�ѯ�$����"F��s4�Ԫb��&;��qUE�%�BM��6٬E��㘥���E/R��"�Cֳ�y��N�K�s&��LZ̪~.�V3�sye9��󩲼�I�`R?��A�$K��D��G0Dj�%�������	MD<�ipO&FDd
D����d��U^I��3�>~��}�+��_T{�I�)�EIA�_DC����O�3���7H�_4"�ڳ�Г�K���/.E��^���L�r���s����w�9�H�_F�����s�%�%h|�M��ڴ_�\�U�� ��7�ܔ���6�#f��V��<��������t�{B3$&�p��j��inb����J���d�7q���s
���w�e���i��kCm�a�(��Fk�Cj��� �qw�!����o��)4���{kS H�O|�t�uu���ӂy��6nE�\p>�/b���l��~H�	��~�7����i�~���H�_�-
�%��%��Ko%���A&dA����]����b�!(F�Q�U�?�&]�B�1>��}�{���hsjv�<D�/x��9U�gA"½�ݥ��Z�J!� й辌��l�ǳ��ۺ
�c�='U�aogE�F�(N��0z��<��c���ؐ�y��4oB�a�8��6�N�U�y�۷yDzC
����8��^D ̫-��j솋�*�<&n�oBf)^�5D�2mx0t��7o��z0�v�v^ֺF@�/�*�lJ��Ș�E:��t\�Ml���02����.�����~���,�t����k�S�(ֲ����Q\����0�N^�?���!�!>q����pܸߗ\�@��~�K�(�VnEb5�VE{�ֆٛ�˹d��C��I�+�ݶʛZ���Q��y��?�#�/*��?b?�3/j�!�t���3R�9]$�Z�@	�b��(�Iq:��ܬ��n�m}�y6��<?	R�Ke�e�� �����/@+�c״�����O� ��S����'s@�ʱ�2'5�n���T�!e�l�F ���w���t�v��5�PVAw�O�?k�&�Ev@�rB��e[�����]��{�j��
XɁ�1Cަ� �F����*�	�8�Nn��%&��ַ�{��EO+0��Dן�5�J�CE��2>�[�7�W��od��/u�F�F��b�yĕ"�KRaB�!1R|���B,;xP��>�	���n�Iw��`?����B�b�e<�|9�Q�dLE��tWJOU�I��Km���i��a+��92+<�%����G
�H)8 ���g)��,G�Odnp�Oӡ�,�'U��E!\�b�Ԋ�[_��3'��F�=@Av�����`-,�@J�@WP�#�^���O�G`B�;��{h�=��T?�%��qȮST�J�ǈ���&<K'h^�U"�'�]���H~ɭ[ƪ�D:��� 1B�����Kj9Wv�A
��N4ȣ�M��c'pe����8}�xUQ���,d��G�d"�yAu%Ua2��NȜ8Qʀl�����.�(V�*N`�a#"a�[i�L�Y�;��Ÿ���-�'�EC�j�8j
L7�y�Rf���R,�>�(�7
��rx�7�j�]�gv."�����z�L��u�2y�5У8Ԝ�3�Gf�M�Z�H�xS�QM�qZ��Re&9<Ĥ�������ʠ>\�S}l�s��;Z�A��x�{ʔ�ϧ!)'<����Vl:p�B��4n��@�r	?��	s�/c�zS��	ޞB��8j������>G����C�׌��7��MG��`s�6��n�_%�ϸ�����_l��+��q���-�b��G��U&�1-�ۚ�L'l��X�� �D�Qƛ*s�k�lܴ����<�e�����'7��R�۷���M{Oe�WҦPi��Xsk%N=��/Z�����0z����q郚
�������T٫=b����c�����<�B+4��)�q�g�W���d}4�r�8ɀ'�2�f� �8+���(�0�-�o>��5I3��$m�pf����w"/�w>��B��vU�p3)U�?B@��׉��8�sq8ܥB����W��3W��N�ke"��~�<6[�Ą~!F�5�)�Mr{#Ψ��R�_Cv���|�I�������}8�&�W�/�3籹k���տ�ߪ	�8�x��L���qNG��Ir�<X�8��i��NYDtLHy����G���xF��t��t\�`;ݍ��g�=��1��D����	42wF�`F$��y�-x+�r��A�	=���.G��1� י�����E���plv��	���Gؿ�����`yh��M~h�k�b�F�ǚ}{����J�0M���ur��b�Р7}wt,��l���۱S����Ur��	7QU(�'�R'B���bg�Er������n����|h�Ϳ|U��;  -�������^S��&�?��SO�e%]8rn�:&o���sB�M�N�[����rIo䮁��IOn��!Z�j�P^W��L���I���H�MC�����9�/�^���G��l�	�/����x��?��$��3�˚�uv���=~��x`x.7�S�j铼n��w�4G�f� ��Ȳ�Z��a̟ Yf�ڈݛ��ꏨ�T;En�/��w�pj17c����/��c}��ۢ[���r�L�����L����V�.�"��m��n�R/��~��O̌i*�1�N�kƋ+���RuRy�.{Ē�S���jެA�����M���$Y�I��9U�}��Z���S�q��fബ�K�iQ��R�P/�=Bl����Oz�v�\}3�żG��0�ʃUW,��fM���GIWz(�$XD�Gdz	�Ui�#@�ȍT��=b�_O�x��*�A�c]+ӼG������3(��'ط�ӷ!�B(Y�P�U�^�=%4Hd$S��gS��B1(mB��;�o��?�Š��Z7>�����.[�mr.��pC�ۏ����(2<S�����.۴SN~�m	�34���~�4p��@��l$P�L��Ԩ��xЎ)�Fu_�����!��]"6Z��#���Pkz>�v�8�g�\1(n�Aq&�5��h�-�I{lk|�˺�����7�Ƥ�    $f�1e��B�Q���O'��VT�zslV�V���A1P)�e���{��x�^l�^���q��Y�,2S��-��*p�RM��h�<F���mװY���.�`�!��p-���ٮ�����/|��>^F�0�RxI'�N#�q!on�������n�i��Qh�S
�RaG��:r߷�#֘\l���5t&`t�D��@)IS7��Kv7���1
r�^�L6~����C����"�:*��^���!k�Χ��P�[��ޝ������uE(���M5&��~,ڦٴ��b�z��Z���9�xa��Z��g���Г��O�H�Ь�A��_����ô*>��^J� Y�r�U���=�Me���c���M��>=�����R둀85���t�����l�'3\��j5�F���}��IZ���>I����y���}"``X*��~�K��jr�_���
�]��o��1�h6��QC��'�m��ܪ���hCj܊]o����t�o��<�4�i�CO��j��Q��<�O�
}TQ�Eٷ����.��fҳE�̜ȑ���$Պ&���^1��ň�&��Q|噍4����[�C�C �g�a�z�����3ק D@f��#��pܴG�#!�k�)��aIA�|��߆E,s�B$��a�|��o�����F�)��`>��l����_rCFp ����h�^�V�%�I#X���NlČ�}�܀t�/��uI;)��R";�a�����<k�q4Ã��9m��Z�]'��p/�H!}nG���\���q��U��݁ܙ�Ћo�с���a�4&kϖ�ظ�
�u1VTF:���3������I0h���b{e�0��ѝo�"�ȓ��xc؟��}�|ITF�[xZq]��<x�����
\ש�W�!L�s�q��h��zq�,d�N��2ח!�6N����>=`W|��sB��19�!p�>���TC8�S|��D�1���?�>Ƌ�� �A���>eO�z-�8�����r9����ǰ.-v��^�fb�%�i��Gh��Qx~��17y�ԟ�����فӅ9��>v�i��1E=�J�j���yֵ��5�t��k��A���\��O�Ԓ��ɉ��S�k��1 ȹ�Xfg��>�g�>��0�kݶH��Ô��3��݁f�mNu�Q�����#"�=ӌ��A��-	$x>�Vd���P�ѣ�����_�pm�6��<MY�s�vM�>2"av6_�V� .u-cӃ�?�÷n�f��ׇ���O������^� x?�o3|]&߶8<B��ߥ�G5�����K�A3׎4߼���_���U��tf�\;n��͍��D��)��V@�g���L�D��!�f��װƿɅ Μ��F2�FD��ns�<6�K�؟�"��˳ݩ=��9�#܃<��=!�˳����+�������j�_�ݓ	�]�%���̵�jTC�{`��̽Y$����=6��@�Zmp����(��S����1RAt�R���.�_��oő���F� hט�BÒ�_��5,���ܡ�h�pE��8S��;�K��wG��/B@�\k^�OE�����L��^�lz�����������.<J&�P�!�x�a)�^d�c���b��<Pi�Ge����K�:�,� 2_�2�"��C
cZw�=xe�˛��O߽GlBs)��_c��\c ��|ln��-8��>�[�Kx�|#
�*Ic�ᚘ�)��r� �7{V*=0#Qe.���V��s=lV+0��꽠3>ڛ�]�/����Ɛ��@��-�[~u�	.�z��;!i�)�{n�d w�Jrq�W��"h�.b���M,�*��箥ʨ���1�׏���"!����@E�5�����t:<��i�������ǟo�F\4$ըЀ��� ��
�q؃۫�(�U�n��BJ��蒖9�28�ܵy����t<�Ƌ5	|��T��+��L���6�E�b��]��n�p�~C�]�7H!..w�.AnS����d��hz��w��ڰ��Ԓ 	j�k�2h����L�&?�gv4'�8K;��q�p+�Mn��vUc�I���=��s�k���+�C���S"#'I g|��q>�ѭF(܆8��O+�����ہ��>�70��3�N{���՗D'έL���b�*�SA���j�^�8�B���tf���L�0b��]�� �^b�"Û�%z .���`sפ���!�]�U���M�3�^C��*F���?w-T*pG��t!��F����<J��I�x��+T��o��o<	�͟�MlW�;rW�퓌(z�R����5j�k�c�\5����ˮU+���]�U��vZ}����5jE(Ex�5r`��o��5Dv���0Mrߞ8F�8��j���Z�y�D�&A�/�p�]�7TAT��h�����<�!�p�g�~oapmm~��=� �#�w}M�T0+�����.��׏�Jz��k�E�7xZyN6��d��{���\��l�v-sa���"��eٵ��D"b���c%ص��P!���LS<�Y��F��ȕk4sp��ʵ�����2��ܺmt-j!���قd��ϵ��$"��Z�bhcy�5�E��<������8�" �k<�PS>�>?�ݪ݊�)_�}��y�`A
�e���	�R�er{>%�~�&��&�����=�ře�G[��õU|��ʹ#'��k��S�Ck���	�H�R�ӑ5,��rmx�Z��V^��zj6�'������Q��/�c>;E?�P��"FD�;:����k?�5U��2��Bw��կ��ӱ�ߛ��ܛ�*�/��]�����ej�l7CG%\�5fK��"R9E;]'��)�o׊�
K ɎX�\<Bu�w��
��G)��C�殅R7��$���Y���qiaY#���g�]�e�<�I�+m���9����!1yǻ����0�����I��ɢ�V5�si��d߷li����v�����&3o08���iх�6��{��C|
J \��s��N����x���u�J.��$��Vg��9w�I���ͅ@{|�L��N�>�etB�
�g���I^j==�6���S�8ޡ����ur�40�c���6�����f�9a�;�'aԡ��PI��HӜf���k������_`@��+�0�۵���ٞ�7{��(wE��x��~���\��;�M<IW��p��o"JM�%,�mW�	IT	�\E��/�Y��<��Z�uP4��k*�C�
1���IU5Pa?��*�#ӝ�� HX ���_�#6ۺuL���|��S�Vxě�`Q#"b��kk�|w�m �5_�ajR7��4��J�g�;�(|�z�0����d=�S(�7���]���k�̇C����&��An\�	��"y{rRK3�������K�n#7�b4q�2\G) �&>�ի��V�վk���ڢn����{_C�`؁��`s:�V�X�N�ø��t񨩦H:/���`zaƠO�d��z!j�R��c�����G)Y�V��n���i�����ۿ�%Q��$��xl?=�>�7��c�������~�����C�.�&�O�*���"�z`�f��/���M�%pW�A�&��(��8���b��'Z�s���Wo��Ū�l�^��Q7&%;��Q�^
��I{�L@	y2$7���J����4�n-��Hl��f���0���k�-�iĜ��#ϟ�/v��-��&ʚ+g����
���/�һ%��"�����qRǼ��~U���By�(2���Z@�;@p��~[�\�_q�K$��'N�K�Y�P�A���2'���ȟ�G�K�t,Ff
~B4�qh�*w�|M ��C�N��e I�\��Ԓ�+�>���b#�^��(�(��[�\�E^%��.Ե���0�p����Z�dXi����gKbnڮ.R��e�TxY-�Ҹ2�(-R���]����4�S�J����i�7���7g��Q����.�L���ɀ� �    �3MdN9�L{k�Ђ��j����1��F�ޟ̚��fp��5�����g�[h۽9񘹓�P���T�S�5��`U/rE��2��n�Ff�����#sN�=d�Ff�rӘ���L$��,��TDw�0� �E��
Yt��E�8D_C��>���E�n
�};�UC�d�f|���D�����d��&J�eҪ���V��ĉju�֒-Ld�8kx{" N�#�h����)���(� u?(���p Ɇ>�/����Ą`��[�l�4!G��A��ym
Ѓ�F�9��\H>���A%*+7�.����hF��ѭ�"�?mN4��OD�H�B`�C>��%�
�S��!�5�sKF�`��"�O�h�1����܇�yD������e�#|j�'�g�`���*��b�����{nb��U��:�j�T��
��;�摩F�YR�=�AS�A�[;��or����Pq!�[��K:���Hg/���$�g31�|��E	F2��AMCL5�
��Mޕ�O���X�4��~��s�qt��:� )�.�����&��a#"°�����{B�HN��������,"�P���� ?��oͱ��V5�R��)=V�Hɋ�j�"&`�JǐoV�$bB�V�;L�	!���UH�E*11�x��bB乕1��S+���P�$��́�h�zX���bC��nZL ���ڌ�h��4xّhD8�s��i��	,��x�}u�t�W���#�ǆ�8�L�no|��WOOOS(�\���+��4yӀDý}��p���\�����Vۢ��o�'^�"�L�d-��D�~���2���.]�rQ�+t�j�ҕ)�W�p銏����kr�¼K��i���KW^�o�n����-6� ���.��S�*��ҕ�i�#3tm
�����Q�+��<��p!SC�θ�,w�4@��'��	R�y o�'���k�к�ǐ�M����]^��؍���v��������]I�rV�����ͤx$ƙKn�xS��B�s���IQ�$o�������o����|P2�s�/�A��K�)�ƹ�%eG�¹�Q�O��E<x4�z�YI7��S�����A٥ɺ��X
��^f���Q
*���,~�؃"��B� j����в ?����7sz+�I��"�A�����}��fp�p�Z�ŠDٍ�9����NcQJZ9���o�v�E1�7��YWO�S
�]�=O����c��.L�A9(��Z���H1�vb{N-&[�m�̧С�Q�xf~��!�Du2R�_���X�ƒ:,� Ӂ��S�q	5,�
�4uA̰\�@D�E�k�IU	�><j��Y1�U��}�h�&�3��q�(�ј�`��ԟ0�1�j�{�g@;�z�GZ�g"=6��$�tZK����R������p�>��cw�U;]�.R�zyK�E/�F�$U�o��G����^�<���y�^�Cg��{n�2�UN��~`:6jZ�0)q��E��׺�K��5|��@Rw?�(/{)���:���Xk�ѥD6I�� l �b���%��y.��a��(�Sl�$W�ɁԱ�k"8�PE�l�[Ap����X��������|���]�j@{,�P�;l(�nǣ(��4N�Զ�����e� xx��y�T!�jS�'`0�Z`z��Z�*�/��q)�8热��i�0&��Y
���	��N�|E��7�Y�ne{�_�v�M�'�ڞ�����7�	�7�v��o��X,����Ɨ�%������P���	��0:Ի�,-�R����h��嬌�QyW&^��E�e:s ��x�ӯ�G�8<�U���h� ��鐖�W(�E��g��i�;��G�G�$c�s9���*���yH���H$�����D���1wq��mN���I�/�.YxкA���d"��Im7��������5y�-S�4Ҁ7���8�>PMx��r>EGS�b����!f�2�!x�����;V�l7b�DP����NK?���j��@F	Y����>8c><���m{�T1�m�co񖚖�
�Y��������G��	'S8�SR�O�C���������>S��-��G�V���3a8���̖
MY-�e�{�6]�;�,�D��	 ,�KȔ�x�༅��<&�B�{r0'��5K�qv���R4��]7tC��>�ϼ���q��� � D�C�2��.�لCe@ �+��F���u���1�?:���u9_�P���v��%�
�J����ر���Ǫ=��
�ƂN�'(�dp�%��~[o17�����SqB5�ZH<�H������r^�&Ŏ�.1X���	VDP,���
3U ]G��.��!��������O�;���8-?����a�MQk�ŀ����-�]4t`��4�[1ˋ]z�~C�f��h�.XCl!L�f�-4�#T-u9^?;�$=T�AѼ�@�,�(<P�F���)5��YÌv|~��z�����`�%4��l@*~��|��4������M�m`����=l0Ӣ�*�ڸƀ��?ݼaaD?W�(R��To`��(���S�Y�A �E�4c�Ȏ����J]B�}KQ������x�f�y+vp�cR��WX�P�q�#��S�R1XR|��Bر\�ݙ�`����q��`�}k�b�EĽ�h��K�%��P�gl:? `� v�ܳ`H����E�1���#{�������9n4E��0��k�y���6I�;A@��܃�>q.z�1ć��>��!_��,�0�q�ά���ĩ9��2�#�PoI5���"/XM/�Q�/�>H- �V�%��F�\E��K\�R{0�H�0��d�I�m�-�:�J�=Ira�	��v�K` ��W��vY�C 2�救|sY,���v�kH� 2�IN#�< (g�ɍ���ƀ���`]��?�x�xҨ8�>Lh�/�~\-��	�.)r�'�,��mۏ�넂_��O�Z�ܚm	���j��bN�O�_�5��U���e梺�W\��� v��\b�������Ru������1�e��
vR�#l:S/*�6V�0B.}d�}��b���C�
����I[T����r�Q	3�hja�$�DӀT3�������8��K���\�6�S�I�>�W9���U梚;i���+��Q�.3���Q��=�ˉs����`���;u�)!#�@�e~���*��������!�������z��.�}i����ʣ���J�	z
ש}ؗ���9p�J`�:��I�*������{�\H �2��n�?h>38Twb�u\�����(���
^��M|��p�D}�뗎yEg������7��|o��Y ҧ�Z�[}Q�"?F]�CM
D���L^���C"�1�j��桶�U�)z���vV���_
S3��62���C9]X:D�OT� 1-		��ߨ0W�:�A>+��#(�;�P\�����J	��75�Y%߯@!�"�e�L�m�N���%�*��-�빧��*��Dy:7Jl�.d�.��.OU���'����.�Zi�͎ ޅ3�P��8�R�:��p�������Lc����@qr>�|}tf6�ߓ�a@N��/֘�[�=�0�=`��ɷ�����#A�<��J��gD����>�A
�f�>6*��;|$�e�$����_˃`���Gl�d��<+z���E����a�n&?�?�^0 �o�	�w��}�g|jr�D%�[��$#k}�k����D�Gwz7���~j_&+�d�0L�?9��|�z���U��Ff"Ǔ�[���k-4,��1�s�i�E2���{�i����X�P��=�Ob�A����k`�L���Q�M�U���h��G�b��hR�xcT�8�Z���i�P�s�j�.��_�x	�Rb_�ZX��+�ޒEyF�T��ܪ�\���d& ջϢ�&����R���kbRP�Q\�s��&D�8Sh�d��{�&��S�����I7�u6��򬀭�G�4˱t5,L�=@= �� K�o�'�<�    �6���0��^{B����`�f(/�|Y���F<[U��`2��y��M0��y v����̡��qG�-h'�����3Jʓ�f�TϷ,�\9�,)��G�Y�0��s$��y���yČrr^��n.fa�~�.�VW����b����b��������qz��xn/�!�}8޸����c���gb�3���������-������)JQE�,BӪ�����u�ŀ�l���q��{B,�&5�t`�pSl���ύ����b�b"wqpbSvj���$�園y����Ak[棐��z���&�b�V�_U]"_ ���sɸ�τP�"8�����Q6�ϐzMà���վ��;9&&�� 2Y��|h֜y����~˥�ļ��>W�p�o��A�H��q1ia����c#�	�N��A���o�O �'�[�&z��=v=�����n���Q��t���¿�`����2�\��<�`NyU���d4������-7;�o��{�Ûߺ3���E��v�o��N��|��7H<�-ď��FW����v�c�Y���6�O���^�2je�m1���䗿7{`�@��%��/� �z�T?w2��%>��(T�h1멅�}�g%M��l��!aj�
tj�{i�2<���h��5t0�Mn�R�5P��r��Rh����oj�8�x���Ɍh�[�z�&�h�h���>���c3V���]�U��L`<!�!T+�WCU����ֈ�S�C�������͚�+�}�.��V�C�'��������ɵ��4�D΢�9���M���8��C���ܜ���ܞ����B$�g����<y��w�#?�_�2$3���p���������e���MCd|�Չ��D%�!�-�3;���RCB��$�>@6�A���ƥz�
�f������"�&��j�`�ب�x�	S��n�7�N.a:��DlHt"�����O�vIԆ�(@�B�s�F�4�lH�B� Z|%�:yC���1�9$F1���L��7��,�!�2R0M�����2M~���B��A��ޟ�ɲȆdͤOK�$o�tِ@1����NG�A��L�'i~%31~e�����`�țy�TfB=���b�U�H[Ԇ���'0��y�	60���سH��CR�G
m�ܐ��{j������IR1�bw��fbC"�1��-d%�SC���ϐL�D�^����!����d�Q+���N�-�:�����o��I��q� }��&;��=d �ކ�Q�B�C��C��d&?�(��"���"����^h~⸱`�J�7���A��O���&]ʗJ�b��A����b�izF�Q!����~D�Q�Qd�a������j�f�b���f���	���PZF�'F����iDD�0�d��b�n��58=-���$�3$q��hT:Q(ө���p%�.ˉ#ƥ���Q)�Y�n�Q�Â�X��3J��e^V(��R���i�l�x����&��S,�%/Xww�g�Dt�?Txb�n+�1Tɾ�G��#��D�0��g���� �%�'�����M�Mg�D^���S��=�R�@.c2;\���+>�U�Ψ�<&�Cզ�Ngf�)�D�,�dͱia�����ת�76sպ�ur�K�B��@h�i�#�[�W�tQ���R������(�t��f��ք�7Ԥ����hݱ9G�R��/��	[�w�Զ��0�eN!���d$U1�+U�$~0��S%�9e���_`�"�)�'��T�n���`5�x^�K��u߳��3� }�XgWa�@-E|��ź�eբ.zQV��T�è >T�n���;�HQ�'�!��� �6Ţ�����+1��P{��Z��&���-���!rb���;"J����������ҋ�7�\�[~BJ1��)���1?-*1i�FvHcY���d1-��Nvl���d���RR��^}�+cb!	؀���$���2&/z�C�Z�4��j�1!1�)b��`�_:�4�XL*���p� K��b�&Н6���b��@���ׇ#���t'6P�K
y\�Cr�����1��#{r��|�Dc�$�N�r�"Gf{!+c�$�|�$bg_O�ß	�FB1)���HuMn��pR�b��m��!F�����g�[o����_Č���鸍U��=�;P�L���Q�x��4/���/�Q�J�{���[�-;��gH"sb%�Fd����Ƹy��v7�����Ʌ�~ߜ���G8��Gl�ɣ�#�}��O���_]�΁��}�{(i�(���B�'?_�#78��#h�6�c۵w'��V>[U�QU���Cʨ'F	G�QF/!��>� H��� Vi�)���4��ӄ�4eԥ�v��G��_� =Ǖ��4b���k\F=#���G(�~!��U�cl�rl��|ϓ�P��������3��O�`U� �Qo�a��=G5Y~�dc�C64Q��:�m-��q�b��K	���_�v�;zN�$<��a��f!@C��"1� �9�Z<���|�9/@3M7dW|Y���7��=m�t��E�@21��{��>��U���$B	=Q����z/D����A 7��k�����B�p�s���ﬖ��?B�� ��R��}�H�����+*d��>f}��1K.�x�bG�̓c{۞�H�S)��Qׄ`}���YϜH��_��7��QG�����:�yF�2�_�5-9�#\��뿈S 浄��Q�y�#B�DTb���!u�t�D��ʨ'BO}�
�(k��(�V�V��2� �===
�)&�=��G��=ѩ����f�=��[��'	������}}��D�c����
k�ԏAo�2��KK�[��I�E�jy��:&�Di�L�l�R�������!$��9q��KģA$��!��pIEO�ݨ�E�J��HT����]���.֨� �To�|ԯ�T��1��<�VF]R|���҄f��ɈCjL�2���L���j{FcF�i�|H�	I�D#@j�7H��{�b�TTS
Q����1!!�0��/��|��y�qf��	�x;D�������i��?$����������?a��r!����/	�k����Ad������[�'7��d�TB=e9p�yv#��g��ψ�PZ��<�ziY�p�Y
}�3a���v�7���QhagͿ�V���ȥ�ʉJ��T�4�A�㉧|��$� ���~#:\����ڗ;J��=�	��k8<�J��|"J��P�; 1���MP��yն7Ͷ~�����O�<y[?'�,M1?4e���ބ��䩹�H��ԶB�S�,ށ�Q'a������ö��hH:O�aT��Tw�
T,�:�6W����K\۔�!��fs���;�� o��?@t���:�d{_�W�YgC�����vQ|_��m � Ə���r�M�vr+V��K~������z����fE���e�+���D�	o(t���gQ�a���/)�;�V�`�����Ǌj_X���d�Q�ũ"�r�S<�\zW�0��e�%��@uL�XD��a�zH��}�����=A���Ѩ���OU��k�͹�|�?8CY�\����b�M��?0� Q���d!h����b��Ď>�=�E��&�t�����X�,���xP���=�7�Xe�c�D��j�	;#ػ��gN��Xe����+M�u��>Ir�*+C��ީ����7VLp�s��ȳCW	�	t���@�{��߳_��J���8�`�s�a��K|���#�a`XR(�7�+e��k��9����#�ګ�D���Q��pq�U����m�"F@�/8����!���M�\�RV�~}�#�\�#'G%�\����˲�`��c��\d5��1�/����A8U�A�4&
DFO�9FPY�"h
�>�&��|Xm�'!@��ϓoh	���zA��J�h����ky��rk�@F����K�`HkM�4ʉdw㿺����,pe�^t�Z$#��	�嘵`J4R    ��)H�kS��e&0*�h�e�j67!~�|@lPʬ�)��8w����YWGM�H��
�_��m`-�Wrx��n�b��?�ɑي�XGc��ѫfrld��ɛV��T��[�;���� �xdz+~�ѯR��S�	K[՟�u)�C��-�Hl��C�`}�?�t�J�*�U\��먝��v�� �]��U��MmfbJ����'�^)?G�)UZz��J1� �<�hGg3��l���4	����2Ί"�-��,�RWo�t��0 � C���V����	d��W��{�[�p�bD�m�L�0�@�/TYi������T�Up7�L;W���n��H?�8�ŏBZ�����\�%9.=�<����9調�cs�n0���Q��E\��hcK[�eFG}^X#��j^�(�K�U@�����7�:����H%_�j�i
:�4Y��Z��a�&MvRS-�q�;.M��^T-�Qx]r˒'yͭZ�Ga����<٩[v�b1
7g���]��-�ݤH��pR-�Qxb��x�����L�WY�b2�Y��e���$w�aU�c�C\?R�Yv#bfzb�4?��Zf=����rރ<�ϳZڼ##�i^�B�+S�q�=���B�R���!.��)UK�M ��r{l��=L���C�����������5KA�.�ec_R��r w���������i��b;ԡ���*�\��Z劕(���W�K�)g�mC��F#�h�4��#��k�ՙ��V���=�~���?~hq���?	gi�P�7�)�a\��>%*�I�8�$��7��!9/hB�@�>O�G�%�����]��������Gʙ+��VEfȌ��@	�����C�f��[��h���\l��l��W��B�՟���\�a3\04���ݫ�Kj��C.���"�>��F#	�j
���m��f�/�p�	C��;�]��#z��X�NP�D�ʆd�,kd�=mU��N��-�]��ߥZk̪2�ɤ��_��Ȣ�P�5�ԝ83�{�+z��pT��̈$yT�/��� �r����Dƫ��E?��7�	w�r�qn$t�/��G�Y�p��ΨC<��1U��7�)&|�>n��qsOI	p����0�	x1*3�Id|檬T���1�������1U5��Fp�iz۞��B9O�|�&?J �J'�z���8%�_X��"7ģ��b<V�|��]�?O!���Թ=�&���t�U���ױ޺���ji�P�@.���*w`Cjͪ*&;q��Ud
5W�NQ�Ű�Q ��R��CB+n�� u�bx^e[��O�bB}���k��O.��V�E��f�00Ƚ�b� ��?����BJ�H�\�H�:B�q����;<Z����.�[6����5�H.�4w>�Ba�72&w������!/�+�9����F�!#��2YU�H"���ݣЫ�}����8D�����F��? �.`��y����z�_@�+�����qb�ϯ	g���,)6�{���K�JU�e.Hld�|Kta"J�^�ѣ�辔a^/:����NCqoJك��V`V=��jf%s>�f=�dN�f�� N{��z���I�@����x���ۇ�Sd�4����� ���g +eZ�1��R���U7�����W�7�R�X��|��������{�'���b���v�__�s1�,���h_���!xoѬ��)%j�1yET�K[��[J��fU�_�Q2�sDu:���� (F��-S�9����dآ��^���4��]�.�R��I�. �q�H�v�2�y�N�|�pE��H1`8y+Ɲ�����>��-���>B��r��a��b�@��=/S�w�=/�g}?�<0�e�yш�ۈx�y�r��{~D���p 7�(d��u�P��r��̐�n������w�;:js�L��n!ܺ���'��˙��IV����t>5�ע8Ѓ�uOk�2o�6|��J��z�>�5��7b,LRG����0���.��ҧc̩}�̩�h�&-�[7�{��;B��`*EZD� j��*kR�X�埒K�9<��G�ʲ *��
S�`$gΖ�^;݉�]���\���D���qэ��!��T�لVވ+��9+`S�%6�N1c�q���	|�����_�7���n�lqC����k��`����� ��Gu�O�_�A�s�(0��L~^Xp����(Y ߥ(���b�TXM���?�Y13�0�sB	�����n�I��Lxր�҃��	�&Fv���W.�©�H���J*@s�%A�f6�g[�����&��/ȑ��̒��4����|V�����ㆿ�LUA�8Tf#)K ��}��R.|��R.}��Q��}H>�Pyᗻg���a���-�3����d�S���t"D^CO�.��1M�ۯ�c�+�z�LQ��$�W2�(MU���,9���\���h�^���np�	���4�^�^<�LV�g ��V_prn�\Wv>�)}	_����Pp}�:����9�.ި_�� �"سJQ���a��E��_�����;�W�bL��l�o��[h^Lg�dLt����,���6��=(g�Hgd�l�μ2�����i"����ҙ?\A�?�w��?da�Og�ȡ�Mt<��f$����K?����pU����_�k4?)�Gۀ���|����IS�b������>+`�~�[H����N,�|^�Ä<����8天���6����ۄ_#��")�ϓ+��g�f
�<�<.0a���G����z:�()p��[T<w�����l�J�	�w'i�t�{9'S��)ը�p�=��ɱb���KOm������ �Ju���Cuɡ�鲹�HJn����Ŕ�ɡ�]�7��C�o�[HS�|�H�z�=���Y��,	B:�����5�K��x������H����bf�ָh�R�����C}.�dƵ�Q��)�u){���:W��Ҹ\���,�>�Nh#A邅�Enbm�2�C}�1�Qn|���p��-�&1���-%vR)M*��~���E�Q��7����ނ+&�kK��9U�����n�'�� �� $HY߯�9���x��Yn��5���<����8di���7ƍ �[��E�BTs��Y��f�p�u��q#����o��� F��f-��'2U���P��X%@"7G����/�9�yjCv5�]�b���N��%�.��3���c�������Dl���0EH96�N.y'� �9؎W59���[�1r�����7��������8��#Y�{Q4K�`^������+$x�Hī//ۿ ���D�ϵ�����9��j�>C�*M����u�g|ot�ZH��!�y�*2��P���y�E��*ޯ���'�G+����N�E�쥶�殴�-�P@�+
h%`�aU��>Ln�/��F�7YsL~@Hs�h2C%!Od��ʙ�1��L}�i} ��K�����U�4��_t,n���(е�9P�H]d 	Ȇ,�D��i9)a�H����\�J��"� <뙍P�d��$�tiA����W�Qi�Ҳ�@���"W3��{���֯JP�/6�����&�\a4�J�����#j�z��G&(�CT ~F�������[�%]70�Er� �-
^���ȈaF7�����{�P�x�����v�Ы��Ţ��qڭZ��;�����<���vRǚaqސ��nȊ�V����s;j���!�d�����T��_6K͢L�eT������?�nn�L s�P�e��Ud釲��*���Q�|n�ۚ�lVX�1��I��0bǯlV�pxx5�/��ec����'�j����{�MK��M鐳��{ȶ�������F_�ז&$Ks]B�(ڐ���]@´��p���t�A�������n�7��Pqii1&�N�^w6ge�U�X �,��MM$�ϭrǤ�e���Hf��*��,���qN5�w5l!YVX�O8�N~�    ?@?���2�ޠ2*�ϬBW�}���Ri��So��l>��@di�2P[4�����q[�c��6G������#7ɱ���n;T	I��;z������28ae���F�E�O�ʹ�Y^�;q|'�z��E��;I.mǭ���5U�5��S��I}�V��D�7;��@��Jk�²�� �*�4Uj����o�$��O�� piF�-XZ ���
}BG�"���y�+��\��Х،Y�Ś���G�Q"z�~��#���*��W>:��R��-H|0����,�쏱�*�<�r�6G ݼ�!j0���P��,��
s�*���G%��2�sdp.�8yÃ��w��q��P��@�o�'֑�����dNb�%dh.3���V�/L�@�v�09�w&�*@$�>q��.���9Ģ��H�W�If��5d�^���ʒk*Dd��i�6^�:'����t�9>H��8�gp^m�۠_(\�q�b:��q��I��,����G��18�J�۝���� ��t;S^u��^06������T���Q��@�+L��ٯ��5G��=�z��d@����q�nϻ��zÁ3����������%<����΁A�]}�Xw�=X�'oŃ�έ�)�
���|?�	�Hv��t� ��L��'B�GP����߷�� ��}����Ђ�ң!�j�B����3�@��1���XEf�> ���1�	�w�{��U�N�=�9��u���r��s����Q�v��H#��� ���_�B����L�QƐ��q��'�����~���{����3�����K����h��E�����t�#�gL|����A��-�e��"Fwa�2Ƌ��G��#��#���g�#�#���&Kf�?�g��N}.��1,:�>���	s��آ��9���l�TGk1����t8��9<Ĺ�k����P�x�]���&��.l�~�0`~K�
�)��^�zi> d��0¦ą;&{��*��Ǟ�����'p ��+u���>1^���pT�ъ�I��q���`�.�J�{0����:I��5����R._B"���� �ica�#��KPo�I׀_�{�mm�e�=��;�3����-�Rn��흖N�,!�*7��!�I�&��
3|�������v�B�N��
�U��i_�[,Y5_��ʑ���/ S���Q���^�)*�;��"������>VdB��n�@ą��Tݏ1�Z�(��s�����ir��@���Q���#�Ǔ�}7������GU;x���@�n����O�ej��!�p�/��D����l��Q�y��W��N��m+�֣��Ё4p w2�����3GV�8. :����-��8���e��Ҭ�7,�YP�Э���T��h��`�A�$Pr-��^�Dn��
C߃w{â���b�$��Vn�ƙ�}�0�O@S�o7��M�����?7��#kp�� ��}���ݬ��f}߄��.BԀꈃI0U|)�� K�N�\�mL%*Os��V�K�t5����U-SV��-�T�#����A]_f�o��r0�X__�^����B�|lQ�]Q��A%8Dΐ�}.�:��=�JDz��J��x�YQ��� ? 0t��=	����` 1,�G���5t؃h�1�#��;2�XѓĪhl]���7}Q���ذxL���r��Z}�w��#�� �w�Eg��xtC��b�,��Y�#h8�5w��T2ը�U�&T�B������"WaM�,R���=2V��5��q�f�B�]���|
˳Q��;^�E�Iƾ�K��J�Q�ZaKP�;f����n\z��1^u	�]������8�#气&HtL� ~��8��yP��������=�� HH�*.L�88ǥtv�M��N�,��"�X˭9��N�O�6���b�Cn�Jղ|E,�N��;�
�	H;Sԓ�ԃ_M�dE��Y֩�#��@?nT^���M&����|�o87� 5���^��B�	��j��3�v&�υ�X�]��%` �����r�;�(�Bu{r^T}�x`5�ᵜ�@Mܐ� �z�4
�� ��n�ؒL~x��'*1���co�ؔ�0Z	p���p�2	�؏̊���y���w�1��V���xAɜ��i����j��&����WH�I��^F#��@�q��p��(B���]�o+{�����A��g�{z�4�ր�ܭ��3�闧ĭ�xZ��v4 ���ԯn��.vIѤ�4�ˤh��w�����o�-���q;�Z@�"��T�D��n��č	u9b`��2u��lM9¤!�]6<e�#A��|pưU#l7���V����/��(��<��מ�B'�tJ��/.š��#0�>�"u��\�����H==	��cw�E�Zr%Pe��G�Ĕ 7�=��H�)����m�#�.߂֐x�2�eTo#��i]ć�IT=��1XC"��oۥU�����`���&�Ll۞�*"m�of	����+�e��Y:ӺZa��B>D��'�Wޗנ��|�QYrF�n�ȆmT���+f�7����8a�����z�+B�%u^y!�"s�_�Bϗ-�g~� .}�X�t�8�k.{��{�o��.���J^�q�и0իEe�h�$�Ӑ��� 6�H�t��E���2�6�ͫH�ʋ�zi�\��Os-r1��z�;�<t�L�KF+;��9qW��b8iJK�U@I��/\?0 ��nu\�����&NCg�����>�$B��$
��z�m��v�ճ��Ӌ��2�$A,JHu����*��3�J��뜵���p��Y.H�.X�L���G3A����/�?��7��5ζ�8#�����R7b����xX����Q� ���*y�GH�B���򡆗��� E
[ȫw+y���4�sgQ��L+�)�l�L�t� ��^�Η8ܧMH����h@����ÔM�9`;bRu�^���^;:����u��ܾ���nD���ڽ�Z�6�%��n��u��e>J�f�,A���؊��!Z�r�	�#dq��Z>Z}�e�@kL�=X����9���t���X?#Ir �-8�.b��,S�8x��-Q�Ɓ��eG���R�ɶ���a��Z�/z9���L���Ã�h�ض��'��I�^�&�-��9P���{��)���&�؜��*'��'-A����x}���4��ŋ~�a9��ˎ�Rǖq�]F��	&�0ڟ����=��.d�����ڶ����-.���8��r�Y<��R!�"��kw;��1���ax�u�ŗ]��6#d��@���*ukJcHL?��j���ÆA�+n���x����^���qbkGv��|W*U��BL�*,*%<���[�XT���/��>��7]�ZU��,�+��}�q����#���Q��D�}^�`�t
��(�ݪׇ�-��\`�c�4�i��*�ݞ.M���4(�*_�;�$�a-=��c������T����N5�@�FXI��7�#Ő����RM,<��iE8]�b(�;D���J�V�y����@�h�	sϠ�61`8" 9#ʴ�N��KVE�j"\�x�^w��z��k�<��� �o���~0oy-j��ص�~�N5et=���@]�ƪ/�K�+�lT�55V7Q�ߣ��Ըe���K���#m��(5t�v������=:�Չ>��G<�y����_���S���?�M��n����oDSEIu����+�z���ѻ�O�i|>����3��M��>;���q�Vݑ2џ�!��M�a,_��h���4�ESO�JU�i��qA��mo�^]����BNk_�ܚCO���騤@��{�_�?�����Fh6��ӌV�i�}����������L���$�
��(O��ꏺ�\Q�+�9 \���	2% "&��?������K�B��*�   O{v�����:� rt�[���aw(?�|Ktd��5�RQ���s�*⌉���Z�׸������_G���t���P�Z��UK�_0?�����`{8ͯH�Ŕ,f�9Zfr�Ŝ/�� �V�_u�^�UCV\��U���/��z���C���۽�lj�~�7__�2H�S_���L,�eC�߯*��of`�*s�,a�9��\�f� <���?�:*v �������j���9�s{H%t��R�T]����zs�qpU˼����g��X��,���W��׾�#b(�;�9�W�s�>��V�eYd����TX]c�Y���W��42?�w�s┑�	m�r|	�ȤHLI���d�_r"l�&"�aBϣ�xe1��{`//�Y=�#�*7#AR�ŬF�pK[�5�t�J�QbN��Y���p��aU��o�w9
��e�nV�Uk��:+5���w5=9��rcK��71��tI��C%d'o)
�B�=��6��P�ʡ�e�v>��2�8�c)Ep�JU[�qM�׮����ij֕�ęx ��S�Z��b(��9l�h�0�2��.O���f��f�A��T� [��/����L�S���6����d�&9yL���'5���ԫ��uj{{i��Z0�3%fi�'w��$�|��,	ڌ���w��:Y��A�!\S犰s��mOy��xQ�����0#���o����_�������tכ��L<ڹ8�f������cF�Dd8a@�-U�c���3���"4���M}N���fuOyTˉ�R9{��t�}Yc�7�7݉C���`�!Gg-9y�����Z�aC���)!?� ���M���lxQ��!�wq�w�2=����|ڔR�����-�btC;aHrv�d�#�o�Y~pkf�c��y���e&}��4�؜n#��Օq�;KY�HP��(�v���試1�)����:��g�*����	ª���Y�0��_~���4C��:QA��r�q�F_;���ġ���jV��,ֲ���eeU�%i��9v�*Gƚ+T���x�"�b�zY�G��a�x�')#ő���h���u�mk�@�	��Z����4��s���Y�V#đ�f'DK�5)I��kbUÇ�wk��nAc�MM�j�7תț*/����Q�s��ӧ#E<?_��y���� �M��l���7m-��`��Yi<պ�C�:��ݨ�]wD��r��|938��SK.j?�m�U^�I��|V���1ŬTZ>�;(m��k��m�&��Dӕu��A=���n �Z�ՐF��~�mv�Q�y��	�w<b՞Fu�s��C���2���::gS8x͈��F�	IM�4*�=G�9W<妀����[�P�-:���,ڠ`�on!� ۢ9B�a���OIN��;���i@�u<Pe��.���E�F��byH`e�qe�y�[*#������l��$��,�*B
Pz�ȶ�	5�����/;ϮЄ���%�[
���4W���z��)�˃�i��:2���u_�2-�d�ӁY�U��$S�@��'R�QJB�l�|
�d��Ǵ���Xo����_$�:N�Q���'�_}��%��5���S�Md�ib/(d�Ӆ&�8Eɟ=/�@��Gڢ>wjS��6[Wfو��N��8t��	�=n��������0y�Y�0��CfE�~ӽ��.��"��"��&�rxu�#g�D��L�j����qn����^��̪���.�*�:*��B}hz����+�� ��>��fZ<�n\�0]�4� ��t�6M���~i+�5Rk�ä���>����ѭMm�3=�|���I�-��x�/i����3�A*�V{DEk�>�/9-�&څ��cۏ`xh�Y�I�K�\&y8��3'�e�;>!hf3���rRbd�w_Q��x��H�̃�k���'�� �7.��φ�Ϝ�SY�qQ���E]뾨`��� A��'̓ڜ`ζ��̅��$k�8�,�a�gz�)�b�c��0�㑅�gA�f�Gb�����;�>��Hr�6Z�D�J�o��.�PgI�|-Y��7�\�}�l\&��m����(��v@ĵ,Z�C����k�X}]�!�����
Yw�+d�-d�h}X��2��B���
��sВD+����gw8�M.C'}�p;C�a*�=|�]d���ݦqrѴY��GްΜb�OJ�J��E4��8�[~9	�0M�"8�Bp����b���v��T1\��Ю֘�1� z���K�ڕ=4w��W<W�=.+��oMΓ��� ���}�����\��̐�Ҥ��hw�L��1�q$�3�'���Jp�8��p�C�`�&�9��M�?	^�A�ze�����0�xo!=��z���2���3����G��H,�3��6@/��;�l�+����%��7<Jn� �DrZEuGmj��ȧ��Z �1$�u�H)k}�p�tqN?���b�@B_�%�?�} 0j)-�Fչ3�@Y��4B)҇��Fh��"�,�;H�y��~��M4�(�����pX�r�ƈi����y�HI���h�ܿ����X��kFGZ1%L2ǵzS�#ULI�������Ճ�S�1���A$��e��g����ϟ����N��T���a�^�#Uƥ�vJҁ���m�i�����ɣçON�O�'l�_�7��7O�s$�ZD�xʪ^x�;M%�"��j�LX6�p�1�����*��Y�spog�:=_Ԓ ������b֋=�'{��֙�ڗ+3����V�C31]�� 0@q�̹�.j���ხ`{ �zY�{�e���S��/|(eY�q�~�,Y�	�3��d]M	�v�9�!������S�����zD����fD��s�-���]������֛-�u��z!#:�fDW4-%Jp���"��i���9�fD���Z'߷�v�.�N�����z�C ��-����a7:�tfJߤ��(�]�c�Ě�wh2uB��̔��qkQV��V�ډ7�6p�H�*�,�j��q�8j�#���U*��f P��<C�,j��1�7j�V#-��Z��y�o�Z�͈з�@��tD��� �5��lDO��D��1����U6��o��Ze���9�����wo�2o�ݘE��Q�����2G��Gwe��L_e���3��QcnE����43������z ٴ'���a�W�?��2���TEP��~{�h�R���� ��0��|�g���f5�T�&s ��<�>��)�, ��OC��m�Y�GJ��nei��|����K �      �      x������ � �            x������ � �      �      x������ � �      �   J   x�3�(�O)M.)V��Sp/�LQ�/R���K-��M�+MKL.)-J-
I�-�I,IՃ)��)�/�(5����� JX�      f   `   x�=�K
�0D��It�xw�кhz��3�0��0���lF�+`�����0�L�ҥM�gFo�S���5��jb��S����p%D� 2�"c      h   X   x�3��/�KN�(ք08����Ӏˈ3'	$���i�,n̙��N�4�3156�426�4�2�L/J�ɀ�bN��X�͐+F��� ��      %   -  x��]�o�8���+�,�6@�6�>�p�K7@�����
h��y�E-%%���f��[��(M�+hliH�~�Dzg���#�o"�K�G��ǃ�i$$�%��1�"3 ��vo�w��w�%��o�L�/'�[���<�Zr&ɓ§1�U�Ɍ1�8�ш�d.��D��aFS��.���cí�����l�:����{��IFb���=u.�|�й(wo�o_D|�q�w��ߙ�	2L�9�=Oz���J��ND����s����̣�Ŗm=ӑ�x:���Ȕ�"=Tk�T�/�a�� �R �����J=�*�>�0�笌��#�� "y#��N�/�?�J��9"�V��Dɱ�5��кn��8�w�$ÆFu-e5*c�_��]^�[���%�L�<�L)E]W��U0��w#�]�Y
'0��S�?DqɈd��T�H�KzG��l�a�<O�4�ax%�{�q���;+��i�������t`�0pQ��ɋ�o��g��a��|7St�#W�&h��`�"�j�=��_�^0 DFHzт���\�!	����qm|hX��L�#r���9	Y*�}ǋ]����)�K��7�6���?R��炆����q��� (qd*%#�c0J�,P�[>"0A:v¯D�Q��������y���x����0�A�	#�o����!	��3���P�|�̸�.]�s>��\.�]���|�B����w�ʟ�����m�
t��a�)-�� �%xw�b��ElI]p-H\�wj�TU�P��J3>D�}�6讟��*Rw�q�b��C�ǂy�.I}�kƮ�g��c��!_����+��ש���H�6n��8� ����E�^k��y�
b-��%G�>�����Rq<�`7r4W؂ZJIS���.�H�����G,��
��Kq�~��� @��!����q+�!Ǚ8���UE����pJ�dh�h}��uc�k��-�Ѩ\N�)�S2�����&�ϛ�\���% }���
�4�<�V���ڰBz&�U^�=\i�^��ԭ6��u����IK^�3ڸ�;O��a�rGYl��;�0ҙTz���8�!sP5����s���X�*ڪ/�U�Tp�(�$�@$�:T��2�K����5m;������Tn�T��dҴ2G���68q �	\�#�3�V� ����I�K��N��٢�qVh<������D	�u�A��7��-� ����B8�K"�C����IyYe﬜v�w���?a�,�F�ǟq:_��T%�.��U>�?�L�x��Q�,l
:��Bx�X 5�$G�T����x9c�Y@�V�"����1�@7Z�_d�l��N �@G��O���(S7�TQ����Bq�Md}�&M&�ɯ2�n G�c3����D[��N���ӓm�g+��tJE��i��Փ2w�r@��p�Qw	��O訠�~yXؖ�lP�͕$SR?Z~����M��ac>�����䳳UW糕��0��Rx}{���Gn(s��4�Y�y���*~�i�*ֶ��̓$O��1�ri��l��K�k�裚�Ǭ6� 0J׭�YBIz�ː/oe�GM���"�as�̀˶X]��f�̥X��=U��%��u|vjYo�h
_��	s�jX�8�m�G:�~�y;��ƃ_iT�י��QV:U�J�j�gbT�N���0�j(ܮ�t^���I6���ˁJ�M=ꀭ���G���N���]�V��9&���.����֒��H�_i�L���M�'��?'���Z�L���<��� {��P߁�0o����,Fd�hǱ��Q��!eF�t�K:c�g<���x��:s�_;��7�u�3�LE ˡ����P��2`��O��q���Z�NF��P�3H��Gj�7�6��m���3�?<�d�ҔDMi$?6��3xJ��	.;�j#�|��9]� �3�����Z+T���i�J5�[����J��[ lE�Nj_q�'-D�����\[�����I�uL�?㩙z�p hds*��i�)~�t�S�g	{&왰ML��cbBk5]+&�E�Ә0�Lτ=�L�3a��pw��cz�@���@��Qy�,��<���Q�(�뭒�C�0N=oe�v����i�sݛ�!\��O����}�c�sj��{��9�g��'�`���eԷ4ܒ��ri�:��ܡYQ���~�ێk�@I��t�e�X;��'ޞx����Qp��#ɶ�V��wrby�J��o���#��L���Y�pN�i��@�=���Xg��*G`���{�п/p{��>K2"���R2DyMe� �w~T"�~G����8� �\��ew:��1�}v�y��'��+�S�\��m�q��
�(��V�c��;سu��=[���:٘_������c��# �__7��A��z�x�� �$�����X��aN�ܩ=�������[�|�d�WP��?���?���VBϟ�I	z�Yz\�=@��}M�+�W��J%�Z'�l)�� w�ԈXe�[�o���J�}f���pj�Q�v�k5�>�C���f���ف���Q$�,���3�k ��`+{A��a-�u(m��� ��N�6����ھOv���h���#CS�0�,l�$�5m��J���������Yt�h|(9LQU�̙ħ�G[vp��ڍ��y�z��˭��+p}~P�����@��L��׎�7�w�3g�Abn�`�<���Ӆ��K�������)�c������Ћb�SuT�r�(T�#m�8��|��Bm�lv0+֝o���_Qp#]E��%ob�������;�N/1ET�gcH���������Ѽ٨L4���xۮ�����+��R�ѭ�|Pm�g0�9���S��%@��mD��@]E���B���H�:�GL�0d����G�	��	#X$sY����m�jK�\�����_O��~<��Ggb6Qm�g,I�*to��հ�����6��uӷ����QDh0*C=jA�9"��� "�x֞����+L��V�^ۅ䀨8�j����l��Q9 ��E�ݴ-}�A��A������R30��V��۷d��c�mm�:��j@��@f�C���f�$��$�*铰[��6�є6�mN�ԇ!f=u�1���i����#<��{A5a�^≥��U��S��?W�h��=���}�V8��v��������_�Άn%D�|���>���"��x��O\�
3:
�Ug��sld6���YsIsI�U_����v��-��QK�t���J��QKN���6���悶�v���e<"���]�#m�]�fl���mH��<��<�;1M �t5I��
��7[�D�gY��t�J��@�̯|��u?C��O�����_�u��g�7z������?hǶ��/mC+|�r��'�'�LG_b@A
�8�R��T�I��UCi�98�f�M��͂%?�����dN�Ι*��zaLu��՛`��Ck{�yZ�yE�3c�r���r�d��rљ��(d޼	��ɛ�G�藰�cs��a��a"?Z�K���m�t���ѽ{��L���      X   �  x����n�0��׫�4��egh�`h��7�ZM�NǸz�4�4��k,%'����y��\��\PΉ��b�ք��D$���-7_]���Q���B�*�I[��W�\
)ߠ���?:1Ř2���3}��\��������:��6D�,:������ʜ1<2M�]s�
|	�>��g���}q�>ؿ:��1�/�n F[���9�9UK��W�zM�|�JQ��q>��� �q���}_J+iO(�4gZ�+����w�0L�y�;B�6`���B�66����k4+&��d�Jī+Q9�R\�t��ã"��og�@iw�<Au��n��{�6	926^h��u��w��a��_�w�-#:Z��J�BfE�>��s��C�[�� ��R(%K����۲$xN���jb4
E���� �~�V���P��ي����YJ���)������R$\�ez�=�G�Z��冺      +      x������ � �      -      x������ � �      '      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      7   �  x��W�r�8<�_�XW$���(�f�d�b���^`�Pv���E;r�"q���U�m�uEڞ��(J����!�%�-��6u������jg��=U���@���&E�c۲)���^��A:Z�lmct���!\v�#A#��b4�f@$�`D��G��`B���"�������ٜ#>���H������n�Q�ٚ��3 ?��� �V���Y�Øߩhe��h�Z��)E��mRf�a�G����ؾ1�B	��h�LtՁ�{$�SC£꪿��͹���q䡦z��?,ճ�G4�Qa髐�rl�i�Q�J�A*�;�=� ���h�)�ھ'�H=���2�c�#��<6`�^�+�b��Ĕ�1��5j��L����),�^��e�KV�g�@L���mA��Ar�r�=�0�=6:�\�λ���{Ĉ��>A��{Ĉ�מX�Ѵ^1��h{�k";�]_��}$� #�ƺ���~�3|�1E�r.5fg@�A��:��T^����Yx��)�بkpԕHNa������9�Tk�Lu��Op� ��Zs.k\�L8�Zv�0j�;��c<"�z{,��w���P�?����ti�Q��'6ぐ�S�/����'W33�d|��6��0s��)�#���?�@����#���j�۞0>������e2��a'�{� ���c�0�Q�DM]����l�<�����^e曥�.K��2��D6� "�$1C2���>���ۖ�R%9����R_M�C[X�ؒi�>��m-D���$��dp;C� ]Ȉ���`�9k*=n��xbC�>�=����a�|Wg���]Ƽ�&�Oҧf7�u����Rd���2}�LG�S�u��0������z��{����΅�7T�p�i����s�#.E6E=�F!��[,�*Y���b����&��߫�,��      8   �   x�%��1D�3.���^��g���}����[�9g��s3�3[����ŷ/�Dw�ب�5�A�j�`�	&�B!�Bbs�v�� 1�Aa�Fa�F�뎈��rA"b��%"&�q}"b�[ߙ�=��ك-�      �      x������ � �      �      x������ � �      /      x������ � �      1      x������ � �      3      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   /   x�3�4�5QHI�,�4�2�4�54�����9��SS��9��b���� ��	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   U   x�3���-�IU((�O)M.���!�@�ĒT=�4��qq������+h�g�d(�%e&�kbh��j6�4����� ��%�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      )      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   6   x�3�J-H�,�4�21s�SsS�J8���9�K�R��RS2K8��b���� b��      �   T   x�3�JMN�,KMQ/��KW(�O)M.�4�2�DQ�/JI-JM�4�2�� 2��A�I9��
�%
@	��\1z\\\ J�      �      x������ � �      �      x������ � �      <   G  x��R�n�0<;_�c++/��V�
U��z�b9��H��vP��:D���=;��q�� 2%����"kPǜ�&��5�v�]Cٵl��/���~�`�pM��t8!�$D��vyY^�> *L���z�,K)Hs���:D"��J�V��,l�А�:����Q����
0�y�t\Mkmd	J�h~�8�)7DiTaFپk�=�'g@S�Lm�,��3i9����-\!�G�ʨ���J�`'�lO��qǤY���N����bWv��b/���hrA������恟泯��� �RmP�m�-@� �$v�}K<���7i      `      x������ � �      �      x��}[��ȍ��+j�'���:%^Em����n���=��ޝ��9(1Ub��y�*����������S"���D"�d36�-K�?ϟ��y�ӲN�m6���7�}�`�X?������>v�����f��E;��a�0��aa��iE�ܢj���������4�vV�x��\_�����؏lj�@TZD��y�L{[NC�^�d���P�HYm�va�zT��� �f���M��>Mv1¶?ukÎ �q��gI��T/���ݜ��@�u��k���Q�;���j�$�;��44�i1��K�l��w@*�~��$�v..9RK���Q�>��%��>\�e��S��ɇ�A��釰$^	�>Q2�����H�Y|iK;->DҠbL츶]���g0�a���+��S�#����u�mS��<lN��:��f���2@�'�_($�wWmBw.j��|��Y�b(z!K\��s�Rϧ�ai��z�B?2u����.go��Y�R'V7�i���+tǴyB�ܥl��ab��,z��
#+\�S��	g���r�����4	e����ihk�e���{Ѝ�sۃ���}3��ۻ�q���{���0��@�l�~��ʦ۵}93ޟ��g��h_�~�'v��������AS�l�	�\C{�_������=����Op�c�˰�.�H��'���OI�{��z�L��ͧ'�����ݓ�<�ϟ�5�r^�md���'��̳�-K#�E���W�M��?�辙��y<]����}D����4�h<�`O�3����WvTd6v�*���zjGT��q����h38��ͧ��c����{Z��;\��|�� �ʖ�����-��=��z����w�$|`��~�G�Mu`��`��5`N��D�I����E�F��>ǹ��'�F�f�\�8>��9��>}��̳���,��ڂ�DKԠ�L"�ڥ��Ǖ��v���Qġ
-�i����=�ȽL�
&?6h+���K�f6�`t�i�����P7?�+���op;�8��`���*���d����fvGe���_�@�C�
����Rnz~���^׾EF�mo�4���][�F�4���H,Z2��2���S���:���Ĩ�~�Z�	3�pym�v���E����ţ�E
:sk��LS3w+������q������=]��+�ږ�E�9j�0yn�����*�`K.�k;_���Ag�n��8����-�#�������&��[�;Kt�C�P�TC��#,����7�s�qB�wF��8�/5:*���=��
l� ������5�{nQ}�3��e+���z�ߚ�|�L[�����F=��j_�<	���E�{z���;��1�Sۨ�,U���&¢���s 5���~��ۇt�}(��	�2	�������@>�r=�e��>�v��@(��a�r�e~��2�ЫQ8�JI��
jcP�a�^(HV(p _�����i���7�JC�(i2�:,�T�2�]=/8Ȳj�H�x�vF]c��h��F�p���ه����f8��4a2�.�wt�lĨ�]�Q����Qo�O#�/���@ ��}i�d}Ӡ�'�h@�K�t��UQ�61p�'MWF��&h���cO?u���1�^�h+�LM�1�Q!�{bh�tS��;=g2�� �%;����U��R�d��h�w�xf-�*&���&L���'x0K������3�V1ú���bbK��z;��2��@�y�T ,c�!���@�F���� �;��S X�:�1�+�	��4;���Ǻ~�d1�Gg 'y�S/L)�Yt34��>��s{^�V�����w��RD�ShPL�0ٯ:q"&�vƮ��P?��|��/-�����!&_��63�#N�1c��f��p���b2ǘ	zM�iU�]T����۶k��
`Bc �9}�����2`D������;c�M�Ƨ�fhL�����W��c��ņ�t�|�_lHL�um�7��`�gYg���]L9�5x���D�D�D���ףZU���|�;G��'ILI���TL?�����ԍ$:�#��������b,l���`t��q_��	�)�3�C>1]	O&Q����������M���4���gzE���B{x�Q}� ��H�e���3x�m�z�G�/�l���	=�L31e�u�<Ϭ�� (&rX�T1��+��_n`!~qG_�4�R��=��O8��Z
��1qۛ-�mYLҖ�������%�g�z�����J��&)\z�n� ��F���V[z�G������1.��Z����[X��0��:�.ť_3ӎ�u�˼�J�����6��W�*���t�̽��<M��~e�XT������<^��� �0/���k�M��\`�_סXNâ�z���`�����$�xg�`,3 �V	2D��D��'M0�z�Q���+a-�r.踩�E�F���\y�#�.�1<�#!�����B�A�i��\n���w	� �	�t��Q|�i�-(|�|�^���]��c?��Ք"���䉤|{�=>>��?�����_���������7��é��w1�j�����#]x�O�?}��' ���\�Ğfe<�֧�y:}��,��ߟ�0>���zl?+����x�y~�~�;��ܾ)�<��]U,���.9d5���?�~�&Ը����7�0R����PϷC�`�y����?�	����@��"�pzd�W_�I�����3�R�UZa�#1�1���Rw ����. ��	8GP����,�"`fͷ�����y4W�y�\�%�?��GOυ�'���.:���j��m���#b`�'6��g6��G�,<�l�O����%�\Q��@a��	���iZ���|t>a|��+����Q��>�	�ר�C�����x��l�-aL3�*ym���	q����j?�|���+�U���͸�C�}�	<p+�r��m����8����!:<'j_%c�ϩW�t���$_?,�G�kD�Y���Y�z|��N�|�	�u��V�}x��H�2�4y��>��W�E�Mk����˅+w�:GXc��'�N����	#I�U���!��;����
8�
�A5�|m2����CR��&���Q��/:Q�/�|�r�8RRR�Ǧ]P5��T]Q����n�N)��HuP�aw�|	��|�գ��~�	�N*s�[談3�hǃ6O�Ct7����!nQ����t��m:�m��Q�C��1�Z�����Za��]@\�ҝ�!"��]����i��EIw��&��>��W �<XŪ���{�N�pc�d�+�"PlwH"��H��uL��ƚ���B�j�����t���u_р���!�����+'"w��0E�Ue�s�a���{�/M|-A�h0������Vh��3<����MJ@_�D�7|��=O�2���A��h&q}29oVVRA82�?dI4���U�����R�*��6�e�
?D��4�+&㞦�f	z;���`w��FN"��ޢ̋��4>cY�h�kL����mD���G���? �7L�n`ҳ3!��W� �w��i�k���L�Hۻh���Tú��⒑�m#��׫@��Д~��W.��~�3�)ΉR5_�L�L��j��X_�L,H�U=�aq�k\H4a��f/��|�����Y�l�}��9RDG�G�|��}�0�߬���:cH`lO_A�B���Iʳ)���i ���n'��
�ˠ��H��`�������@h��˦��4_�;_��sPx�D�?���9oW�)\7���L���07��k}��$�]�	�[�5�W�2��c��|�Mx��b�b7���Q�9�����dNݼL��.��Qz�W%�g���������"*��$��hL�x��m&˅���N�ʦN�d�Pݵ�pg͙�(A�u[�e��4�4���C2^`�%���Z#*-�0|f��u7�1����y�F    :0���n�h��%\���-�ut���衧��u�=V���I�����x����I��[_������N�(���墦��#�&��1H�RS檄���G'>����+_Ϋ��4�H0-mC��?/���@=�7�7���v������X~h���Pj���?������d�����"|���F�H��	Û�);1]��]����Hh�(�$FS����ڡHa�9�B���C��Cө6R��}@�:�*���4��w�b������m���X;�*����O$�6���>��B�E�:��: a]{fx�hs��i���n�Hժ){�g#�* ~�Kop@���8,�
���&X1ڊLDPub��X?K�Ǐb�$P@;\�Ā&�&\#�"�*D��}��`*�eU@5�,KP'��V͠�xy�{j�zaA~����J��N�엖aqY`�|@5��eό�t��z�������(c� Ў���	�@�D^�	B�@��?��3?��m�!�#:���!��z�%Os�	}Ѩ��`�h$����	(�CL���E�e9�e��yY��;�
��g@��#9�4��X7�W֋�l�
�,�pech ��`^����g�5�ќ��)3�/�a���	��. ta��:R@�O@\�D~�̇?�f�����y���R�_��v�OyN'�w-9�n��;���:�������N�I@$��8	��3U}����g+����/������:Чh�A�ڮ��A�.,����8����I
�@+��ex�=�E���@�I�܀��SҀhmH�1!�ҎX4��\�����-D�!9��,�	,��]�Ӡl�4�6 Z��|B�>�, N{�p>1L��A9��/-X/�)Y�d��@�B>?��|�!?�B�kӀ�����2 =�0Ȯ>ap�ʞ�Pm��?3]�h|�s�H��+[.C�CItp7�`�jY�L�-�S�4߳Jy��{*O=ڠMR�����đ������@�%J4F�����KT~��H��d�"$ʠ*B�۠�c���}�lJ�^��(־�,��|�ٶA��2,������/ ,�CAT��g�L��hT��\Y���|A)#�T@ 嵋�R��\��ѤϹ�\�az��k ��?!���x�����Q|2W�xp*^�p@2�ￛhi� ̽$��w@��x��ר����Zڻ��]���d�����͜@���"��]�1���QcPg)Q��1FN�� S�kC�������3��ˢ�+cn)����?�pE;��N[����<�J�� �Y�<ݐ�]�Z;��5���Re����_�K(�
MC�+���\�����<t�R����YW�xq�gh���77��y0tD�
ՠm���C�r�i^��ń�z�JQ�o��b�+��_���H�Y�0b,ƹ��UGϺ`����We4��8�x�O��6�W��Xͻ�G[Kx�4�٨�vw�.6���0|mYW�z�Iƍ���<�����n�	���d�#�4�P�$���kAVY��mX��ȼ����s�<Γ�=��z\��L�e�����x��E��.���BAzƐF��?Q�P����P�̐���t��w�}x�p8l&<�ߌC�/�Eq��LG��m%�$L)"潅��S��]A���C����@g��KF��<�?A��`7�a�I�o���d�q`�γd������!?R�����K���LR;��BE� ��}��)�Pk�+ID/H����8�1ȶa��$��p��3@�������M"j���|� ]�3զ�o
����a aªJ7�m�zW�T� �`��'�M'~�L��9E������`���DRR�������B�+�a`��ѻOeFgRR�,v ۙ&A:^<��D�ލ]��p�g�+^ꩭ��bp�Ĭ�Py��Aca�d����b"���t�[vd�%���l�ۦa)+�#W���Fۢ���{�1��w�2��.�*�Bns�(����p(�m��A4��l2��}d�v����gI��0K��$L�#�1A,��÷͑-���N�k�ea�w���)���������c塀���#�E��垒I�%]o��Oȳ��X5!]�!��L���/�<�A�O�7�g��	�sYi�q��{�P��LXܒ�]6�Dw��BfA�<�6π�I�s��8����#z�=NA�eDZ�7��e�_]��;=T�Rl�^�B��L��&��r(��1�Gr>�oDV%?|�XU4Xj�v�a�0�{L�8�z�� ����2oy��h����E� $�:C����]n�6G�i�(�A�]*�<]����(�S����+}��<� �r�o8w������W?d1��ʦ����h4����xS1������XLU_ǖ����(_]9,<�Y��t��"Y��rX2�Ӟ�n=��F1(?�ي����\��\��b��� CS�uU2�Ԛ��2^s��t��Q��U2��Ƙ��.��6��6鎾Ӑ��Y0n�� ��?���D���!y���,�*е��7B=��k$&gr^�HH�7>{W}�`W28�Z�@)(��D" �U���2]�Zy�j�T1��9𢰡� {W_�f�/���?ЂG��M��UQ��J����̒�>�����@tBsO��S^y&�'���_q����+Wq�Z�7��v���2�y��+�7u۰�9���ވ��%�}e�M�?�l_Ueq8𭖼�}�Jh���F�����m�"�9Ƒc�m?��h����7�>��%��70�9���w��c�|j[��	#�a)z��*��d�� ��/;�����rQ_�1~|�J�X��du�N��,�;�S���)� �o]"����?�o��r�wZ����39=#�=�O�W����ot�3��/��T�f>C��3n�p�ѯ�O���)\�>�5��0�Dm���G��Ց�h.������ṣ/S�c���+��HT������G*I\J�3��(׼����Rn���%����y(^jG����~��	L���[\��n��]@k\�Q6Ѓ��{4�c39R�;�L��-\����0
�����.�?��<�U�q'/��n�TJ�fj1���G�-���p�B��H6�m�f8�j�)���oh�l�[M�3*�0KhԜV�Ȇ�3�O�ֲl�կ����E�#� 4��V��Y���y �o�I@U�Q��o������o���5���o��&�?�k������	lՍ�R9�^����N�pĈ��{��n�/O� k�:Ƚ2�F��d�x��B��u'.i�'
�jQ*���q^ܟ�E��m�屙��.�V��O��%y_�k�(O9��"�����]q�K�?��i��1���S7�tA���߄��	,/R�-j�\��q� �}���ܾ�)P?b���nGbUY���<\r,Jz��t}
:���a���H�%�ɯ�L��/�Q�]J��Fk9]�g���/`��&�Va1�kj[��

�z V@̀�#ґ�YR<�-FU4dFI��������U����wA 6���<�Q�ݳ3c�6��G��fD{M.��� !�9���O��?�Sə�}2~ ���Y?#�\�O��%;����C������j�bx-�Έ�?\��[�v�\j�O�(�t�!Y<��%O���lK5X�"����H��|s�+1h��(���9W{��(J�F���*ֈݐ��/L|�����ކ�o���xKAt�+#�P��ZQl�I��uiN��/w6���H-٢L|�&ΫgZ����E{�������܆۽���^,�/�p=��fܦ(K�TpƸ����i���Mr�,�)+���|��g��Y\<�d��ϯ�������>u�^��<���g����¿�������=�q�>�Q��[\XoQ�Z�����5a�ٿ�H�s�T�PH�2������^��<:H� d  �EJR�M�[�? ����rōEGܧ�INԮб�O(*W��	��W�HC6�r%Ǔ�y�T�ؓy����җs5@��+0J�PA�`�\iY��̀�d�+4�ſ����;Љ���b�+��}�쟻5R\��r��w��\�a��n
>��+;���W���9]�+Q�BǛ�Jv��4���t�b�w_K�$e1[OkH}�X��]�z��HQ�\���-wAc���A.w���I'�;W��W��p��7�Ԅ���{�p��g��#o^�"PO��{��(w�{�h!�rW�8��6�D���<���cUN&��+<����{��|�$�@.����b��Arq�ϱ1�����4F��]�L<u��v"��r�x:b��.~��Rn��w����=��X&��k�<37J&.��W>�о?v-�"���bu�x$�WRb'� 툼�}� �L��$�}��U�g�|���h���%� \���hn�||��w��9�Y^*6�D|dXh&凙�����?�ƒm����qV�qpu5�e���������ji�G��!���ޓ�U�:��U�}����wZe��������Á!^�B��n��������9n!NWp�v��q%��ܚ���|��Y'���Y�jӈ���/�ۿ������*�P�[�Tm��i�.h��:�bC�D�+����[�����`�{X�C��#P#�� ��8��/�d
_�`����J�1��9��`�xPEPL��tQ�ˑωQ���xB���c��+��x�3|����*��z'�Q�hJ�zT����K��#�~àk6�ϴN+|�+?��T�/qE%6t1��e��/n�G�J�/lk�tp[�ɮ,KuFG��<�0���>C�e���3��}c�%�M�}���7}e�P�}I��wn����T�Y��=�8��w�;�.߉F�	=�zn��L&��b�lI�y��}~���-6I�BW��-mT�[	�s�2��"��%�/6�p�yy�� Q��|����ӱퟶO�A��5���"��������;���?�����On����w<U���h���:����Xu�U�5h��l��Tf�I3̢	�>,�ğ����I��/	�'�x�<��e����u�C�#ۧ�'�g���.��k�COm�ơ�0֋���?|*�2ojK�e6���!�z2ՙ:�6t�T���'���'^�u����pӞ���ߝ� !�ff�HC��s̛�Z�壮�i�R�B>M�+�8a
�� "v��+���5]�p�L#��(Y�M�;�"
uG�Bz�jO|g���"�QVW`�Ǻ G�q�oh�r�pt��h ��8 Sn�	��Ε������~C�x����z���7Թ�x1�H=��vҙq�H"�*��7�{V"j6�u�b@�u�ڷ�l�l#����>h4%M���q[���ir�$6����@���qx�'��O�>�:m��s�.�j�Idǋ�b��w�*k�6��g�>��c�nY)�n�y�\_����X�\��E��e|��B(��"`�iaq5ͪg���;�X��D��P����ݪ�2)f�Z����x6���]�s�?��7��/8��      �      x������ � �      �      x������ � �      �   e   x�3�t/�/�K���,(��KWH�T�I�KQ()J�+.�/*�4�2��K�(QpI�Tp�,��HU��KUH�3���z9���9��z����c*4����� B�'�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      j      x���IwǕ6���ڵ�@�U�5-1� �Q(|��mUɪ$�*�JP�JC�r-��-k�
"5�mIDY&)jQ��W:`w���w#��)���{������w�E�{c�7nD܈��QT�u�������3��%5TǏ��]�茶��_�����T�x�p��5��~���u��t�Q���ן#���7��_r��UL9__��gߗ��9VU�u�����N9}��ϐ�<+�j���F{_r�^=VW�u%�a.��ڱ������>]������Ǌ���/ב5i+��/�����C�x��wڏ�n�0�~�sm�0{�pP��#o��'�&�ڋe��%�ұ���ݡ�s���$.+V�t�m�jz.����x���R���èn �T
�	F����)�P'���+���@�H��qu2�z��U'�S��N���u��*������\����e���<�,OG-z�v��ų)XQ���������%/�1ԣ�K��B��%��ju)���CW5SM����ӱ�W��	Z>.�B�Ts!E�D�na:�wUs:�K?���-껝�N�j�<�28j��������j-K^Qkq+�^k��`U�Aè3
-,���|��E�Ϙ}����Z���c�Z��S�*�����FuTS��1�8���Z�H�ST�a�Fr�uW�9%Xe�����o�)׎9�{�A0�j�\��G͏.G�����`�SQ��`��}O�[��
k��?��G�&��|���a�p�`)	*�a׋��%���b����)
�%���T��� j�1(�o!_+�3��?,������~������������{�.�i���R�����@������G�}�o s������߽���x9d50���/J��|���y�$�ੌ��9�dXЛ����f<]ɻ��/|���Ra��l���F��B�������/%�{��O�U��������?^�jI3\�</�2ӂ>�ب�%��"�ua�i���@�<�ۛ�U"����}�H�i�J�kM�j$��7��Y+T�
ד�~g�A�H�V�P���ƪ�!�ȯKn�j��ߋv�5�Ż����^<V+�P���s�z~�(䰪������&�@�-�y3c3J�&���٨d]����/���}(y�|xn5aӽL7.s;�S+\����/����W�ZP�3���.��i��9f�5�Y"�.��AI����M��=,��i|U��*���@��H�u���l3f��'iKe�g�Lt��4��3����r}ld��Ӟ����~y���i����Mm���&Z�q�5��uҞ��U���\��YO�Ý]U��՛�R����E�X
M�!�I����s,ьQ/�bs�iT�����X�doLi������o���@���K�=���Ǐ���X���c�˟+�����M��K*a�혴��e��|��OY�J���Z
���e���X��Ueu{�� _�Zj�f�>jf)���\���Ht�ދǵ��ѯ�p���՜���ZaZ�_���Q�j{��T�;f�7&�j�j/Y|T��E_�Ң�����~$?|R,+�J�##r�e5m��b�z�֘�/x���ɥ5Uҋ�"�S��W�p����֧V3jC͹~�źen�T
cѱ��>�xj�ԉ-�;�pj1����z�P�_����^��I��Q��`8�����]^_��EJo0a���/�#t��g��55`E�mw"�h�b������j&܈貧�%��Fn�V���y���ݨ�ۅWj�e5�_++?�`G-��^�,�B�h���UՊ�+���\S+p�sP]��6DϠ�p��og��n^Xj�������=;/.0����m��j~�L�-��0�qm�
���o'�i���;�������,Z+WP냨n���Ъ(��nd+��/�7��s��ú����aŰ�Á��QO�0Z���6���rķ+bY0�}ϟX�]���;�k;C���u,+�� j��V��iU6f
�~�f
{�\�Т��[�=5���%��a���\VSn����0GM{n���'2��fؖX�a���j�dF�����GB�z:T'���fC�7P��XW��D�;��E��p�2��(k)��E)�QR�ŬxЋ��Y����ٌTB��L+YIp�����6\�2����}2�fhE:Z:n�j%���ߍG��S�w6�^ᴋF����X�lġ�bpa�q$�h�qP��LP8��a�=�����L�pdW��Ь��d�{P�M���n�(��q�ff1�R�^��<n��hE��-n��j�*��������~�̃��o�_}�ba�������I�yUT%�S�t����?xf������K{]�����~��Q	�Y��:w�?����8*��&�?�����G�V2�"Y��� ���ؿ~T�j��d�j^F�𢡫&����F���0qo�=t:#c�w��j0�E+��}�83��6ՒE��v.��mn����(�bZ]���z��f�t���
�@�� ϶[h��!*��L(%x�Kq�݆��x��r����E��1����W�Sz�]+e)sWh�k�Ǧ3v������n�g��z"���'�jT�$�7V���U�/sr�ή�" i7l��Y���ש~?c:e150��`brZ]��PM-dt����)�R�"1cD}5u��J�d�7������tҪ��Y�?�p�S�v:G�nc���('�������f#5��j�ΰ�Nǘ�N?na5xe��ۂ�ֹ����z�Z�K�q�hЀ�Y:��.o|�Ƌ�I]��p)Оs�Dڅ�]�<k��� vcԪ�l`�.��?eFV+�\�[~?TkV��\��bk6sM=��qK3p��ݸ��g,����GgP ��u�A���;ꬕ-<���;�)��d����W���o~���˩j��7����?}O��/!�@v���o �_�|��%dn�W��k���ޗ�_Bv@���?��_���/����|����oI�
��_�~��㧙K�K�U�����������/!�@n������������sS�X	���|��~�w3�%��E���E���V�	O���I��/M�>�>��_��B����t(�_����[D�_��O)U�1���P)~@�����F�旦C�pd�L/��B��"T���߿�4h�KӡC8�D_H�vz���������t��.P��᥏��E��E��A���wI��/M�^������)+����+��o���woI��_�ίF��Oo>���bY�/M�^�@�ϭ_�R�_��F��j�}�o�û���/���~i:tW�/�z���<+6���t�~����%� ��_��G�xx�Ňo������1���_���W~��۟>��݇W�1IЩ����������_������{��_}I��Q�-���7������:��aly�����+-���t���C9=�Ue�su���^19�l˝a0�3���`*Fm��b�w�<�+�iL6v�������0��O�,�����
�\u��O{�\�55�[�TWӣ�Km6�4�.����oJ�?�~��	n���������f���<�G6��1�]L6
w�� E�c�k�b�����5���-b��j%�=w�NӀ�c�^��)*�B�la�ߎFW���J��9|��m�Rɗ��l��?^.s2���8��+�X��1�콅�-�Ə�]7W�:���c�����Ĥ���{	���N��qi¾�rX��4���j΋��/Y�ex��_�}���hL'�cwi%#9��w8]!�y:#aQ
ÊD�Ui����އ���ܫ��F���~X��+:W�;�aP�����.����ce��Ӿ�?ǯ�	\�/�A�f ��׀K{��~��7�$Q�2������b�Bk��^�s;�;�N"�q��PX��i�0���JͅAk�~�BXx�\@��l�<P����㍔
�Ỳ91>�������]�:a�{:���Cx��
�{���Xf�e��5]V~����?�X�E    ��AFu rD;�X���
��˝��n88�VSs�����л��`���v�Lm��k�_��������f䞷�u��A���z�v��=� ���0jI�~���:�D5a�|(�Q��h���t��=���m�v��F�"�|a}g ��E��j"i/����j\W���a�6�Y�U�C���]�9����=�H���aQ\2ah��l.����	d��١�����bo��������^�8L���;�6�I��0�&�i|�O���e��DN�L�aEt�j`ؑE�X�:6�e%��~:�S��SS)��T�q�x��S�?��e(�@o��\�3��E�u�s�X����c��3&����.3X:��*��������q��5娪UR����w��JF�a<�9S�ͅ�0�k.eh#A'&�]7��MBD�c�x�~g�:�/�ᔡ��*׏��]�Ќ����*k�����s��цFa!p�N�݉u?
�B(<�TQ�G7;޶+�&?���r�q4���r�ˣ�}O�d���!-�b�Ü �net3�١P�1�Wx�H��&7Lp�Vݭ@؁i� v�$���kFN���0WK6p�4���#���hr����u-�)�
���[���g�8$���rSWU�*�\���=�L��QU�����Nz�� 
��79�ΕFP���`'%��S�.J�A��S�B
��;gP���q7�nVt�>��|o8L@(�t����TJ��7�u��415_o��MOk`�>N�&j��Mh<�v����(� �=�Q��A���N�+�_���sY��71ŗ�Ip�Ԩ��B��� �����D���cn�g�a�Z������U�.-õ[�څ����c��&���,-����n'�*�J怚])�0��tY���q��iL�ȑ����d��<~��h	(<���{��JX8�d��Q֩��Ic��!���p7Q!�{<��A�����**��G,N� �9�룃��4� �m���x�5��8`�p�O˄!9<�J�8��&��S��`���)b�k��20��6Y��xt-�y䑋+,"2�ᕣwf���xh���7($�c�&��8��9�������n+L	0,�VYC®8b Y=`Z����J*9-�ׂgi��_k!���f4-8X���le�6,C�9��0�S���Z�C�v��
>�bɒ�����2�ː��r�u�!D��49����/C*~]��i����]�g�C8~ga�po�R!����&-CF�>�K7|��{�.�O�r���Ȫ��h�������y�\��(Ħ?Z�Wh���X&�@j��n#�B
Bfx@X��oNA���VqN?���Ѩ@kٴ��+'Yw[�N����u{a�1�'s� Y��l�t~č��*�l�+��d��Xf�M.D$16�-oX�D�5=�9��O�_�.O��?��Qs�ڲ�?=zPkzt�ޕ�{^�I�G��h�F8�ic��5=E:pL���&���O*�5=s:��]��?�G�M��\m@�������p����qk���P�W5;��<4�USh,��8�lM'Bc��҉�q��'�ר0H����������,��9���Ó�q���j��u�֖�#�+y��jf�v���m��M�fI���)!W�i�p�����1�Z�X4M�~�aβ���L�pئOg�HCj�����8��˃��]��2��EZ�U4��q^<��1W��h�4G}8���_���30���_\�h��{`Z/������Y8)�W��WΎ��Y�&�A��׻,N�Su�{����dq�C����k΍��a}�oyb�z�ŁǨ�~��~(֬w_z�B\t�u��)�ƫ7az�Q{�a��y�=�$`����D���������,��wq�MN�����tq�<���ľ̎�_rr���$+e�\��SX	w)f\X�>�f�F	4"���.��6|�����Ro�;�0�.\��.���	��lx��	��B��f���t�/y���6yaf��'mZ3m
���c�q[�&MC���u6C�EU�2$h n���ӡ7���刟�5Jh�4:����5��i*$�:y<<U2z���)2x=�d􂹽Gt&�7p	XXT3��S�\2J��^�����d��xI�,Xc�B�"F��+0:��?�>d*�L�Xܬ��������BX���"Cv@�:���h����0�N9�U�57��q����09���+�c�=���d�;��@#3f�
lO�D@O�5=�W`x�"]�ȍ�����e#1f���+���3(d��1Sf.���1�W�Y\
t�Ę�+07S9FnL�؜&Nr$��lu���yV�tfeP�ͳ�!30��9�p�Z�Ar3D�K�]��1Rc��u�i�1�����@	�����a]�]ȿb�@p�������
P��d�5���Ƶ�ż�����HnbkS[�NQIF;�N�6�ڴ��r�(�зM�0�Wy����0�mC����
��ޢk��`��έ�ҪF�*��]-Sت�
aů�!{Z��#�!BX���wH���X5W!1ܝ���
Ɓ�ő���
�alW:�W���l�bY��~r����Plp���?�r�<����0o��^j�l��U���<��u���[3:�AG<����Ռ�jPi�lfdeP�g41��@��j��v	�d4S�f`�+�����̰�ц�1�f�P�`��J��Eԡ���p~9֒YZ�6�f��/~�0ڨ�Wpѐ����,��]�$�)N`v��ԡ�
��D�^��pI�}�H^��0�u��Fss�VÐ���t������%��J����:��n$n@b���ɴ�Kkrb��Q~`Oq�j#ǆ����@R7��H�c��Q����Bx�n�&�aa�ä��TQ���vku4���qM�����a4ҀFj��a�Jb��և����8�6c,�Rj\��,&1��q�ַ:��}�4����y_�]5�X�5Po�N,2�@8w�8�S〹C7��_9�d�H#3���2�~-304�i�PlT�*"߹xc�٨�yBk5����:�IX��%%6P<�r��x����ѕv��ɔ�FǡK���D����ժT�7W+t�~�ˠ2��G~���8F�� ���S�0�<Ȩ�v�6r':P?*�ϝ;�ׁ����<�A�^�L��KnÒ��y����h� ,G�x^� ��[ Xǅ�wmR�n�o
6(�6�XA�m�Bt0���������;]�w�\n/{�VK������r��w�mH�cYU�?NÕ�ϝ��"������]�9-߭;�	^�K}��s�6{n��̫׺aǆ�����Bb���e�Na&�������IA��^��tǋ�9����>������L���*\ƙ�B��Q3q������pax��e��8�7����
�C����*\H!�����u}7W����z�s�wa<!\IM��N!<Wx"<`�U������6��Q>��I^��:q��5Ĺ\�u���@aX?`�n�]�D~��\P k��k%��	M�����7�셝�׶�\����/���d28T���%�CZ��o�g���Ƕ���v��£��q�g�
�̄zyڦ_��i�V��W�k��F�*<�y��b���p,��z �j��o�S��08`��l�w�]+��Ѓv~N71��D����9���p!�vp���;.����(�.��s%7Ԓ�	A>����Fh+��wa4,r!p.6m�d>+�A+eC[�����$_��B�J�갎R���Cz}�J���}��*<�?:mT�Q.G������\~�0��?��aX7����w�1޶��e�vr|��G"���]N�-L��y2��MEp(W�ᘔp'�]� 
7��:u�A"4 �F:�`�֊�v�TK>�����!ּ5�B���h���������V�1�    ��֌�7�M
ϰys�gO�p�`ۮgw)�~k��x�=j��[��]xz�H��g6�w�N����;��'U�������?a88���=��~o�I5M:0=��a���������"��;�&&�g��p+�x&��;$p����W�u��+_���E��5����-���_|u�0p1��8JX^���*a��?�����, ����F.gDS�b��e�����U�p9a���N���I�?4�
rC}�KT�u�u9a@�Ԏ��MB���^�2����[�,u�j���o��Mn�\"r��,��Ŋ���lTv�P3���T�i�EPB�
KA��`�������e�i4|e�A��H#���ti<P��h���<�C��^'D�_�8�L�.V�� �'��|��W3��_8���eh��f��A�pf�%�i�oe�n�B��r�I�r�V����W�㗒��)'q�1�_��_ʸ�6K�:\a�.��"x_ϸL�J�9�b@/���'Z�d ���;�}�����,7��ڇ��u���K�C���,�(���֑�i8�w���~^�ʹ��Z��,���h�WZ�h��PMj���5��k����K�)�]í֭ ��[y#�a��`*J,��������=3��r �~�X�K���
d��_x����Y��U�?���Eïi���%�U�l����С]��^�0%ȟ����.�B�>�$<���@��Յ�5��f��h���*���$���a���a�Y�i��,|x@�瞶�K��:�*yX���Hڮ�`x�S������ִ�@�:���9h�4< �
W�1�4�+��9�,�~��0<�H!��~� �-��[�3}@�X 2�(?:�J`6rۼ�yj��,w�y<�����y��'6� �`ٽ骩��_h6���a�,[�c��b3԰�fP��`�c!7܆��%���u�ЕN�x#9x�����HX.̇[����%��ȿ�Ks�E������k�?k�p%���y��6�GV����Œt�&9jypޓ���.��m-a]��n����n����\	U^�텢nFE�,�6�J��������ͭ�2�6����7�fl�������B6����;�Ϊr������6��ڼ	2�*�
ۑn�u����o&&4���^O�l��<	��֮#�'�.��gmMp�;n�[�������58�q��L���͸������I	��H�c\�ejte��L�N��'Sh��=1��n��8����:k�0 `�2=��h��V�MC����I���J�N&���c}2�s���b�TMXo�W�I:�z,Q����ѭ�)��n���ӱB����%Y��� ��`wb���@��n��Muz)�b�N�{��(�M���k�=5�f�H_X��nhQ��4���
��rC?5Y���^�50��Ks���~Y��:}�w��Õ��2�A�Y��z�<����Y��[��JO��U�>�4� ����%�u��*��k���H<#�h���d���^!�U��;�q'(���d6��%RbQr���բ�HX��v{iA�+����@�&8d�bD�5��u�HXrh�T��eƼ˫S�f�Ϗ͋%�Enz� ���V��岍�ʰ�⡇F�&?>�S��\9V�
c�ۊ7��A���� 3�᫂�h��n�j4~�W��ޖ���ěk�c�|U��u�X�Z�����
.qK�<GN�c����V��[V��X~(����߶�AR^��?��e@Jk)x�u^�J��v�7[/��Ԏ->4?��t�7���);&��z��ǪUf��ZF�g���CA�K�U���B0�I�iu�ux�)i[�UW:^_1�r�RSP��F�	��闈��ux8Y��%'�J��;.���(UҬ��MB3��	i^o�j
���~�����UA��T�h�^��&D'��Rm,��?HI�F9�Ƃ��t�����B��1FHB�RʩR0q�*�B3�rF��ݔŔS�,��PC�^ʩ^�]����r��Ő���co-��Y>w�2顛r���p�
{�0kt(��*����:�N��5k���������� {���{L=[ v_����̥���TEg�uˀّ^���C���ڠ��M�'���&g�w[]7�V-���ܞ�lZ �!���lN���u�C��ޕ�	N�l��I�'��ҿgO[�\8���9+�
����՜��pJ��b����=?R��-8 ��f����,'����p��
b2b(*��SH��N��E��׊bP�&[�ʩ��:[��,���<��UP�wZv�a�$�u
3\]G�]���߷�A>��6x�+q����TZU��yw0d�X����qs��i�����ێ՚]��Z� ��>�lF�ǹQV�Vu�o>>䰬��q�B�t
)U��Z�oʮ,}��g,Y�n¼y�_��[!�7&��@MZ��ID�~���i������%�7*̹<у՟�U��'SЌ���XW3^�E
�Qj�g��Fi_�-�`��]��<��q{�	�RT߼���o�}��7�����7|���7�~s��g�����z�[�z�-yƲ������_l�C��o���9&�)P��d}��6^U,�������7~��o>EN�l��������O?e��'�|Ĳ
�����>��7xN8�� �onh1��OQ\^P8�y�k�|����,�1�OQ<
�3Aa#��`��X���~s�۟jm�8v�۟�2�Ca7 ��I���|��?����k�ۧ��n�h]}�J�(y�p��q�tE��@������9�dᰳ�}Φ�A���?}�F�<gd�oQ�GH����Q�rH*J�3�W�k���>P/��'�F��$�5����~8�49Ю�铱4�z�}�5ǋ
�\�I/wn�ٹxtu�_�������Uĸ�Ћ桯;�G}	H�����|e������E6A>�2#����P��	���{;�����?X`��o�g;ى|^I��h�h���<������E�y�o*q\MѲ�2�l�<�����M�(�xU�_X�[^?_$%��/_M�YX�w��ѵ&�-�g�"_?��`����:1)��X�0�)+�2jA���,��<��g�Rhc���˲h�`KIpX�|����NY�� 2a
��tG��2�Z0w%��mM5-��3]����W)�Z����Ӗ�tI��E��R�%�R,W1'2ޥ��P��F؇�N�,	��M[�ȍ��D�>a�eyn��!�-�:�����KJ����]�!����N[jr�<d!�T),�z��iKt7�p����Os:�{��jD��'�H��Jr�(T'-P�"E\8��d��(R�}ꤥ!��'�N�8i�ʓa�~;1�x��E���Q8�9��'�z�o/�vn/Ceg��E����KJ�R�:keg�TK�����+yj� ��-�V%�Os�c�M�#\���KT���,�7�`�`�<�����ԂUq���Kx������`�Rc��ھZ�$��*j��20`�2j>9Lr��W���By�V׸)�qlb��M�h	_���	6Cy���v���n'��<��.�h	�p��%V�'��4�E[��"��	&��u���L�x����0����^/JhLTy��^�R��-Y��Ƿ̡B�e�8��-=�eKx�|�<LJA�-��3�K��]��P}-�=hŮ$w������ �+�+��nŋbv���`���68�X�5x�hТV�&�Ƕ��6���4୭0Jъ�06Cl�������5W,;j��PgmlpʰVA\�Z�7���U��L������au�Ƌj���9��:m�K	�DO=����e�*#��)u��|�{�K6\Q�!c�.� V��672V�m�w-ж�}3W]޶@���lڸ�o����F��i׏;�~䶨��M�(�ۡ��g�ݐ��kvm�b��� �l���Z�`'+�������]�B�ݢ���b�X�F���J�3x��\�fKZ��.    ���5[1��J�����f~O�!d0�!�e4^�*ѕ�6�-'��N,3���l&�����Ac�6!xU �m�m}��l#,��qF�]��Sg 31�u���ԗ�j}��˼<Z��eXn[I ���n���Z"�I7� ���Eb~��,�e���x ע;RP���Y2�E�ۍ�|~�w�3t�A��l�j�����/p����|��[�^m�Ge���?O'+���\���½��������!����Ɓ��%t�8r;G�S������p��CyF�p�ī��p��跹[���U|w��p�0^l{n�d�����#�,`�u���I:7O��vb��N4�hbr��e��0��'�t�02����L�.��e9P<V O�b���Y1Vz=�ɗHS9�&'�vs�b(+X)%`CG��q�lJU�q��Z�ؑ�WaJ�DP8���y��� �����Ϲ��޾^>fhU�w�OκZx�x�?7Ǝ�х���N疗���2%�>��Myc�¹����כ�\�u{=�ph��ɠ�6�&>�WܸUw����3��9?�i.q�֐/��=��J��W���u���p�c�ڐ�%��q��_�_��>x�=Ux����)L������=U���?>��O<����
ԷT�i����?� �0����=;O����������r{�έ���;��'�{�ί���{(9~ ���n�U��y�A�/$ ��w��߳�L2��^^�� s$�I�6��/�?��H�ؿ�������%+3�B��2�@����<��������j��j;�?�wh����c��u��J�}�??DE��|�_��v�r��5��G��)����xV���q^�9+
u���W��>迴ST�C�<?�nSwc�)�5IPK<x�?>ӵ/�U���=;�Wl]��Q���� ��T�k��1��2~>�e�:���͉��J�b��#�ds�i_�z�K,�W�s�z����^9,_�޴�ўo�:����mZ��Xϲ����c�m�'F��6�<��G6/��]��z��]�R��]����s<�l���`��1�O��������\~X:��B;cm�^����G	 �xOz/'�V�����90��*>�$3
�r��	��?F��Ӕ�SM9��qTd��c��s�>W������n7��� %ޜ󃻎Ɯ�Xnx0�&���|��P�<�}���+OJ�o�^����\��ް��pE���Ja\������V7d�~� �ϼ ��ˬ%w��l��P���`��Y��Zv�t[9%a��{yu��Փhte������Wa5̓*�Kȅ�pF��p��������V_�Y ��wL9e�W=.|�L���-7/�"F������q��i���M�^k,sG���%O�A���t��X�����0�c~��y�yn	d��1j���q����(u��r��$���Ņy�˅p?y誷�ME�Դb��va�jen���b���VVs��	������;0�����̖r��� ��y(a��wg$���Os�֏Ī����T�3�
0@�@��Y[���tX?Vk�v�����#b*�I~翐G1�m^p�6�^g^\�ss(�[]?V$�p0ȳV�\c�rc*n���N��Aa�ߖUCF�=�`��ˠa'W��N�s�bt�w�VV'6��a�:9��C*j6�m䪍�ϩ^>����ÕmƂ�A��K\gX��l��(Mnl䪇��|��Ce5�ͷJ�Q�%��U0ĢrpU-������/w�~���~^�p��y.���;9&�=*ܜ��J��*�w��p�O��N�F��p4��-O�,L�ܘ"�/�p���zJ���uu2�׮�V'lJ��8y�q��V��5�ms�wv�&q%��Xϳ�D����)�e�0j��].娎�΅:�ҜM��e(�??x�Z^�IU��0��0��@^Sg=O�:�`�uu6��r���i��k��0�`�쬲Fa0��M޿���	%0k����4X&Ȼ�m	X�4�/�e.i�BCJ<@��{Ԅ*	�C�ԧf5�ܣ�tuC��P�/���Py4�AR]23$Hdģ��V�N��P(9ܤ9��!%�);�
;�B�)�<O��K�-R���~ydY{����g8(:����Z4���F{uH�0P%+ǐh�HU�t��$v��P|=+B���g`�~�I���ɗ-���)���-WJ�P-4���;����Z�[� ��.�o������%e)O,'D���Y��n��i6C�b�i�V"uZ��ӈ���T(]��G𓺘�z�<�i�\�7�=L��"�Ϛ�[���:�����MQx^@�a/�2���p���N�&{�[y�2�Ht
r85ʳ둲��
��q�83�Qs�0��5�wx�����8�m��2j�l���L�p��<.lz���"<-���r���:#'R:C9�0J��9
Pl3��E�� �ś��:�B�a�P� �^��9_M�u�x��5t����J�k���&���/ϼ��B�v^-�d��3�t�|j��`��#a�w�F]�ȻL�Lф�-�N[p0����	�8
�:r0��'w�[%q,��'w�f���|É�Pd����-�+N��y�b��ȗ�x�4�=�$m��9M�?˜��x���`K�$�l��9Mś~�f̔��0L�L	%��ݱ`�������A�Z�"[� c_]����O󔑯�O[�n@J\/�:��VR�R�y�g۷,�B��y#N1�\����V���nO�0P�:����6o���y�v��6j�[F�Ť��i�r��ם�n�e�����H�)�ʀo7������	�j��ǀE�Ф�S"Ӑx����Q5��N��;�	��8|�����c�z��ghv_�f����Y^TH�N�/H;D��07���v��ip��)<.q��H�H[��-�U��am�I.[d���C"|vo�JQ!�H���6ӥ�*I����)��9��dp�p]-�X����v�hdc^�2�|���~!�pSj���X�RB�
�˔0�@M�6S���Mq��-�h��S�W��bŐ�8�HM��ʪSX���(�e����� ��+�N�^�F�
�U�!�ޖkM�z*ɷi��	H)T���bo73�*��ؗ�	Lm�xe7SQ�J��q#���J�Q�V�४l!p��S�-�Vc�|�%��t�x��c�NAKf�+��@5�[6�{�j9�Q�\{�����m.�i*E/˭�t(�Q�2��FXMҏj�A��1X=�F]��[�#?��2ʌz���?)�ʀ{��ㆄiMp*���;�"�_�ʱXU�S5��2�����-��Ԏï��(d�4?�����]7�|��"n_��r1�u�pY���EKΞU���lA��ߧ^BÃ��ΆV���0�ov��A�PKn��`�[��n���-LF���)��@�A?��Fp�'�M_�ZO�E5�w/��r3~��'0��������?=����9��&�
���u7��{�q
���06{��B�@
F�Ċl<I�������_�8��}����0܌vw�%�SϿ�/�[�ݍ��3�l&1<ʳn��1����Đ�3J����|Vj��h�}���6�'��">f Aٯ��2�l�����噰���Z����Ƌ~�l=rC@pvi���ݦk�� �١�j��^<�do�����l�WsB��lh�(-z��6�l h���j�|�N����Qjޗ-d}Slޘ�6�\d/&b����RMo8��av4�"׋r4�
2�jd+@sPxޙǈ���)&��!��S����e@�TA�'s:��RX�����������!*�*�j���]�Tmy骜p�c�sU\���)�-Im�M'���RMu������ܑ�jb$X�u��XMM�*bX��9.(��(���o�K�� ][n��p��0����}�P=��|=�VS��~$ �g9O%�"6n��̧1���*�J�u��1�R�Cm�=�S�x�x�y���    ���z����@m|� O5㩐2Ļ��	^%��4����ؗ��^#��{���%�/�#4�N"C������m�в�j�`r�A��qҸ��v���4[|Ckf�.f�m6��I*�E���r^�$�p��Ǵf���_�&�⒋j��q��cٟ�*�{6��ˍY�RE�3��b�K��B�ѷ�����<7��(:��)L�=����xʏ�}J�u*�$�W|X�Tpvx�dS��w{�|jq1�Qnt�E���>�\L:U|^kѤI���%~s{|C-%�粊�l-C9��A�^�>�ە��i���0f�oO5�JQr8�MX�{^55rQ�w���@�ͤ����K[͸��u�f��\U�-n�]+��5�r�5]����ZR4�T|xk-��ZK4��_�ZwA��u�Sf���w%�z��r�]��CB2�p9�W���~s��d6�+\�� �s`E���ö����U��������ؿ��E�@��nj��qeG_dZ�Hu�����[�H­O	/w^3�y��p^}�ba���5Nz��g<��D2~x��sF7Q��G�l�)�	O%��J�)"Kg�*��wQ�3��i���2F9�tSN�\�]��lM:rR�)9�t����lb
��`Ôm2Z�r��S����l9���twu��oHc-���p�MJ}���T;UCR�����>;2U�JU�cKW�"�V�������ud{��d�I�HIwy��rj��T�1�kr���;��r-W4���b�w�p�����4���ѳ���I��DF{���n��#3�;	���֕G�O���	9z[�[����g%��	�\k:�ے�>�h�ȩ�����a�.WՆa@�� ��XH�;���m�؝�rK�?��:U���Fň���4Xʘ���)K1W�2�7a_7Ū�� ���X� ��'��S��A
�����gi��f�Ñ��ݷ�=�����sU���`$:,E�64G-s������vܤ9���'Xn����CV��6�R~��%�G��F����������ƶ,�
�-}�[b�B�]�<�'�e+�;a`a��Ms2�2�#�b,V~�oJ��y���0J�%Zֺ2�s�+���	��_��2��|��2��e�V�HI���t�KI:��s0>bN��F��oݍ*����UQ�5m�G��͖g���#��nj���(������6Y�v�(�ҝ��b�)��_#�#���n���A�ctU��x���C=*�mt<]���=�L������g��l7�¶1ߓ��փg&DYψ�Lc�A'��n-�mO��N����O��Ύ�C�a���)��x���n�2߃�ߔ!��T�-�g��df�jZ�Kzs`k�T�H�nʩq��m�`�9
/
��˪D�;�#>�b�5;M�����婬N��c�N�vW���#��iʒFO��b.[�,"��Y6l�
�1׎��h�wy���L�h��:YNŜ��$�oz Gk�V�Sȵ�O�
�r/s���֊�	�����Z�NŃ�k��ʷ�-fH�%����g̏��J��	����1�Zw>zr���X�
|������._�|�m:v��������a�l�������?{t��mh|IǕ�3��Č�le��D���t��O��ր1}�fEUnKʣ�f�ڼ#��p�Q�s��"h
SnW.7�I����{�\�����.���H��$�U��܁�)l�*|���S�
qF���VsB��Q&U�> 7�Y>H9����X�XC��w�U�T��'��MK
Y.�%�|��rו�O�ߔ�G��Җy~#�LAJ�/�ð���ޠ�.�+�<�����[[R�Ĳ!J���� ��0<��ΰv��0wF�m��a��==���9�l�O����>��P��d��k�N�:<Y�����F�:��̕�0T���kj�<�4���O����{��XJ�T)VEsn`�\LD��4�\]f ��,�wm�D|nP��J0F=�!��(�Q�������W뺜|3)�"&O�<h��D�̽i>l9;��x�V�p$��&5_�<=�ܳ�XJ���j>t)�`�(�����5_�4l�a�)�w�+��<C�1�fW$ฉU�J�N�` �$T����|����`y���m���r�����L�	�w�Q�-4>�-7,�����(�6KY-"��?�$�q��|�`�������6�=@d�(w�3��`s�E<��PNĢ���Õ�!KG��#���~�A-1x5���8e~�P�2����D����מ����R=�0���]�a��^S��v����] oeĺ��w1�w-6��&o��(_H﹃�\�|�Rr΁����b������n�v��p�σo��A	~�ڦ'�E����qvy�rL��rg#���RT>[^��̡�l�ǐ�P��?�"䓕<cA<��\M��d4ȩ���9�ޔ���&��{�ƚ+��sa�r�<���2�H���L�ц�lr�����my9��N�}9!l�eu"pw�]�w1;�D��g��9�B8�׎OS�l��/z]?_���uw}�������'WV,���Not��Ů��e�瘡�('�X�9;�۔��]l��C4�ҡ�-�Q���K�F��
��^^�"C�v#�?����SW��V"wctg3�Λ)ߠj�ߝ��3���~�Ë�w^^n�j�b7�V��&I�d�`�"�`a֚���7'�Ö;���~�����ѝ���8&p�y���� ��-�X�p&c ��ܻ�; ��p��>(i���`9��yް�S:|��A��{�2�����5q=/&����3n8qM�ύL|����\׀�����\s�K��6<�{���\��*(hV09�o7}���^7l-�t���0wCBf(���K����z���|Yt�����]>��x�n'_6|��a���<����+X�q����k|��p��!����Y7�)H��N��Ge�p�gQf����٫�i>A\?2��x�3��r��L}<x�|�r�����D�v�&�Ϧ�l��S�|8�h��鈌,��j��|U�RvV_���#�Iy�3�3����i�qb��l�p��Gh<�`<��5ߢ^}D.�>��K٪|�z��ny�+�Qy�y�Yd���7�נ�v��)�8�M����@���O�q �8?y�)�0w%ѣt��ȉ��Oao�*Oo�RӪ�Q���ѣ�x�C��ɞ:����Gk��ȃ��g{���#S[�9Аk��zӄ!�e�&��Y�r����{���ρѐ6��p޻�Ћ�sx>U���'T96[\rb৽���#�cqȅ}��4�ҢG�ׁ���	0��HM[|�b_�Rj���ɨ�'��¤<�~��5Fټ�k��'�XO�Q������Aw�$cV[87]��'�m�.]���]�pa��[+v�m����������D�>k�<N��E0<��U���^i��霰�$�ܶ�F�>.��{��ߊ�<�h���<�{D���5�������&r�{<63m31lC�!hs���W����0���� cϝ����ݬF��:kK���l�����6X������N�p]���8T�fl��NI p8৬"�b�~��թ%/�S���6Xb ��|ӆ���y���Q�O�G-��?��r9� >cz.��Q��4�A��/[����\�\��	u��Ս��r�5$r����-e�=�E1��آy1j�����y�Ң����}KlʌK��/�l�V
���%[�,!\��ҺW�:za��Ǵ�l%0�=���aw�t�&Յ��I\��E���dVKv#񨨼�>�Fa�s�K�6�h�3�&��d��d���j����b3��r���mA�V\��ˈ���6�A�=^IZ^���Ɋ��������P}�ny��+���*5��ˮ���۞�1 g��S�����r�B��J��
V�k�j�y}kQZ�I����e��'�v��%-�CF��pF���O���w͐���V�g\X��q}&G�or҄glc�5v�b�s� �  |�.�3;aY�3�E�S��`��SL`���18vx3]J$`ي�ao���*�G��t:��`��o�(#����eSR�*ẜi�7����p�u�|)>0*qf0���8JS4H+f���E�T�㤗�I7hI8)S�
ﻎ�"��epJ[a��(��2_]]�	!�)/�$���S`�:�E.K�+IsY2݂�D�-W��a܉�AF��U�`�ʴOo��~���0df�g�w>ע���P�����Y5���w=�p�z'�)-/�ĝ��k���;��?�~3:�S2v��ܟo�T��>�]ͮ��^4t)����\�޺	S���$���@�[���JwtԹCd�����[�k�?�?���Q��guf}v��5��ƻaa�Ϸ��4=e��
�'����o�ɓ��Qk���7��c1�\{�&V������`��
y�?�~�_���
���|j��x,a]5���/,`lZ��z������	;/��s��.(���s$XC	
KA��ZR��S`�j�i�*�q�-�X.�cԥ�<ek�#Z�Z�Ϸ_`�y���ޕ~�Mz���WlZ�d)�M�J�K���UԳëv򇫨&��枰Hp��Z3k�f�L����م�kV���?��7�Y��s�XV���o)����67�᪵9�_�m<W���I�������lU�GLԯ{,WX=��E��z,�����w�4��x�Tkv��hھЁݼ|4�uF��1jII�RM�:�c����+O�Gͣ9DG�]5��NEkv���?���E���T�*�΅����s8�!��Gr����0�����6���.�>�JB-������%Pr�ͬt�p�Ϸ�h���b��\��I�X�ԌM�(S���u�NaM�&
����(F�ļg�a�	A�.L�8������}ӕ�fmb�}�K��LN��Ů�(�6�h�8���TJ�`���_�<�e�jL����	�cM���*>���<hst����{�f�0n�Z���1$���-�_M�+��3;'0l��������<O�!�ɦM*�Y7z��슍�j<���7�?�d��G�n�j!��Q�[qϕ��Y�H�̫�*.�X5��j�M��#��;�KW�P.� ��N#!4x��Iv�W������#�[ΠH�����K�m�R��*��f�P�1�4�glFl����n�x2���W�(]Y>f,�<�,d��0�i۬�N���矏;���ȩO      �      x������ � �      �   �   x�U���0���Sd)�	P~�L�H]�p@�6%WU��)t)�m}�m�F}��)��Cx1�\�eKζ/�\WZ�Ɖ�a��N�P�%s�$���4.G}�4�i�2*���"+��`e����W���t��+��\�C�%{n����%�S �)�<�H�      �      x������ � �      >   e   x�3�t���.�4�2�t�IM.)���L.VPS�O+)O,J�4�2�t�/���OLIL�IU(�O)M.j2�2��J-O�)��44�2�t,( j��42������ w��      �      x������ � �      B   b  x��U�o�F~V�
.}2�9]׮��蚠M6���DI�Jw��aW��K�َ�z[�6"��}���H΋�{Ý/Z�������x�:� ����z�Lt��C4�E6���(�7�������� �lT��+O>�D�Ho^,��.(�c�/>9+.z��	���чk�;��D,��L����-6~ t^,��Z��{Ճ�J������C�F/Q+��3�:�zP�K�CBE�'�L�a]������BJ��ə2�� t�`ܔ)�χ*B����)e�H��y�)�����>`Z`��
�=k�x����у��(�.�<j�'ťqq�iF��.:<�$��kw���O}7���?��-~�H�i�&� K!�ZJ#��X�t�#Zg��(q>��<t��Įg��O�M��*L�薊��Y���J��5�o�Q�j9I�s�|�c�ӁZ@�����>���H_jc�zDTbI/��⥑D�����J,fL�6���<!�V����p�'�\E����~�����������%�W$�C��o`w����S�!����Yq��R�iKt=�S{mm�b��]��=������	�&����-k�;��0�X	ϴi �,��fE
h�a������a��鵆�d	�y߽y�r(�0����3���z<���[�uJ�ط���-Qm����ÏTY_R��I��1O�ɖ��@��LB��i�p�w6K�[���#�'�Q�n�Q�׎�R��U�_�`� 6vxD٥Ŧ��ߚ�h_l\�����8�v��Bݘ]�[F�}a��)���[Za�M��nэ�S��iy�Q������\�Lj?��ϣ��]yrr���%J      @   /   x�3�tIMK,�)Q(I�-�I,I��/�LvI-I��)�4����� 	�6      :   �   x�U��n� ��λP�����q/�8,j���T���Q��|�{4|R����J���e�D�-�$W0ebF�SF�C�w��gO!)�%�X��gc�䟪~��L\��*^�����U&E�ջ�R-��.�|P�$6�z�Vۭ�"��ؗ
��E�Uxߡq(`�&�W������胓�\8�,c3����׆a"�6��h2�ZwHț�&%o�f�����c�_��v�      D      x������ � �      F      x������ � �      H      x������ � �      J      x������ � �      �      x������ � �      �      x������ � �     