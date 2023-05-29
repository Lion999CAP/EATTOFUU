PGDMP     -    (                {         	   db_utopia    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16500 	   db_utopia    DATABASE     |   CREATE DATABASE db_utopia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_utopia;
                postgres    false                       0    0    DATABASE db_utopia    COMMENT     :   COMMENT ON DATABASE db_utopia IS 'base de datos Utopía';
                   postgres    false    3355            �            1259    16502    tb_actividades    TABLE     �   CREATE TABLE public.tb_actividades (
    id_act integer NOT NULL,
    act_titulo text,
    act_fecha text,
    act_foto text
);
 "   DROP TABLE public.tb_actividades;
       public         heap    postgres    false            �            1259    16501    tb_actividades_id_act_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_actividades_id_act_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_actividades_id_act_seq;
       public          postgres    false    215                       0    0    tb_actividades_id_act_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_actividades_id_act_seq OWNED BY public.tb_actividades.id_act;
          public          postgres    false    214            �            1259    16583    tb_postulante    TABLE     }   CREATE TABLE public.tb_postulante (
    ci_us text NOT NULL,
    aprobado boolean DEFAULT false NOT NULL,
    h_vida text
);
 !   DROP TABLE public.tb_postulante;
       public         heap    postgres    false            �            1259    16511 
   tb_revista    TABLE     �   CREATE TABLE public.tb_revista (
    n_revista integer NOT NULL,
    rev_introduccion text,
    rev_tematica text,
    rev_foto text
);
    DROP TABLE public.tb_revista;
       public         heap    postgres    false            �            1259    16510    tb_revista_n_revista_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_revista_n_revista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tb_revista_n_revista_seq;
       public          postgres    false    217                       0    0    tb_revista_n_revista_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tb_revista_n_revista_seq OWNED BY public.tb_revista.n_revista;
          public          postgres    false    216            �            1259    16578    tb_rol    TABLE     s   CREATE TABLE public.tb_rol (
    ci_us text NOT NULL,
    rol_us text,
    pagina_us text,
    descripcion text
);
    DROP TABLE public.tb_rol;
       public         heap    postgres    false                       0    0    COLUMN tb_rol.descripcion    COMMENT     L   COMMENT ON COLUMN public.tb_rol.descripcion IS 'descripcon de las paginas';
          public          postgres    false    219            �            1259    16570 
   tb_usuario    TABLE     �   CREATE TABLE public.tb_usuario (
    ci_us text NOT NULL,
    nombre_us text,
    correo_us text,
    carrera_us text,
    celular_us text,
    fecha_us text,
    clave_us text DEFAULT 123456,
    foto_us text
);
    DROP TABLE public.tb_usuario;
       public         heap    postgres    false                        0    0    TABLE tb_usuario    COMMENT     E   COMMENT ON TABLE public.tb_usuario IS 'tabla de usuario de Utopía';
          public          postgres    false    218            v           2604    16505    tb_actividades id_act    DEFAULT     ~   ALTER TABLE ONLY public.tb_actividades ALTER COLUMN id_act SET DEFAULT nextval('public.tb_actividades_id_act_seq'::regclass);
 D   ALTER TABLE public.tb_actividades ALTER COLUMN id_act DROP DEFAULT;
       public          postgres    false    215    214    215            w           2604    16514    tb_revista n_revista    DEFAULT     |   ALTER TABLE ONLY public.tb_revista ALTER COLUMN n_revista SET DEFAULT nextval('public.tb_revista_n_revista_seq'::regclass);
 C   ALTER TABLE public.tb_revista ALTER COLUMN n_revista DROP DEFAULT;
       public          postgres    false    216    217    217                      0    16502    tb_actividades 
   TABLE DATA           Q   COPY public.tb_actividades (id_act, act_titulo, act_fecha, act_foto) FROM stdin;
    public          postgres    false    215   �                 0    16583    tb_postulante 
   TABLE DATA           @   COPY public.tb_postulante (ci_us, aprobado, h_vida) FROM stdin;
    public          postgres    false    220   Y                 0    16511 
   tb_revista 
   TABLE DATA           Y   COPY public.tb_revista (n_revista, rev_introduccion, rev_tematica, rev_foto) FROM stdin;
    public          postgres    false    217   �                 0    16578    tb_rol 
   TABLE DATA           G   COPY public.tb_rol (ci_us, rol_us, pagina_us, descripcion) FROM stdin;
    public          postgres    false    219   ;                  0    16570 
   tb_usuario 
   TABLE DATA           v   COPY public.tb_usuario (ci_us, nombre_us, correo_us, carrera_us, celular_us, fecha_us, clave_us, foto_us) FROM stdin;
    public          postgres    false    218   �        !           0    0    tb_actividades_id_act_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_actividades_id_act_seq', 1, false);
          public          postgres    false    214            "           0    0    tb_revista_n_revista_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_revista_n_revista_seq', 1, false);
          public          postgres    false    216            {           2606    16509 "   tb_actividades tb_actividades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tb_actividades
    ADD CONSTRAINT tb_actividades_pkey PRIMARY KEY (id_act);
 L   ALTER TABLE ONLY public.tb_actividades DROP CONSTRAINT tb_actividades_pkey;
       public            postgres    false    215            }           2606    16518    tb_revista tb_revista_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_revista
    ADD CONSTRAINT tb_revista_pkey PRIMARY KEY (n_revista);
 D   ALTER TABLE ONLY public.tb_revista DROP CONSTRAINT tb_revista_pkey;
       public            postgres    false    217                       2606    16577    tb_usuario tb_usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_pkey PRIMARY KEY (ci_us);
 D   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT tb_usuario_pkey;
       public            postgres    false    218            �           2606    16589 &   tb_postulante tb_postulante_ci_us_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_postulante
    ADD CONSTRAINT tb_postulante_ci_us_fkey FOREIGN KEY (ci_us) REFERENCES public.tb_usuario(ci_us);
 P   ALTER TABLE ONLY public.tb_postulante DROP CONSTRAINT tb_postulante_ci_us_fkey;
       public          postgres    false    220    3199    218               X   x�3�tNLKU-�/8�6Q�751O�=�(������X��T�Д3��"3$���*H�2BӜX����T���� Y3H$����� Z�(�         L   x�30426153���,��IM�K)�WpL����+HI�20202�4436G��ML��W�I,JTN�+I�K������ ���         v   x�%��	�0�R[�A��A�����u�Y��RE��_��nJk��;!k#&�����ڑ�r����4��uʓ�Ü���b,�R����zy���O)��V����ű-         �   x�30426153���tL����,.)JL�/�LLN-(I,
�/.)�IL���K-��*.�D�2��?3�$5�(HB�y"��5%�yE�e�y%����%@��R!�\FFƖ�f�朮)�%T�/(��HD�wxs�BJ�BN�BD�+F��� �iM         �   x�}���0 ��)� O�v̧EJ�D�2�"���x�����q�抓�H���e��nX�S�W�3�ڄ�h�����b}�t?}���J!ϊ�� ��W��õ�usz�Ï��/�
��N���G��w.��ʄJD7�w#�#c���:y     