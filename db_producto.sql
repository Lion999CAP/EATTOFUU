--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-18 11:49:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 216 (class 1259 OID 16418)
-- Name: s_producto; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_producto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;


ALTER TABLE public.s_producto OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: tb_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    descripcion_cat text NOT NULL
);


ALTER TABLE public.tb_categoria OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE tb_categoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tb_categoria IS 'tabla de categorias';


--
-- TOC entry 227 (class 1259 OID 16452)
-- Name: tb_pagina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pagina (
    id_pag integer NOT NULL,
    descripcion_pag text,
    path_pag text
);


ALTER TABLE public.tb_pagina OWNER TO postgres;

--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE tb_pagina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tb_pagina IS 'paginas del proyecto';


--
-- TOC entry 226 (class 1259 OID 16451)
-- Name: tb_pagina_id_pag_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pagina_id_pag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_pagina_id_pag_seq OWNER TO postgres;

--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_pagina_id_pag_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pagina_id_pag_seq OWNED BY public.tb_pagina.id_pag;


--
-- TOC entry 221 (class 1259 OID 16432)
-- Name: tb_perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_perfil (
    id_per integer NOT NULL,
    descripcion_per text
);


ALTER TABLE public.tb_perfil OWNER TO postgres;

--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE tb_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tb_perfil IS 'Tabla en donde se encuentran los roles ';


--
-- TOC entry 225 (class 1259 OID 16443)
-- Name: tb_perfilPagina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tb_perfilPagina" (
    id_pagper integer NOT NULL,
    id_per integer NOT NULL,
    id_pag integer NOT NULL
);


ALTER TABLE public."tb_perfilPagina" OWNER TO postgres;

--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE "tb_perfilPagina"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."tb_perfilPagina" IS 'Direccionamiento de paginas segun el perfil';


--
-- TOC entry 224 (class 1259 OID 16442)
-- Name: tb_perfilPagina_id_pag_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tb_perfilPagina_id_pag_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tb_perfilPagina_id_pag_seq" OWNER TO postgres;

--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_perfilPagina_id_pag_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tb_perfilPagina_id_pag_seq" OWNED BY public."tb_perfilPagina".id_pag;


--
-- TOC entry 222 (class 1259 OID 16440)
-- Name: tb_perfilPagina_id_pagper_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tb_perfilPagina_id_pagper_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tb_perfilPagina_id_pagper_seq" OWNER TO postgres;

--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_perfilPagina_id_pagper_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tb_perfilPagina_id_pagper_seq" OWNED BY public."tb_perfilPagina".id_pagper;


--
-- TOC entry 223 (class 1259 OID 16441)
-- Name: tb_perfilPagina_id_per_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tb_perfilPagina_id_per_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tb_perfilPagina_id_per_seq" OWNER TO postgres;

--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_perfilPagina_id_per_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tb_perfilPagina_id_per_seq" OWNED BY public."tb_perfilPagina".id_per;


--
-- TOC entry 220 (class 1259 OID 16431)
-- Name: tb_perfil_id_per_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_perfil_id_per_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_perfil_id_per_seq OWNER TO postgres;

--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_perfil_id_per_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_perfil_id_per_seq OWNED BY public.tb_perfil.id_per;


--
-- TOC entry 215 (class 1259 OID 16406)
-- Name: tb_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_producto (
    id_pr integer NOT NULL,
    id_cat integer NOT NULL,
    descripcion_pr text NOT NULL,
    cantidad_pr integer NOT NULL,
    precio_pr double precision,
    foto_pr bytea
);


ALTER TABLE public.tb_producto OWNER TO postgres;

--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE tb_producto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tb_producto IS 'tabla de productos';


--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: tb_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_usuario (
    id_us integer NOT NULL,
    id_per integer NOT NULL,
    nombre_us text,
    direccion_us text,
    login_us text,
    clave_us text
);


ALTER TABLE public.tb_usuario OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE tb_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tb_usuario IS 'tabla de registro de usuarios';


--
-- TOC entry 218 (class 1259 OID 16421)
-- Name: tb_usuario_id_per_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_usuario_id_per_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_usuario_id_per_seq OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_usuario_id_per_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_usuario_id_per_seq OWNED BY public.tb_usuario.id_per;


--
-- TOC entry 217 (class 1259 OID 16420)
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_usuario_id_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_usuario_id_us_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_usuario_id_us_seq OWNED BY public.tb_usuario.id_us;


--
-- TOC entry 3206 (class 2604 OID 16455)
-- Name: tb_pagina id_pag; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pagina ALTER COLUMN id_pag SET DEFAULT nextval('public.tb_pagina_id_pag_seq'::regclass);


--
-- TOC entry 3202 (class 2604 OID 16435)
-- Name: tb_perfil id_per; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_perfil ALTER COLUMN id_per SET DEFAULT nextval('public.tb_perfil_id_per_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 16446)
-- Name: tb_perfilPagina id_pagper; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina" ALTER COLUMN id_pagper SET DEFAULT nextval('public."tb_perfilPagina_id_pagper_seq"'::regclass);


--
-- TOC entry 3204 (class 2604 OID 16447)
-- Name: tb_perfilPagina id_per; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina" ALTER COLUMN id_per SET DEFAULT nextval('public."tb_perfilPagina_id_per_seq"'::regclass);


--
-- TOC entry 3205 (class 2604 OID 16448)
-- Name: tb_perfilPagina id_pag; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina" ALTER COLUMN id_pag SET DEFAULT nextval('public."tb_perfilPagina_id_pag_seq"'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16425)
-- Name: tb_usuario id_us; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_us SET DEFAULT nextval('public.tb_usuario_id_us_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 16426)
-- Name: tb_usuario id_per; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_per SET DEFAULT nextval('public.tb_usuario_id_per_seq'::regclass);


--
-- TOC entry 3365 (class 0 OID 16399)
-- Dependencies: 214
-- Data for Name: tb_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_categoria VALUES (1, 'Algas');
INSERT INTO public.tb_categoria VALUES (2, 'Salsa de soja');
INSERT INTO public.tb_categoria VALUES (3, 'Tofu');
INSERT INTO public.tb_categoria VALUES (4, 'Utencillos');


--
-- TOC entry 3378 (class 0 OID 16452)
-- Dependencies: 227
-- Data for Name: tb_pagina; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_pagina VALUES (1, 'Gestion de usuarios', 'http://localhost:8081/EATTOFUU/usuarios.jsp');
INSERT INTO public.tb_pagina VALUES (4, 'Carrito de compras', 'http://localhost:8081/EATTOFUU/carrito.jsp');
INSERT INTO public.tb_pagina VALUES (3, 'Cerrar sesion', 'http://localhost:9452/EATTOFUU/cerrarSesion.jsp');
INSERT INTO public.tb_pagina VALUES (5, 'Gestion de productos', 'http://localhost:9452/EATTOFUU/registrar_producto.jsp');
INSERT INTO public.tb_pagina VALUES (6, 'Cambiar precios', 'http://localhost:9452/EATTOFUU/categoria_mod.jsp');
INSERT INTO public.tb_pagina VALUES (2, 'Cambio de clave', 'http://localhost:9452/EATTOFUU/cambio_contrasena.jsp');


--
-- TOC entry 3372 (class 0 OID 16432)
-- Dependencies: 221
-- Data for Name: tb_perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_perfil VALUES (1, 'Administrador');
INSERT INTO public.tb_perfil VALUES (2, 'Cliente');
INSERT INTO public.tb_perfil VALUES (3, 'Vendedor');


--
-- TOC entry 3376 (class 0 OID 16443)
-- Dependencies: 225
-- Data for Name: tb_perfilPagina; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."tb_perfilPagina" VALUES (1, 1, 1);
INSERT INTO public."tb_perfilPagina" VALUES (2, 1, 2);
INSERT INTO public."tb_perfilPagina" VALUES (3, 1, 3);
INSERT INTO public."tb_perfilPagina" VALUES (4, 1, 4);
INSERT INTO public."tb_perfilPagina" VALUES (5, 1, 5);
INSERT INTO public."tb_perfilPagina" VALUES (6, 1, 6);
INSERT INTO public."tb_perfilPagina" VALUES (7, 2, 2);
INSERT INTO public."tb_perfilPagina" VALUES (8, 2, 3);
INSERT INTO public."tb_perfilPagina" VALUES (9, 2, 4);
INSERT INTO public."tb_perfilPagina" VALUES (10, 3, 2);
INSERT INTO public."tb_perfilPagina" VALUES (11, 3, 3);
INSERT INTO public."tb_perfilPagina" VALUES (12, 3, 4);
INSERT INTO public."tb_perfilPagina" VALUES (13, 3, 5);
INSERT INTO public."tb_perfilPagina" VALUES (14, 3, 6);


--
-- TOC entry 3366 (class 0 OID 16406)
-- Dependencies: 215
-- Data for Name: tb_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_producto VALUES (1001, 1, 'Algas Nori 500g', 30, 3.3, NULL);
INSERT INTO public.tb_producto VALUES (1002, 1, 'Alga Wakame 500g', 20, 3.8, NULL);
INSERT INTO public.tb_producto VALUES (1003, 2, 'Salsa de soja fermentada 550ml', 30, 4, NULL);
INSERT INTO public.tb_producto VALUES (1004, 2, 'Salsa de soja 600ml', 20, 5.5, NULL);
INSERT INTO public.tb_producto VALUES (1005, 3, 'Tofu blando 500gr', 15, 7.8, NULL);
INSERT INTO public.tb_producto VALUES (1006, 3, 'Tofu de seda 500gr', 20, 8.1, NULL);
INSERT INTO public.tb_producto VALUES (1007, 4, 'Cuchillo de chef 10pulg', 10, 12, NULL);
INSERT INTO public.tb_producto VALUES (1008, 4, 'Tabla de madera antideslizante 40cm', 14, 7.3, NULL);


--
-- TOC entry 3370 (class 0 OID 16422)
-- Dependencies: 219
-- Data for Name: tb_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_usuario VALUES (1, 1, 'Leandro', 'La merced', 'LeandroLara', '123456');
INSERT INTO public.tb_usuario VALUES (2, 2, 'Laura', 'Chillos', 'LauraLopez', '123456');
INSERT INTO public.tb_usuario VALUES (3, 3, 'Pablo', 'Sur', 'PabloPoll', '123456');


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 216
-- Name: s_producto; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_producto', 1, false);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_pagina_id_pag_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pagina_id_pag_seq', 1, false);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_perfilPagina_id_pag_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tb_perfilPagina_id_pag_seq"', 1, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_perfilPagina_id_pagper_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tb_perfilPagina_id_pagper_seq"', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_perfilPagina_id_per_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tb_perfilPagina_id_per_seq"', 1, false);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_perfil_id_per_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_perfil_id_per_seq', 1, false);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_usuario_id_per_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_usuario_id_per_seq', 1, false);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_usuario_id_us_seq', 1, false);


--
-- TOC entry 3208 (class 2606 OID 16405)
-- Name: tb_categoria tb_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT tb_categoria_pkey PRIMARY KEY (id_cat);


--
-- TOC entry 3218 (class 2606 OID 16459)
-- Name: tb_pagina tb_pagina_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pagina
    ADD CONSTRAINT tb_pagina_pkey PRIMARY KEY (id_pag);


--
-- TOC entry 3216 (class 2606 OID 16450)
-- Name: tb_perfilPagina tb_perfilPagina_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina"
    ADD CONSTRAINT "tb_perfilPagina_pkey" PRIMARY KEY (id_pagper);


--
-- TOC entry 3214 (class 2606 OID 16439)
-- Name: tb_perfil tb_perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_perfil
    ADD CONSTRAINT tb_perfil_pkey PRIMARY KEY (id_per);


--
-- TOC entry 3210 (class 2606 OID 16412)
-- Name: tb_producto tb_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_pkey PRIMARY KEY (id_pr);


--
-- TOC entry 3212 (class 2606 OID 16430)
-- Name: tb_usuario tb_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_pkey PRIMARY KEY (id_us);


--
-- TOC entry 3219 (class 2606 OID 16413)
-- Name: tb_producto id_cat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT id_cat FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat) NOT VALID;


--
-- TOC entry 3221 (class 2606 OID 16490)
-- Name: tb_perfilPagina tb_perfilPagina_id_pag_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina"
    ADD CONSTRAINT "tb_perfilPagina_id_pag_fkey" FOREIGN KEY (id_pag) REFERENCES public.tb_pagina(id_pag) NOT VALID;


--
-- TOC entry 3222 (class 2606 OID 16495)
-- Name: tb_perfilPagina tb_perfilPagina_id_per_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tb_perfilPagina"
    ADD CONSTRAINT "tb_perfilPagina_id_per_fkey" FOREIGN KEY (id_per) REFERENCES public.tb_perfil(id_per) NOT VALID;


--
-- TOC entry 3220 (class 2606 OID 16460)
-- Name: tb_usuario tb_usuario_id_per_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_id_per_fkey FOREIGN KEY (id_per) REFERENCES public.tb_perfil(id_per) NOT VALID;


-- Completed on 2023-05-18 11:49:37

--
-- PostgreSQL database dump complete
--

