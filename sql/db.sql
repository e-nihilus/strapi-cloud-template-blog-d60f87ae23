PGDMP  /                    }           topresidencias    17.2    17.2 H   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    30385    topresidencias    DATABASE     �   CREATE DATABASE topresidencias WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE topresidencias;
                     postgres    false            �            1259    30554    abouts    TABLE     j  CREATE TABLE public.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.abouts;
       public         heap r       postgres    false            �            1259    30540    abouts_cmps    TABLE     �   CREATE TABLE public.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
    DROP TABLE public.abouts_cmps;
       public         heap r       postgres    false            �            1259    30539    abouts_cmps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.abouts_cmps_id_seq;
       public               postgres    false    244            �           0    0    abouts_cmps_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.abouts_cmps_id_seq OWNED BY public.abouts_cmps.id;
          public               postgres    false    243            �            1259    30553    abouts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.abouts_id_seq;
       public               postgres    false    246            �           0    0    abouts_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;
          public               postgres    false    245                       1259    30642    admin_permissions    TABLE     �  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.admin_permissions;
       public         heap r       postgres    false                       1259    30641    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public               postgres    false    260            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public               postgres    false    259            8           1259    30926    admin_permissions_role_lnk    TABLE     �   CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 .   DROP TABLE public.admin_permissions_role_lnk;
       public         heap r       postgres    false            7           1259    30925 !   admin_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.admin_permissions_role_lnk_id_seq;
       public               postgres    false    312            �           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;
          public               postgres    false    311                       1259    30666    admin_roles    TABLE     �  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_roles;
       public         heap r       postgres    false                       1259    30665    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public               postgres    false    264            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public               postgres    false    263                       1259    30654    admin_users    TABLE     �  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_users;
       public         heap r       postgres    false                       1259    30653    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public               postgres    false    262            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public               postgres    false    261            :           1259    30938    admin_users_roles_lnk    TABLE     �   CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);
 )   DROP TABLE public.admin_users_roles_lnk;
       public         heap r       postgres    false            9           1259    30937    admin_users_roles_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.admin_users_roles_lnk_id_seq;
       public               postgres    false    314            �           0    0    admin_users_roles_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;
          public               postgres    false    313            �            1259    30580    articles    TABLE     �  CREATE TABLE public.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.articles;
       public         heap r       postgres    false            4           1259    30902    articles_author_lnk    TABLE     �   CREATE TABLE public.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);
 '   DROP TABLE public.articles_author_lnk;
       public         heap r       postgres    false            3           1259    30901    articles_author_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.articles_author_lnk_id_seq;
       public               postgres    false    308            �           0    0    articles_author_lnk_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.articles_author_lnk_id_seq OWNED BY public.articles_author_lnk.id;
          public               postgres    false    307            6           1259    30914    articles_category_lnk    TABLE     �   CREATE TABLE public.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);
 )   DROP TABLE public.articles_category_lnk;
       public         heap r       postgres    false            5           1259    30913    articles_category_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.articles_category_lnk_id_seq;
       public               postgres    false    310            �           0    0    articles_category_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.articles_category_lnk_id_seq OWNED BY public.articles_category_lnk.id;
          public               postgres    false    309            �            1259    30566    articles_cmps    TABLE     �   CREATE TABLE public.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 !   DROP TABLE public.articles_cmps;
       public         heap r       postgres    false            �            1259    30565    articles_cmps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.articles_cmps_id_seq;
       public               postgres    false    248            �           0    0    articles_cmps_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.articles_cmps_id_seq OWNED BY public.articles_cmps.id;
          public               postgres    false    247            �            1259    30579    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public               postgres    false    250            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public               postgres    false    249            �            1259    30592    authors    TABLE     �  CREATE TABLE public.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.authors;
       public         heap r       postgres    false            �            1259    30591    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public               postgres    false    252            �           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public               postgres    false    251            �            1259    30604 
   categories    TABLE     �  CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.categories;
       public         heap r       postgres    false            �            1259    30603    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public               postgres    false    254            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public               postgres    false    253                       1259    30760    components_shared_media    TABLE     I   CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);
 +   DROP TABLE public.components_shared_media;
       public         heap r       postgres    false                       1259    30759    components_shared_media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_shared_media_id_seq;
       public               postgres    false    282            �           0    0    components_shared_media_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;
          public               postgres    false    281                       1259    30751    components_shared_quotes    TABLE     {   CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);
 ,   DROP TABLE public.components_shared_quotes;
       public         heap r       postgres    false                       1259    30750    components_shared_quotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_quotes_id_seq;
       public               postgres    false    280            �           0    0    components_shared_quotes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;
          public               postgres    false    279                       1259    30742    components_shared_rich_texts    TABLE     ]   CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);
 0   DROP TABLE public.components_shared_rich_texts;
       public         heap r       postgres    false                       1259    30741 #   components_shared_rich_texts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_shared_rich_texts_id_seq;
       public               postgres    false    278            �           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;
          public               postgres    false    277                       1259    30733    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap r       postgres    false                       1259    30732    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public               postgres    false    276            �           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public               postgres    false    275                       1259    30726    components_shared_sliders    TABLE     K   CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);
 -   DROP TABLE public.components_shared_sliders;
       public         heap r       postgres    false                       1259    30725     components_shared_sliders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_shared_sliders_id_seq;
       public               postgres    false    274            �           0    0     components_shared_sliders_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;
          public               postgres    false    273            �            1259    30410    files    TABLE       CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.files;
       public         heap r       postgres    false            $           1259    30807    files_folder_lnk    TABLE     �   CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);
 $   DROP TABLE public.files_folder_lnk;
       public         heap r       postgres    false            #           1259    30806    files_folder_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.files_folder_lnk_id_seq;
       public               postgres    false    292            �           0    0    files_folder_lnk_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;
          public               postgres    false    291            �            1259    30409    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public               postgres    false    224            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public               postgres    false    223            "           1259    30795    files_related_mph    TABLE     �   CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.files_related_mph;
       public         heap r       postgres    false            !           1259    30794    files_related_mph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.files_related_mph_id_seq;
       public               postgres    false    290            �           0    0    files_related_mph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;
          public               postgres    false    289                       1259    30630    globals    TABLE     �  CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    top_residencias character varying(255)
);
    DROP TABLE public.globals;
       public         heap r       postgres    false                        1259    30616    globals_cmps    TABLE     �   CREATE TABLE public.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
     DROP TABLE public.globals_cmps;
       public         heap r       postgres    false            �            1259    30615    globals_cmps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.globals_cmps_id_seq;
       public               postgres    false    256            �           0    0    globals_cmps_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.globals_cmps_id_seq OWNED BY public.globals_cmps.id;
          public               postgres    false    255                       1259    30629    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public               postgres    false    258            �           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public               postgres    false    257            �            1259    30444    i18n_locale    TABLE     �  CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.i18n_locale;
       public         heap r       postgres    false            �            1259    30443    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public               postgres    false    228            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public               postgres    false    227                       1259    30690    strapi_api_token_permissions    TABLE     �  CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap r       postgres    false                       1259    30689 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public               postgres    false    268            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public               postgres    false    267            <           1259    30951 &   strapi_api_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);
 :   DROP TABLE public.strapi_api_token_permissions_token_lnk;
       public         heap r       postgres    false            ;           1259    30950 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq;
       public               postgres    false    316            �           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;
          public               postgres    false    315            
           1259    30678    strapi_api_tokens    TABLE     q  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap r       postgres    false            	           1259    30677    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public               postgres    false    266            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public               postgres    false    265                       1259    30767    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap r       postgres    false                       1259    30766 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public               postgres    false    284            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public               postgres    false    283            �            1259    30401    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap r       postgres    false            �            1259    30400    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public               postgres    false    222            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public               postgres    false    221                        1259    30785    strapi_history_versions    TABLE     ]  CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);
 +   DROP TABLE public.strapi_history_versions;
       public         heap r       postgres    false                       1259    30784    strapi_history_versions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_history_versions_id_seq;
       public               postgres    false    288            �           0    0    strapi_history_versions_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;
          public               postgres    false    287            �            1259    30387    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap r       postgres    false            �            1259    30386    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public               postgres    false    218            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public               postgres    false    217            �            1259    30394    strapi_migrations_internal    TABLE     �   CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 .   DROP TABLE public.strapi_migrations_internal;
       public         heap r       postgres    false            �            1259    30393 !   strapi_migrations_internal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_migrations_internal_id_seq;
       public               postgres    false    220            �           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;
          public               postgres    false    219            �            1259    30468    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap r       postgres    false            �            1259    30467    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public               postgres    false    232            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public               postgres    false    231            (           1259    30831 "   strapi_release_actions_release_lnk    TABLE     �   CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);
 6   DROP TABLE public.strapi_release_actions_release_lnk;
       public         heap r       postgres    false            '           1259    30830 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.strapi_release_actions_release_lnk_id_seq;
       public               postgres    false    296            �           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;
          public               postgres    false    295            �            1259    30456    strapi_releases    TABLE       CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 #   DROP TABLE public.strapi_releases;
       public         heap r       postgres    false            �            1259    30455    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public               postgres    false    230            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public               postgres    false    229                       1259    30714 !   strapi_transfer_token_permissions    TABLE     �  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap r       postgres    false                       1259    30713 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public               postgres    false    272            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public               postgres    false    271            >           1259    30963 +   strapi_transfer_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);
 ?   DROP TABLE public.strapi_transfer_token_permissions_token_lnk;
       public         heap r       postgres    false            =           1259    30962 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq;
       public               postgres    false    318            �           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;
          public               postgres    false    317                       1259    30702    strapi_transfer_tokens    TABLE     =  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap r       postgres    false                       1259    30701    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public               postgres    false    270            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public               postgres    false    269                       1259    30776    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap r       postgres    false                       1259    30775    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public               postgres    false    286            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public               postgres    false    285            �            1259    30480    strapi_workflows    TABLE     �  CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.strapi_workflows;
       public         heap r       postgres    false            �            1259    30479    strapi_workflows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.strapi_workflows_id_seq;
       public               postgres    false    234                        0    0    strapi_workflows_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;
          public               postgres    false    233            *           1259    30843 .   strapi_workflows_stage_required_to_publish_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);
 B   DROP TABLE public.strapi_workflows_stage_required_to_publish_lnk;
       public         heap r       postgres    false            )           1259    30842 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
       public               postgres    false    298                       0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;
          public               postgres    false    297            �            1259    30492    strapi_workflows_stages    TABLE     �  CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 +   DROP TABLE public.strapi_workflows_stages;
       public         heap r       postgres    false            �            1259    30491    strapi_workflows_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_workflows_stages_id_seq;
       public               postgres    false    236                       0    0    strapi_workflows_stages_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;
          public               postgres    false    235            .           1259    30866 '   strapi_workflows_stages_permissions_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);
 ;   DROP TABLE public.strapi_workflows_stages_permissions_lnk;
       public         heap r       postgres    false            -           1259    30865 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq;
       public               postgres    false    302                       0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;
          public               postgres    false    301            ,           1259    30854 $   strapi_workflows_stages_workflow_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);
 8   DROP TABLE public.strapi_workflows_stages_workflow_lnk;
       public         heap r       postgres    false            +           1259    30853 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq;
       public               postgres    false    300                       0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;
          public               postgres    false    299            �            1259    30504    up_permissions    TABLE     s  CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.up_permissions;
       public         heap r       postgres    false            �            1259    30503    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public               postgres    false    238                       0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public               postgres    false    237            0           1259    30878    up_permissions_role_lnk    TABLE     �   CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 +   DROP TABLE public.up_permissions_role_lnk;
       public         heap r       postgres    false            /           1259    30877    up_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.up_permissions_role_lnk_id_seq;
       public               postgres    false    304                       0    0    up_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;
          public               postgres    false    303            �            1259    30516    up_roles    TABLE     �  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_roles;
       public         heap r       postgres    false            �            1259    30515    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public               postgres    false    240                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public               postgres    false    239            �            1259    30528    up_users    TABLE     g  CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_users;
       public         heap r       postgres    false            �            1259    30527    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public               postgres    false    242                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public               postgres    false    241            2           1259    30890    up_users_role_lnk    TABLE     �   CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);
 %   DROP TABLE public.up_users_role_lnk;
       public         heap r       postgres    false            1           1259    30889    up_users_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.up_users_role_lnk_id_seq;
       public               postgres    false    306            	           0    0    up_users_role_lnk_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;
          public               postgres    false    305            �            1259    30428    upload_folders    TABLE     �  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.upload_folders;
       public         heap r       postgres    false            �            1259    30427    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public               postgres    false    226            
           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public               postgres    false    225            &           1259    30819    upload_folders_parent_lnk    TABLE     �   CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);
 -   DROP TABLE public.upload_folders_parent_lnk;
       public         heap r       postgres    false            %           1259    30818     upload_folders_parent_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.upload_folders_parent_lnk_id_seq;
       public               postgres    false    294                       0    0     upload_folders_parent_lnk_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;
          public               postgres    false    293            _           2604    30557 	   abouts id    DEFAULT     f   ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);
 8   ALTER TABLE public.abouts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    245    246    246            ^           2604    30543    abouts_cmps id    DEFAULT     p   ALTER TABLE ONLY public.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('public.abouts_cmps_id_seq'::regclass);
 =   ALTER TABLE public.abouts_cmps ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    244    243    244            f           2604    30645    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    259    260    260            �           2604    30929    admin_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);
 L   ALTER TABLE public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    312    311    312            h           2604    30669    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    264    263    264            g           2604    30657    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    262    261    262            �           2604    30941    admin_users_roles_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);
 G   ALTER TABLE public.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    313    314    314            a           2604    30583    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    250    249    250            ~           2604    30905    articles_author_lnk id    DEFAULT     �   ALTER TABLE ONLY public.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_author_lnk_id_seq'::regclass);
 E   ALTER TABLE public.articles_author_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    307    308    308                       2604    30917    articles_category_lnk id    DEFAULT     �   ALTER TABLE ONLY public.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_category_lnk_id_seq'::regclass);
 G   ALTER TABLE public.articles_category_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    310    309    310            `           2604    30569    articles_cmps id    DEFAULT     t   ALTER TABLE ONLY public.articles_cmps ALTER COLUMN id SET DEFAULT nextval('public.articles_cmps_id_seq'::regclass);
 ?   ALTER TABLE public.articles_cmps ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    247    248    248            b           2604    30595 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    252    251    252            c           2604    30607    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    253    254    254            q           2604    30763    components_shared_media id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);
 I   ALTER TABLE public.components_shared_media ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    282    281    282            p           2604    30754    components_shared_quotes id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_quotes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    280    279    280            o           2604    30745    components_shared_rich_texts id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);
 N   ALTER TABLE public.components_shared_rich_texts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    278    277    278            n           2604    30736    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    276    275    276            m           2604    30729    components_shared_sliders id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);
 K   ALTER TABLE public.components_shared_sliders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    274    273    274            T           2604    30413    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            v           2604    30810    files_folder_lnk id    DEFAULT     z   ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);
 B   ALTER TABLE public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    292    291    292            u           2604    30798    files_related_mph id    DEFAULT     |   ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);
 C   ALTER TABLE public.files_related_mph ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    289    290    290            e           2604    30633 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    257    258    258            d           2604    30619    globals_cmps id    DEFAULT     r   ALTER TABLE ONLY public.globals_cmps ALTER COLUMN id SET DEFAULT nextval('public.globals_cmps_id_seq'::regclass);
 >   ALTER TABLE public.globals_cmps ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    255    256    256            V           2604    30447    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            j           2604    30693    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    268    267    268            �           2604    30954 )   strapi_api_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);
 X   ALTER TABLE public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    316    315    316            i           2604    30681    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    265    266    266            r           2604    30770    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    283    284    284            S           2604    30404    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            t           2604    30788    strapi_history_versions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);
 I   ALTER TABLE public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    287    288    288            Q           2604    30390    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            R           2604    30397    strapi_migrations_internal id    DEFAULT     �   ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);
 L   ALTER TABLE public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            X           2604    30471    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    232    232            x           2604    30834 %   strapi_release_actions_release_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);
 T   ALTER TABLE public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    296    295    296            W           2604    30459    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            l           2604    30717 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    271    272    272            �           2604    30966 .   strapi_transfer_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);
 ]   ALTER TABLE public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    318    317    318            k           2604    30705    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    270    269    270            s           2604    30779    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    286    285    286            Y           2604    30483    strapi_workflows id    DEFAULT     z   ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);
 B   ALTER TABLE public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            y           2604    30846 1   strapi_workflows_stage_required_to_publish_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);
 `   ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    297    298    298            Z           2604    30495    strapi_workflows_stages id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);
 I   ALTER TABLE public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    235    236            {           2604    30869 *   strapi_workflows_stages_permissions_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);
 Y   ALTER TABLE public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    301    302    302            z           2604    30857 '   strapi_workflows_stages_workflow_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);
 V   ALTER TABLE public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    299    300    300            [           2604    30507    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    238    237    238            |           2604    30881    up_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);
 I   ALTER TABLE public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    303    304    304            \           2604    30519    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    239    240    240            ]           2604    30531    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    242    241    242            }           2604    30893    up_users_role_lnk id    DEFAULT     |   ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);
 C   ALTER TABLE public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    305    306    306            U           2604    30431    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            w           2604    30822    upload_folders_parent_lnk id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);
 K   ALTER TABLE public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    294    293    294            �          0    30554    abouts 
   TABLE DATA           �   COPY public.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    246   \1      �          0    30540    abouts_cmps 
   TABLE DATA           \   COPY public.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    public               postgres    false    244   y1      �          0    30642    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    260   �1      �          0    30926    admin_permissions_role_lnk 
   TABLE DATA           `   COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               postgres    false    312   tE      �          0    30666    admin_roles 
   TABLE DATA           �   COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    264   hH      �          0    30654    admin_users 
   TABLE DATA             COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    262   �I      �          0    30938    admin_users_roles_lnk 
   TABLE DATA           Y   COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
    public               postgres    false    314   BJ      �          0    30580    articles 
   TABLE DATA           �   COPY public.articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    250   dJ      �          0    30902    articles_author_lnk 
   TABLE DATA           U   COPY public.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
    public               postgres    false    308   �J      �          0    30914    articles_category_lnk 
   TABLE DATA           Y   COPY public.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
    public               postgres    false    310   �J      �          0    30566    articles_cmps 
   TABLE DATA           ^   COPY public.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    public               postgres    false    248   K      �          0    30592    authors 
   TABLE DATA           �   COPY public.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    252   4K      �          0    30604 
   categories 
   TABLE DATA           �   COPY public.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    254   QK      �          0    30760    components_shared_media 
   TABLE DATA           5   COPY public.components_shared_media (id) FROM stdin;
    public               postgres    false    282   CL      �          0    30751    components_shared_quotes 
   TABLE DATA           C   COPY public.components_shared_quotes (id, title, body) FROM stdin;
    public               postgres    false    280   `L      �          0    30742    components_shared_rich_texts 
   TABLE DATA           @   COPY public.components_shared_rich_texts (id, body) FROM stdin;
    public               postgres    false    278   }L      �          0    30733    components_shared_seos 
   TABLE DATA           R   COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    public               postgres    false    276   �L      �          0    30726    components_shared_sliders 
   TABLE DATA           7   COPY public.components_shared_sliders (id) FROM stdin;
    public               postgres    false    274   �L      t          0    30410    files 
   TABLE DATA             COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    224   �L      �          0    30807    files_folder_lnk 
   TABLE DATA           L   COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
    public               postgres    false    292   tN      �          0    30795    files_related_mph 
   TABLE DATA           b   COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public               postgres    false    290   �N      �          0    30630    globals 
   TABLE DATA           �   COPY public.globals (id, document_id, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, top_residencias) FROM stdin;
    public               postgres    false    258   �N      �          0    30616    globals_cmps 
   TABLE DATA           ]   COPY public.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    public               postgres    false    256   �N      x          0    30444    i18n_locale 
   TABLE DATA           �   COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    228   �N      �          0    30690    strapi_api_token_permissions 
   TABLE DATA           �   COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    268   OO      �          0    30951 &   strapi_api_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
    public               postgres    false    316   lO      �          0    30678    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    266   �O      �          0    30767    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public               postgres    false    284   Q      r          0    30401    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public               postgres    false    222   `q      �          0    30785    strapi_history_versions 
   TABLE DATA           �   COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
    public               postgres    false    288   �~      n          0    30387    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public               postgres    false    218   �~      p          0    30394    strapi_migrations_internal 
   TABLE DATA           F   COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
    public               postgres    false    220   �~      |          0    30468    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public               postgres    false    232   �      �          0    30831 "   strapi_release_actions_release_lnk 
   TABLE DATA           s   COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
    public               postgres    false    296   �      z          0    30456    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    230   �      �          0    30714 !   strapi_transfer_token_permissions 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    272   �      �          0    30963 +   strapi_transfer_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
    public               postgres    false    318   6�      �          0    30702    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    270   S�      �          0    30776    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public               postgres    false    286   p�      ~          0    30480    strapi_workflows 
   TABLE DATA           �   COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    234   ��      �          0    30843 .   strapi_workflows_stage_required_to_publish_lnk 
   TABLE DATA           l   COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
    public               postgres    false    298   ��      �          0    30492    strapi_workflows_stages 
   TABLE DATA           �   COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    236   ǀ      �          0    30866 '   strapi_workflows_stages_permissions_lnk 
   TABLE DATA           w   COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
    public               postgres    false    302   �      �          0    30854 $   strapi_workflows_stages_workflow_lnk 
   TABLE DATA           v   COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
    public               postgres    false    300   �      �          0    30504    up_permissions 
   TABLE DATA           �   COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    238   �      �          0    30878    up_permissions_role_lnk 
   TABLE DATA           ]   COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               postgres    false    304   ��      �          0    30516    up_roles 
   TABLE DATA           �   COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    240   ��      �          0    30528    up_users 
   TABLE DATA           �   COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    242   ��      �          0    30890    up_users_role_lnk 
   TABLE DATA           K   COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
    public               postgres    false    306   ˄      v          0    30428    upload_folders 
   TABLE DATA           �   COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    226   �      �          0    30819    upload_folders_parent_lnk 
   TABLE DATA           ]   COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
    public               postgres    false    294   �                 0    0    abouts_cmps_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.abouts_cmps_id_seq', 1, false);
          public               postgres    false    243                       0    0    abouts_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.abouts_id_seq', 1, false);
          public               postgres    false    245                       0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 145, true);
          public               postgres    false    259                       0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 145, true);
          public               postgres    false    311                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public               postgres    false    263                       0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public               postgres    false    261                       0    0    admin_users_roles_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);
          public               postgres    false    313                       0    0    articles_author_lnk_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.articles_author_lnk_id_seq', 1, false);
          public               postgres    false    307                       0    0    articles_category_lnk_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.articles_category_lnk_id_seq', 1, false);
          public               postgres    false    309                       0    0    articles_cmps_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.articles_cmps_id_seq', 1, false);
          public               postgres    false    247                       0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 2, true);
          public               postgres    false    249                       0    0    authors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.authors_id_seq', 1, false);
          public               postgres    false    251                       0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public               postgres    false    253                       0    0    components_shared_media_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, false);
          public               postgres    false    281                       0    0    components_shared_quotes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);
          public               postgres    false    279                       0    0 #   components_shared_rich_texts_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, false);
          public               postgres    false    277                       0    0    components_shared_seos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);
          public               postgres    false    275                       0    0     components_shared_sliders_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);
          public               postgres    false    273                       0    0    files_folder_lnk_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);
          public               postgres    false    291                       0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 1, true);
          public               postgres    false    223                        0    0    files_related_mph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);
          public               postgres    false    289            !           0    0    globals_cmps_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.globals_cmps_id_seq', 1, false);
          public               postgres    false    255            "           0    0    globals_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.globals_id_seq', 1, false);
          public               postgres    false    257            #           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public               postgres    false    227            $           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public               postgres    false    267            %           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);
          public               postgres    false    315            &           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);
          public               postgres    false    265            '           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 37, true);
          public               postgres    false    283            (           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 2, true);
          public               postgres    false    221            )           0    0    strapi_history_versions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);
          public               postgres    false    287            *           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public               postgres    false    217            +           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);
          public               postgres    false    219            ,           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public               postgres    false    231            -           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);
          public               postgres    false    295            .           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public               postgres    false    229            /           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public               postgres    false    271            0           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);
          public               postgres    false    317            1           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public               postgres    false    269            2           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public               postgres    false    285            3           0    0    strapi_workflows_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);
          public               postgres    false    233            4           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);
          public               postgres    false    297            5           0    0    strapi_workflows_stages_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);
          public               postgres    false    235            6           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);
          public               postgres    false    301            7           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);
          public               postgres    false    299            8           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 19, true);
          public               postgres    false    237            9           0    0    up_permissions_role_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 19, true);
          public               postgres    false    303            :           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public               postgres    false    239            ;           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public               postgres    false    241            <           0    0    up_users_role_lnk_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);
          public               postgres    false    305            =           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public               postgres    false    225            >           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);
          public               postgres    false    293            �           2606    30547    abouts_cmps abouts_cmps_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.abouts_cmps DROP CONSTRAINT abouts_cmps_pkey;
       public                 postgres    false    244            �           2606    30561    abouts abouts_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_pkey;
       public                 postgres    false    246            �           2606    30552    abouts_cmps abouts_uq 
   CONSTRAINT     t   ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);
 ?   ALTER TABLE ONLY public.abouts_cmps DROP CONSTRAINT abouts_uq;
       public                 postgres    false    244    244    244    244            �           2606    30649 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public                 postgres    false    260            v           2606    30931 :   admin_permissions_role_lnk admin_permissions_role_lnk_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
       public                 postgres    false    312            x           2606    30935 8   admin_permissions_role_lnk admin_permissions_role_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
       public                 postgres    false    312    312                       2606    30673    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public                 postgres    false    264            �           2606    30661    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public                 postgres    false    262            ~           2606    30943 0   admin_users_roles_lnk admin_users_roles_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
       public                 postgres    false    314            �           2606    30947 .   admin_users_roles_lnk admin_users_roles_lnk_uq 
   CONSTRAINT     u   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
       public                 postgres    false    314    314            h           2606    30907 ,   articles_author_lnk articles_author_lnk_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.articles_author_lnk DROP CONSTRAINT articles_author_lnk_pkey;
       public                 postgres    false    308            j           2606    30911 *   articles_author_lnk articles_author_lnk_uq 
   CONSTRAINT     v   ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);
 T   ALTER TABLE ONLY public.articles_author_lnk DROP CONSTRAINT articles_author_lnk_uq;
       public                 postgres    false    308    308            o           2606    30919 0   articles_category_lnk articles_category_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.articles_category_lnk DROP CONSTRAINT articles_category_lnk_pkey;
       public                 postgres    false    310            q           2606    30923 .   articles_category_lnk articles_category_lnk_uq 
   CONSTRAINT     |   ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);
 X   ALTER TABLE ONLY public.articles_category_lnk DROP CONSTRAINT articles_category_lnk_uq;
       public                 postgres    false    310    310            �           2606    30573     articles_cmps articles_cmps_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.articles_cmps DROP CONSTRAINT articles_cmps_pkey;
       public                 postgres    false    248            �           2606    30587    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public                 postgres    false    250            �           2606    30578    articles_cmps articles_uq 
   CONSTRAINT     x   ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);
 C   ALTER TABLE ONLY public.articles_cmps DROP CONSTRAINT articles_uq;
       public                 postgres    false    248    248    248    248            �           2606    30599    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public                 postgres    false    252            �           2606    30611    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public                 postgres    false    254                        2606    30765 4   components_shared_media components_shared_media_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_shared_media DROP CONSTRAINT components_shared_media_pkey;
       public                 postgres    false    282                       2606    30758 6   components_shared_quotes components_shared_quotes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_quotes DROP CONSTRAINT components_shared_quotes_pkey;
       public                 postgres    false    280                       2606    30749 >   components_shared_rich_texts components_shared_rich_texts_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_shared_rich_texts DROP CONSTRAINT components_shared_rich_texts_pkey;
       public                 postgres    false    278                       2606    30740 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public                 postgres    false    276                       2606    30731 8   components_shared_sliders components_shared_sliders_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_shared_sliders DROP CONSTRAINT components_shared_sliders_pkey;
       public                 postgres    false    274            1           2606    30812 &   files_folder_lnk files_folder_lnk_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
       public                 postgres    false    292            3           2606    30816 $   files_folder_lnk files_folder_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
       public                 postgres    false    292    292            �           2606    30417    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public                 postgres    false    224            ,           2606    30802 (   files_related_mph files_related_mph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
       public                 postgres    false    290            �           2606    30623    globals_cmps globals_cmps_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_cmps_pkey;
       public                 postgres    false    256            �           2606    30637    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public                 postgres    false    258            �           2606    30628    globals_cmps globals_uq 
   CONSTRAINT     v   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);
 A   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_uq;
       public                 postgres    false    256    256    256    256            �           2606    30451    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public                 postgres    false    228                       2606    30697 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public                 postgres    false    268            �           2606    30956 R   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
       public                 postgres    false    316            �           2606    30960 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
       public                 postgres    false    316    316                       2606    30685 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public                 postgres    false    266            "           2606    30774 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public                 postgres    false    284            �           2606    30408 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public                 postgres    false    222            '           2606    30792 4   strapi_history_versions strapi_history_versions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
       public                 postgres    false    288            �           2606    30399 :   strapi_migrations_internal strapi_migrations_internal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
       public                 postgres    false    220            �           2606    30392 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public                 postgres    false    218            �           2606    30475 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public                 postgres    false    232            ?           2606    30836 J   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
       public                 postgres    false    296            A           2606    30840 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
       public                 postgres    false    296    296            �           2606    30463 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public                 postgres    false    230                       2606    30721 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public                 postgres    false    272            �           2606    30968 \   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
       public                 postgres    false    318            �           2606    30972 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
       public                 postgres    false    318    318                       2606    30709 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public                 postgres    false    270            $           2606    30783 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public                 postgres    false    286            �           2606    30487 &   strapi_workflows strapi_workflows_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
       public                 postgres    false    234            E           2606    30848 b   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
       public                 postgres    false    298            G           2606    30852 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
       public                 postgres    false    298    298            S           2606    30871 T   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
       public                 postgres    false    302            U           2606    30875 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
       public                 postgres    false    302    302            �           2606    30499 4   strapi_workflows_stages strapi_workflows_stages_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
       public                 postgres    false    236            L           2606    30859 N   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
       public                 postgres    false    300            N           2606    30863 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
       public                 postgres    false    300    300            �           2606    30511 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public                 postgres    false    238            Z           2606    30883 4   up_permissions_role_lnk up_permissions_role_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
       public                 postgres    false    304            \           2606    30887 2   up_permissions_role_lnk up_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
       public                 postgres    false    304    304            �           2606    30523    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public                 postgres    false    240            �           2606    30535    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public                 postgres    false    242            a           2606    30895 (   up_users_role_lnk up_users_role_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
       public                 postgres    false    306            c           2606    30899 &   up_users_role_lnk up_users_role_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
       public                 postgres    false    306    306            8           2606    30824 8   upload_folders_parent_lnk upload_folders_parent_lnk_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
       public                 postgres    false    294            :           2606    30828 6   upload_folders_parent_lnk upload_folders_parent_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
       public                 postgres    false    294    294            �           2606    30437 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public                 postgres    false    226            �           2606    30439 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public                 postgres    false    226            �           2606    30435 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public                 postgres    false    226            �           1259    30549    abouts_component_type_idx    INDEX     [   CREATE INDEX abouts_component_type_idx ON public.abouts_cmps USING btree (component_type);
 -   DROP INDEX public.abouts_component_type_idx;
       public                 postgres    false    244            �           1259    30563    abouts_created_by_id_fk    INDEX     S   CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);
 +   DROP INDEX public.abouts_created_by_id_fk;
       public                 postgres    false    246            �           1259    30562    abouts_documents_idx    INDEX     d   CREATE INDEX abouts_documents_idx ON public.abouts USING btree (document_id, locale, published_at);
 (   DROP INDEX public.abouts_documents_idx;
       public                 postgres    false    246    246    246            �           1259    30550    abouts_entity_fk    INDEX     M   CREATE INDEX abouts_entity_fk ON public.abouts_cmps USING btree (entity_id);
 $   DROP INDEX public.abouts_entity_fk;
       public                 postgres    false    244            �           1259    30548    abouts_field_idx    INDEX     I   CREATE INDEX abouts_field_idx ON public.abouts_cmps USING btree (field);
 $   DROP INDEX public.abouts_field_idx;
       public                 postgres    false    244            �           1259    30564    abouts_updated_by_id_fk    INDEX     S   CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);
 +   DROP INDEX public.abouts_updated_by_id_fk;
       public                 postgres    false    246            �           1259    30651 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public                 postgres    false    260            �           1259    30650    admin_permissions_documents_idx    INDEX     z   CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);
 3   DROP INDEX public.admin_permissions_documents_idx;
       public                 postgres    false    260    260    260            r           1259    30932    admin_permissions_role_lnk_fk    INDEX     m   CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);
 1   DROP INDEX public.admin_permissions_role_lnk_fk;
       public                 postgres    false    312            s           1259    30933    admin_permissions_role_lnk_ifk    INDEX     h   CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);
 2   DROP INDEX public.admin_permissions_role_lnk_ifk;
       public                 postgres    false    312            t           1259    30936    admin_permissions_role_lnk_oifk    INDEX     p   CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);
 3   DROP INDEX public.admin_permissions_role_lnk_oifk;
       public                 postgres    false    312            �           1259    30652 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public                 postgres    false    260            �           1259    30675    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public                 postgres    false    264            �           1259    30674    admin_roles_documents_idx    INDEX     n   CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_roles_documents_idx;
       public                 postgres    false    264    264    264                       1259    30676    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public                 postgres    false    264            �           1259    30663    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public                 postgres    false    262            �           1259    30662    admin_users_documents_idx    INDEX     n   CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_users_documents_idx;
       public                 postgres    false    262    262    262            y           1259    30944    admin_users_roles_lnk_fk    INDEX     ]   CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);
 ,   DROP INDEX public.admin_users_roles_lnk_fk;
       public                 postgres    false    314            z           1259    30945    admin_users_roles_lnk_ifk    INDEX     ^   CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);
 -   DROP INDEX public.admin_users_roles_lnk_ifk;
       public                 postgres    false    314            {           1259    30948    admin_users_roles_lnk_ofk    INDEX     _   CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);
 -   DROP INDEX public.admin_users_roles_lnk_ofk;
       public                 postgres    false    314            |           1259    30949    admin_users_roles_lnk_oifk    INDEX     `   CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);
 .   DROP INDEX public.admin_users_roles_lnk_oifk;
       public                 postgres    false    314            �           1259    30664    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public                 postgres    false    262            d           1259    30908    articles_author_lnk_fk    INDEX     \   CREATE INDEX articles_author_lnk_fk ON public.articles_author_lnk USING btree (article_id);
 *   DROP INDEX public.articles_author_lnk_fk;
       public                 postgres    false    308            e           1259    30909    articles_author_lnk_ifk    INDEX     \   CREATE INDEX articles_author_lnk_ifk ON public.articles_author_lnk USING btree (author_id);
 +   DROP INDEX public.articles_author_lnk_ifk;
       public                 postgres    false    308            f           1259    30912    articles_author_lnk_oifk    INDEX     _   CREATE INDEX articles_author_lnk_oifk ON public.articles_author_lnk USING btree (article_ord);
 ,   DROP INDEX public.articles_author_lnk_oifk;
       public                 postgres    false    308            k           1259    30920    articles_category_lnk_fk    INDEX     `   CREATE INDEX articles_category_lnk_fk ON public.articles_category_lnk USING btree (article_id);
 ,   DROP INDEX public.articles_category_lnk_fk;
       public                 postgres    false    310            l           1259    30921    articles_category_lnk_ifk    INDEX     b   CREATE INDEX articles_category_lnk_ifk ON public.articles_category_lnk USING btree (category_id);
 -   DROP INDEX public.articles_category_lnk_ifk;
       public                 postgres    false    310            m           1259    30924    articles_category_lnk_oifk    INDEX     c   CREATE INDEX articles_category_lnk_oifk ON public.articles_category_lnk USING btree (article_ord);
 .   DROP INDEX public.articles_category_lnk_oifk;
       public                 postgres    false    310            �           1259    30575    articles_component_type_idx    INDEX     _   CREATE INDEX articles_component_type_idx ON public.articles_cmps USING btree (component_type);
 /   DROP INDEX public.articles_component_type_idx;
       public                 postgres    false    248            �           1259    30589    articles_created_by_id_fk    INDEX     W   CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);
 -   DROP INDEX public.articles_created_by_id_fk;
       public                 postgres    false    250            �           1259    30588    articles_documents_idx    INDEX     h   CREATE INDEX articles_documents_idx ON public.articles USING btree (document_id, locale, published_at);
 *   DROP INDEX public.articles_documents_idx;
       public                 postgres    false    250    250    250            �           1259    30576    articles_entity_fk    INDEX     Q   CREATE INDEX articles_entity_fk ON public.articles_cmps USING btree (entity_id);
 &   DROP INDEX public.articles_entity_fk;
       public                 postgres    false    248            �           1259    30574    articles_field_idx    INDEX     M   CREATE INDEX articles_field_idx ON public.articles_cmps USING btree (field);
 &   DROP INDEX public.articles_field_idx;
       public                 postgres    false    248            �           1259    30590    articles_updated_by_id_fk    INDEX     W   CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);
 -   DROP INDEX public.articles_updated_by_id_fk;
       public                 postgres    false    250            �           1259    30601    authors_created_by_id_fk    INDEX     U   CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);
 ,   DROP INDEX public.authors_created_by_id_fk;
       public                 postgres    false    252            �           1259    30600    authors_documents_idx    INDEX     f   CREATE INDEX authors_documents_idx ON public.authors USING btree (document_id, locale, published_at);
 )   DROP INDEX public.authors_documents_idx;
       public                 postgres    false    252    252    252            �           1259    30602    authors_updated_by_id_fk    INDEX     U   CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);
 ,   DROP INDEX public.authors_updated_by_id_fk;
       public                 postgres    false    252            �           1259    30613    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public                 postgres    false    254            �           1259    30612    categories_documents_idx    INDEX     l   CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);
 ,   DROP INDEX public.categories_documents_idx;
       public                 postgres    false    254    254    254            �           1259    30614    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public                 postgres    false    254            �           1259    30425    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public                 postgres    false    224            �           1259    30424    files_documents_idx    INDEX     b   CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);
 '   DROP INDEX public.files_documents_idx;
       public                 postgres    false    224    224    224            -           1259    30813    files_folder_lnk_fk    INDEX     S   CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);
 '   DROP INDEX public.files_folder_lnk_fk;
       public                 postgres    false    292            .           1259    30814    files_folder_lnk_ifk    INDEX     V   CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);
 (   DROP INDEX public.files_folder_lnk_ifk;
       public                 postgres    false    292            /           1259    30817    files_folder_lnk_oifk    INDEX     V   CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);
 )   DROP INDEX public.files_folder_lnk_oifk;
       public                 postgres    false    292            (           1259    30803    files_related_mph_fk    INDEX     U   CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);
 (   DROP INDEX public.files_related_mph_fk;
       public                 postgres    false    290            )           1259    30805    files_related_mph_idix    INDEX     Z   CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);
 *   DROP INDEX public.files_related_mph_idix;
       public                 postgres    false    290            *           1259    30804    files_related_mph_oidx    INDEX     W   CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");
 *   DROP INDEX public.files_related_mph_oidx;
       public                 postgres    false    290            �           1259    30426    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public                 postgres    false    224            �           1259    30625    globals_component_type_idx    INDEX     ]   CREATE INDEX globals_component_type_idx ON public.globals_cmps USING btree (component_type);
 .   DROP INDEX public.globals_component_type_idx;
       public                 postgres    false    256            �           1259    30639    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public                 postgres    false    258            �           1259    30638    globals_documents_idx    INDEX     f   CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);
 )   DROP INDEX public.globals_documents_idx;
       public                 postgres    false    258    258    258            �           1259    30626    globals_entity_fk    INDEX     O   CREATE INDEX globals_entity_fk ON public.globals_cmps USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public                 postgres    false    256            �           1259    30624    globals_field_idx    INDEX     K   CREATE INDEX globals_field_idx ON public.globals_cmps USING btree (field);
 %   DROP INDEX public.globals_field_idx;
       public                 postgres    false    256            �           1259    30640    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public                 postgres    false    258            �           1259    30453    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public                 postgres    false    228            �           1259    30452    i18n_locale_documents_idx    INDEX     n   CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);
 -   DROP INDEX public.i18n_locale_documents_idx;
       public                 postgres    false    228    228    228            �           1259    30454    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public                 postgres    false    228                       1259    30699 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public                 postgres    false    268            	           1259    30698 *   strapi_api_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);
 >   DROP INDEX public.strapi_api_token_permissions_documents_idx;
       public                 postgres    false    268    268    268            �           1259    30957 )   strapi_api_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);
 =   DROP INDEX public.strapi_api_token_permissions_token_lnk_fk;
       public                 postgres    false    316            �           1259    30958 *   strapi_api_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);
 >   DROP INDEX public.strapi_api_token_permissions_token_lnk_ifk;
       public                 postgres    false    316            �           1259    30961 +   strapi_api_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);
 ?   DROP INDEX public.strapi_api_token_permissions_token_lnk_oifk;
       public                 postgres    false    316                       1259    30700 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public                 postgres    false    268                       1259    30687 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public                 postgres    false    266                       1259    30686    strapi_api_tokens_documents_idx    INDEX     z   CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);
 3   DROP INDEX public.strapi_api_tokens_documents_idx;
       public                 postgres    false    266    266    266                       1259    30688 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public                 postgres    false    266            %           1259    30793 (   strapi_history_versions_created_by_id_fk    INDEX     u   CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);
 <   DROP INDEX public.strapi_history_versions_created_by_id_fk;
       public                 postgres    false    288            �           1259    30477 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public                 postgres    false    232            �           1259    30476 $   strapi_release_actions_documents_idx    INDEX     �   CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_release_actions_documents_idx;
       public                 postgres    false    232    232    232            ;           1259    30837 %   strapi_release_actions_release_lnk_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);
 9   DROP INDEX public.strapi_release_actions_release_lnk_fk;
       public                 postgres    false    296            <           1259    30838 &   strapi_release_actions_release_lnk_ifk    INDEX     {   CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);
 :   DROP INDEX public.strapi_release_actions_release_lnk_ifk;
       public                 postgres    false    296            =           1259    30841 '   strapi_release_actions_release_lnk_oifk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);
 ;   DROP INDEX public.strapi_release_actions_release_lnk_oifk;
       public                 postgres    false    296            �           1259    30478 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public                 postgres    false    232            �           1259    30465     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public                 postgres    false    230            �           1259    30464    strapi_releases_documents_idx    INDEX     v   CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);
 1   DROP INDEX public.strapi_releases_documents_idx;
       public                 postgres    false    230    230    230            �           1259    30466     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public                 postgres    false    230                       1259    30723 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public                 postgres    false    272                       1259    30722 /   strapi_transfer_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);
 C   DROP INDEX public.strapi_transfer_token_permissions_documents_idx;
       public                 postgres    false    272    272    272            �           1259    30969 .   strapi_transfer_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);
 B   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_fk;
       public                 postgres    false    318            �           1259    30970 /   strapi_transfer_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);
 C   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_ifk;
       public                 postgres    false    318            �           1259    30973 0   strapi_transfer_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_oifk;
       public                 postgres    false    318                       1259    30724 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public                 postgres    false    272                       1259    30711 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public                 postgres    false    270                       1259    30710 $   strapi_transfer_tokens_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_transfer_tokens_documents_idx;
       public                 postgres    false    270    270    270                       1259    30712 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public                 postgres    false    270            �           1259    30489 !   strapi_workflows_created_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);
 5   DROP INDEX public.strapi_workflows_created_by_id_fk;
       public                 postgres    false    234            �           1259    30488    strapi_workflows_documents_idx    INDEX     x   CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);
 2   DROP INDEX public.strapi_workflows_documents_idx;
       public                 postgres    false    234    234    234            B           1259    30849 1   strapi_workflows_stage_required_to_publish_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);
 E   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_fk;
       public                 postgres    false    298            C           1259    30850 2   strapi_workflows_stage_required_to_publish_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);
 F   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_ifk;
       public                 postgres    false    298            �           1259    30501 (   strapi_workflows_stages_created_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);
 <   DROP INDEX public.strapi_workflows_stages_created_by_id_fk;
       public                 postgres    false    236            �           1259    30500 %   strapi_workflows_stages_documents_idx    INDEX     �   CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);
 9   DROP INDEX public.strapi_workflows_stages_documents_idx;
       public                 postgres    false    236    236    236            O           1259    30872 *   strapi_workflows_stages_permissions_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);
 >   DROP INDEX public.strapi_workflows_stages_permissions_lnk_fk;
       public                 postgres    false    302            P           1259    30873 +   strapi_workflows_stages_permissions_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ifk;
       public                 postgres    false    302            Q           1259    30876 +   strapi_workflows_stages_permissions_lnk_ofk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ofk;
       public                 postgres    false    302            �           1259    30502 (   strapi_workflows_stages_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);
 <   DROP INDEX public.strapi_workflows_stages_updated_by_id_fk;
       public                 postgres    false    236            H           1259    30860 '   strapi_workflows_stages_workflow_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);
 ;   DROP INDEX public.strapi_workflows_stages_workflow_lnk_fk;
       public                 postgres    false    300            I           1259    30861 (   strapi_workflows_stages_workflow_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);
 <   DROP INDEX public.strapi_workflows_stages_workflow_lnk_ifk;
       public                 postgres    false    300            J           1259    30864 )   strapi_workflows_stages_workflow_lnk_oifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);
 =   DROP INDEX public.strapi_workflows_stages_workflow_lnk_oifk;
       public                 postgres    false    300            �           1259    30490 !   strapi_workflows_updated_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);
 5   DROP INDEX public.strapi_workflows_updated_by_id_fk;
       public                 postgres    false    234            �           1259    30513    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public                 postgres    false    238            �           1259    30512    up_permissions_documents_idx    INDEX     t   CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);
 0   DROP INDEX public.up_permissions_documents_idx;
       public                 postgres    false    238    238    238            V           1259    30884    up_permissions_role_lnk_fk    INDEX     g   CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);
 .   DROP INDEX public.up_permissions_role_lnk_fk;
       public                 postgres    false    304            W           1259    30885    up_permissions_role_lnk_ifk    INDEX     b   CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);
 /   DROP INDEX public.up_permissions_role_lnk_ifk;
       public                 postgres    false    304            X           1259    30888    up_permissions_role_lnk_oifk    INDEX     j   CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);
 0   DROP INDEX public.up_permissions_role_lnk_oifk;
       public                 postgres    false    304            �           1259    30514    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public                 postgres    false    238            �           1259    30525    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public                 postgres    false    240            �           1259    30524    up_roles_documents_idx    INDEX     h   CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_roles_documents_idx;
       public                 postgres    false    240    240    240            �           1259    30526    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public                 postgres    false    240            �           1259    30537    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public                 postgres    false    242            �           1259    30536    up_users_documents_idx    INDEX     h   CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_users_documents_idx;
       public                 postgres    false    242    242    242            ]           1259    30896    up_users_role_lnk_fk    INDEX     U   CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);
 (   DROP INDEX public.up_users_role_lnk_fk;
       public                 postgres    false    306            ^           1259    30897    up_users_role_lnk_ifk    INDEX     V   CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);
 )   DROP INDEX public.up_users_role_lnk_ifk;
       public                 postgres    false    306            _           1259    30900    up_users_role_lnk_oifk    INDEX     X   CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);
 *   DROP INDEX public.up_users_role_lnk_oifk;
       public                 postgres    false    306            �           1259    30538    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public                 postgres    false    242            �           1259    30419    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public                 postgres    false    224            �           1259    30423    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public                 postgres    false    224            �           1259    30418    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public                 postgres    false    224            �           1259    30421    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public                 postgres    false    224            �           1259    30422    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public                 postgres    false    224            �           1259    30420    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public                 postgres    false    224            �           1259    30441    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public                 postgres    false    226            �           1259    30440    upload_folders_documents_idx    INDEX     t   CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);
 0   DROP INDEX public.upload_folders_documents_idx;
       public                 postgres    false    226    226    226            4           1259    30825    upload_folders_parent_lnk_fk    INDEX     g   CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);
 0   DROP INDEX public.upload_folders_parent_lnk_fk;
       public                 postgres    false    294            5           1259    30826    upload_folders_parent_lnk_ifk    INDEX     l   CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);
 1   DROP INDEX public.upload_folders_parent_lnk_ifk;
       public                 postgres    false    294            6           1259    30829    upload_folders_parent_lnk_oifk    INDEX     j   CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);
 2   DROP INDEX public.upload_folders_parent_lnk_oifk;
       public                 postgres    false    294            �           1259    30442    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public                 postgres    false    226            �           2606    31079    abouts abouts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_created_by_id_fk;
       public               postgres    false    246    262    5116            �           2606    31074    abouts_cmps abouts_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.abouts(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.abouts_cmps DROP CONSTRAINT abouts_entity_fk;
       public               postgres    false    244    5072    246            �           2606    31084    abouts abouts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_updated_by_id_fk;
       public               postgres    false    246    5116    262            �           2606    31139 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public               postgres    false    5116    260    262            �           2606    31319 8   admin_permissions_role_lnk admin_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
       public               postgres    false    5111    312    260            �           2606    31324 9   admin_permissions_role_lnk admin_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
       public               postgres    false    5121    312    264            �           2606    31144 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public               postgres    false    5116    260    262            �           2606    31159 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public               postgres    false    262    264    5116            �           2606    31164 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public               postgres    false    5116    264    262            �           2606    31149 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public               postgres    false    262    5116    262            �           2606    31329 .   admin_users_roles_lnk admin_users_roles_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
       public               postgres    false    314    262    5116            �           2606    31334 /   admin_users_roles_lnk admin_users_roles_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
       public               postgres    false    314    5121    264            �           2606    31154 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public               postgres    false    262    5116    262            �           2606    31299 *   articles_author_lnk articles_author_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.articles_author_lnk DROP CONSTRAINT articles_author_lnk_fk;
       public               postgres    false    250    308    5084            �           2606    31304 +   articles_author_lnk articles_author_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.articles_author_lnk DROP CONSTRAINT articles_author_lnk_ifk;
       public               postgres    false    308    252    5089            �           2606    31309 .   articles_category_lnk articles_category_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.articles_category_lnk DROP CONSTRAINT articles_category_lnk_fk;
       public               postgres    false    250    5084    310            �           2606    31314 /   articles_category_lnk articles_category_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.articles_category_lnk DROP CONSTRAINT articles_category_lnk_ifk;
       public               postgres    false    5094    310    254            �           2606    31094 "   articles articles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
       public               postgres    false    262    250    5116            �           2606    31089     articles_cmps articles_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.articles_cmps DROP CONSTRAINT articles_entity_fk;
       public               postgres    false    250    248    5084            �           2606    31099 "   articles articles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
       public               postgres    false    5116    262    250            �           2606    31104     authors authors_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_created_by_id_fk;
       public               postgres    false    5116    262    252            �           2606    31109     authors authors_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_updated_by_id_fk;
       public               postgres    false    252    5116    262            �           2606    31114 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public               postgres    false    5116    254    262            �           2606    31119 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public               postgres    false    5116    254    262            �           2606    30974    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public               postgres    false    5116    262    224            �           2606    31219 $   files_folder_lnk files_folder_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
       public               postgres    false    292    224    5005            �           2606    31224 %   files_folder_lnk files_folder_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
       public               postgres    false    5020    226    292            �           2606    31214 &   files_related_mph files_related_mph_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_fk;
       public               postgres    false    290    224    5005            �           2606    30979    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public               postgres    false    224    5116    262            �           2606    31129     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public               postgres    false    5116    258    262            �           2606    31124    globals_cmps globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_entity_fk;
       public               postgres    false    5106    256    258            �           2606    31134     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public               postgres    false    5116    258    262            �           2606    30994 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public               postgres    false    228    262    5116            �           2606    30999 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public               postgres    false    228    5116    262            �           2606    31179 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public               postgres    false    5116    268    262            �           2606    31339 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
       public               postgres    false    5131    268    316            �           2606    31344 Q   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
       public               postgres    false    5126    316    266            �           2606    31184 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public               postgres    false    5116    268    262            �           2606    31169 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public               postgres    false    262    266    5116            �           2606    31174 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public               postgres    false    5116    266    262            �           2606    31209 @   strapi_history_versions strapi_history_versions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
       public               postgres    false    5116    262    288            �           2606    31014 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public               postgres    false    5116    262    232            �           2606    31239 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
       public               postgres    false    296    232    5035            �           2606    31244 I   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
       public               postgres    false    5030    230    296            �           2606    31019 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public               postgres    false    232    262    5116            �           2606    31004 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public               postgres    false    262    230    5116            �           2606    31009 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public               postgres    false    230    5116    262            �           2606    31199 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public               postgres    false    262    5116    272            �           2606    31349 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
       public               postgres    false    318    5141    272            �           2606    31354 [   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
       public               postgres    false    270    318    5136            �           2606    31204 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public               postgres    false    5116    262    272            �           2606    31189 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public               postgres    false    270    262    5116            �           2606    31194 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public               postgres    false    270    262    5116            �           2606    31024 2   strapi_workflows strapi_workflows_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
       public               postgres    false    234    262    5116            �           2606    31249 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
       public               postgres    false    298    5040    234            �           2606    31254 a   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
       public               postgres    false    236    298    5045            �           2606    31034 @   strapi_workflows_stages strapi_workflows_stages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
       public               postgres    false    5116    262    236            �           2606    31269 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
       public               postgres    false    302    236    5045            �           2606    31274 S   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
       public               postgres    false    260    5111    302            �           2606    31039 @   strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
       public               postgres    false    262    236    5116            �           2606    31259 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
       public               postgres    false    5045    236    300            �           2606    31264 M   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
       public               postgres    false    300    234    5040            �           2606    31029 2   strapi_workflows strapi_workflows_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
       public               postgres    false    5116    262    234            �           2606    31044 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public               postgres    false    238    262    5116            �           2606    31279 2   up_permissions_role_lnk up_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
       public               postgres    false    238    5050    304            �           2606    31284 3   up_permissions_role_lnk up_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
       public               postgres    false    240    5055    304            �           2606    31049 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public               postgres    false    238    262    5116            �           2606    31054 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public               postgres    false    262    240    5116            �           2606    31059 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public               postgres    false    262    240    5116            �           2606    31064 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public               postgres    false    262    5116    242            �           2606    31289 &   up_users_role_lnk up_users_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
       public               postgres    false    242    306    5060            �           2606    31294 '   up_users_role_lnk up_users_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
       public               postgres    false    240    306    5055            �           2606    31069 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public               postgres    false    5116    242    262            �           2606    30984 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public               postgres    false    5116    226    262            �           2606    31229 6   upload_folders_parent_lnk upload_folders_parent_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
       public               postgres    false    294    5020    226            �           2606    31234 7   upload_folders_parent_lnk upload_folders_parent_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
       public               postgres    false    294    226    5020            �           2606    30989 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public               postgres    false    226    262    5116            �      x������ � �      �      x������ � �      �      x��]ˎ�8�]�����8AR|H^�f6��L��{A���IR�F����售-*%�]���Af�D0"���j�g�҈��UjЖ}��>DMmUm�W���/jj�F�"��U�_���>|a�ۗ����3UJ�������f�T���o�²�
����'��������~@���=< ���O~���d5��RP3���N1!d�/��YT��߾:���D:km�ԏ��!��Q3(�� z�6?E�/O=_���MoJ�@�u�YX�u�$}=3�겺�����_>}yVA-����⣄�Y����S�=m��W>lZ=c�A?�a�.sv[��k���ñ��W�U�/�DL�ȉ�MPJ�"^u���5&�A������{:%����ĽM��^룮�������\ݕ��tIF��8�T����f�13�j��By:���U��rH�b���@T��0$>&�rg56�%7�����{�.� 2�Q�edZ袦EdV�m)�V~�m�����w�a���Ul����Y����/˟����i�i���JTֶ�na�y��~�c�c�sÛxh�G=��	l=8E��]=G�m�~�cr�o�{I�$��l6Ʊ_�k�Y_�	�*��5�t׍�.����vCd�1�<$�Or�u��w������N�����o�)�L�H���<w�(?����On�� L~ ey�ykf�cT'�T�ۄ��M:p�_'��2���*_���87y ]�3�p�M:)�P�/�������F��
Y<��F~EBO
E����}Xf&��y>:6W7�w|1(LHP[�M>�}�pݣ�������e��1��o�=0�zD=�Y�[]�NY���^�狾�{m��cb�}�F��Ӓd�/�U�g|��|�`���z�@�j��xf!�4�*]�9�����������"�2�,qcT��ֱ�歬�W�B�f����qX�ޘp0�m�OѰ��D�Hu�GM4�/��*���������mN�q�Í�:!��bl!u�)MP�D�}�/i	c�5��9��8+q�le-��4�tH�}a�6S���jK�NY�xct�P�A0�%cUZFf�lk�67�d���Z�Տ�������cR��e�I$x���k�v~_fu�61G�=�7bt��eR�v�	�i�61���~l������g���_��M��q9�7�<`�`�����S'����?k/��bv�7��ҥk[��0(��y6��λy��o�^��a�Nx�����ai���q�5]�\�q����q���;6
7�o�s���(,��>n+/�EL�R��]� g/�7��&�����:hu�q�ҤZ.T�Fc��Z����w� hDXףZ��|��X����/��<)�p��XY��2���Y1RŢ/����RV����	w��I�V�U���:�_�*�����q
���MKd|ni��Q���@^��n-��z������7c@�="�7۸��T���0��v��i�t=��4�`ob^ �~���h�t?�AY��fr=�8�ޟkB�#��R�U�F�A�P��p��NQ��5�������f��7��MR��m���\�:�p�{�<�CW���m-�n輔jo����O�����b��uJǾAc����+2rM��3`�͏��s|��wZ�Q�I��+Y��e�PB��c�������Mx�F�ߧ,����@�Gno��\� ����3|WH)��&��r-}�x�V���\�U�'�ns]�<$^��b�{I�G}6
M�w8ι.��8�9�*�@P�yД���fh����t�s]�����	��X�R�}�ˌ�C�s}ߚ��9_�:~�o2``F3jM㢡7k/���@�ц�Ώ'Pg�������z`��)�IPj��jN����8�=-��]Ea1�#�S�J/翧9�>��\�~))�XՏq��UڏK��h�����kz8�y�oDHg�8+� �e�����5�׭^�8����K�A��>f�h�p��5�%��;{��c���'�F���GUZ�S�N��K�ܩC_e0J����Uf̚@�f�"Ϲ�����[�n�L~�A�Uc���V�6��7�צP��tu�F]�G��%��k���nJw�^;��t ��|)���&�2���b/����vP>���RJQʹ�S�P�y%�^g���~�<ҫT��s�;7e(����X6M��J+]�yP$?˄���p���$Ġ��,��%[b�S_��c��W�S���&)���._�X\�pݿ�'مY����_9�No����RuB4��]��DIAn�ؾC`������d,*��-8�����6E���F��2d��t8%v�o:X�\Y����g��l�
z
�?bʜ��á�3|o�>0��6,b�A�����W6�?r�|���rrR��2��
��i�^����F�����ԇ�N͒UI�tYW���1�j�^��9���c�>�7Y0�s!ʎ�L{��h��h�f|�O����R�� ~�oZX�"/E��Ѱ��,q�Z�a���?���@Vh2�Y��sS�>Χ�ko����)!{�_8��)����@���vaj������V$����{�v=N@�B�I�YY���n�4���,�{=d���8O�MR��,H2�\GY��M��������ֆ�&8z�� l��Z/�M�7��e��Sn�r���P�i�����]�$4^T�U��2���aw[V
�U����"�V*�.��բK����{"׆��?nŞᯄ}쐬f\%��V�΋�b"5�^�҇3���F�5Mڱ/ǲjd�¸��}��F�W�W��0��{�S�Xؼ�yw�j��B�����1���T׍���Yψ�>B&�Z��u�d�(�-�w��c����Ʃ>"͈���_��Zf��[���#>��g
�Z_w��Q1G<Fޏ�z���\���%7��>�S/JK��h�e�����Z�B���8���68h��0��'uU�I)3~a�ۮ��>O���¶�徍X&�)m,�rr��duR��vn��{
�s�g�F6 ��B�#� ��h0�l����)K=2�o$��N�W��	��eu�X�6>�%�c�ݑ9j���WdO��o!�챍:�=U�ˎ�p���34E����kE�������Í�b��yZҗ�?ǃTxB]*U��ݼ�c��b���q����k����Hx Ec
�1d�<Z�Hm��Ev�=�+���I���z�8n���Q���y�2�|cE��倻�j����e��q����.�[���A���J��׶9�`�O>ik/��."�=�g�����Q����,k�dCڇJ�2��^>�g�����A�UK{ �"V��U�p�|I�fl}����KӃu3Hl
���m��tfC���KZ�����8��WVB ��O���S+�,݂U����l"�f~�;*7�D
�����Γ���:4C��Tv�����;67�G�Z�K�C�7����(�zA4�|H�bh������)X�LW�t^3䒓1o��ڪ�sR����)L��e�!'K��a��}J�W�{o�R���;b���F�� y� VUO�Wdl���<�V�����#�v��w��dIb\Po�OI^�z3�7�.s'=��F~x�����u��|�l�M�T�X�o���><g���L_�S,����B瘥՛�.z��]���avM�R�B.���4c�$o�������� ���:&Q��WU�B�@"Ƀ���c̫�|�W8�7�=�yσ}�[K%�S4�	3�^]fG{�ߑ� �?�P����c7�&�G�����b�UU[���ґҺ�}�A�u)�抩���Ԩ�,��n��SGl>�wT	(e�4���J&#)��Xvz�D)�����;����JADD��v-�Mň����^�k�p�|G�����~Y/19�*.�o�d�Ѕ��bGs� w$��#���9O�?��H:]�?�X�f4�0m���w��s �  |G�%O86�Q���e+�7��+B��sr7����^24,��,����:�WO���E
<ǃO���`͈�8�D�ӆ0��lG�������3Np��@1i� V��Di��X�j����8b��c��X�$�[����+�"\S�'6�L�q���q�@fm���|i�n�#V7���g.W��b���:�V�D�*�P�įڐ܋�g6��������]#���� t��5y\��W���i�����>�wl�[��ǌuC��j�E�Ri����Y�a�w��p���K>ua��X����%�Y�aT9�wl|Pj^��T�ml�f@}����U�!����;6(� �Is���7�����N����Ǹ޺�G�2�mJ��h'�_.��񾽾�0��y@����P�j͇��=�w�H���\t���د�`�C�8v���5�>K9��[��A��~["\���-�:%&�%���v}X���;J��~�S5=�����m:顎U+}�Vp�u��O�(�q��n&t\d��|(���.�:<7;�w�(x�|�H#��!b~�^6v�k�^�\E�f.�����1���y"oF[v"�ɺ�d�s�d��0O=�w�8�C�f�4��ލE��D��C�gZV���J��T�m���qװ.�55+$�P�0�M��id1w���� ���k��u+Ҵ�F��E�l�),\���"9Mn|���!m��W�k��e?�"�P�bu������9L�*��D{�D=����F�nm]^��|��a��s23;,��!��62�Юsq���B}��-�x`hUG{��@Gy�0Ya���=qq��E�6��*�IUG��8
�g����������T��w�(U`�>�>�]����g�_Oq��ğ|��p��D���0�B5��1�0Mu}��'U�Y�����(�����wE.c�T�D��M�O3 �xc�3���������_~��J>      �   �  x��ˑ%1υ1B��/�;&�c�i9��K�RSS߿(gE�9;�犭͹��p����7��"�iD��4#���9#K髳"[�۳#�Ҁ\�[iF�ȣ4&O�U��7�)��is�e�d~�)fLP�͊	ʴ�1A�6WLP���i��eڼ1A�6_�P�V#*U�UF�K�]!ڧ[Tˁ~��@��r�a9P���XO��!�вSDY��|���2Sв�:Ơe/�9h�[mZ�Q���}�F�e?�Yh���ah�R�4�\|i��r��7ӌ�Z��������Z���:Z���"0@�'�b b�������6V�H��KD"��m�)���b_���3t|#���W2������Җ��a[��3��:���>��}���e��t��gܡkC_Z2��/�7��/�����k�K�3`��uM�@�蚆�.�4t��i5��O���ئU��a�V+�0�v��3�N��gZ���i��=�zĻz�u�㥚�<���j^�����
�q���<�a��<�Ӊ�(�:�\'梀��^������"�;1�?�;Xt����5��KÉ�(�;1t'v����qН����Q@wb=6t�6�A�Ċ�W�`���s��#_�I
�N\IݩMl�/1)t'6���Ĩ,D�N�Ja7��C�5��߹;8t�v��R@w�_
�NL݉�)�;q1t'>fCw�d
?"wp頽������zq����\:`�|���������      �     x����r�  k����%�s�6MZ7��AH�%�����*<s�4�P�uC�j*+h5��N�y��$m	��M:�J��s���ƹDf̲�f��9?��Q:��3R�%M�&��Ώͪ�{��yAίq��,Soе���
�龮�,Բ���8�d�"��w�`8�w�Q���!hˍA�Q����T(�(睐�~?**24�;�W��^o���Bk���|xT��E��"���o�[��?H����{����$I�䍦�      �   �   x�3�̨̩JNN74(,�/��-(M�*�J*�MO�H,J����L- ��+��s3s���s9U�UT\�\r�*BLM",���*����J��r-��̒=J�r���R�
J3=+�C�LK��A�Q	g�2202�50"C+#+K=S�͡���q��qqq  3<�      �      x�3�4�@�=... �      �   i   x�3�L�(M/1)�J�L,3��32Ϫ��6)K�J-�LI�K�L��M��/R(B��q����������������Nq�C ���2�����M,`����� �C�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���K�� @��)���>Ĝ�7(*�l@QO�=�L��ʫ�-�%�a�uj��~�۩��G�� ��~��"���|��L��S��c��S?���&F���*MÀH����ZoH�|�S��s襾*��:.KTk���6�6Bk�ڐ
��@�s��)������@ux�ϥw�����0��o���{��;Tjq'�+�i([w�����_&��c����e�����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      t   �  x����o� ���W��bO�n��k��V��~͏�]��}B?f�-hB����<�/D6,�[��z�Q�u�+�ִ1��q\����y%�ca˜'�䱈���_����Y�7�-�5��bvN��D83{�M��|�D���NWg�v�4�V.NY�Cւ���'��٘�&UN�Ais���}%��P�C�2�x|%�x��(�,�F~+yH!#}�%c��"U�B&��F���Ӷ��0��U;�ٍ⠕S8�f�	&�@�8P9�` ��Pa�E,�|��t
��L�*�R��DDC���R�
E�v���rܫ8�� c23�M1b�C(ػ����
Ax���軁���0��������`������1�Q4�����T��Z����E      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      x   W   x�3�,I�̫(��+.��H/I./K�2�5J6�t�K��,�P�H���L��4202�50"C++CS=��-9c� �+F��� @�w      �      x������ � �      �      x������ � �      �     x����n1�뽧��I�(��5�$Aj7�R��o��۬/O��0� 0��3�)>�fz��^�9��tj�t�□�Q�oci����?���{u�NeT[w����O5���<t��M�r�^�u)�d�Uj�R��X�˴�uk�H�Z2ޱf�=�ly�A{'"Q��7؊��$�I�NH��Z�l������(���1��/&�,�B���ن����c��{�(CwNߙp�s�y��٦N�]�3mO�vy��_͗����̿��K��#࿰��0q'���_*��TC&�F)ha!�P�f�+k�$�6�ّ@*��S�l�:b
��VѢ�<K�����Z����S�$̚���!��!��3�I=��~���v X=̾      �      x��]{s�6��[��s��\Iɯ8���9����/v���Eb4�8��H�S���q_�>��M<̃c���l2"�F����h �̳�e���"�Q^�gQ]���=I/eT�E�Z��Quz�ʜ�.�Y%�I���?���4����/�Ut���i].��g�Q�~�PT�S��W�>���>9>΢4�!EY2<���	�D��~_������e�J���������(�ꈲ�&��(Ik�_����5̢��28��d���pAZmCJ��Tq�Ή��G�a�E1�c�N�T���Qj�9�}x���s�i���QCl�Y��خÇ�8�<�L��.�mh�0y�&�b�%t��������S��yJJ�>N�r�ĢH�ǆ���$�*�K��
2��n��;"#�#B���j4���Y
�F���8a�*�Zl���.x�}x[����g��c�]���̟���y?n��V��Ӻ�T_�ϱ (m7���\���@Nx��϶"h ��=�<��.�]��ڍR�{�E5J^�־I\�Wޡ�Q�B�˄�7�Mb'���W�+�D8�7�U��IZV�K��jW�7܆&q�mP�]�B �-2Z�4��x�i���y�?~��O��4���gw�2���<����4�� 8My��k�/���N6�}���Ϫ�ͦ@<V7 .������L�k-ɚ����h��(�J>'3�!��0�;(.~Cq}�������oe���1z��1���c�"��	��8,�.�Ҕ�Y��ߛ�Y��nO��q�>O��G>�j@v�6ye~<�@s�Ĝp�e �>�R�{nBW���� �Vc��r�� ��.`�~ ��ހH�n�ғ��(+�(��� �E�F�w�I��Kp,펅�FW�,b���b�M3r���矏J���BՈ�F�F����Z)�]���o��(Yd.v��Nv�4�>��}.r��eZ�*Ľ[G��	�N�)H{E�Ĥf�E����:�\�؞A&���o� L�0���^��+A�
0�5l�E@5�Pqi��-�f������@Ul�M�;�4�0,�A�*�}�ہi?><9�<�+��ɐH����>�N� 蛧'�?{���ɣ�&�;��2��:BA�"\���0.��&��/$��� *��YT*�T!1 ̌"IZaE��_`9]Ƣ,���'e4�_�ɻ�V������۷MN!q�J�'}Щ-�CZ~t�HE������w�Ţf����rT9J�f
�9�UGZ�~_�%J�e'=�A�~d !Ϟ��^��18��Y@	��%~�辦�>t[On+�J���W�����(�.�c�֫[���k���n�@��O�bCF����~a�����pV���y�_Q~ۢN��)L�xK�u���v�M�t�ʊ9Qix�ezM$o��cJp��oP~IOL�� �gb<�S�q:CW�sf�\9}|S�.�6*Dj�8v����dF�]����`�\�?�4?�2�������ɗI0���y0��uP�O?G��-�k�!�����u�]�%2�N�z�M%/���"[���o�"^��8�DT�<F�����;�c�.�<A����0�D3����=�1�K���C��d8�L�E�) O����8�!rM�5��jM�5��C�zQ ~�@���!�w��?	�&)��Yqe$c��~�����s���un~8�Џ���cr��/hr�5 ׀\��\�\6�]�$JSf����g�m�VC7���apy@�-����hٵE������Q�i��/1��6ǥ��Y4���xk�ؼm�_���ԟ�*L��D��=1��p�g8�es>��O�h&�و0���F���x�lD����u0�ٝ�.6��m�XoD�T�2�(X�yC��׊�~}85I��x#��v֌���}O�;'�<@�,��G� �`�`R��^�%Ҁ�ؼ�S�I��ZB�)?�<�YZ1wXhEg�����d_+t�q����y����fA��g��ޛg"�f���,��[���@5�Բ�MX'OB9�*����/2��N0!f�w�"ga@G�ĲP)4�׷d
do�[0�.�:b�udY6=PE@=BN˸��4�:�0۪c��,���L��3Z��<Q�D]y"_0��.�
���	Ln���b)�( ��`���欿��w��ߐ���g����+nL�F��t����
e�1�+�����5i�?�U�}Q�d�CBh�B��v�=���zs@�B�V)N�[t\�>���q'+�,�\
�b�kG7Ey5Ɋ�j$~�)�̭�37�����<C�o������u-�����~3}%��.]{��
9{눒q���(B���8��`G̰���9�\ .� �� g��) �����b��mQ��5FYifku�vFS�ٮ��6�u����Ă�z������m����y:U~�K�W��@�?����=���8��Yu'���1)�kd�ځ�
�C�z�˓o�<��"�o���ɉ6�}�8���YZUn�h��� �@�i�����,'��=@t�'l�	���;�x{������mU��uL���8WG
�#�h ,�c�}��kmY��ZfM��:t�הڵf7[���9����� ��)��(MCCu�h�Q�Q�%�K\d�JY������:姅����co����.Z�K�
.D�!�"i�:��-S$�M��.�S
g$g_ �rDﱯ
i��E��n�JG˖�-�x5��u'�%�mN�/��!����z�����'nb�{#�t�ڿ+q1u���Cm_�w�#�!��9F��5jxk���M5��>j��0�M��ņn6��f�k�P���T;�X�Y������5��V����ͣ��)J5\P~����V�U�~ǩ�W����Lʑ;
�NwDA��j5'�X��Y�®f�b(L0�bb.����l���	�sI��4?��i�$�W�n�C#��&��M��
��ˉ[:@�=�C0ĺӐ`�<==�.�E=��&�sd�f�����-��5c��B�h������dЀ���l2��dPOр4�0`�d�#(���:��Pէ&���1�).fs�+��=����V�4"�������Q�g��ӣ���-?U5�p�pв{	 ��� ��0S
�ֈ�,��n`�@�ٵ�lܟ��'��\�A�I:A�m�.�����S�m���8G;۝�ʴu7�jvxS��r�_����/i��/EG/�]�F��\xݙ��,�C����8s��Qr-�8eFF���j���Z��B#f��s[�Q�7xԳ� �錇�W�.*�_�E=�"'W�lL?(��c��Hڃ;�(��"w]��H�j�/ ��T,R1��~�9��"�"�Q�,���-��W�0\���I��>0R��J �ix���q'��N�G/5�%����{� �Βl�G�sWa@(�6ݎ8��) ���������8�[:&�&�(I|SA�!��!R0���P{� �Q0��=�@^(m��
���L+�k�˦��ko��(O?#M�i^�\�@���d�� ����{�ϡy��tռ�n]i�z�h�Uq�0�v��������h�c<�4S���w8�ޢ���M1]1�!r�j�
M�X�A��W�==8/�g��0,�Ө�5e�D�i��M7��Jk��m�����G��Y��+G��|g&���y��������u��.^�=ÿ�&)�]�Bŷ�Xۯ�}�ͶO4���%���h\"��/wx���zw-����]�XjF�]T���!@~��:����]-.~�=�1�R�e�{�N��I���IRӏ�G�#�͵@Y�]���3Lg^�#�W\�\�#�����?�y#�n슐O��H�D�~����28����c�]ښk��t�ps���������IZV���8�ǻo-�͢n鷝b4�{R���E����7>�h��/~j�D�)�����mO+�8ص��+9�{�]o�2WK֋�$��!h���q~�3-&�%���%�|%o"l���^e)x�4LS�4�7Ӕ���AE �_� Zg�m�ُv��.�f<�     X�`��B0�	1��^��Rs�j�%�g]]Bٻ��;uNֻS'���.Ĕ�H���c?�'�Dpw�=��W�x���]��v�ԄIM�&5�{ݲ�'�f���z�;�q|9/�UpW[pW� Pp��b�����40B^���vX���m��	��.��1����<q]��O�՗�,�fʝc^
�$��55��"ψ>NYv�1���z��.f�O��k�nH�MXB�'t�%!BsX���9�"z5��5	�B]>T+b=`�wէ��X:�6���12}�h���Ն�#q��<RU�"�õF�n�<h�y@�A檟�Cxn;y?��]���PW���3�=D$z���=������ S��%�$L� ��ݏ�>V
utl���CA�8Y�n��2k�Q裦T�C|��GZ��j��}j�!�����{��2�v+C�#0xkT^�A�|�X�tN��y�lͨ�P)=�V&�zXN�rN�������z�p�6RH�'HiY����'�����t���Ń�����k_8o?��\�ԭA�tR���)�z��~��.���q*��3O[�����,[���5@�{�Mz�A����'���Yi�w����ן�?_=>`2�"�n�6�:��+;���+:商X8��J���4�Q�~Q�����U�O?�O�	~Ms�5�N�����̏oK���_RI�:�΄]���n(I�!�ٯ��5�.P&hYQ���uQ$�
1I�~�1�LY����ՄN#�7N؇;:C��/���GҸO��ߏ��t���}"7�0�<��V/�+)��
=Z[�ثKF������3��A��F*$8�TIV@��P%���r=z�����:U#����I��)�|��T���m+��l��ݺ�[	�֢梁���R\�a�
�ݲQ�t�Q@o�}P��eK;3�۱�NCڪ@��e
tr�A,��V�D��驀����BՈ�8bX�S��gS��9S��q.�&bz-s+�ٺ�e�}xS%�h
nۜ��}ƹ��W|��c1mf�q������I3��j" ���|�N�פ�������ޅ��
�4[]S��Z&��-����Z!�ë��k��$v«J~�~b�&qs^uEn��r��{?g�;��6��nE�1�M�i�@�ʭ��P+-p�aS0��� �N�<Q��'����{�
5%�N���MQ^M���_GU��t
j�hl4c�	�[��x��l��s�~0&c�c� &C�ta�}�:q(�v����|X7�L�m6@g�	z�~�� x�p�[Qa������� ���ܪA�
C�^�����W��Wg/H^`A����ʯs����RI���N�~��E�	^d�����M'�lx�.�u�>�i�M���{�O7�Ʊ�0s�����6YT���T����Z��`���*u�u|��{_I�f_���g=���XI�_��C��k',5����B�KA���z��N��!�F�0�}1D������b� �:�R4?	��n�"������ЌP^�%�.�}{��0���3����s��s��e�	f�_f7�"��݊U����V�O�$�J������&�f�.ض��5�O�ۓ&��͜I!�������X%k���T�۞�@.}��7%�m��}�A[���4�j�a��ut"<eG��6O7O����x�<��h��s�͂j_1��!-��8ް�@A >��%���JK1(8������R�ma����D=��"�����)<�+�6@�v�s���Ng�TI���:��x0�������P�B/$�x�W*#�x`�����k�ߖ��>���*ȗN��|��vp�N�����*[�v
q�@ ������_:�`[�S��E/���cm���N�B݋Q��v���!��KS!�wz��v�N���9��fz��-̻�L����ڀ@�i;Z0�Խ��aFERg���L��o@��G�
BP��G�U!�O!����F�XmcE��%��n���S���f�s4�zZ�#���KӋ]��7�<���!A�3��߈?*�4v\�&Ӷ���a	H�M�aS%8��ԗm�H[Ć�J{(��37�Sƨ#pBs��~�����.��v$~?�?\����N��������X���#?d��-�諅5p�8d��.=�a�e�{Zg����E���E��E�#�����rؔ�Xז��y�늎m�0� #�����t\qu�o,��
F
Y�.K~f3`��`��H@���n�ۓ{��v����JN���� >�x����+�a��Û.9tC��A�w9�H�d�Ng��t��.*����i��k�������
O�d�E��ƃ�N�]%���\���/rLՅD�Ԏ�A�~��Pˀ�B�?Bj|�4�t�@��:b��� ���B1�$�,#T^�EPw襅~,T�����F%lH�H�	�j�F����o�R��^��T�uu=�
|��aNW:]���U�.S��}�+;SG����iCZ����y2��Q��f',a��V����%��%o��rA�6'�F�n��V%a.�2a.�|����
ܒ���h����H4����L���3iq�ʭ�h��ʶ&�)t��z?�����.>�.�V������*G䃳��!:;9��hY�z 9ܜ� �ݖw���?)>����eþ<��w�F}>���EE,����k�"�����
K���yIU��+�vĸR���9�Ì���0�/�2��\%v�8E�F�q���J#iS��z�{��{k�J��d]Fy5Aex�G�{���-��.��
�RB�ޥX0`�/��S�����G�7(�����,���I��a6�Qpa���͆�Ӏ[~B�F��gE���y'���e<K?GLҬ��uͱkK�ѫt�r>QaiѢ.ޖ)v)���>>6*%�$�	W�;
"hu��zM,�AX���'��1w㬈���������u���K,��!lٛ���5�
z��I�'r'i�XW�Y|Q�r}�"��!�)ܦ���lfQ|����B��d��kN�k�LJń�ZX��h'�Бă��pQW
'��Q��"*ц	j K�Eq�6�8��f�3"˪N���B��}ذjJ��F�`�ӆ�Y�EULj���4O��jCV$e'7#<V�E}��5���<�/����4��ݜ<�VF3����f�I:�6��e�Q(�;V��Ն�_/�v"�xj9�nA�����S�Ɋ�ei~�}I��!?mƈ �R���FB��G�)KQ�`oQQ���2O�Ba,���")����nG��Q\��U~y}-�v8���9�jS��C�'����T^�^�ҪI�c����s��t�y������F
DHHĻW�7�`6�	����@^O����Ȑ3�KT�kH�Sk�C��#e��#Ɛ�j�>��z�9���c=�U_�n����U���R�0�@c�(Ǆ2�d����Cĵ�q�uF��,ÕW�{�NL��Vm��%?�q��D��"? �� �Z��� A{a�Y�BO����sL�Ҍ�cHM����$ϨF3�w�FF�Cс�mS[!�Oʂ�7��_ɳ.�wQ�2)b<k.�J4�n��䘧���I��"����V
+3lE�Q��w���S<I�4�x�1Ȋ��(e���}Q����OFhƿ|�������0���פ�����ܐ��7&G� @�I�e+�b�u1���9�T1��������7�����ȅ#��������V��4ʯ��6�g���#M��d�}OQ�`�]�ً8.y=0�z����ؤ(%<X�z琞�F׈Ȝ�cR���W��Q�;+���j�[Az����7#���;���^�}��������=��:�c�������RZ|�H�j\J��W� 3w�d�cfZ�b8c���/ܱ\b��D�N�Xn�I��SH�(���^��VS�lɨBE�ˣd���<�H��"�{���X��Y��b�J�g���վ�nf��W+�SE�q�8��vf���ы��0�� .    Q45AcZ�[kc 9(�Gk����i�Z��b�s��&���W_}�����      r   N  x��]ɒ۶]�_��ZI����{�r�H%�M�V�X 	IHSM��n����pq)QFU���pq�� ���?�l�������7�=�l7�w����(�(r�$�����C+@�h%iE�z�ɏ�l*�7���~�y�n��9!F��m�ʷ�E��c�|;�Z���N�v�F��Z�������VE<�̟ft���ϙE�F���x#^x�A"�#�5�d0��E����=��mɝ�}{��[�[TmOCL���E��ie�nB��!��~�_�A��V�p}��ci%�J�_��y��_?�����c3�r����(Zҹi��Q-�$����4a�
_6<��6��h��Il��{y�M�l��)�S�!-w�/��(�n��c��:�@���xH�CY�A/��>7�� �#���G�<a��#З�N��♸�+����:=��=rPN(	���ߌ���J v���@:�A�PXa�Ŏ �t�����w�d�?�l���O�M�܇u�	�A�#�*� ��e��'<���m~�V�}�C�ûa��R3��5ev�b�u�NtO�����
��9�?���d�L��4���m�٫R���K�7�;�j�Iڰ�3��eթEÌ�9Ɯ�AN6�T��:�6��G:��6n(�P� ����*��w%�N���U�Ȫ]�\.HvT���ƵQ�C]X���m����M+ �X��^#�N�j�V���]46�|�T6���FgY?�c�#�p䝻��oԇݻ��G҃QFA\�����M�yZ8=Qx�#+
s0�B��ˉ�����8àSgD��~����Z�Ѡ����Ĭ�FOȫ�ŦT�H#.^:�p�3�}��" ���g�xiH3�+�p�V��!��-TI�ȣ�C=�3k-�qtX�n&��̅6����Jy�?�04�>�(�!j��������
px"�u�����=�[��~��fF��^�����U��a2���s��g��P�uPMH{nH�j����bIh����B��mB�b����{��^�@�΅�[�\�ڜ����\�P"`.T���B� �4�"��1�LC��1���=Y�>b��.��$��EP�b�0�9[��#����2�e�l	�㜂q�%�칲,Jo��S@��d�����͂xG����Ǥ�k��+�x|
�?�e�JE�����R���+FZtLbwS�)���Ͽ�z�2���`���>8�x d�<��PUB.�l�n*y��B���T*�s�4ͤTJ9�R���Ei_�#���Q�Fq^��9q�=�n͙'�:�3tgnc���s-�=�s���,�i�����2V� D�- FU�H�K�*�T�*U�h��i������̉R��g_C�{+���6��H�~i�#����^j��̤2#f���Jy@�P����v�|s���+�'GT�@C�5m+��d��UU�����U����+�j�ZcAO��~4�x�x�-���)Fo�&��Er��E�LK튌/��M�̰�1{"��'R�jrh��(��#4Ij��@�i�
1�}7�V�qE�z�4#[F��k���͋�oG��i�А�+omH��mr�+#�vǼJ�[�e)�+@��;O{)s��L�c���AHE�r{�'�]�_��Ĩ�
�E��x��@�������a?�W��a|��X!�лG��q�\�!>����e. ,���S%Vza@�B�ky�?D�`~+fԟQc�_�5����߼��6�����P��F�����׽�5Ѱ�a�+`��[����J��*�3?�R����)�e\�s)��6�6��{���`ƬGѿ��3"�^�8�k���R�[��93�	��>k!<��,@�0����DiĘc߁>�җR�i9��kJ�]�}Ma�����2�u=�%��31ci(��a&Y5�i��Y�]��fU�P�Yi8�J������Q6F��R6�g�������yz�ePt�3v]�b����r3�v�����Ŏ(>]ʼ�+huR�@���e�F���:eeN�#�2���"?:�塚8G+�������x_"��Z<���3'����i� 8����1�{�k�+MOȋ0\�-wD�O$�~�A�n8�H�%���}��q�Q����A{�ȅ��?~��́'���WK�I��/֓h����f≋>�K3��G����w��	��4�B�*P��j�#�ޯ%���s�'H����R��=���)8���L�8Esm[�E�������\�%�\��\�P쉷�&�7+�s4�,��Z�c�-ѯ���t�'Y���7��T�w%�r���5� .�b�h�����T.Il2��a.ƴ�F�Plω%��"73n�K���i!��Q9��]��K�Ρߙ\����ܝ_
_�?YS�H�P駆������!�Pj7�Q��+�/4Yb����Q%[��#���  +��	/����RO�q`�Ϡ���馚�#�m[�ރA#��`��7JzZ{"�;D��9��������_�ͼ��Jl/�`�4|�{��Y���%"�6"�Vv�f�Fڐ�Z���ƚ��Ea7�7�z�޶��0o������/\��'��2�ȩ��AW=���DnoЕӎ�)L�z��П0�&�#T�Z'LT��1^��Q�CY5\�G��tk�S��|��C�s��yD����l�̚��iU
eU�c0��E�^iOET1N��sS�wbq۾fc����m��#�u�Z��������&��Q7�tY��8���֕�	P�~*l����ۖ��Rl����#F�.�^��.�Ua�b�;oثA�����QO&�^��m�5s�E�F�&F��F�CÞ����0���������ݤ���/�a�c�@�юBN��������iI(�z��9z۲J1����9�+^�U3=�ͬ� ��!��4SE}f~	����r$9W�� �e�B:��"�� Q����0,T�N�Zf)d������C������ ��	$&��Ĳdy����2XQm�k@����3���z���Q��ױ��c~�
�z��$���R�rNbV#f�K9��٨iM:jU�=�if��:�nS�@IL��1�Wmucb�*�q�S{�����X�(bY7�,���{+{�dh�y �<ihI߱5<dZ���Js���n�����<�L��|��y��'j��]�w�=��g�xux��p�j�/�gA7|��8Xc@����_X�3`�f�n�eo��m���sTAd��.�H�@5l꽓w�jX�5�����3p����ۛ۷?޼������=���tws�ʽ��9����[t{���������߼�{�ۻ�������w�α]�ao����=�߾y���^�~���v
      �      x������ � �      n      x������ � �      p   �   x�m�A�� ��u|����!�is�np$����t��7�/=9A��p�c�Zx.cNl�Mx�7FN[�'E� }����U�*�X����¶�G��y�`�ٍ�/6X��F�;iЗ��:b�{�l8%�f0�3�K~a��}j�C��JI�������}�Ζ���g�C�� �A�[      |      x������ � �      �      x������ � �      z      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   f  x���ђ� �k�}�uE ��޶}��EQc���$��b��v�����9s�A7���ދ�1\�:��.J����/��A�1d�;� ��@r:_r�/�>�*�'��~?�_!�­�W����IL��h�������O��|�Yy�`3�k�)�M�&|&��hMwƭ����a�J��imߟ҂z�U,��twMneC�W����݀~�J3��J��D���ŏ��Ӱ�*���J�L��HMl�5����'�2�G��F����T[��;4��퐎� S:D�o���g��hf��dZ����{&9pm����~������pu�*_�FSi�J���z���X�c��I��U�C0�~&��E�<2(X�!�Oz��>����Om���`����WF$>�s3�P���EN�:ڿ3~��-����	ns�+{.Li�,�5���Β�G��߲��Fr9mq84�m
Ca�úCBm�� �	��
'�/+C+�xX���"��r=��u>��'�AK���@^���"���C<.���Q���hL�Z��IDW|<;�u���R�-�?�)N?���=�-�e�0�[bv~>���v�_����      �   T   x�%���0D��PL�a��K��#� xG�5ؕ8��n"���������
��G��A�st����{D��
�      �   �   x���M
�0�דS��$��
]�����_�XҤ����-؅����ǡ7�[�"��#K�b�q��6�)���t鱂3�e0��� m�Z�Z~���D���<�t	�Y����ha;y�e`�D*��f7�Z[��KנL����%�X_6Wy��'�""����a$      �      x������ � �      �      x������ � �      v      x������ � �      �      x������ � �     