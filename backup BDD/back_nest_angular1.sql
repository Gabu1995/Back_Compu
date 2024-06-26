PGDMP      "                |            back_nest_angular    16.1    16.1 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    28876    back_nest_angular    DATABASE     �   CREATE DATABASE back_nest_angular WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
 !   DROP DATABASE back_nest_angular;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    28877 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    detalle character varying NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false    4            �            1259    28882    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    4    215            �           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    216            �            1259    28883 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    4            �            1259    28888    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    4    217            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    218            �            1259    28905    persona    TABLE     �   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombres character varying NOT NULL,
    apellidos character varying NOT NULL,
    "userId" integer
);
    DROP TABLE public.persona;
       public         heap    postgres    false    4            �            1259    28904    persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public          postgres    false    4    222            �           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public          postgres    false    221            �            1259    28889    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying NOT NULL,
    password character varying NOT NULL,
    mail character varying NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false    4            �            1259    28894    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    4    219            �           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    220            )           2604    28895    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            *           2604    28896    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            ,           2604    28908 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            +           2604    28897    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �          0    28877 	   categoria 
   TABLE DATA           8   COPY public.categoria (id, nombre, detalle) FROM stdin;
    public          postgres    false    215    &       �          0    28883 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    217   O&       �          0    28905    persona 
   TABLE DATA           C   COPY public.persona (id, nombres, apellidos, "userId") FROM stdin;
    public          postgres    false    222   �&       �          0    28889    user 
   TABLE DATA           :   COPY public."user" (id, name, password, mail) FROM stdin;
    public          postgres    false    219   '       �           0    0    categoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);
          public          postgres    false    216            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
          public          postgres    false    218            �           0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persona_id_seq', 1, false);
          public          postgres    false    221            �           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 1, false);
          public          postgres    false    220            4           2606    28912 &   persona PK_13aefc75f60510f2be4cd243d71 
   CONSTRAINT     f   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "PK_13aefc75f60510f2be4cd243d71" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "PK_13aefc75f60510f2be4cd243d71";
       public            postgres    false    222            0           2606    28899 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    217            2           2606    28901 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    219            .           2606    28903 (   categoria PK_f027836b77b84fb4c3a374dc70d 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.categoria DROP CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d";
       public            postgres    false    215            6           2606    28914 &   persona REL_551ede1f9ac73b4e8f18495c6d 
   CONSTRAINT     g   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d" UNIQUE ("userId");
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d";
       public            postgres    false    222            7           2606    28915 &   persona FK_551ede1f9ac73b4e8f18495c6da    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da";
       public          postgres    false    222    219    4658            �      x�3��/H
�E�
)���\1z\\\ r��      �   �   x�U�1�0��9�c�.ͥ�,��9k(�����%���{��#C#y��	�E[�֨�����Na0sZU�T��vp_GL���iK��%?�RTc�*p�nd�>�({\�&��F�7�1��;s�ZK������ ��V5�      �      x������ � �      �      x������ � �     