PGDMP      6                 |            projeto_apis1    16.3    16.3 #    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    projeto_apis1    DATABASE     �   CREATE DATABASE projeto_apis1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE projeto_apis1;
                postgres    false            �            1259    16451    autor    TABLE     �   CREATE TABLE public.autor (
    nome character varying(30) NOT NULL,
    nacionalidade character varying(30) NOT NULL,
    id_autor integer NOT NULL
);
    DROP TABLE public.autor;
       public         heap    postgres    false            �            1259    16494    autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.autor_id_seq;
       public          postgres    false    215                       0    0    autor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.autor_id_seq OWNED BY public.autor.id_autor;
          public          postgres    false    219            �            1259    16458    livro    TABLE     �   CREATE TABLE public.livro (
    titulo character varying(30) NOT NULL,
    autor integer NOT NULL,
    ano integer NOT NULL,
    disponivel boolean DEFAULT true NOT NULL,
    id_livro integer NOT NULL
);
    DROP TABLE public.livro;
       public         heap    postgres    false            �            1259    16519    livro_id_livro_seq    SEQUENCE     �   CREATE SEQUENCE public.livro_id_livro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.livro_id_livro_seq;
       public          postgres    false    216                       0    0    livro_id_livro_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.livro_id_livro_seq OWNED BY public.livro.id_livro;
          public          postgres    false    220            �            1259    16582    retirada    TABLE     �   CREATE TABLE public.retirada (
    id_retirada integer NOT NULL,
    id_usuario integer,
    id_livro integer,
    data_retirada timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    data_devolucao timestamp without time zone
);
    DROP TABLE public.retirada;
       public         heap    postgres    false            �            1259    16581    retirada_id_retirada_seq    SEQUENCE     �   CREATE SEQUENCE public.retirada_id_retirada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.retirada_id_retirada_seq;
       public          postgres    false    222                       0    0    retirada_id_retirada_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.retirada_id_retirada_seq OWNED BY public.retirada.id_retirada;
          public          postgres    false    221            �            1259    16486    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nome character varying NOT NULL,
    telefone bigint NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16485    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    218                       0    0    usuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    217            _           2604    16495    autor id_autor    DEFAULT     j   ALTER TABLE ONLY public.autor ALTER COLUMN id_autor SET DEFAULT nextval('public.autor_id_seq'::regclass);
 =   ALTER TABLE public.autor ALTER COLUMN id_autor DROP DEFAULT;
       public          postgres    false    219    215            a           2604    16520    livro id_livro    DEFAULT     p   ALTER TABLE ONLY public.livro ALTER COLUMN id_livro SET DEFAULT nextval('public.livro_id_livro_seq'::regclass);
 =   ALTER TABLE public.livro ALTER COLUMN id_livro DROP DEFAULT;
       public          postgres    false    220    216            c           2604    16585    retirada id_retirada    DEFAULT     |   ALTER TABLE ONLY public.retirada ALTER COLUMN id_retirada SET DEFAULT nextval('public.retirada_id_retirada_seq'::regclass);
 C   ALTER TABLE public.retirada ALTER COLUMN id_retirada DROP DEFAULT;
       public          postgres    false    222    221    222            b           2604    16489    usuario id_usuario    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16451    autor 
   TABLE DATA           >   COPY public.autor (nome, nacionalidade, id_autor) FROM stdin;
    public          postgres    false    215   U&                  0    16458    livro 
   TABLE DATA           I   COPY public.livro (titulo, autor, ano, disponivel, id_livro) FROM stdin;
    public          postgres    false    216   �&                 0    16582    retirada 
   TABLE DATA           d   COPY public.retirada (id_retirada, id_usuario, id_livro, data_retirada, data_devolucao) FROM stdin;
    public          postgres    false    222   '                 0    16486    usuario 
   TABLE DATA           =   COPY public.usuario (id_usuario, nome, telefone) FROM stdin;
    public          postgres    false    218   �'                  0    0    autor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.autor_id_seq', 10, true);
          public          postgres    false    219                       0    0    livro_id_livro_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.livro_id_livro_seq', 12, true);
          public          postgres    false    220                       0    0    retirada_id_retirada_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.retirada_id_retirada_seq', 9, true);
          public          postgres    false    221                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 5, true);
          public          postgres    false    217            f           2606    16500    autor autor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id_autor);
 :   ALTER TABLE ONLY public.autor DROP CONSTRAINT autor_pkey;
       public            postgres    false    215            h           2606    16525    livro livro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id_livro);
 :   ALTER TABLE ONLY public.livro DROP CONSTRAINT livro_pkey;
       public            postgres    false    216            l           2606    16588    retirada retirada_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.retirada
    ADD CONSTRAINT retirada_pkey PRIMARY KEY (id_retirada);
 @   ALTER TABLE ONLY public.retirada DROP CONSTRAINT retirada_pkey;
       public            postgres    false    222            j           2606    16493    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    218            m           2606    16508    livro id_autor    FK CONSTRAINT     {   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT id_autor FOREIGN KEY (autor) REFERENCES public.autor(id_autor) NOT VALID;
 8   ALTER TABLE ONLY public.livro DROP CONSTRAINT id_autor;
       public          postgres    false    4710    216    215            n           2606    16594    retirada retirada_id_livro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.retirada
    ADD CONSTRAINT retirada_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);
 I   ALTER TABLE ONLY public.retirada DROP CONSTRAINT retirada_id_livro_fkey;
       public          postgres    false    4712    216    222            o           2606    16589 !   retirada retirada_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.retirada
    ADD CONSTRAINT retirada_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 K   ALTER TABLE ONLY public.retirada DROP CONSTRAINT retirada_id_usuario_fkey;
       public          postgres    false    218    4714    222            �   R   x���	�0 �w2E'�Z�C?C�����N��w2�G��a�Ӽd�
W(���6l�Y���d�A�7	����Xj3          R   x�35P(��+VHIU(H�I�4�4204�,�4�rT(I�/�Lɕ������r�\�Ee�E�
)�
a�)���W� ��            x�m��1ߦ�4p��ג��o�f��v$lp``����g��4<�|A�e+&e�
X����?�+��!h��@/53ڍ��AK��K-�u{8�ɍн��x�����T+Oޛ�uS[,B�*"?�7n         ?   x�3��H�+�,,M�45��0512062�2���Ȯ��L9���2Ss��L�-�b���� .��     