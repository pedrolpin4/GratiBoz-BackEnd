PGDMP     /                
    y            gratibox_test    14.0    14.0 P    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    33605    gratibox_test    DATABASE     b   CREATE DATABASE gratibox_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE gratibox_test;
             
   pedrolpin4    false            �            1259    33755 	   adressees    TABLE     �   CREATE TABLE public.adressees (
    id integer NOT NULL,
    district_id integer NOT NULL,
    city text NOT NULL,
    zip_code character varying(8) NOT NULL,
    street_number text NOT NULL,
    adresse_name text NOT NULL
);
    DROP TABLE public.adressees;
       public         heap 
   pedrolpin4    false            �            1259    33754    adressees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adressees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.adressees_id_seq;
       public       
   pedrolpin4    false    226            [           0    0    adressees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.adressees_id_seq OWNED BY public.adressees.id;
          public       
   pedrolpin4    false    225            �            1259    33735    delivery_days    TABLE     V   CREATE TABLE public.delivery_days (
    id integer NOT NULL,
    day text NOT NULL
);
 !   DROP TABLE public.delivery_days;
       public         heap 
   pedrolpin4    false            �            1259    33734    delivery_days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.delivery_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.delivery_days_id_seq;
       public       
   pedrolpin4    false    222            \           0    0    delivery_days_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.delivery_days_id_seq OWNED BY public.delivery_days.id;
          public       
   pedrolpin4    false    221            �            1259    33746 	   districts    TABLE     c   CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying(2) NOT NULL
);
    DROP TABLE public.districts;
       public         heap 
   pedrolpin4    false            �            1259    33745    districts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.districts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.districts_id_seq;
       public       
   pedrolpin4    false    224            ]           0    0    districts_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.districts_id_seq OWNED BY public.districts.id;
          public       
   pedrolpin4    false    223            �            1259    33713    products    TABLE     R   CREATE TABLE public.products (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.products;
       public         heap 
   pedrolpin4    false            �            1259    33712    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       
   pedrolpin4    false    216            ^           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public       
   pedrolpin4    false    215            �            1259    33696    sessions    TABLE     q   CREATE TABLE public.sessions (
    user_id integer NOT NULL,
    token text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap 
   pedrolpin4    false            �            1259    33695    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public       
   pedrolpin4    false    212            _           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public       
   pedrolpin4    false    211            �            1259    33705 	   signature    TABLE     �   CREATE TABLE public.signature (
    id integer NOT NULL,
    delivery_day_id integer NOT NULL,
    sign_day date DEFAULT '2021-11-20'::date NOT NULL,
    adressee_id integer NOT NULL,
    cancel_date date
);
    DROP TABLE public.signature;
       public         heap 
   pedrolpin4    false            �            1259    33704    signature_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.signature_id_seq;
       public       
   pedrolpin4    false    214            `           0    0    signature_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.signature_id_seq OWNED BY public.signature.id;
          public       
   pedrolpin4    false    213            �            1259    33726    signature_products    TABLE     �   CREATE TABLE public.signature_products (
    id integer NOT NULL,
    product_id integer NOT NULL,
    signature_id integer NOT NULL
);
 &   DROP TABLE public.signature_products;
       public         heap 
   pedrolpin4    false            �            1259    33723    signature_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signature_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.signature_products_id_seq;
       public       
   pedrolpin4    false    220            a           0    0    signature_products_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.signature_products_id_seq OWNED BY public.signature_products.id;
          public       
   pedrolpin4    false    217            �            1259    33724 !   signature_products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signature_products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.signature_products_product_id_seq;
       public       
   pedrolpin4    false    220            b           0    0 !   signature_products_product_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.signature_products_product_id_seq OWNED BY public.signature_products.product_id;
          public       
   pedrolpin4    false    218            �            1259    33725 #   signature_products_signature_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signature_products_signature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.signature_products_signature_id_seq;
       public       
   pedrolpin4    false    220            c           0    0 #   signature_products_signature_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.signature_products_signature_id_seq OWNED BY public.signature_products.signature_id;
          public       
   pedrolpin4    false    219            �            1259    33683    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    signature_id integer
);
    DROP TABLE public.users;
       public         heap 
   pedrolpin4    false            �            1259    33682    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       
   pedrolpin4    false    210            d           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public       
   pedrolpin4    false    209            �           2604    33758    adressees id    DEFAULT     l   ALTER TABLE ONLY public.adressees ALTER COLUMN id SET DEFAULT nextval('public.adressees_id_seq'::regclass);
 ;   ALTER TABLE public.adressees ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    226    225    226            �           2604    33738    delivery_days id    DEFAULT     t   ALTER TABLE ONLY public.delivery_days ALTER COLUMN id SET DEFAULT nextval('public.delivery_days_id_seq'::regclass);
 ?   ALTER TABLE public.delivery_days ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    222    221    222            �           2604    33749    districts id    DEFAULT     l   ALTER TABLE ONLY public.districts ALTER COLUMN id SET DEFAULT nextval('public.districts_id_seq'::regclass);
 ;   ALTER TABLE public.districts ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    223    224    224            �           2604    33716    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    216    215    216            �           2604    33699    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    212    211    212            �           2604    33708    signature id    DEFAULT     l   ALTER TABLE ONLY public.signature ALTER COLUMN id SET DEFAULT nextval('public.signature_id_seq'::regclass);
 ;   ALTER TABLE public.signature ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    213    214    214            �           2604    33729    signature_products id    DEFAULT     ~   ALTER TABLE ONLY public.signature_products ALTER COLUMN id SET DEFAULT nextval('public.signature_products_id_seq'::regclass);
 D   ALTER TABLE public.signature_products ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    217    220    220            �           2604    33730    signature_products product_id    DEFAULT     �   ALTER TABLE ONLY public.signature_products ALTER COLUMN product_id SET DEFAULT nextval('public.signature_products_product_id_seq'::regclass);
 L   ALTER TABLE public.signature_products ALTER COLUMN product_id DROP DEFAULT;
       public       
   pedrolpin4    false    218    220    220            �           2604    33731    signature_products signature_id    DEFAULT     �   ALTER TABLE ONLY public.signature_products ALTER COLUMN signature_id SET DEFAULT nextval('public.signature_products_signature_id_seq'::regclass);
 N   ALTER TABLE public.signature_products ALTER COLUMN signature_id DROP DEFAULT;
       public       
   pedrolpin4    false    220    219    220            �           2604    33686    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    209    210    210            T          0    33755 	   adressees 
   TABLE DATA           a   COPY public.adressees (id, district_id, city, zip_code, street_number, adresse_name) FROM stdin;
    public       
   pedrolpin4    false    226   _Z       P          0    33735    delivery_days 
   TABLE DATA           0   COPY public.delivery_days (id, day) FROM stdin;
    public       
   pedrolpin4    false    222   �Z       R          0    33746 	   districts 
   TABLE DATA           -   COPY public.districts (id, name) FROM stdin;
    public       
   pedrolpin4    false    224   �Z       J          0    33713    products 
   TABLE DATA           ,   COPY public.products (id, name) FROM stdin;
    public       
   pedrolpin4    false    216   �Z       F          0    33696    sessions 
   TABLE DATA           6   COPY public.sessions (user_id, token, id) FROM stdin;
    public       
   pedrolpin4    false    212   [       H          0    33705 	   signature 
   TABLE DATA           \   COPY public.signature (id, delivery_day_id, sign_day, adressee_id, cancel_date) FROM stdin;
    public       
   pedrolpin4    false    214   �\       N          0    33726    signature_products 
   TABLE DATA           J   COPY public.signature_products (id, product_id, signature_id) FROM stdin;
    public       
   pedrolpin4    false    220   �\       D          0    33683    users 
   TABLE DATA           H   COPY public.users (id, name, email, password, signature_id) FROM stdin;
    public       
   pedrolpin4    false    210   �\       e           0    0    adressees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.adressees_id_seq', 98, true);
          public       
   pedrolpin4    false    225            f           0    0    delivery_days_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.delivery_days_id_seq', 175, true);
          public       
   pedrolpin4    false    221            g           0    0    districts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.districts_id_seq', 26, true);
          public       
   pedrolpin4    false    223            h           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 202, true);
          public       
   pedrolpin4    false    215            i           0    0    sessions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sessions_id_seq', 717, true);
          public       
   pedrolpin4    false    211            j           0    0    signature_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.signature_id_seq', 64, true);
          public       
   pedrolpin4    false    213            k           0    0    signature_products_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.signature_products_id_seq', 60, true);
          public       
   pedrolpin4    false    217            l           0    0 !   signature_products_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.signature_products_product_id_seq', 1, false);
          public       
   pedrolpin4    false    218            m           0    0 #   signature_products_signature_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.signature_products_signature_id_seq', 1, false);
          public       
   pedrolpin4    false    219            n           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 725, true);
          public       
   pedrolpin4    false    209            �           2606    33762    adressees adressees_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.adressees
    ADD CONSTRAINT adressees_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.adressees DROP CONSTRAINT adressees_pk;
       public         
   pedrolpin4    false    226            �           2606    33744 #   delivery_days delivery_days_day_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.delivery_days
    ADD CONSTRAINT delivery_days_day_key UNIQUE (day);
 M   ALTER TABLE ONLY public.delivery_days DROP CONSTRAINT delivery_days_day_key;
       public         
   pedrolpin4    false    222            �           2606    33742    delivery_days delivery_days_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.delivery_days
    ADD CONSTRAINT delivery_days_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.delivery_days DROP CONSTRAINT delivery_days_pk;
       public         
   pedrolpin4    false    222            �           2606    33753    districts districts_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_name_key;
       public         
   pedrolpin4    false    224            �           2606    33751    districts districts_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pk;
       public         
   pedrolpin4    false    224            �           2606    33722    products products_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT products_name_key;
       public         
   pedrolpin4    false    216            �           2606    33720    products products_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pk;
       public         
   pedrolpin4    false    216            �           2606    33703    sessions sessions_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pk;
       public         
   pedrolpin4    false    212            �           2606    33711    signature signature_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.signature
    ADD CONSTRAINT signature_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.signature DROP CONSTRAINT signature_pk;
       public         
   pedrolpin4    false    214            �           2606    33733 (   signature_products signature_products_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.signature_products
    ADD CONSTRAINT signature_products_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.signature_products DROP CONSTRAINT signature_products_pk;
       public         
   pedrolpin4    false    220            �           2606    33692    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public         
   pedrolpin4    false    210            �           2606    33690    users users_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public         
   pedrolpin4    false    210            �           2606    33694    users users_signature_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_signature_id_key UNIQUE (signature_id);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_signature_id_key;
       public         
   pedrolpin4    false    210            �           2606    33793    adressees adressees_fk0    FK CONSTRAINT     ~   ALTER TABLE ONLY public.adressees
    ADD CONSTRAINT adressees_fk0 FOREIGN KEY (district_id) REFERENCES public.districts(id);
 A   ALTER TABLE ONLY public.adressees DROP CONSTRAINT adressees_fk0;
       public       
   pedrolpin4    false    226    3502    224            �           2606    33768    sessions sessions_fk0    FK CONSTRAINT     t   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_fk0;
       public       
   pedrolpin4    false    3482    210    212            �           2606    33773    signature signature_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.signature
    ADD CONSTRAINT signature_fk0 FOREIGN KEY (delivery_day_id) REFERENCES public.delivery_days(id);
 A   ALTER TABLE ONLY public.signature DROP CONSTRAINT signature_fk0;
       public       
   pedrolpin4    false    3498    214    222            �           2606    33778    signature signature_fk1    FK CONSTRAINT     ~   ALTER TABLE ONLY public.signature
    ADD CONSTRAINT signature_fk1 FOREIGN KEY (adressee_id) REFERENCES public.adressees(id);
 A   ALTER TABLE ONLY public.signature DROP CONSTRAINT signature_fk1;
       public       
   pedrolpin4    false    214    226    3504            �           2606    33783 )   signature_products signature_products_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.signature_products
    ADD CONSTRAINT signature_products_fk0 FOREIGN KEY (product_id) REFERENCES public.products(id);
 S   ALTER TABLE ONLY public.signature_products DROP CONSTRAINT signature_products_fk0;
       public       
   pedrolpin4    false    220    216    3492            �           2606    33788 )   signature_products signature_products_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.signature_products
    ADD CONSTRAINT signature_products_fk1 FOREIGN KEY (signature_id) REFERENCES public.signature(id);
 S   ALTER TABLE ONLY public.signature_products DROP CONSTRAINT signature_products_fk1;
       public       
   pedrolpin4    false    214    3488    220            �           2606    33763    users users_fk0    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_fk0 FOREIGN KEY (signature_id) REFERENCES public.signature(id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT users_fk0;
       public       
   pedrolpin4    false    210    214    3488            T   E   x�������/KT�L/M<����������3�4Q�+���Js΀Ԕ�|��D��̜�D�=... 4��      P      x������ � �      R      x��������� 
O�      J      x������ � �      F   b  x��K�m!D��p�w.�#����tL����ҐQe3���x��?&�ʔ%\9��3��W�9�%Mر	�^i���5�a���B�#��@�0�zsӱ���h�-�>�gQÌA��Nԭ/�C�T�XKW�U��
8� ��e������,�X�^u=����RǃϞ�g�`���.*�#<�¶>�-�Z��c���[~c��e��?���č�Fƭ��M�O�^o�m}�͉�L��V�O{�"���%�R&B��-S�fEz�:ֱ�W�a��� �1,�*��.E�S�Cw��8䭜qZ�v����a�מ�sv�R����\�������i�u��^�����g��      H      x������ � �      N      x������ � �      D   t  x�mV˲����q�(o����"��%NĎ�7�R���n{p�G�Ȭ��+��@c�����|����@�Κ�y�GM��C����y��x{O/��#�ϕSz����ϜGH��גJ��X!ǝмH���/V`0VD�.�r�p�ē����N��F���[�1Ϫ��mj���haa?pv4.R��7wi���0e�0A������H�f�>I�|sRϞ��$�z�	 ��������e4�>QZl�1rcY�M�m��f1�yV �4�{Y��/���j�[�x�>Ӧn���`���+�� =\^��֔lLgH��`޷������t�OF�XRt�����RXL���E=D�t�����6Hck$5vO��������� &5݀�Lp���v·�M��IrA˨��@!t*�L�o5%�������e߲,`HlW ����C� Q�'�����ڒ'ϖ}>�6�q�:ji�Km�^����z�e�pǻ~�o
;�5�L��9��f^3���`�lu��0���8lxf��"���&I�ۈ����{�Q���h�!�ܬ�*�U���4��_�{��< ���eN���GxX^�5� ׆v6�`w~%�|2v����!Ir�%�.E`��"��?�W��Qr�T��KN�"��R���|���)U���o��.���V�����8P����r;֗��m)^�v�9����7_���|��-wV�|U�o}�o��5�*�����C�����?%�@�La��y3����l<{�+�E��ж��==��Ό��������Ӻ��tХ�^� ��'�J�=u��%�W��&�r�Г�j��E��-��o��1�=\�K��
ħ!��A�Q�_q�Ѥ��a��ˆw]�POv�$�6b�1��oe�路d�C)��4���0>;������Նb����+�ݝ��$M�����nNFi��<��S���A�!�ﺺ����}R�e�p��
.��lQ/
&�W�pm���&%�.'-��l�v�;���٠�cF��3���O\�C�w��i�ܭ&UuE��y����Q'J^�	�%Yz3p[��F����|iy�~����%^s&�O��'�x0�F1�H��t9*�W�G�$�X�m�y�I��~C�n���Z�u�OWx�3|��D6��!�%��q)�+��2��Xu�K�R���MCc�|]���D�Vy�G��U]x�.2oU�g�<$�I��Q��̶!KN���p���R<sy�-�`>�����S���$E4���6݉��Ki�_�~
�ǋ�8C~om�DMG�1�ݰ�k����N �ĭ(��x ��R����;����̄��p��xy�j��_�����.i{H��­��fc�T����"�.Bm�M��+�'��QM�Kp�n/���q��Wr[y����]���:���	�V��"��jRՒq��7�<��g�W�Y��>�ϔ���%!Fzsp�X�~WI�ۺNQMM���Fo�I�mN�*v�Q����|�@�E���T��Aǫ��t��wW��JPEMU�gd _V�t��>T"�1������ևY�G�"�%?F뿫|:ۜ�7��[m�=�\�9�����,0^     