PGDMP  #                    |            AgateLtdProject    16.1    17.0 4    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            E           1262    17032    AgateLtdProject    DATABASE     s   CREATE DATABASE "AgateLtdProject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 !   DROP DATABASE "AgateLtdProject";
                     postgres    false            �            1259    17170    adverts    TABLE     �   CREATE TABLE public.adverts (
    advert_id integer NOT NULL,
    campaign_id integer,
    progress character varying(255),
    run_date date
);
    DROP TABLE public.adverts;
       public         heap r       postgres    false            �            1259    17169    adverts_advert_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adverts_advert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.adverts_advert_id_seq;
       public               postgres    false    226            F           0    0    adverts_advert_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.adverts_advert_id_seq OWNED BY public.adverts.advert_id;
          public               postgres    false    225            �            1259    17153    campaign_staff    TABLE     o   CREATE TABLE public.campaign_staff (
    id integer NOT NULL,
    staff_id integer,
    campaign_id integer
);
 "   DROP TABLE public.campaign_staff;
       public         heap r       postgres    false            �            1259    17152    campaign_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campaign_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.campaign_staff_id_seq;
       public               postgres    false    224            G           0    0    campaign_staff_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.campaign_staff_id_seq OWNED BY public.campaign_staff.id;
          public               postgres    false    223            �            1259    17110 	   campaigns    TABLE     ^  CREATE TABLE public.campaigns (
    campaign_id integer NOT NULL,
    client_id integer,
    title character varying(255) NOT NULL,
    start_date date,
    end_date date,
    estimated_cost numeric(15,2),
    actual_cost numeric(15,2),
    completion_status boolean DEFAULT false,
    manager_id integer,
    current_state character varying(150)
);
    DROP TABLE public.campaigns;
       public         heap r       postgres    false            �            1259    17109    campaigns_campaign_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campaigns_campaign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.campaigns_campaign_id_seq;
       public               postgres    false    218            H           0    0    campaigns_campaign_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.campaigns_campaign_id_seq OWNED BY public.campaigns.campaign_id;
          public               postgres    false    217            �            1259    17101    clients    TABLE     �   CREATE TABLE public.clients (
    client_id integer NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    contact_details text
);
    DROP TABLE public.clients;
       public         heap r       postgres    false            �            1259    17100    clients_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clients_client_id_seq;
       public               postgres    false    216            I           0    0    clients_client_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clients_client_id_seq OWNED BY public.clients.client_id;
          public               postgres    false    215            �            1259    17139    staff    TABLE     �   CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255),
    grade_id integer
);
    DROP TABLE public.staff;
       public         heap r       postgres    false            �            1259    17132    staff_grades    TABLE     �   CREATE TABLE public.staff_grades (
    grade_id integer NOT NULL,
    grade_name character varying(255) NOT NULL,
    pay_rate numeric(15,2) NOT NULL
);
     DROP TABLE public.staff_grades;
       public         heap r       postgres    false            �            1259    17131    staff_grades_grade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_grades_grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_grades_grade_id_seq;
       public               postgres    false    220            J           0    0    staff_grades_grade_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_grades_grade_id_seq OWNED BY public.staff_grades.grade_id;
          public               postgres    false    219            �            1259    17138    staff_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public               postgres    false    222            K           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff.staff_id;
          public               postgres    false    221            �           2604    17173    adverts advert_id    DEFAULT     v   ALTER TABLE ONLY public.adverts ALTER COLUMN advert_id SET DEFAULT nextval('public.adverts_advert_id_seq'::regclass);
 @   ALTER TABLE public.adverts ALTER COLUMN advert_id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    17156    campaign_staff id    DEFAULT     v   ALTER TABLE ONLY public.campaign_staff ALTER COLUMN id SET DEFAULT nextval('public.campaign_staff_id_seq'::regclass);
 @   ALTER TABLE public.campaign_staff ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    17113    campaigns campaign_id    DEFAULT     ~   ALTER TABLE ONLY public.campaigns ALTER COLUMN campaign_id SET DEFAULT nextval('public.campaigns_campaign_id_seq'::regclass);
 D   ALTER TABLE public.campaigns ALTER COLUMN campaign_id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    17104    clients client_id    DEFAULT     v   ALTER TABLE ONLY public.clients ALTER COLUMN client_id SET DEFAULT nextval('public.clients_client_id_seq'::regclass);
 @   ALTER TABLE public.clients ALTER COLUMN client_id DROP DEFAULT;
       public               postgres    false    216    215    216            �           2604    17142    staff staff_id    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN staff_id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN staff_id DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    17135    staff_grades grade_id    DEFAULT     ~   ALTER TABLE ONLY public.staff_grades ALTER COLUMN grade_id SET DEFAULT nextval('public.staff_grades_grade_id_seq'::regclass);
 D   ALTER TABLE public.staff_grades ALTER COLUMN grade_id DROP DEFAULT;
       public               postgres    false    219    220    220            ?          0    17170    adverts 
   TABLE DATA           M   COPY public.adverts (advert_id, campaign_id, progress, run_date) FROM stdin;
    public               postgres    false    226   >       =          0    17153    campaign_staff 
   TABLE DATA           C   COPY public.campaign_staff (id, staff_id, campaign_id) FROM stdin;
    public               postgres    false    224   7>       7          0    17110 	   campaigns 
   TABLE DATA           �   COPY public.campaigns (campaign_id, client_id, title, start_date, end_date, estimated_cost, actual_cost, completion_status, manager_id, current_state) FROM stdin;
    public               postgres    false    218   T>       5          0    17101    clients 
   TABLE DATA           L   COPY public.clients (client_id, name, address, contact_details) FROM stdin;
    public               postgres    false    216   q>       ;          0    17139    staff 
   TABLE DATA           ?   COPY public.staff (staff_id, name, role, grade_id) FROM stdin;
    public               postgres    false    222   �>       9          0    17132    staff_grades 
   TABLE DATA           F   COPY public.staff_grades (grade_id, grade_name, pay_rate) FROM stdin;
    public               postgres    false    220   �>       L           0    0    adverts_advert_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.adverts_advert_id_seq', 1, false);
          public               postgres    false    225            M           0    0    campaign_staff_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.campaign_staff_id_seq', 1, false);
          public               postgres    false    223            N           0    0    campaigns_campaign_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.campaigns_campaign_id_seq', 1, false);
          public               postgres    false    217            O           0    0    clients_client_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_client_id_seq', 1, false);
          public               postgres    false    215            P           0    0    staff_grades_grade_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_grades_grade_id_seq', 1, false);
          public               postgres    false    219            Q           0    0    staff_staff_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.staff_staff_id_seq', 1, false);
          public               postgres    false    221            �           2606    17175    adverts adverts_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.adverts
    ADD CONSTRAINT adverts_pkey PRIMARY KEY (advert_id);
 >   ALTER TABLE ONLY public.adverts DROP CONSTRAINT adverts_pkey;
       public                 postgres    false    226            �           2606    17158 "   campaign_staff campaign_staff_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.campaign_staff
    ADD CONSTRAINT campaign_staff_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.campaign_staff DROP CONSTRAINT campaign_staff_pkey;
       public                 postgres    false    224            �           2606    17116    campaigns campaigns_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (campaign_id);
 B   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_pkey;
       public                 postgres    false    218            �           2606    17108    clients clients_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public                 postgres    false    216            �           2606    17137    staff_grades staff_grades_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.staff_grades
    ADD CONSTRAINT staff_grades_pkey PRIMARY KEY (grade_id);
 H   ALTER TABLE ONLY public.staff_grades DROP CONSTRAINT staff_grades_pkey;
       public                 postgres    false    220            �           2606    17146    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public                 postgres    false    222            �           2606    17176     adverts adverts_campaign_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.adverts
    ADD CONSTRAINT adverts_campaign_id_fkey FOREIGN KEY (campaign_id) REFERENCES public.campaigns(campaign_id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.adverts DROP CONSTRAINT adverts_campaign_id_fkey;
       public               postgres    false    218    226    3478            �           2606    17164 .   campaign_staff campaign_staff_campaign_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaign_staff
    ADD CONSTRAINT campaign_staff_campaign_id_fkey FOREIGN KEY (campaign_id) REFERENCES public.campaigns(campaign_id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.campaign_staff DROP CONSTRAINT campaign_staff_campaign_id_fkey;
       public               postgres    false    3478    224    218            �           2606    17159 +   campaign_staff campaign_staff_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaign_staff
    ADD CONSTRAINT campaign_staff_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.campaign_staff DROP CONSTRAINT campaign_staff_staff_id_fkey;
       public               postgres    false    224    222    3482            �           2606    17117 "   campaigns campaigns_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(client_id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_client_id_fkey;
       public               postgres    false    3476    216    218            �           2606    17182 #   campaigns campaigns_manager_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.staff(staff_id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_manager_id_fkey;
       public               postgres    false    222    218    3482            �           2606    17147    staff staff_grade_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_grade_id_fkey FOREIGN KEY (grade_id) REFERENCES public.staff_grades(grade_id) ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_grade_id_fkey;
       public               postgres    false    222    3480    220            ?      x������ � �      =      x������ � �      7      x������ � �      5      x������ � �      ;      x������ � �      9      x������ � �     