PGDMP                          z            store #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    store    DATABASE     w   CREATE DATABASE store WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE store;
                postgres    false            �            1259    16508    test12    TABLE     �   CREATE TABLE public.test12 (
    id integer NOT NULL,
    title character varying,
    herf character varying,
    image character varying,
    rating character varying,
    price character varying,
    location character varying,
    amenities text
);
    DROP TABLE public.test12;
       public         heap    postgres    false            �            1259    16506    test12_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test12_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.test12_id_seq;
       public          postgres    false    223            �           0    0    test12_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.test12_id_seq OWNED BY public.test12.id;
          public          postgres    false    222            J           2604    16511 	   test12 id    DEFAULT     f   ALTER TABLE ONLY public.test12 ALTER COLUMN id SET DEFAULT nextval('public.test12_id_seq'::regclass);
 8   ALTER TABLE public.test12 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �          0    16508    test12 
   TABLE DATA           \   COPY public.test12 (id, title, herf, image, rating, price, location, amenities) FROM stdin;
    public          postgres    false    223   *       �           0    0    test12_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.test12_id_seq', 64, true);
          public          postgres    false    222            L           2606    16516    test12 test12_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.test12
    ADD CONSTRAINT test12_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.test12 DROP CONSTRAINT test12_pkey;
       public            postgres    false    223            �     x��V�n�F}v��O'�xn�[��J9������V�U4��b�����_���k?�_��%@�@f�x����fqp��p���u�;7_|�j���z��QZE��7��*�+g���A�>�X(M��δ��X�*�ld��u1����0
i�� Aa@`�E���|$�J������U����R�)7�$wg��Oi]��\�4�����Ԕ�?+����[0q
��q�`nV؅3u����6&|(�eq|�UU�~�ualV����\�v�Xp��ixW�?�.N�C]dvR�TZ(�:(Э�(f��}T�6���@�ʘ���tl�*�G9����N�=K�˿�V�F.�*J�[�!8L����; �|�[�&"S����*	������
�C�qpy>8�|n�W������� �L و�H�WU�u`,�u�,36��I���ik6�1���V��S����?��r]���`^ w����
��hM!�3Hh*�RZ�F"J:�<�;\���}��~�ֳҸ�ۊ���WC����in�hw�u�Ŀ���b�P8ζu���_���vx��#B�|ď��B()QKTF���������T�Z&��o~M��uQ�ʾ�r��h�� �o�A�����6��98�R~��Sh�q��^V_i%b�Q\ �f�oj�d�~�K̶a�sz���(Ts�W���е~��c����5ڀ���~�,bӽ�kS�&�6O�U@ ���H1 $g�9�n ~l����A�o��׎���n��R����v�n�9�MҶ�uSSAY�)Lg(XJ�b�7�N���#�hi_�3�۴g>d�>��f���XTcW��ď� ��k���͜\�4O�k���ѓ�֬r={c�޾4�2����a,7۞y��~��Q2:�<�<�S*���XRѻ0�g��C�2��Q���.�M7��e��X�D�x�{�k�6<�Mc��D�&�y:i�	!�(apɈ��.��Ĉ����`�{uT-]��N<���+���     