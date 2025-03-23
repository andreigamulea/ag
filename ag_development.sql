--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2025-03-23 19:47:50

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 186690)
-- Name: action_mailbox_inbound_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_mailbox_inbound_emails (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    message_id character varying NOT NULL,
    message_checksum character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_mailbox_inbound_emails OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 186689)
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_mailbox_inbound_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNER TO postgres;

--
-- TOC entry 6092 (class 0 OID 0)
-- Dependencies: 223
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNED BY public.action_mailbox_inbound_emails.id;


--
-- TOC entry 226 (class 1259 OID 186701)
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 186700)
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNER TO postgres;

--
-- TOC entry 6093 (class 0 OID 0)
-- Dependencies: 225
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- TOC entry 220 (class 1259 OID 186659)
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 186658)
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- TOC entry 6094 (class 0 OID 0)
-- Dependencies: 219
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- TOC entry 218 (class 1259 OID 186649)
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 186648)
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- TOC entry 6095 (class 0 OID 0)
-- Dependencies: 217
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- TOC entry 222 (class 1259 OID 186675)
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 186674)
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- TOC entry 6096 (class 0 OID 0)
-- Dependencies: 221
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- TOC entry 216 (class 1259 OID 186641)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 186722)
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 186721)
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNER TO postgres;

--
-- TOC entry 6097 (class 0 OID 0)
-- Dependencies: 229
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- TOC entry 215 (class 1259 OID 186634)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- TOC entry 416 (class 1259 OID 187861)
-- Name: solidus_stripe_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solidus_stripe_customers (
    id bigint NOT NULL,
    payment_method_id integer NOT NULL,
    source_type character varying,
    source_id integer,
    stripe_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.solidus_stripe_customers OWNER TO postgres;

--
-- TOC entry 415 (class 1259 OID 187860)
-- Name: solidus_stripe_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solidus_stripe_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.solidus_stripe_customers_id_seq OWNER TO postgres;

--
-- TOC entry 6098 (class 0 OID 0)
-- Dependencies: 415
-- Name: solidus_stripe_customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solidus_stripe_customers_id_seq OWNED BY public.solidus_stripe_customers.id;


--
-- TOC entry 412 (class 1259 OID 187824)
-- Name: solidus_stripe_payment_intents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solidus_stripe_payment_intents (
    id bigint NOT NULL,
    stripe_intent_id character varying,
    order_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.solidus_stripe_payment_intents OWNER TO postgres;

--
-- TOC entry 411 (class 1259 OID 187823)
-- Name: solidus_stripe_payment_intents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solidus_stripe_payment_intents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.solidus_stripe_payment_intents_id_seq OWNER TO postgres;

--
-- TOC entry 6099 (class 0 OID 0)
-- Dependencies: 411
-- Name: solidus_stripe_payment_intents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solidus_stripe_payment_intents_id_seq OWNED BY public.solidus_stripe_payment_intents.id;


--
-- TOC entry 410 (class 1259 OID 187815)
-- Name: solidus_stripe_payment_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solidus_stripe_payment_sources (
    id bigint NOT NULL,
    payment_method_id integer,
    stripe_payment_method_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.solidus_stripe_payment_sources OWNER TO postgres;

--
-- TOC entry 409 (class 1259 OID 187814)
-- Name: solidus_stripe_payment_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solidus_stripe_payment_sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.solidus_stripe_payment_sources_id_seq OWNER TO postgres;

--
-- TOC entry 6100 (class 0 OID 0)
-- Dependencies: 409
-- Name: solidus_stripe_payment_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solidus_stripe_payment_sources_id_seq OWNED BY public.solidus_stripe_payment_sources.id;


--
-- TOC entry 414 (class 1259 OID 187845)
-- Name: solidus_stripe_slug_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solidus_stripe_slug_entries (
    id bigint NOT NULL,
    payment_method_id integer NOT NULL,
    slug character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.solidus_stripe_slug_entries OWNER TO postgres;

--
-- TOC entry 413 (class 1259 OID 187844)
-- Name: solidus_stripe_slug_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solidus_stripe_slug_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.solidus_stripe_slug_entries_id_seq OWNER TO postgres;

--
-- TOC entry 6101 (class 0 OID 0)
-- Dependencies: 413
-- Name: solidus_stripe_slug_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solidus_stripe_slug_entries_id_seq OWNED BY public.solidus_stripe_slug_entries.id;


--
-- TOC entry 232 (class 1259 OID 186735)
-- Name: spree_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_addresses (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    address1 character varying,
    address2 character varying,
    city character varying,
    zipcode character varying,
    phone character varying,
    state_name character varying,
    alternative_phone character varying,
    company character varying,
    state_id integer,
    country_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying
);


ALTER TABLE public.spree_addresses OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 186734)
-- Name: spree_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_addresses_id_seq OWNER TO postgres;

--
-- TOC entry 6102 (class 0 OID 0)
-- Dependencies: 231
-- Name: spree_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_addresses_id_seq OWNED BY public.spree_addresses.id;


--
-- TOC entry 234 (class 1259 OID 186748)
-- Name: spree_adjustment_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_adjustment_reasons (
    id integer NOT NULL,
    name character varying,
    code character varying,
    active boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_adjustment_reasons OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 186747)
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_adjustment_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_adjustment_reasons_id_seq OWNER TO postgres;

--
-- TOC entry 6103 (class 0 OID 0)
-- Dependencies: 233
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_adjustment_reasons_id_seq OWNED BY public.spree_adjustment_reasons.id;


--
-- TOC entry 236 (class 1259 OID 186760)
-- Name: spree_adjustments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_adjustments (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    adjustable_type character varying,
    adjustable_id integer NOT NULL,
    amount numeric(10,2),
    label character varying,
    eligible boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    order_id integer NOT NULL,
    included boolean DEFAULT false,
    promotion_code_id integer,
    adjustment_reason_id integer,
    finalized boolean DEFAULT false NOT NULL
);


ALTER TABLE public.spree_adjustments OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 186759)
-- Name: spree_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_adjustments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_adjustments_id_seq OWNER TO postgres;

--
-- TOC entry 6104 (class 0 OID 0)
-- Dependencies: 235
-- Name: spree_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_adjustments_id_seq OWNED BY public.spree_adjustments.id;


--
-- TOC entry 238 (class 1259 OID 186778)
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_assets (
    id integer NOT NULL,
    viewable_type character varying,
    viewable_id integer,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying,
    attachment_file_name character varying,
    type character varying(75),
    attachment_updated_at timestamp without time zone,
    alt text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_assets OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 186777)
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_assets_id_seq OWNER TO postgres;

--
-- TOC entry 6105 (class 0 OID 0)
-- Dependencies: 237
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_assets_id_seq OWNED BY public.spree_assets.id;


--
-- TOC entry 240 (class 1259 OID 186789)
-- Name: spree_calculators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_calculators (
    id integer NOT NULL,
    type character varying,
    calculable_type character varying,
    calculable_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    preferences text
);


ALTER TABLE public.spree_calculators OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 186788)
-- Name: spree_calculators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_calculators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_calculators_id_seq OWNER TO postgres;

--
-- TOC entry 6106 (class 0 OID 0)
-- Dependencies: 239
-- Name: spree_calculators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_calculators_id_seq OWNED BY public.spree_calculators.id;


--
-- TOC entry 242 (class 1259 OID 186800)
-- Name: spree_cartons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_cartons (
    id integer NOT NULL,
    number character varying,
    external_number character varying,
    stock_location_id integer,
    address_id integer,
    shipping_method_id integer,
    tracking character varying,
    shipped_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    imported_from_shipment_id integer
);


ALTER TABLE public.spree_cartons OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 186799)
-- Name: spree_cartons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_cartons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_cartons_id_seq OWNER TO postgres;

--
-- TOC entry 6107 (class 0 OID 0)
-- Dependencies: 241
-- Name: spree_cartons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_cartons_id_seq OWNED BY public.spree_cartons.id;


--
-- TOC entry 244 (class 1259 OID 186813)
-- Name: spree_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_countries (
    id integer NOT NULL,
    iso_name character varying,
    iso character varying,
    iso3 character varying,
    name character varying,
    numcode integer,
    states_required boolean DEFAULT false,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_countries OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 186812)
-- Name: spree_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_countries_id_seq OWNER TO postgres;

--
-- TOC entry 6108 (class 0 OID 0)
-- Dependencies: 243
-- Name: spree_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_countries_id_seq OWNED BY public.spree_countries.id;


--
-- TOC entry 246 (class 1259 OID 186824)
-- Name: spree_credit_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_credit_cards (
    id integer NOT NULL,
    month character varying,
    year character varying,
    cc_type character varying,
    last_digits character varying,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying,
    user_id integer,
    payment_method_id integer,
    "default" boolean DEFAULT false NOT NULL,
    address_id integer
);


ALTER TABLE public.spree_credit_cards OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 186823)
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_credit_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_credit_cards_id_seq OWNER TO postgres;

--
-- TOC entry 6109 (class 0 OID 0)
-- Dependencies: 245
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_credit_cards_id_seq OWNED BY public.spree_credit_cards.id;


--
-- TOC entry 248 (class 1259 OID 186836)
-- Name: spree_customer_returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_customer_returns (
    id integer NOT NULL,
    number character varying,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_customer_returns OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 186835)
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_customer_returns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_customer_returns_id_seq OWNER TO postgres;

--
-- TOC entry 6110 (class 0 OID 0)
-- Dependencies: 247
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_customer_returns_id_seq OWNED BY public.spree_customer_returns.id;


--
-- TOC entry 250 (class 1259 OID 186845)
-- Name: spree_inventory_units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_inventory_units (
    id integer NOT NULL,
    state character varying,
    variant_id integer,
    shipment_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    pending boolean DEFAULT true,
    line_item_id integer,
    carton_id integer
);


ALTER TABLE public.spree_inventory_units OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 186844)
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_inventory_units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_inventory_units_id_seq OWNER TO postgres;

--
-- TOC entry 6111 (class 0 OID 0)
-- Dependencies: 249
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_inventory_units_id_seq OWNED BY public.spree_inventory_units.id;


--
-- TOC entry 252 (class 1259 OID 186860)
-- Name: spree_line_item_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_line_item_actions (
    id integer NOT NULL,
    line_item_id integer NOT NULL,
    action_id integer NOT NULL,
    quantity integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_line_item_actions OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 186859)
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_line_item_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_line_item_actions_id_seq OWNER TO postgres;

--
-- TOC entry 6112 (class 0 OID 0)
-- Dependencies: 251
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_line_item_actions_id_seq OWNED BY public.spree_line_item_actions.id;


--
-- TOC entry 254 (class 1259 OID 186870)
-- Name: spree_line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_line_items (
    id integer NOT NULL,
    variant_id integer,
    order_id integer,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    cost_price numeric(10,2),
    tax_category_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_line_items OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 186869)
-- Name: spree_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_line_items_id_seq OWNER TO postgres;

--
-- TOC entry 6113 (class 0 OID 0)
-- Dependencies: 253
-- Name: spree_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_line_items_id_seq OWNED BY public.spree_line_items.id;


--
-- TOC entry 256 (class 1259 OID 186885)
-- Name: spree_log_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_log_entries (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    details text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_log_entries OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 186884)
-- Name: spree_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_log_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_log_entries_id_seq OWNER TO postgres;

--
-- TOC entry 6114 (class 0 OID 0)
-- Dependencies: 255
-- Name: spree_log_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_log_entries_id_seq OWNED BY public.spree_log_entries.id;


--
-- TOC entry 258 (class 1259 OID 186895)
-- Name: spree_option_type_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_type_prototypes (
    id integer NOT NULL,
    prototype_id integer,
    option_type_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_type_prototypes OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 186894)
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_type_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNER TO postgres;

--
-- TOC entry 6115 (class 0 OID 0)
-- Dependencies: 257
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNED BY public.spree_option_type_prototypes.id;


--
-- TOC entry 260 (class 1259 OID 186902)
-- Name: spree_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_types (
    id integer NOT NULL,
    name character varying(100),
    presentation character varying(100),
    "position" integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_types OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 186901)
-- Name: spree_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_option_types_id_seq OWNER TO postgres;

--
-- TOC entry 6116 (class 0 OID 0)
-- Dependencies: 259
-- Name: spree_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_types_id_seq OWNED BY public.spree_option_types.id;


--
-- TOC entry 262 (class 1259 OID 186911)
-- Name: spree_option_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_values (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    presentation character varying,
    option_type_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_values OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 186910)
-- Name: spree_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_option_values_id_seq OWNER TO postgres;

--
-- TOC entry 6117 (class 0 OID 0)
-- Dependencies: 261
-- Name: spree_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_values_id_seq OWNED BY public.spree_option_values.id;


--
-- TOC entry 264 (class 1259 OID 186922)
-- Name: spree_option_values_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_values_variants (
    id integer NOT NULL,
    variant_id integer,
    option_value_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_values_variants OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 186921)
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_values_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_option_values_variants_id_seq OWNER TO postgres;

--
-- TOC entry 6118 (class 0 OID 0)
-- Dependencies: 263
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_values_variants_id_seq OWNED BY public.spree_option_values_variants.id;


--
-- TOC entry 266 (class 1259 OID 186931)
-- Name: spree_order_mutexes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_order_mutexes (
    id integer NOT NULL,
    order_id integer NOT NULL,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_order_mutexes OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 186930)
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_order_mutexes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_order_mutexes_id_seq OWNER TO postgres;

--
-- TOC entry 6119 (class 0 OID 0)
-- Dependencies: 265
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_order_mutexes_id_seq OWNED BY public.spree_order_mutexes.id;


--
-- TOC entry 268 (class 1259 OID 186939)
-- Name: spree_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_orders (
    id integer NOT NULL,
    number character varying(32),
    item_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    total numeric(10,2) DEFAULT 0.0 NOT NULL,
    state character varying,
    adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    user_id integer,
    completed_at timestamp without time zone,
    bill_address_id integer,
    ship_address_id integer,
    payment_total numeric(10,2) DEFAULT 0.0,
    shipment_state character varying,
    payment_state character varying,
    email character varying,
    special_instructions text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    currency character varying,
    last_ip_address character varying,
    created_by_id integer,
    shipment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    channel character varying DEFAULT 'spree'::character varying,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    item_count integer DEFAULT 0,
    approver_id integer,
    approved_at timestamp without time zone,
    confirmation_delivered boolean DEFAULT false,
    guest_token character varying,
    canceled_at timestamp without time zone,
    canceler_id integer,
    store_id integer,
    approver_name character varying,
    frontend_viewable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_orders OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 186938)
-- Name: spree_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_orders_id_seq OWNER TO postgres;

--
-- TOC entry 6120 (class 0 OID 0)
-- Dependencies: 267
-- Name: spree_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_orders_id_seq OWNED BY public.spree_orders.id;


--
-- TOC entry 270 (class 1259 OID 186969)
-- Name: spree_orders_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_orders_promotions (
    id integer NOT NULL,
    order_id integer,
    promotion_id integer,
    promotion_code_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_orders_promotions OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 186968)
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_orders_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_orders_promotions_id_seq OWNER TO postgres;

--
-- TOC entry 6121 (class 0 OID 0)
-- Dependencies: 269
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_orders_promotions_id_seq OWNED BY public.spree_orders_promotions.id;


--
-- TOC entry 272 (class 1259 OID 186978)
-- Name: spree_payment_capture_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_capture_events (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    payment_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_payment_capture_events OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 186977)
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payment_capture_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNER TO postgres;

--
-- TOC entry 6122 (class 0 OID 0)
-- Dependencies: 271
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNED BY public.spree_payment_capture_events.id;


--
-- TOC entry 274 (class 1259 OID 186987)
-- Name: spree_payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_methods (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    auto_capture boolean,
    preferences text,
    preference_source character varying,
    "position" integer DEFAULT 0,
    available_to_users boolean DEFAULT true,
    available_to_admin boolean DEFAULT true,
    type_before_removal character varying
);


ALTER TABLE public.spree_payment_methods OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 186986)
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_payment_methods_id_seq OWNER TO postgres;

--
-- TOC entry 6123 (class 0 OID 0)
-- Dependencies: 273
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payment_methods_id_seq OWNED BY public.spree_payment_methods.id;


--
-- TOC entry 276 (class 1259 OID 186999)
-- Name: spree_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payments (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    order_id integer,
    source_type character varying,
    source_id integer,
    payment_method_id integer,
    state character varying,
    response_code character varying,
    avs_response character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    number character varying,
    cvv_response_code character varying,
    cvv_response_message character varying
);


ALTER TABLE public.spree_payments OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 186998)
-- Name: spree_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_payments_id_seq OWNER TO postgres;

--
-- TOC entry 6124 (class 0 OID 0)
-- Dependencies: 275
-- Name: spree_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payments_id_seq OWNED BY public.spree_payments.id;


--
-- TOC entry 278 (class 1259 OID 187012)
-- Name: spree_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_preferences (
    id integer NOT NULL,
    value text,
    key character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_preferences OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 187011)
-- Name: spree_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_preferences_id_seq OWNER TO postgres;

--
-- TOC entry 6125 (class 0 OID 0)
-- Dependencies: 277
-- Name: spree_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_preferences_id_seq OWNED BY public.spree_preferences.id;


--
-- TOC entry 280 (class 1259 OID 187022)
-- Name: spree_prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prices (
    id integer NOT NULL,
    variant_id integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    currency character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    country_iso character varying(2)
);


ALTER TABLE public.spree_prices OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 187021)
-- Name: spree_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_prices_id_seq OWNER TO postgres;

--
-- TOC entry 6126 (class 0 OID 0)
-- Dependencies: 279
-- Name: spree_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prices_id_seq OWNED BY public.spree_prices.id;


--
-- TOC entry 282 (class 1259 OID 187034)
-- Name: spree_product_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_option_types (
    id integer NOT NULL,
    "position" integer,
    product_id integer,
    option_type_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_product_option_types OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 187033)
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_product_option_types_id_seq OWNER TO postgres;

--
-- TOC entry 6127 (class 0 OID 0)
-- Dependencies: 281
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_option_types_id_seq OWNED BY public.spree_product_option_types.id;


--
-- TOC entry 284 (class 1259 OID 187044)
-- Name: spree_product_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_promotion_rules (
    id integer NOT NULL,
    product_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_product_promotion_rules OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 187043)
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNER TO postgres;

--
-- TOC entry 6128 (class 0 OID 0)
-- Dependencies: 283
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNED BY public.spree_product_promotion_rules.id;


--
-- TOC entry 286 (class 1259 OID 187053)
-- Name: spree_product_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_properties (
    id integer NOT NULL,
    value character varying,
    product_id integer,
    property_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_product_properties OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 187052)
-- Name: spree_product_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_product_properties_id_seq OWNER TO postgres;

--
-- TOC entry 6129 (class 0 OID 0)
-- Dependencies: 285
-- Name: spree_product_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_properties_id_seq OWNED BY public.spree_product_properties.id;


--
-- TOC entry 288 (class 1259 OID 187066)
-- Name: spree_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    available_on timestamp without time zone,
    deleted_at timestamp without time zone,
    slug character varying,
    meta_description text,
    meta_keywords character varying,
    tax_category_id integer,
    shipping_category_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotionable boolean DEFAULT true,
    meta_title character varying,
    discontinue_on timestamp without time zone
);


ALTER TABLE public.spree_products OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 187065)
-- Name: spree_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_products_id_seq OWNER TO postgres;

--
-- TOC entry 6130 (class 0 OID 0)
-- Dependencies: 287
-- Name: spree_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_products_id_seq OWNED BY public.spree_products.id;


--
-- TOC entry 290 (class 1259 OID 187081)
-- Name: spree_products_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products_taxons (
    id integer NOT NULL,
    product_id integer,
    taxon_id integer,
    "position" integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_products_taxons OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 187080)
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_products_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_products_taxons_id_seq OWNER TO postgres;

--
-- TOC entry 6131 (class 0 OID 0)
-- Dependencies: 289
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_products_taxons_id_seq OWNED BY public.spree_products_taxons.id;


--
-- TOC entry 292 (class 1259 OID 187101)
-- Name: spree_promotion_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_actions (
    id integer NOT NULL,
    promotion_id integer,
    "position" integer,
    type character varying,
    deleted_at timestamp without time zone,
    preferences text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_actions OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 187100)
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_actions_id_seq OWNER TO postgres;

--
-- TOC entry 6132 (class 0 OID 0)
-- Dependencies: 291
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_actions_id_seq OWNED BY public.spree_promotion_actions.id;


--
-- TOC entry 294 (class 1259 OID 187113)
-- Name: spree_promotion_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    code character varying
);


ALTER TABLE public.spree_promotion_categories OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 187112)
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6133 (class 0 OID 0)
-- Dependencies: 293
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNED BY public.spree_promotion_categories.id;


--
-- TOC entry 400 (class 1259 OID 187715)
-- Name: spree_promotion_code_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_code_batches (
    id integer NOT NULL,
    promotion_id integer NOT NULL,
    base_code character varying NOT NULL,
    number_of_codes integer NOT NULL,
    email character varying,
    error character varying,
    state character varying DEFAULT 'pending'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    join_characters character varying DEFAULT '_'::character varying NOT NULL
);


ALTER TABLE public.spree_promotion_code_batches OWNER TO postgres;

--
-- TOC entry 399 (class 1259 OID 187714)
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_code_batches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_code_batches_id_seq OWNER TO postgres;

--
-- TOC entry 6134 (class 0 OID 0)
-- Dependencies: 399
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_code_batches_id_seq OWNED BY public.spree_promotion_code_batches.id;


--
-- TOC entry 296 (class 1259 OID 187122)
-- Name: spree_promotion_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_codes (
    id integer NOT NULL,
    promotion_id integer NOT NULL,
    value character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotion_code_batch_id integer
);


ALTER TABLE public.spree_promotion_codes OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 187121)
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_codes_id_seq OWNER TO postgres;

--
-- TOC entry 6135 (class 0 OID 0)
-- Dependencies: 295
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_codes_id_seq OWNED BY public.spree_promotion_codes.id;


--
-- TOC entry 298 (class 1259 OID 187133)
-- Name: spree_promotion_rule_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rule_taxons (
    id integer NOT NULL,
    taxon_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_rule_taxons OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 187132)
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rule_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNER TO postgres;

--
-- TOC entry 6136 (class 0 OID 0)
-- Dependencies: 297
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNED BY public.spree_promotion_rule_taxons.id;


--
-- TOC entry 300 (class 1259 OID 187142)
-- Name: spree_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules (
    id integer NOT NULL,
    promotion_id integer,
    type character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    preferences text
);


ALTER TABLE public.spree_promotion_rules OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 187141)
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_rules_id_seq OWNER TO postgres;

--
-- TOC entry 6137 (class 0 OID 0)
-- Dependencies: 299
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_id_seq OWNED BY public.spree_promotion_rules.id;


--
-- TOC entry 404 (class 1259 OID 187762)
-- Name: spree_promotion_rules_stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules_stores (
    id bigint NOT NULL,
    store_id bigint NOT NULL,
    promotion_rule_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_promotion_rules_stores OWNER TO postgres;

--
-- TOC entry 403 (class 1259 OID 187761)
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_rules_stores_id_seq OWNER TO postgres;

--
-- TOC entry 6138 (class 0 OID 0)
-- Dependencies: 403
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_stores_id_seq OWNED BY public.spree_promotion_rules_stores.id;


--
-- TOC entry 302 (class 1259 OID 187153)
-- Name: spree_promotion_rules_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules_users (
    id integer NOT NULL,
    user_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_rules_users OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 187152)
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotion_rules_users_id_seq OWNER TO postgres;

--
-- TOC entry 6139 (class 0 OID 0)
-- Dependencies: 301
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_users_id_seq OWNED BY public.spree_promotion_rules_users.id;


--
-- TOC entry 304 (class 1259 OID 187162)
-- Name: spree_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotions (
    id integer NOT NULL,
    description character varying,
    expires_at timestamp without time zone,
    starts_at timestamp without time zone,
    name character varying,
    type character varying,
    usage_limit integer,
    advertise boolean DEFAULT false,
    path character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotion_category_id integer,
    per_code_usage_limit integer,
    apply_automatically boolean DEFAULT false
);


ALTER TABLE public.spree_promotions OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 187161)
-- Name: spree_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_promotions_id_seq OWNER TO postgres;

--
-- TOC entry 6140 (class 0 OID 0)
-- Dependencies: 303
-- Name: spree_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotions_id_seq OWNED BY public.spree_promotions.id;


--
-- TOC entry 306 (class 1259 OID 187181)
-- Name: spree_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_properties (
    id integer NOT NULL,
    name character varying,
    presentation character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_properties OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 187180)
-- Name: spree_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_properties_id_seq OWNER TO postgres;

--
-- TOC entry 6141 (class 0 OID 0)
-- Dependencies: 305
-- Name: spree_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_properties_id_seq OWNED BY public.spree_properties.id;


--
-- TOC entry 308 (class 1259 OID 187190)
-- Name: spree_property_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_property_prototypes (
    id integer NOT NULL,
    prototype_id integer,
    property_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_property_prototypes OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 187189)
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_property_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNER TO postgres;

--
-- TOC entry 6142 (class 0 OID 0)
-- Dependencies: 307
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNED BY public.spree_property_prototypes.id;


--
-- TOC entry 310 (class 1259 OID 187197)
-- Name: spree_prototype_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototype_taxons (
    id integer NOT NULL,
    taxon_id integer,
    prototype_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_prototype_taxons OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 187196)
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototype_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNER TO postgres;

--
-- TOC entry 6143 (class 0 OID 0)
-- Dependencies: 309
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNED BY public.spree_prototype_taxons.id;


--
-- TOC entry 312 (class 1259 OID 187206)
-- Name: spree_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototypes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_prototypes OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 187205)
-- Name: spree_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_prototypes_id_seq OWNER TO postgres;

--
-- TOC entry 6144 (class 0 OID 0)
-- Dependencies: 311
-- Name: spree_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototypes_id_seq OWNED BY public.spree_prototypes.id;


--
-- TOC entry 314 (class 1259 OID 187215)
-- Name: spree_refund_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refund_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    code character varying
);


ALTER TABLE public.spree_refund_reasons OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 187214)
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_refund_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNER TO postgres;

--
-- TOC entry 6145 (class 0 OID 0)
-- Dependencies: 313
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNED BY public.spree_refund_reasons.id;


--
-- TOC entry 316 (class 1259 OID 187226)
-- Name: spree_refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refunds (
    id integer NOT NULL,
    payment_id integer,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    transaction_id character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    refund_reason_id integer,
    reimbursement_id integer
);


ALTER TABLE public.spree_refunds OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 187225)
-- Name: spree_refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_refunds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_refunds_id_seq OWNER TO postgres;

--
-- TOC entry 6146 (class 0 OID 0)
-- Dependencies: 315
-- Name: spree_refunds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_refunds_id_seq OWNED BY public.spree_refunds.id;


--
-- TOC entry 318 (class 1259 OID 187239)
-- Name: spree_reimbursement_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_credits (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    reimbursement_id integer,
    creditable_id integer,
    creditable_type character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_reimbursement_credits OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 187238)
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNER TO postgres;

--
-- TOC entry 6147 (class 0 OID 0)
-- Dependencies: 317
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNED BY public.spree_reimbursement_credits.id;


--
-- TOC entry 320 (class 1259 OID 187249)
-- Name: spree_reimbursement_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_types (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    type character varying
);


ALTER TABLE public.spree_reimbursement_types OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 187248)
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNER TO postgres;

--
-- TOC entry 6148 (class 0 OID 0)
-- Dependencies: 319
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNED BY public.spree_reimbursement_types.id;


--
-- TOC entry 322 (class 1259 OID 187261)
-- Name: spree_reimbursements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursements (
    id integer NOT NULL,
    number character varying,
    reimbursement_status character varying,
    customer_return_id integer,
    order_id integer,
    total numeric(10,2),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_reimbursements OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 187260)
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_reimbursements_id_seq OWNER TO postgres;

--
-- TOC entry 6149 (class 0 OID 0)
-- Dependencies: 321
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursements_id_seq OWNED BY public.spree_reimbursements.id;


--
-- TOC entry 324 (class 1259 OID 187272)
-- Name: spree_return_authorizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_authorizations (
    id integer NOT NULL,
    number character varying,
    state character varying,
    order_id integer,
    memo text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    stock_location_id integer,
    return_reason_id integer
);


ALTER TABLE public.spree_return_authorizations OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 187271)
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_authorizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_return_authorizations_id_seq OWNER TO postgres;

--
-- TOC entry 6150 (class 0 OID 0)
-- Dependencies: 323
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_authorizations_id_seq OWNED BY public.spree_return_authorizations.id;


--
-- TOC entry 326 (class 1259 OID 187282)
-- Name: spree_return_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_items (
    id integer NOT NULL,
    return_authorization_id integer,
    inventory_unit_id integer,
    exchange_variant_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    included_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    reception_status character varying,
    acceptance_status character varying,
    customer_return_id integer,
    reimbursement_id integer,
    exchange_inventory_unit_id integer,
    acceptance_status_errors text,
    preferred_reimbursement_type_id integer,
    override_reimbursement_type_id integer,
    resellable boolean DEFAULT true NOT NULL,
    return_reason_id integer
);


ALTER TABLE public.spree_return_items OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 187281)
-- Name: spree_return_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_return_items_id_seq OWNER TO postgres;

--
-- TOC entry 6151 (class 0 OID 0)
-- Dependencies: 325
-- Name: spree_return_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_items_id_seq OWNED BY public.spree_return_items.id;


--
-- TOC entry 328 (class 1259 OID 187297)
-- Name: spree_return_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_return_reasons OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 187296)
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_return_reasons_id_seq OWNER TO postgres;

--
-- TOC entry 6152 (class 0 OID 0)
-- Dependencies: 327
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_reasons_id_seq OWNED BY public.spree_return_reasons.id;


--
-- TOC entry 330 (class 1259 OID 187308)
-- Name: spree_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_roles (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_roles OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 187307)
-- Name: spree_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_roles_id_seq OWNER TO postgres;

--
-- TOC entry 6153 (class 0 OID 0)
-- Dependencies: 329
-- Name: spree_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_roles_id_seq OWNED BY public.spree_roles.id;


--
-- TOC entry 332 (class 1259 OID 187317)
-- Name: spree_roles_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_roles_users (
    id integer NOT NULL,
    role_id integer,
    user_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_roles_users OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 187316)
-- Name: spree_roles_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_roles_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_roles_users_id_seq OWNER TO postgres;

--
-- TOC entry 6154 (class 0 OID 0)
-- Dependencies: 331
-- Name: spree_roles_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_roles_users_id_seq OWNED BY public.spree_roles_users.id;


--
-- TOC entry 334 (class 1259 OID 187326)
-- Name: spree_shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipments (
    id integer NOT NULL,
    tracking character varying,
    number character varying,
    cost numeric(10,2) DEFAULT 0.0,
    shipped_at timestamp without time zone,
    order_id integer,
    state character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    stock_location_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_shipments OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 187325)
-- Name: spree_shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipments_id_seq OWNER TO postgres;

--
-- TOC entry 6155 (class 0 OID 0)
-- Dependencies: 333
-- Name: spree_shipments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipments_id_seq OWNED BY public.spree_shipments.id;


--
-- TOC entry 336 (class 1259 OID 187344)
-- Name: spree_shipping_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_categories OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 187343)
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6156 (class 0 OID 0)
-- Dependencies: 335
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNED BY public.spree_shipping_categories.id;


--
-- TOC entry 338 (class 1259 OID 187353)
-- Name: spree_shipping_method_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_categories (
    id integer NOT NULL,
    shipping_method_id integer NOT NULL,
    shipping_category_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_categories OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 187352)
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6157 (class 0 OID 0)
-- Dependencies: 337
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNED BY public.spree_shipping_method_categories.id;


--
-- TOC entry 340 (class 1259 OID 187362)
-- Name: spree_shipping_method_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_stock_locations (
    id integer NOT NULL,
    shipping_method_id integer,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_stock_locations OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 187361)
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_method_stock_locations_id_seq OWNER TO postgres;

--
-- TOC entry 6158 (class 0 OID 0)
-- Dependencies: 339
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_stock_locations_id_seq OWNED BY public.spree_shipping_method_stock_locations.id;


--
-- TOC entry 342 (class 1259 OID 187371)
-- Name: spree_shipping_method_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_zones (
    id integer NOT NULL,
    shipping_method_id integer,
    zone_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_zones OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 187370)
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNER TO postgres;

--
-- TOC entry 6159 (class 0 OID 0)
-- Dependencies: 341
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNED BY public.spree_shipping_method_zones.id;


--
-- TOC entry 344 (class 1259 OID 187378)
-- Name: spree_shipping_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_methods (
    id integer NOT NULL,
    name character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tracking_url character varying,
    admin_name character varying,
    tax_category_id integer,
    code character varying,
    available_to_all boolean DEFAULT true,
    carrier character varying,
    service_level character varying,
    available_to_users boolean DEFAULT true
);


ALTER TABLE public.spree_shipping_methods OWNER TO postgres;

--
-- TOC entry 343 (class 1259 OID 187377)
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_methods_id_seq OWNER TO postgres;

--
-- TOC entry 6160 (class 0 OID 0)
-- Dependencies: 343
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_methods_id_seq OWNED BY public.spree_shipping_methods.id;


--
-- TOC entry 346 (class 1259 OID 187389)
-- Name: spree_shipping_rate_taxes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_rate_taxes (
    id integer NOT NULL,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    tax_rate_id integer,
    shipping_rate_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_rate_taxes OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 187388)
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_rate_taxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_rate_taxes_id_seq OWNER TO postgres;

--
-- TOC entry 6161 (class 0 OID 0)
-- Dependencies: 345
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_rate_taxes_id_seq OWNED BY public.spree_shipping_rate_taxes.id;


--
-- TOC entry 348 (class 1259 OID 187399)
-- Name: spree_shipping_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_rates (
    id integer NOT NULL,
    shipment_id integer,
    shipping_method_id integer,
    selected boolean DEFAULT false,
    cost numeric(8,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tax_rate_id integer
);


ALTER TABLE public.spree_shipping_rates OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 187398)
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_shipping_rates_id_seq OWNER TO postgres;

--
-- TOC entry 6162 (class 0 OID 0)
-- Dependencies: 347
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_rates_id_seq OWNED BY public.spree_shipping_rates.id;


--
-- TOC entry 350 (class 1259 OID 187409)
-- Name: spree_state_changes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_state_changes (
    id integer NOT NULL,
    name character varying,
    previous_state character varying,
    stateful_id integer,
    user_id integer,
    stateful_type character varying,
    next_state character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_state_changes OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 187408)
-- Name: spree_state_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_state_changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_state_changes_id_seq OWNER TO postgres;

--
-- TOC entry 6163 (class 0 OID 0)
-- Dependencies: 349
-- Name: spree_state_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_state_changes_id_seq OWNED BY public.spree_state_changes.id;


--
-- TOC entry 352 (class 1259 OID 187420)
-- Name: spree_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_states (
    id integer NOT NULL,
    name character varying,
    abbr character varying,
    country_id integer,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_states OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 187419)
-- Name: spree_states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_states_id_seq OWNER TO postgres;

--
-- TOC entry 6164 (class 0 OID 0)
-- Dependencies: 351
-- Name: spree_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_states_id_seq OWNED BY public.spree_states.id;


--
-- TOC entry 354 (class 1259 OID 187430)
-- Name: spree_stock_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_items (
    id integer NOT NULL,
    stock_location_id integer,
    variant_id integer,
    count_on_hand integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    backorderable boolean DEFAULT false,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_stock_items OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 187429)
-- Name: spree_stock_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_stock_items_id_seq OWNER TO postgres;

--
-- TOC entry 6165 (class 0 OID 0)
-- Dependencies: 353
-- Name: spree_stock_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_items_id_seq OWNED BY public.spree_stock_items.id;


--
-- TOC entry 356 (class 1259 OID 187443)
-- Name: spree_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_locations (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "default" boolean DEFAULT false NOT NULL,
    address1 character varying,
    address2 character varying,
    city character varying,
    state_id integer,
    state_name character varying,
    country_id integer,
    zipcode character varying,
    phone character varying,
    active boolean DEFAULT true,
    backorderable_default boolean DEFAULT false,
    propagate_all_variants boolean DEFAULT true,
    admin_name character varying,
    "position" integer DEFAULT 0,
    restock_inventory boolean DEFAULT true NOT NULL,
    fulfillable boolean DEFAULT true NOT NULL,
    code character varying,
    check_stock_on_transfer boolean DEFAULT true
);


ALTER TABLE public.spree_stock_locations OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 187442)
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_stock_locations_id_seq OWNER TO postgres;

--
-- TOC entry 6166 (class 0 OID 0)
-- Dependencies: 355
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_locations_id_seq OWNED BY public.spree_stock_locations.id;


--
-- TOC entry 358 (class 1259 OID 187462)
-- Name: spree_stock_movements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_movements (
    id integer NOT NULL,
    stock_item_id integer,
    quantity integer DEFAULT 0,
    action character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    originator_type character varying,
    originator_id integer
);


ALTER TABLE public.spree_stock_movements OWNER TO postgres;

--
-- TOC entry 357 (class 1259 OID 187461)
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_movements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_stock_movements_id_seq OWNER TO postgres;

--
-- TOC entry 6167 (class 0 OID 0)
-- Dependencies: 357
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_movements_id_seq OWNED BY public.spree_stock_movements.id;


--
-- TOC entry 360 (class 1259 OID 187473)
-- Name: spree_store_credit_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_store_credit_categories OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 187472)
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6168 (class 0 OID 0)
-- Dependencies: 359
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNED BY public.spree_store_credit_categories.id;


--
-- TOC entry 362 (class 1259 OID 187482)
-- Name: spree_store_credit_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_events (
    id integer NOT NULL,
    store_credit_id integer NOT NULL,
    action character varying NOT NULL,
    amount numeric(8,2),
    user_total_amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    authorization_code character varying NOT NULL,
    deleted_at timestamp without time zone,
    originator_type character varying,
    originator_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    amount_remaining numeric(8,2) DEFAULT NULL::numeric,
    store_credit_reason_id integer
);


ALTER TABLE public.spree_store_credit_events OWNER TO postgres;

--
-- TOC entry 361 (class 1259 OID 187481)
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNER TO postgres;

--
-- TOC entry 6169 (class 0 OID 0)
-- Dependencies: 361
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNED BY public.spree_store_credit_events.id;


--
-- TOC entry 408 (class 1259 OID 187785)
-- Name: spree_store_credit_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_reasons (
    id bigint NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_reasons OWNER TO postgres;

--
-- TOC entry 407 (class 1259 OID 187784)
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_credit_reasons_id_seq OWNER TO postgres;

--
-- TOC entry 6170 (class 0 OID 0)
-- Dependencies: 407
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_reasons_id_seq OWNED BY public.spree_store_credit_reasons.id;


--
-- TOC entry 364 (class 1259 OID 187494)
-- Name: spree_store_credit_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_types (
    id integer NOT NULL,
    name character varying,
    priority integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_store_credit_types OWNER TO postgres;

--
-- TOC entry 363 (class 1259 OID 187493)
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNER TO postgres;

--
-- TOC entry 6171 (class 0 OID 0)
-- Dependencies: 363
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNED BY public.spree_store_credit_types.id;


--
-- TOC entry 366 (class 1259 OID 187513)
-- Name: spree_store_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credits (
    id integer NOT NULL,
    user_id integer,
    category_id integer,
    created_by_id integer,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_used numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_authorized numeric(8,2) DEFAULT 0.0 NOT NULL,
    currency character varying,
    memo text,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    type_id integer,
    invalidated_at timestamp without time zone
);


ALTER TABLE public.spree_store_credits OWNER TO postgres;

--
-- TOC entry 365 (class 1259 OID 187512)
-- Name: spree_store_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_credits_id_seq OWNER TO postgres;

--
-- TOC entry 6172 (class 0 OID 0)
-- Dependencies: 365
-- Name: spree_store_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credits_id_seq OWNED BY public.spree_store_credits.id;


--
-- TOC entry 368 (class 1259 OID 187528)
-- Name: spree_store_payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_payment_methods (
    id integer NOT NULL,
    store_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_payment_methods OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 187527)
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_payment_methods_id_seq OWNER TO postgres;

--
-- TOC entry 6173 (class 0 OID 0)
-- Dependencies: 367
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_payment_methods_id_seq OWNED BY public.spree_store_payment_methods.id;


--
-- TOC entry 406 (class 1259 OID 187771)
-- Name: spree_store_shipping_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_shipping_methods (
    id bigint NOT NULL,
    store_id bigint NOT NULL,
    shipping_method_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_shipping_methods OWNER TO postgres;

--
-- TOC entry 405 (class 1259 OID 187770)
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_shipping_methods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_store_shipping_methods_id_seq OWNER TO postgres;

--
-- TOC entry 6174 (class 0 OID 0)
-- Dependencies: 405
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_shipping_methods_id_seq OWNED BY public.spree_store_shipping_methods.id;


--
-- TOC entry 370 (class 1259 OID 187537)
-- Name: spree_stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stores (
    id integer NOT NULL,
    name character varying,
    url character varying,
    meta_description text,
    meta_keywords text,
    seo_title character varying,
    mail_from_address character varying,
    default_currency character varying,
    code character varying,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    cart_tax_country_iso character varying,
    available_locales character varying,
    bcc_email character varying
);


ALTER TABLE public.spree_stores OWNER TO postgres;

--
-- TOC entry 369 (class 1259 OID 187536)
-- Name: spree_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_stores_id_seq OWNER TO postgres;

--
-- TOC entry 6175 (class 0 OID 0)
-- Dependencies: 369
-- Name: spree_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stores_id_seq OWNED BY public.spree_stores.id;


--
-- TOC entry 372 (class 1259 OID 187549)
-- Name: spree_tax_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_categories (
    id integer NOT NULL,
    name character varying,
    description character varying,
    is_default boolean DEFAULT false,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tax_code character varying
);


ALTER TABLE public.spree_tax_categories OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 187548)
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_tax_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6176 (class 0 OID 0)
-- Dependencies: 371
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_categories_id_seq OWNED BY public.spree_tax_categories.id;


--
-- TOC entry 402 (class 1259 OID 187741)
-- Name: spree_tax_rate_tax_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_rate_tax_categories (
    id integer NOT NULL,
    tax_category_id integer NOT NULL,
    tax_rate_id integer NOT NULL
);


ALTER TABLE public.spree_tax_rate_tax_categories OWNER TO postgres;

--
-- TOC entry 401 (class 1259 OID 187740)
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_rate_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_tax_rate_tax_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6177 (class 0 OID 0)
-- Dependencies: 401
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_rate_tax_categories_id_seq OWNED BY public.spree_tax_rate_tax_categories.id;


--
-- TOC entry 374 (class 1259 OID 187559)
-- Name: spree_tax_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_rates (
    id integer NOT NULL,
    amount numeric(8,5),
    zone_id integer,
    included_in_price boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying,
    show_rate_in_label boolean DEFAULT true,
    deleted_at timestamp without time zone,
    starts_at timestamp without time zone,
    expires_at timestamp without time zone,
    level integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.spree_tax_rates OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 187558)
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_tax_rates_id_seq OWNER TO postgres;

--
-- TOC entry 6178 (class 0 OID 0)
-- Dependencies: 373
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_rates_id_seq OWNED BY public.spree_tax_rates.id;


--
-- TOC entry 376 (class 1259 OID 187573)
-- Name: spree_taxonomies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxonomies (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_taxonomies OWNER TO postgres;

--
-- TOC entry 375 (class 1259 OID 187572)
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taxonomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_taxonomies_id_seq OWNER TO postgres;

--
-- TOC entry 6179 (class 0 OID 0)
-- Dependencies: 375
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taxonomies_id_seq OWNED BY public.spree_taxonomies.id;


--
-- TOC entry 378 (class 1259 OID 187584)
-- Name: spree_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxons (
    id integer NOT NULL,
    parent_id integer,
    name character varying NOT NULL,
    permalink character varying,
    taxonomy_id integer,
    lft integer,
    rgt integer,
    icon_file_name character varying,
    icon_content_type character varying,
    icon_file_size integer,
    icon_updated_at timestamp without time zone,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    meta_title character varying,
    meta_description character varying,
    meta_keywords character varying,
    depth integer
);


ALTER TABLE public.spree_taxons OWNER TO postgres;

--
-- TOC entry 377 (class 1259 OID 187583)
-- Name: spree_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_taxons_id_seq OWNER TO postgres;

--
-- TOC entry 6180 (class 0 OID 0)
-- Dependencies: 377
-- Name: spree_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taxons_id_seq OWNED BY public.spree_taxons.id;


--
-- TOC entry 380 (class 1259 OID 187598)
-- Name: spree_unit_cancels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_unit_cancels (
    id integer NOT NULL,
    inventory_unit_id integer NOT NULL,
    reason character varying,
    created_by character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_unit_cancels OWNER TO postgres;

--
-- TOC entry 379 (class 1259 OID 187597)
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_unit_cancels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_unit_cancels_id_seq OWNER TO postgres;

--
-- TOC entry 6181 (class 0 OID 0)
-- Dependencies: 379
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_unit_cancels_id_seq OWNED BY public.spree_unit_cancels.id;


--
-- TOC entry 382 (class 1259 OID 187608)
-- Name: spree_user_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_user_addresses (
    id integer NOT NULL,
    user_id integer NOT NULL,
    address_id integer NOT NULL,
    "default" boolean DEFAULT false,
    archived boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    default_billing boolean DEFAULT false
);


ALTER TABLE public.spree_user_addresses OWNER TO postgres;

--
-- TOC entry 381 (class 1259 OID 187607)
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_user_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_user_addresses_id_seq OWNER TO postgres;

--
-- TOC entry 6182 (class 0 OID 0)
-- Dependencies: 381
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_user_addresses_id_seq OWNED BY public.spree_user_addresses.id;


--
-- TOC entry 384 (class 1259 OID 187620)
-- Name: spree_user_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_user_stock_locations (
    id integer NOT NULL,
    user_id integer,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_user_stock_locations OWNER TO postgres;

--
-- TOC entry 383 (class 1259 OID 187619)
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_user_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_user_stock_locations_id_seq OWNER TO postgres;

--
-- TOC entry 6183 (class 0 OID 0)
-- Dependencies: 383
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_user_stock_locations_id_seq OWNED BY public.spree_user_stock_locations.id;


--
-- TOC entry 228 (class 1259 OID 186711)
-- Name: spree_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_users (
    id integer NOT NULL,
    encrypted_password character varying(128),
    password_salt character varying(128),
    email character varying,
    remember_token character varying,
    persistence_token character varying,
    reset_password_token character varying,
    perishable_token character varying,
    sign_in_count integer DEFAULT 0 NOT NULL,
    failed_attempts integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    login character varying,
    ship_address_id integer,
    bill_address_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    spree_api_key character varying(48),
    authentication_token character varying,
    unlock_token character varying,
    locked_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    reset_password_sent_at timestamp without time zone,
    deleted_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying
);


ALTER TABLE public.spree_users OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 186710)
-- Name: spree_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_users_id_seq OWNER TO postgres;

--
-- TOC entry 6184 (class 0 OID 0)
-- Dependencies: 227
-- Name: spree_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_users_id_seq OWNED BY public.spree_users.id;


--
-- TOC entry 386 (class 1259 OID 187628)
-- Name: spree_variant_property_rule_conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rule_conditions (
    id integer NOT NULL,
    option_value_id integer,
    variant_property_rule_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_variant_property_rule_conditions OWNER TO postgres;

--
-- TOC entry 385 (class 1259 OID 187627)
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rule_conditions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_variant_property_rule_conditions_id_seq OWNER TO postgres;

--
-- TOC entry 6185 (class 0 OID 0)
-- Dependencies: 385
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rule_conditions_id_seq OWNED BY public.spree_variant_property_rule_conditions.id;


--
-- TOC entry 388 (class 1259 OID 187636)
-- Name: spree_variant_property_rule_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rule_values (
    id integer NOT NULL,
    value text,
    "position" integer DEFAULT 0,
    property_id integer,
    variant_property_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_variant_property_rule_values OWNER TO postgres;

--
-- TOC entry 387 (class 1259 OID 187635)
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rule_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_variant_property_rule_values_id_seq OWNER TO postgres;

--
-- TOC entry 6186 (class 0 OID 0)
-- Dependencies: 387
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rule_values_id_seq OWNED BY public.spree_variant_property_rule_values.id;


--
-- TOC entry 390 (class 1259 OID 187648)
-- Name: spree_variant_property_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rules (
    id integer NOT NULL,
    product_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    apply_to_all boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_variant_property_rules OWNER TO postgres;

--
-- TOC entry 389 (class 1259 OID 187647)
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_variant_property_rules_id_seq OWNER TO postgres;

--
-- TOC entry 6187 (class 0 OID 0)
-- Dependencies: 389
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rules_id_seq OWNED BY public.spree_variant_property_rules.id;


--
-- TOC entry 392 (class 1259 OID 187656)
-- Name: spree_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variants (
    id integer NOT NULL,
    sku character varying DEFAULT ''::character varying NOT NULL,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2),
    width numeric(8,2),
    depth numeric(8,2),
    deleted_at timestamp without time zone,
    is_master boolean DEFAULT false,
    product_id integer,
    cost_price numeric(10,2),
    "position" integer,
    cost_currency character varying,
    track_inventory boolean DEFAULT true,
    tax_category_id integer,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    shipping_category_id bigint
);


ALTER TABLE public.spree_variants OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 187655)
-- Name: spree_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_variants_id_seq OWNER TO postgres;

--
-- TOC entry 6188 (class 0 OID 0)
-- Dependencies: 391
-- Name: spree_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variants_id_seq OWNED BY public.spree_variants.id;


--
-- TOC entry 398 (class 1259 OID 187696)
-- Name: spree_wallet_payment_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_wallet_payment_sources (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_source_type character varying NOT NULL,
    payment_source_id integer NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_wallet_payment_sources OWNER TO postgres;

--
-- TOC entry 397 (class 1259 OID 187695)
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_wallet_payment_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_wallet_payment_sources_id_seq OWNER TO postgres;

--
-- TOC entry 6189 (class 0 OID 0)
-- Dependencies: 397
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_wallet_payment_sources_id_seq OWNED BY public.spree_wallet_payment_sources.id;


--
-- TOC entry 394 (class 1259 OID 187674)
-- Name: spree_zone_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zone_members (
    id integer NOT NULL,
    zoneable_type character varying,
    zoneable_id integer,
    zone_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_zone_members OWNER TO postgres;

--
-- TOC entry 393 (class 1259 OID 187673)
-- Name: spree_zone_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zone_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_zone_members_id_seq OWNER TO postgres;

--
-- TOC entry 6190 (class 0 OID 0)
-- Dependencies: 393
-- Name: spree_zone_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zone_members_id_seq OWNED BY public.spree_zone_members.id;


--
-- TOC entry 396 (class 1259 OID 187685)
-- Name: spree_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zones (
    id integer NOT NULL,
    name character varying,
    description character varying,
    zone_members_count integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_zones OWNER TO postgres;

--
-- TOC entry 395 (class 1259 OID 187684)
-- Name: spree_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spree_zones_id_seq OWNER TO postgres;

--
-- TOC entry 6191 (class 0 OID 0)
-- Dependencies: 395
-- Name: spree_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zones_id_seq OWNED BY public.spree_zones.id;


--
-- TOC entry 5140 (class 2604 OID 186693)
-- Name: action_mailbox_inbound_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails ALTER COLUMN id SET DEFAULT nextval('public.action_mailbox_inbound_emails_id_seq'::regclass);


--
-- TOC entry 5142 (class 2604 OID 186704)
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- TOC entry 5138 (class 2604 OID 186662)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 5137 (class 2604 OID 186652)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 5139 (class 2604 OID 186678)
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- TOC entry 5146 (class 2604 OID 186725)
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- TOC entry 5333 (class 2604 OID 187864)
-- Name: solidus_stripe_customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_customers ALTER COLUMN id SET DEFAULT nextval('public.solidus_stripe_customers_id_seq'::regclass);


--
-- TOC entry 5331 (class 2604 OID 187827)
-- Name: solidus_stripe_payment_intents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_intents ALTER COLUMN id SET DEFAULT nextval('public.solidus_stripe_payment_intents_id_seq'::regclass);


--
-- TOC entry 5330 (class 2604 OID 187818)
-- Name: solidus_stripe_payment_sources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_sources ALTER COLUMN id SET DEFAULT nextval('public.solidus_stripe_payment_sources_id_seq'::regclass);


--
-- TOC entry 5332 (class 2604 OID 187848)
-- Name: solidus_stripe_slug_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_slug_entries ALTER COLUMN id SET DEFAULT nextval('public.solidus_stripe_slug_entries_id_seq'::regclass);


--
-- TOC entry 5147 (class 2604 OID 186738)
-- Name: spree_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_addresses_id_seq'::regclass);


--
-- TOC entry 5148 (class 2604 OID 186751)
-- Name: spree_adjustment_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustment_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustment_reasons_id_seq'::regclass);


--
-- TOC entry 5150 (class 2604 OID 186763)
-- Name: spree_adjustments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustments ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustments_id_seq'::regclass);


--
-- TOC entry 5154 (class 2604 OID 186781)
-- Name: spree_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets ALTER COLUMN id SET DEFAULT nextval('public.spree_assets_id_seq'::regclass);


--
-- TOC entry 5155 (class 2604 OID 186792)
-- Name: spree_calculators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators ALTER COLUMN id SET DEFAULT nextval('public.spree_calculators_id_seq'::regclass);


--
-- TOC entry 5156 (class 2604 OID 186803)
-- Name: spree_cartons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_cartons ALTER COLUMN id SET DEFAULT nextval('public.spree_cartons_id_seq'::regclass);


--
-- TOC entry 5157 (class 2604 OID 186816)
-- Name: spree_countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_countries ALTER COLUMN id SET DEFAULT nextval('public.spree_countries_id_seq'::regclass);


--
-- TOC entry 5159 (class 2604 OID 186827)
-- Name: spree_credit_cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_credit_cards ALTER COLUMN id SET DEFAULT nextval('public.spree_credit_cards_id_seq'::regclass);


--
-- TOC entry 5161 (class 2604 OID 186839)
-- Name: spree_customer_returns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns ALTER COLUMN id SET DEFAULT nextval('public.spree_customer_returns_id_seq'::regclass);


--
-- TOC entry 5162 (class 2604 OID 186848)
-- Name: spree_inventory_units id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_inventory_units ALTER COLUMN id SET DEFAULT nextval('public.spree_inventory_units_id_seq'::regclass);


--
-- TOC entry 5164 (class 2604 OID 186863)
-- Name: spree_line_item_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_item_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_line_item_actions_id_seq'::regclass);


--
-- TOC entry 5166 (class 2604 OID 186873)
-- Name: spree_line_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_line_items_id_seq'::regclass);


--
-- TOC entry 5171 (class 2604 OID 186888)
-- Name: spree_log_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries ALTER COLUMN id SET DEFAULT nextval('public.spree_log_entries_id_seq'::regclass);


--
-- TOC entry 5172 (class 2604 OID 186898)
-- Name: spree_option_type_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_option_type_prototypes_id_seq'::regclass);


--
-- TOC entry 5173 (class 2604 OID 186905)
-- Name: spree_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_option_types_id_seq'::regclass);


--
-- TOC entry 5175 (class 2604 OID 186914)
-- Name: spree_option_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_id_seq'::regclass);


--
-- TOC entry 5176 (class 2604 OID 186925)
-- Name: spree_option_values_variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_variants_id_seq'::regclass);


--
-- TOC entry 5177 (class 2604 OID 186934)
-- Name: spree_order_mutexes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_mutexes ALTER COLUMN id SET DEFAULT nextval('public.spree_order_mutexes_id_seq'::regclass);


--
-- TOC entry 5178 (class 2604 OID 186942)
-- Name: spree_orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_id_seq'::regclass);


--
-- TOC entry 5191 (class 2604 OID 186972)
-- Name: spree_orders_promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_promotions_id_seq'::regclass);


--
-- TOC entry 5192 (class 2604 OID 186981)
-- Name: spree_payment_capture_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_capture_events_id_seq'::regclass);


--
-- TOC entry 5194 (class 2604 OID 186990)
-- Name: spree_payment_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_methods_id_seq'::regclass);


--
-- TOC entry 5199 (class 2604 OID 187002)
-- Name: spree_payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payments ALTER COLUMN id SET DEFAULT nextval('public.spree_payments_id_seq'::regclass);


--
-- TOC entry 5201 (class 2604 OID 187015)
-- Name: spree_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_preferences ALTER COLUMN id SET DEFAULT nextval('public.spree_preferences_id_seq'::regclass);


--
-- TOC entry 5202 (class 2604 OID 187025)
-- Name: spree_prices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prices ALTER COLUMN id SET DEFAULT nextval('public.spree_prices_id_seq'::regclass);


--
-- TOC entry 5203 (class 2604 OID 187037)
-- Name: spree_product_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_product_option_types_id_seq'::regclass);


--
-- TOC entry 5204 (class 2604 OID 187047)
-- Name: spree_product_promotion_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_product_promotion_rules_id_seq'::regclass);


--
-- TOC entry 5205 (class 2604 OID 187056)
-- Name: spree_product_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_product_properties_id_seq'::regclass);


--
-- TOC entry 5207 (class 2604 OID 187069)
-- Name: spree_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products ALTER COLUMN id SET DEFAULT nextval('public.spree_products_id_seq'::regclass);


--
-- TOC entry 5210 (class 2604 OID 187084)
-- Name: spree_products_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_products_taxons_id_seq'::regclass);


--
-- TOC entry 5211 (class 2604 OID 187104)
-- Name: spree_promotion_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_actions_id_seq'::regclass);


--
-- TOC entry 5212 (class 2604 OID 187116)
-- Name: spree_promotion_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_categories_id_seq'::regclass);


--
-- TOC entry 5322 (class 2604 OID 187718)
-- Name: spree_promotion_code_batches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_code_batches_id_seq'::regclass);


--
-- TOC entry 5213 (class 2604 OID 187125)
-- Name: spree_promotion_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_codes_id_seq'::regclass);


--
-- TOC entry 5214 (class 2604 OID 187136)
-- Name: spree_promotion_rule_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_taxons_id_seq'::regclass);


--
-- TOC entry 5215 (class 2604 OID 187145)
-- Name: spree_promotion_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_id_seq'::regclass);


--
-- TOC entry 5326 (class 2604 OID 187765)
-- Name: spree_promotion_rules_stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_stores_id_seq'::regclass);


--
-- TOC entry 5216 (class 2604 OID 187156)
-- Name: spree_promotion_rules_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_users ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_users_id_seq'::regclass);


--
-- TOC entry 5217 (class 2604 OID 187165)
-- Name: spree_promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotions_id_seq'::regclass);


--
-- TOC entry 5220 (class 2604 OID 187184)
-- Name: spree_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_properties_id_seq'::regclass);


--
-- TOC entry 5221 (class 2604 OID 187193)
-- Name: spree_property_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_property_prototypes_id_seq'::regclass);


--
-- TOC entry 5222 (class 2604 OID 187200)
-- Name: spree_prototype_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_prototype_taxons_id_seq'::regclass);


--
-- TOC entry 5223 (class 2604 OID 187209)
-- Name: spree_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_prototypes_id_seq'::regclass);


--
-- TOC entry 5224 (class 2604 OID 187218)
-- Name: spree_refund_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_refund_reasons_id_seq'::regclass);


--
-- TOC entry 5227 (class 2604 OID 187229)
-- Name: spree_refunds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refunds ALTER COLUMN id SET DEFAULT nextval('public.spree_refunds_id_seq'::regclass);


--
-- TOC entry 5229 (class 2604 OID 187242)
-- Name: spree_reimbursement_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_credits_id_seq'::regclass);


--
-- TOC entry 5231 (class 2604 OID 187252)
-- Name: spree_reimbursement_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_types_id_seq'::regclass);


--
-- TOC entry 5234 (class 2604 OID 187264)
-- Name: spree_reimbursements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursements_id_seq'::regclass);


--
-- TOC entry 5235 (class 2604 OID 187275)
-- Name: spree_return_authorizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorizations ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorizations_id_seq'::regclass);


--
-- TOC entry 5236 (class 2604 OID 187285)
-- Name: spree_return_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_items ALTER COLUMN id SET DEFAULT nextval('public.spree_return_items_id_seq'::regclass);


--
-- TOC entry 5241 (class 2604 OID 187300)
-- Name: spree_return_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_return_reasons_id_seq'::regclass);


--
-- TOC entry 5244 (class 2604 OID 187311)
-- Name: spree_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_id_seq'::regclass);


--
-- TOC entry 5245 (class 2604 OID 187320)
-- Name: spree_roles_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles_users ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_users_id_seq'::regclass);


--
-- TOC entry 5246 (class 2604 OID 187329)
-- Name: spree_shipments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipments ALTER COLUMN id SET DEFAULT nextval('public.spree_shipments_id_seq'::regclass);


--
-- TOC entry 5252 (class 2604 OID 187347)
-- Name: spree_shipping_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_categories_id_seq'::regclass);


--
-- TOC entry 5253 (class 2604 OID 187356)
-- Name: spree_shipping_method_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_categories_id_seq'::regclass);


--
-- TOC entry 5254 (class 2604 OID 187365)
-- Name: spree_shipping_method_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_stock_locations_id_seq'::regclass);


--
-- TOC entry 5255 (class 2604 OID 187374)
-- Name: spree_shipping_method_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_zones_id_seq'::regclass);


--
-- TOC entry 5256 (class 2604 OID 187381)
-- Name: spree_shipping_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_methods_id_seq'::regclass);


--
-- TOC entry 5259 (class 2604 OID 187392)
-- Name: spree_shipping_rate_taxes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rate_taxes ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rate_taxes_id_seq'::regclass);


--
-- TOC entry 5261 (class 2604 OID 187402)
-- Name: spree_shipping_rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rates_id_seq'::regclass);


--
-- TOC entry 5264 (class 2604 OID 187412)
-- Name: spree_state_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes ALTER COLUMN id SET DEFAULT nextval('public.spree_state_changes_id_seq'::regclass);


--
-- TOC entry 5265 (class 2604 OID 187423)
-- Name: spree_states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states ALTER COLUMN id SET DEFAULT nextval('public.spree_states_id_seq'::regclass);


--
-- TOC entry 5266 (class 2604 OID 187433)
-- Name: spree_stock_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_items ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_items_id_seq'::regclass);


--
-- TOC entry 5269 (class 2604 OID 187446)
-- Name: spree_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_locations_id_seq'::regclass);


--
-- TOC entry 5278 (class 2604 OID 187465)
-- Name: spree_stock_movements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_movements ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_movements_id_seq'::regclass);


--
-- TOC entry 5280 (class 2604 OID 187476)
-- Name: spree_store_credit_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_categories_id_seq'::regclass);


--
-- TOC entry 5281 (class 2604 OID 187485)
-- Name: spree_store_credit_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_events_id_seq'::regclass);


--
-- TOC entry 5328 (class 2604 OID 187788)
-- Name: spree_store_credit_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_reasons_id_seq'::regclass);


--
-- TOC entry 5284 (class 2604 OID 187497)
-- Name: spree_store_credit_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_types_id_seq'::regclass);


--
-- TOC entry 5285 (class 2604 OID 187516)
-- Name: spree_store_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credits_id_seq'::regclass);


--
-- TOC entry 5289 (class 2604 OID 187531)
-- Name: spree_store_payment_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_store_payment_methods_id_seq'::regclass);


--
-- TOC entry 5327 (class 2604 OID 187774)
-- Name: spree_store_shipping_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_store_shipping_methods_id_seq'::regclass);


--
-- TOC entry 5290 (class 2604 OID 187540)
-- Name: spree_stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_stores_id_seq'::regclass);


--
-- TOC entry 5292 (class 2604 OID 187552)
-- Name: spree_tax_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_categories_id_seq'::regclass);


--
-- TOC entry 5325 (class 2604 OID 187744)
-- Name: spree_tax_rate_tax_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rate_tax_categories_id_seq'::regclass);


--
-- TOC entry 5294 (class 2604 OID 187562)
-- Name: spree_tax_rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rates_id_seq'::regclass);


--
-- TOC entry 5298 (class 2604 OID 187576)
-- Name: spree_taxonomies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.spree_taxonomies_id_seq'::regclass);


--
-- TOC entry 5300 (class 2604 OID 187587)
-- Name: spree_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_taxons_id_seq'::regclass);


--
-- TOC entry 5301 (class 2604 OID 187601)
-- Name: spree_unit_cancels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_unit_cancels ALTER COLUMN id SET DEFAULT nextval('public.spree_unit_cancels_id_seq'::regclass);


--
-- TOC entry 5302 (class 2604 OID 187611)
-- Name: spree_user_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_user_addresses_id_seq'::regclass);


--
-- TOC entry 5306 (class 2604 OID 187623)
-- Name: spree_user_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_user_stock_locations_id_seq'::regclass);


--
-- TOC entry 5143 (class 2604 OID 186714)
-- Name: spree_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_users ALTER COLUMN id SET DEFAULT nextval('public.spree_users_id_seq'::regclass);


--
-- TOC entry 5307 (class 2604 OID 187631)
-- Name: spree_variant_property_rule_conditions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_conditions ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rule_conditions_id_seq'::regclass);


--
-- TOC entry 5308 (class 2604 OID 187639)
-- Name: spree_variant_property_rule_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_values ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rule_values_id_seq'::regclass);


--
-- TOC entry 5310 (class 2604 OID 187651)
-- Name: spree_variant_property_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rules_id_seq'::regclass);


--
-- TOC entry 5312 (class 2604 OID 187659)
-- Name: spree_variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_variants_id_seq'::regclass);


--
-- TOC entry 5320 (class 2604 OID 187699)
-- Name: spree_wallet_payment_sources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources ALTER COLUMN id SET DEFAULT nextval('public.spree_wallet_payment_sources_id_seq'::regclass);


--
-- TOC entry 5317 (class 2604 OID 187677)
-- Name: spree_zone_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members ALTER COLUMN id SET DEFAULT nextval('public.spree_zone_members_id_seq'::regclass);


--
-- TOC entry 5318 (class 2604 OID 187688)
-- Name: spree_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_zones_id_seq'::regclass);


--
-- TOC entry 5894 (class 0 OID 186690)
-- Dependencies: 224
-- Data for Name: action_mailbox_inbound_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_mailbox_inbound_emails (id, status, message_id, message_checksum, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5896 (class 0 OID 186701)
-- Dependencies: 226
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5890 (class 0 OID 186659)
-- Dependencies: 220
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	attachment	Spree::Asset	1	1	2025-03-22 05:28:27.58001
2	attachment	Spree::Asset	2	2	2025-03-22 05:28:27.66816
3	attachment	Spree::Asset	3	3	2025-03-22 05:28:27.741067
4	attachment	Spree::Asset	4	4	2025-03-22 05:28:27.816437
5	attachment	Spree::Asset	5	5	2025-03-22 05:28:27.941024
6	attachment	Spree::Asset	6	6	2025-03-22 05:28:28.878006
7	attachment	Spree::Asset	7	7	2025-03-22 05:28:29.224927
8	attachment	Spree::Asset	8	8	2025-03-22 05:28:29.392777
9	attachment	Spree::Asset	9	9	2025-03-22 05:28:29.567694
10	attachment	Spree::Asset	10	10	2025-03-22 05:28:29.778597
11	attachment	Spree::Asset	11	11	2025-03-22 05:28:29.981582
12	attachment	Spree::Asset	12	12	2025-03-22 05:28:30.130361
13	attachment	Spree::Asset	13	13	2025-03-22 05:28:30.277988
14	attachment	Spree::Asset	14	14	2025-03-22 05:28:30.364099
15	attachment	Spree::Asset	15	15	2025-03-22 05:28:30.523203
16	attachment	Spree::Asset	16	16	2025-03-22 05:28:30.749443
17	attachment	Spree::Asset	17	17	2025-03-22 05:28:30.999598
18	attachment	Spree::Asset	18	18	2025-03-22 05:28:31.386585
19	attachment	Spree::Asset	19	19	2025-03-22 05:28:31.751388
20	attachment	Spree::Asset	20	20	2025-03-22 05:28:31.934148
21	attachment	Spree::Asset	21	21	2025-03-22 05:28:32.027865
22	attachment	Spree::Asset	22	22	2025-03-22 05:28:32.250103
23	attachment	Spree::Asset	23	23	2025-03-22 05:28:32.506615
24	attachment	Spree::Asset	24	24	2025-03-22 05:28:32.715045
25	attachment	Spree::Asset	25	25	2025-03-22 05:28:33.101585
26	attachment	Spree::Asset	26	26	2025-03-22 05:28:33.431468
27	attachment	Spree::Asset	27	27	2025-03-22 05:28:33.607077
28	attachment	Spree::Asset	28	28	2025-03-22 05:28:33.703214
29	attachment	Spree::Asset	29	29	2025-03-22 05:28:33.858094
30	attachment	Spree::Asset	30	30	2025-03-22 05:28:33.957188
31	attachment	Spree::Asset	31	31	2025-03-22 05:28:34.19281
32	attachment	Spree::Asset	32	32	2025-03-22 05:28:34.539662
33	attachment	Spree::Asset	33	33	2025-03-22 05:28:35.028209
34	attachment	Spree::Asset	34	34	2025-03-22 05:28:35.208645
35	attachment	Spree::Asset	35	35	2025-03-22 05:28:35.40879
36	attachment	Spree::Asset	36	36	2025-03-22 05:28:35.57413
37	attachment	Spree::Asset	37	37	2025-03-22 05:28:35.7926
38	attachment	Spree::Asset	38	38	2025-03-22 05:28:35.964788
39	attachment	Spree::Asset	39	39	2025-03-22 05:28:36.166118
40	attachment	Spree::Asset	40	40	2025-03-22 05:28:36.381445
41	attachment	Spree::Asset	41	41	2025-03-22 05:28:36.762092
42	attachment	Spree::Asset	42	42	2025-03-22 05:28:37.043376
43	attachment	Spree::Asset	43	43	2025-03-22 05:28:37.216009
44	attachment	Spree::Asset	44	44	2025-03-22 05:28:37.296666
45	attachment	Spree::Asset	45	45	2025-03-22 05:28:37.43187
46	attachment	Spree::Asset	46	46	2025-03-22 05:28:38.366434
47	attachment	Spree::Asset	47	47	2025-03-22 05:28:38.832262
48	attachment	Spree::Asset	48	48	2025-03-22 05:28:38.969878
49	attachment	Spree::Asset	49	49	2025-03-22 05:28:39.169151
50	attachment	Spree::Asset	50	50	2025-03-22 05:28:39.322662
51	attachment	Spree::Asset	51	51	2025-03-22 05:28:39.533426
52	attachment	Spree::Asset	52	52	2025-03-22 05:28:39.758002
53	attachment	Spree::Asset	53	53	2025-03-22 05:28:39.928425
54	attachment	Spree::Asset	54	54	2025-03-22 05:28:40.115752
55	attachment	Spree::Asset	55	55	2025-03-22 05:28:40.473279
56	attachment	Spree::Asset	56	56	2025-03-22 05:28:40.791227
57	attachment	Spree::Asset	57	57	2025-03-22 05:28:40.963931
58	attachment	Spree::Asset	58	58	2025-03-22 05:28:41.084709
59	image	ActiveStorage::VariantRecord	1	59	2025-03-22 05:40:16.739923
60	image	ActiveStorage::VariantRecord	2	60	2025-03-22 05:40:17.081924
61	image	ActiveStorage::VariantRecord	3	61	2025-03-22 05:40:17.408403
62	image	ActiveStorage::VariantRecord	4	62	2025-03-22 05:40:17.746774
63	image	ActiveStorage::VariantRecord	5	63	2025-03-22 05:40:18.114423
64	image	ActiveStorage::VariantRecord	6	64	2025-03-22 05:40:18.507691
65	image	ActiveStorage::VariantRecord	7	65	2025-03-22 05:40:18.939737
66	image	ActiveStorage::VariantRecord	8	66	2025-03-22 05:40:19.408094
67	image	ActiveStorage::VariantRecord	9	67	2025-03-22 05:40:19.877504
68	image	ActiveStorage::VariantRecord	10	68	2025-03-22 05:40:20.37717
69	image	ActiveStorage::VariantRecord	11	69	2025-03-22 05:40:20.852488
70	image	ActiveStorage::VariantRecord	12	70	2025-03-22 05:40:21.405311
71	image	ActiveStorage::VariantRecord	13	71	2025-03-22 05:58:50.050557
72	image	ActiveStorage::VariantRecord	14	72	2025-03-22 06:03:46.269927
73	image	ActiveStorage::VariantRecord	15	73	2025-03-22 06:03:46.562709
74	image	ActiveStorage::VariantRecord	16	74	2025-03-22 06:03:46.817414
75	image	ActiveStorage::VariantRecord	17	75	2025-03-22 06:03:47.147699
76	image	ActiveStorage::VariantRecord	18	76	2025-03-22 06:03:47.619756
77	image	ActiveStorage::VariantRecord	19	77	2025-03-22 06:03:47.934085
78	image	ActiveStorage::VariantRecord	20	78	2025-03-22 06:03:48.332098
79	image	ActiveStorage::VariantRecord	21	79	2025-03-22 06:03:48.777194
80	image	ActiveStorage::VariantRecord	22	80	2025-03-22 06:03:49.279855
81	image	ActiveStorage::VariantRecord	23	81	2025-03-22 06:03:49.761339
82	image	ActiveStorage::VariantRecord	24	82	2025-03-22 06:03:50.179701
83	image	ActiveStorage::VariantRecord	25	83	2025-03-22 06:27:37.12415
84	image	ActiveStorage::VariantRecord	26	84	2025-03-22 06:27:37.274298
85	image	ActiveStorage::VariantRecord	27	85	2025-03-22 06:27:37.43896
86	image	ActiveStorage::VariantRecord	28	86	2025-03-22 06:27:37.661815
87	image	ActiveStorage::VariantRecord	29	87	2025-03-22 06:27:37.866602
88	image	ActiveStorage::VariantRecord	30	88	2025-03-22 06:27:38.034631
89	image	ActiveStorage::VariantRecord	31	89	2025-03-22 06:27:38.299513
90	image	ActiveStorage::VariantRecord	32	90	2025-03-22 06:27:38.574599
91	image	ActiveStorage::VariantRecord	33	91	2025-03-22 06:27:38.949817
92	image	ActiveStorage::VariantRecord	34	92	2025-03-22 06:27:39.41089
\.


--
-- TOC entry 5888 (class 0 OID 186649)
-- Dependencies: 218
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	rsdpi7nlxv7ju6v1c2h81no5nks1	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	176386	ZkjkgkgDfDsbgim+YLeDjw==	2025-03-22 05:28:27.576521
4	hpcrat5hza9qt8m5onwygi5e33ke	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	176386	ZkjkgkgDfDsbgim+YLeDjw==	2025-03-22 05:28:27.813884
3	5r79yo6v1t76nvz49xquvckyrllw	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	176386	ZkjkgkgDfDsbgim+YLeDjw==	2025-03-22 05:28:27.738935
2	qjaogr6857kpzer5nyxf1beas3bj	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	176386	ZkjkgkgDfDsbgim+YLeDjw==	2025-03-22 05:28:27.66594
5	ga65pwamovi9bkpdrhxhs06pd6ud	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	219417	spCRIzRVsvhCIzpSte+ybA==	2025-03-22 05:28:27.93243
6	7kb6rddanj7mfqmecmo2j8rcw9rl	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_2.png	image/png	{"identified":true,"width":1440,"height":794,"analyzed":true}	local	252923	M1A95VLwUKRFfEH2GbFc7g==	2025-03-22 05:28:28.853531
7	ictd5ud3bssumv5paiq5elkqtysy	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	219417	spCRIzRVsvhCIzpSte+ybA==	2025-03-22 05:28:29.201271
8	s9ifmq5kh8u7d6rkeegk18yulqcy	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_2.png	image/png	{"identified":true,"width":1440,"height":794,"analyzed":true}	local	252923	M1A95VLwUKRFfEH2GbFc7g==	2025-03-22 05:28:29.387235
12	b03byocotnfqfsb85giwefmxlxny	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_2.png	image/png	{"identified":true,"width":1440,"height":794,"analyzed":true}	local	252923	M1A95VLwUKRFfEH2GbFc7g==	2025-03-22 05:28:30.119097
13	zfarrmf4775ixs5xn0ji7lv2nec2	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	147862	4UYvg4QDZhrtQqthezIeaA==	2025-03-22 05:28:30.273641
14	41w4fs2r37x7hdygxn1i8m2f2nv8	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	170516	RqSbe8BPnyP0EMmqOODp2A==	2025-03-22 05:28:30.36113
15	a33pvlw4e0z6mbq7ds5ds0nekoca	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	158280	RoakDbJx9+/6rxei5xaONg==	2025-03-22 05:28:30.5148
16	0fpudefil2l6x16648fvb3ixw0cr	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	163149	13FvyhoTkzsFq88qqe6tDA==	2025-03-22 05:28:30.735046
17	zek6tu2hyxcfun2j69kn2nqmu6e0	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	196723	MLmYD07OI4Atd00OA5qTVg==	2025-03-22 05:28:30.971314
18	mx8e95tzr420ytht9hggrzi8daq0	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	168640	XARcqGL5/1VAHYjmQqVkTw==	2025-03-22 05:28:31.360205
20	8f7xubtamq59a504moetw9saea93	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	170516	RqSbe8BPnyP0EMmqOODp2A==	2025-03-22 05:28:31.927476
21	rwxq5kf9z8b7lvsthj8uxsena924	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	158280	RoakDbJx9+/6rxei5xaONg==	2025-03-22 05:28:32.019612
22	qgbezsu1z0lyyfickxlskm9w124n	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	163149	13FvyhoTkzsFq88qqe6tDA==	2025-03-22 05:28:32.230772
23	qfrdkd7x8tlhsernslnikjywhh7i	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	196723	MLmYD07OI4Atd00OA5qTVg==	2025-03-22 05:28:32.488524
24	38rzlpe67gnalm8veyfyy7tkchi4	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	168640	XARcqGL5/1VAHYjmQqVkTw==	2025-03-22 05:28:32.694188
25	fvh8htvz00bnugfzrryeutv7vkua	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	147862	4UYvg4QDZhrtQqthezIeaA==	2025-03-22 05:28:33.078993
28	mj8r8syu417a37blpnb45nhe48l9	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	147862	4UYvg4QDZhrtQqthezIeaA==	2025-03-22 05:28:33.695477
29	c914bzuykv4nbeb6jkgd4w2udmbw	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	170516	RqSbe8BPnyP0EMmqOODp2A==	2025-03-22 05:28:33.849772
30	80ngs4de43cozrbpy8gdfvt4vay9	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	158280	RoakDbJx9+/6rxei5xaONg==	2025-03-22 05:28:33.954293
9	aectc8ez52ssslq2if9stockml11	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	219417	spCRIzRVsvhCIzpSte+ybA==	2025-03-22 05:28:29.562502
10	koip7iaci2eciclgc5xe29w2x8xr	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_2.png	image/png	{"identified":true,"width":1440,"height":794,"analyzed":true}	local	252923	M1A95VLwUKRFfEH2GbFc7g==	2025-03-22 05:28:29.765321
11	n2tw51c4petl6dploossm24vham1	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	219417	spCRIzRVsvhCIzpSte+ybA==	2025-03-22 05:28:29.973244
19	os5irxgjr6tv3mkjoyqcimy02xwr	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	147862	4UYvg4QDZhrtQqthezIeaA==	2025-03-22 05:28:31.743951
33	xl5g1hixz1puq091ysr35ftiyf2e	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	168640	XARcqGL5/1VAHYjmQqVkTw==	2025-03-22 05:28:35.013991
34	qcnb129ei80l2n08yztg7ucpsfpf	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	164869	V1io7sEUbLY3FAxp2PBnlA==	2025-03-22 05:28:35.202635
37	or2dukxyyy45zn13lnbc1xsm9z1j	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	164869	V1io7sEUbLY3FAxp2PBnlA==	2025-03-22 05:28:35.785504
38	ottglitlqlhahux8ckcm8kfrt17t	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	195890	M1HL78Tz3lJagcDvOvrBNg==	2025-03-22 05:28:35.95683
39	i4srz3m8twjwbmrbz4v0raihfsuu	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	180096	Df+nypGqU1WDCt/P76oFXQ==	2025-03-22 05:28:36.15184
40	fb5hpqkq5x50bs694y8gieneu5ox	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	164869	V1io7sEUbLY3FAxp2PBnlA==	2025-03-22 05:28:36.373983
41	ohwpnyhxsm4y1wma8zrmt5ad6wt3	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	195890	M1HL78Tz3lJagcDvOvrBNg==	2025-03-22 05:28:36.732404
42	g3bx84xxutyaj9gizjwm1awigjam	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	180096	Df+nypGqU1WDCt/P76oFXQ==	2025-03-22 05:28:37.031697
43	c7hg8s4abuxbv9lmyddg4vzea2pk	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	164869	V1io7sEUbLY3FAxp2PBnlA==	2025-03-22 05:28:37.213421
45	1y9ylmjsjmz1eqkd01tzl9baqzk5	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	180096	Df+nypGqU1WDCt/P76oFXQ==	2025-03-22 05:28:37.420782
46	0nyvlb3uat2labxyjwm8hxz5egh2	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_bottles_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	112542	ZL/aYNJCZ3f81zvwizvRIQ==	2025-03-22 05:28:38.323473
47	mwzealyh7xpnvcfewip2htqopkr1	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_bottles_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	92292	aJLh+WCC/g/jcc2r8GdRqQ==	2025-03-22 05:28:38.819009
48	qajoyl89s2za9x2dgsi17gmu9nrq	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_tote.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	934155	7WLO8I3C8MN1mB6xgMSGmQ==	2025-03-22 05:28:38.963496
49	b3vgmi1111zvr5uqoknn74ednq5k	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	176386	ZkjkgkgDfDsbgim+YLeDjw==	2025-03-22 05:28:39.161154
50	39z2j17k8sfknftla80a1k4hqnox	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_hat.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	158471	kBF+sPf7acx97Fu+UAljWQ==	2025-03-22 05:28:39.314276
53	r7nveg2qpixkaenkwkal21sn9aas	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_notebook.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	169577	OhjISkLwSVNasWZrycr2yw==	2025-03-22 05:28:39.914742
54	zwsutst2c1c7cjjg5wc7lmisitoe	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_tshirt.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	315364	/3COpQ3Hv46FiWMZdmGWqg==	2025-03-22 05:28:40.108809
55	avonq58xzjymbwg16o4m07ideug9	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_long_sleeve_tee.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	229415	n6RzBrLdyVbDphU9GJr9cA==	2025-03-22 05:28:40.449854
56	fx19zr2hoejxfix9nct75yrrdvqq	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_dark_tee.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	651194	R/NQmaNA27wQI9/jrFON3A==	2025-03-22 05:28:40.780765
57	fi6k1s7wv5aeikc48h1kety4ozoi	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_canvas_tote.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	310403	NMMRibXpnyz9GqkWQsZfkw==	2025-03-22 05:28:40.961409
58	l9khvoqwhp4pzjayaimk4rppe5z2	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	147862	4UYvg4QDZhrtQqthezIeaA==	2025-03-22 05:28:41.08196
26	cewu28ivo9ye3inq5zg9ju1org83	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	170516	RqSbe8BPnyP0EMmqOODp2A==	2025-03-22 05:28:33.421368
36	a59zxskgbkxtdia4hnp1gb5omuxf	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	180096	Df+nypGqU1WDCt/P76oFXQ==	2025-03-22 05:28:35.562588
27	umum3e3xcvviplg0s3s5wxcct2x4	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_black_3.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	158280	RoakDbJx9+/6rxei5xaONg==	2025-03-22 05:28:33.604184
31	o9zrnqni54uvtl19fkjnz55isc6p	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	163149	13FvyhoTkzsFq88qqe6tDA==	2025-03-22 05:28:34.167296
35	t90kwhebpl1x18f1gvguuxbxfta1	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	195890	M1HL78Tz3lJagcDvOvrBNg==	2025-03-22 05:28:35.401518
44	9bhmm61j9v38cj5s319p8tuino8f	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_red_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	195890	M1HL78Tz3lJagcDvOvrBNg==	2025-03-22 05:28:37.292982
51	2yr3qptv3wnd3lq80xylh6tt20qz	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_sticker.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	270850	ouDY42PnGzj0Sd7lcIbKIA==	2025-03-22 05:28:39.521753
32	0hlbbrg3ehnlr151dj1wv9br48o3	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_cap_gray_2.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	196723	MLmYD07OI4Atd00OA5qTVg==	2025-03-22 05:28:34.503909
52	ns3szos7zuo7i18rxvermxyulg67	C:/Ruby33-x64/lib/ruby/gems/3.3.0/gems/solidus_sample-4.3.6/db/samples/images/solidus_mug_set.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	143182	tQXXbDVPe4ERlZv6Os74+A==	2025-03-22 05:28:39.750815
59	hsrzwene3cnv5swz6xefrxjk9t5k	solidus_cap_black_1.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	32656	wl3hCjwCzBx0KOmNyLLSWw==	2025-03-22 05:40:16.735842
60	bmhor6b73p8xru4do0ibf7tg0e7j	solidus_canvas_tote.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	97500	pp/U7OZYIGQlUrDt8/48hg==	2025-03-22 05:40:17.077941
61	3gegl640zzi872axsixpc9x4bowf	solidus_dark_tee.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	71709	OW7El6jW+EP1ENMMSmP5Vw==	2025-03-22 05:40:17.403201
62	7e0736olrra9wkues2yn3r7eo46w	solidus_long_sleeve_tee.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	127310	vMuLwtQ5I1BFn5q5lG1E4A==	2025-03-22 05:40:17.73549
63	36uvj65bk0sgbgeg05vl16w56w7o	solidus_tshirt.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	36114	KdFbefOMNp4fE1JxOIVxug==	2025-03-22 05:40:18.110022
64	xvrn9bg0rheo5qx3d8h3xx920ujy	solidus_notebook.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	79181	jEv1QT3f2MhkiKDs2aV7Rg==	2025-03-22 05:40:18.494691
65	pfvy2tk4qduw5t4j9g5ei1rwu52u	solidus_mug_set.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	52514	bL51nwqFxT6K9ToctUAdiQ==	2025-03-22 05:40:18.931387
66	wc9n3v2wejknjzujaxee241lkyf5	solidus_sticker.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	76449	JCd4PKOA5TPXU6aB3y5iPg==	2025-03-22 05:40:19.394966
67	xnw4ef4054yf26yu39bbclcd0cuo	solidus_hat.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	32790	pra9Zxg9cU7OK5Tcus+hig==	2025-03-22 05:40:19.864563
68	g86k3kv3osujzn06ovtf62ptnj8w	solidus_hoodie_black_1.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	53990	uI5jyxF5uSo5QZKHHVROLA==	2025-03-22 05:40:20.364103
69	pk2hkgjm6tbe2a93lhtw99mm8b4i	solidus_bottles_1.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	48259	QGD+HaupYB42U0EI41HlCQ==	2025-03-22 05:40:20.841291
70	1w61qj3134mjcjis8f1x6k03huyb	solidus_tote.png	image/png	{"identified":true,"width":400,"height":350,"analyzed":true}	local	92772	P/fkw76BnJyS0HT7r9ZM/A==	2025-03-22 05:40:21.39186
71	9jl4u9m69wg21v6kb2y4qzc97dto	solidus_tote.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	1015227	p7HSIDUx0VdEXb/SvWSE1w==	2025-03-22 05:58:50.047089
72	16sr9clo55zf7j7vc8ltcjq2baoz	solidus_bottles_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	239156	ak+fTazrad+RGCNTecFbRA==	2025-03-22 06:03:46.266233
73	pr2o86ockg03k51hulp8dh6zwu62	solidus_hoodie_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	384407	4J8V2BvEvikSfK1dMyYmKw==	2025-03-22 06:03:46.557212
74	7mpb25iikx6tui33jvv9x2nvejne	solidus_cap_black_1.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	349478	hR37uLc36neDScKiixeGFw==	2025-03-22 06:03:46.812805
75	z35idv5h5ioliferghe9gfahen71	solidus_hat.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	288898	xQsV9ORvEmzT40AL8mp6sA==	2025-03-22 06:03:47.142349
76	l0tcl3a2kzehp2g4bi4n3h5wr13x	solidus_sticker.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	575157	Q2TV0ttquDeG+KnV7dfFmQ==	2025-03-22 06:03:47.612352
77	js2vuqimnbgon9lafnj3s5wboeuw	solidus_mug_set.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	353380	uWA/a7nBe9DU6/CamYXvJg==	2025-03-22 06:03:47.925356
78	r3vuqm1poskwspsfccffj12r8cv9	solidus_notebook.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	515182	qhzBAI4EMcFuzdfW2YLSYA==	2025-03-22 06:03:48.321691
79	6g87jk86klcjxijywj45k2m6oiar	solidus_tshirt.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	339401	abJH8mMWmwf8M6fkrQso1g==	2025-03-22 06:03:48.766331
80	os4q07uqqb5gdgu9swxgfsos1k6p	solidus_long_sleeve_tee.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	721193	fRJKhfhTMXJ6ZligAfWIkg==	2025-03-22 06:03:49.26343
81	taevjrq18xpykr1sp3zveyebvidm	solidus_dark_tee.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	726447	hd6q0PC9W5paRIIA5A8Fqw==	2025-03-22 06:03:49.752818
82	goky0w9umnzrurm9is7asrrox0el	solidus_canvas_tote.png	image/png	{"identified":true,"width":1360,"height":1190,"analyzed":true}	local	787951	UA8Yv4joewibfjtn2GOeMg==	2025-03-22 06:03:50.172366
83	lhpp2ekcdfo2w8agu7jfxo9dzo65	solidus_canvas_tote.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2824	HkD+CnpoXmNiqicFSKodOg==	2025-03-22 06:27:37.119505
84	rc7bvo3bkubxrrhmj8o3dzbfpg6i	solidus_cap_black_1.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	1314	rHAm0K0TA0+YH6pVLS8FDQ==	2025-03-22 06:27:37.270859
85	vx88frzgf5xrgx7c1bdhgj1jo5ug	solidus_sticker.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	3171	3gP4xVLqVA1Bta/bIY3F0w==	2025-03-22 06:27:37.43445
86	bq4lp6nz37z45rnptx5ezxghrch5	solidus_dark_tee.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2095	99t1NSQqaaoWQ5CI0/0mwQ==	2025-03-22 06:27:37.651191
87	oeu9edpxh3ys3vkbm34h17n4lf8g	solidus_hoodie_black_1.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2058	qexyohWeHJk9Pm5+m0M+Rg==	2025-03-22 06:27:37.862066
88	n3tinhvuynutw55qwsngkwpmnbf4	solidus_long_sleeve_tee.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	3699	gG+q83iEB/aqhzqkcBC4qQ==	2025-03-22 06:27:38.029041
89	srltowwi2vk0316e0xc6w66837w6	solidus_mug_set.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2340	hZWxKPzNqaLTfVX4oxd6Ww==	2025-03-22 06:27:38.288852
90	4fc79tg9rr5ubt1npq651c1dsd3b	solidus_notebook.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2438	KHCiTQawpt/UkoejqxDydQ==	2025-03-22 06:27:38.566717
91	b54v353vs9rcbm8pomw4qpwnldcm	solidus_tshirt.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	1356	QBKHZgW662X08KjcazijUA==	2025-03-22 06:27:38.937459
92	qhioyjywcdg6oyoveb8rzacbn3kh	solidus_tote.png	image/png	{"identified":true,"width":48,"height":42,"analyzed":true}	local	2880	or5fSPvMrEQluDV8wWo9MA==	2025-03-22 06:27:39.398007
\.


--
-- TOC entry 5892 (class 0 OID 186675)
-- Dependencies: 222
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	58	usOTKXT2Qsf+dT56pxyMnX0pEdY=
2	57	usOTKXT2Qsf+dT56pxyMnX0pEdY=
3	56	usOTKXT2Qsf+dT56pxyMnX0pEdY=
4	55	usOTKXT2Qsf+dT56pxyMnX0pEdY=
5	54	usOTKXT2Qsf+dT56pxyMnX0pEdY=
6	53	usOTKXT2Qsf+dT56pxyMnX0pEdY=
7	52	usOTKXT2Qsf+dT56pxyMnX0pEdY=
8	51	usOTKXT2Qsf+dT56pxyMnX0pEdY=
9	50	usOTKXT2Qsf+dT56pxyMnX0pEdY=
10	49	usOTKXT2Qsf+dT56pxyMnX0pEdY=
11	46	usOTKXT2Qsf+dT56pxyMnX0pEdY=
12	48	usOTKXT2Qsf+dT56pxyMnX0pEdY=
13	48	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
14	46	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
15	49	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
16	58	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
17	50	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
18	51	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
19	52	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
20	53	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
21	54	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
22	55	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
23	56	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
24	57	xfPnvW2xM2Q1cK1R9kor6tDfgoc=
25	57	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
26	58	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
27	51	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
28	56	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
29	49	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
30	55	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
31	52	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
32	53	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
33	54	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
34	48	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
\.


--
-- TOC entry 5886 (class 0 OID 186641)
-- Dependencies: 216
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2025-03-22 05:21:13.381308	2025-03-22 05:21:13.381311
\.


--
-- TOC entry 5900 (class 0 OID 186722)
-- Dependencies: 230
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at, updated_at) FROM stdin;
1	solidus-water-bottle	1	Spree::Product	\N	2025-03-22 05:28:20.959783	2025-03-22 05:28:20.959783
2	solidus-tote	2	Spree::Product	\N	2025-03-22 05:28:21.236652	2025-03-22 05:28:21.236652
3	solidus-hoodie	3	Spree::Product	\N	2025-03-22 05:28:21.304748	2025-03-22 05:28:21.304748
4	solidus-mug-set	4	Spree::Product	\N	2025-03-22 05:28:21.363802	2025-03-22 05:28:21.363802
5	solidus-winter-hat	5	Spree::Product	\N	2025-03-22 05:28:21.427105	2025-03-22 05:28:21.427105
6	solidus-circle-sticker	6	Spree::Product	\N	2025-03-22 05:28:21.484847	2025-03-22 05:28:21.484847
7	solidus-notebook	7	Spree::Product	\N	2025-03-22 05:28:21.546013	2025-03-22 05:28:21.546013
8	solidus-t-shirt	8	Spree::Product	\N	2025-03-22 05:28:21.604164	2025-03-22 05:28:21.604164
9	solidus-long-sleeve-tee	9	Spree::Product	\N	2025-03-22 05:28:21.665249	2025-03-22 05:28:21.665249
10	solidus-dark-tee	10	Spree::Product	\N	2025-03-22 05:28:21.723418	2025-03-22 05:28:21.723418
11	solidus-canvas-tote-bag	11	Spree::Product	\N	2025-03-22 05:28:21.781554	2025-03-22 05:28:21.781554
12	solidus-cap	12	Spree::Product	\N	2025-03-22 05:28:21.838229	2025-03-22 05:28:21.838229
\.


--
-- TOC entry 5885 (class 0 OID 186634)
-- Dependencies: 215
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20250322052050
20250322052057
20250322052058
20250322052059
20250322052060
20250322052061
20250322052062
20250322052063
20250322052064
20250322052065
20250322052066
20250322052067
20250322052068
20250322052069
20250322052070
20250322052071
20250322052072
20250322052073
20250322052074
20250322052075
20250322052076
20250322052077
20250322052078
20250322052079
20250322052080
20250322052081
20250322052082
20250322052083
20250322052084
20250322052085
20250322052086
20250322052087
20250322052088
20250322052089
20250322052090
20250322052091
20250322052092
20250322052093
20250322052094
20250322052095
20250322052096
20250322052097
20250322052098
20250322052099
20250322052100
20250322052101
20250322052102
20250322052103
20250322052104
20250322052105
20250322052106
20250322052141
20250322052142
20250322052143
20250322052144
20250322052145
20250322052146
20250322052147
20250322052148
20250322052149
20250322052214
20250322052215
20250322052216
20250322052217
\.


--
-- TOC entry 6086 (class 0 OID 187861)
-- Dependencies: 416
-- Data for Name: solidus_stripe_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solidus_stripe_customers (id, payment_method_id, source_type, source_id, stripe_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6082 (class 0 OID 187824)
-- Dependencies: 412
-- Data for Name: solidus_stripe_payment_intents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solidus_stripe_payment_intents (id, stripe_intent_id, order_id, payment_method_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6080 (class 0 OID 187815)
-- Dependencies: 410
-- Data for Name: solidus_stripe_payment_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solidus_stripe_payment_sources (id, payment_method_id, stripe_payment_method_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6084 (class 0 OID 187845)
-- Dependencies: 414
-- Data for Name: solidus_stripe_slug_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solidus_stripe_slug_entries (id, payment_method_id, slug, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5902 (class 0 OID 186735)
-- Dependencies: 232
-- Data for Name: spree_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_addresses (id, firstname, lastname, address1, address2, city, zipcode, phone, state_name, alternative_phone, company, state_id, country_id, created_at, updated_at, name) FROM stdin;
1	\N	\N	67016 Murphy Fork	Suite 374	Karoleside	16804	(441)881-8127 x030	\N	\N	\N	3471	233	2025-03-22 05:28:41.424032	2025-03-22 05:28:41.424032	Amelia Renner
2	\N	\N	79832 Hamill Creek	Apt. 351	Lake Laurenceview	16804	(992)432-8273 x97676	\N	\N	\N	3471	233	2025-03-22 05:28:41.444334	2025-03-22 05:28:41.444334	Salome Stroman
\.


--
-- TOC entry 5904 (class 0 OID 186748)
-- Dependencies: 234
-- Data for Name: spree_adjustment_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_adjustment_reasons (id, name, code, active, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5906 (class 0 OID 186760)
-- Dependencies: 236
-- Data for Name: spree_adjustments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_adjustments (id, source_type, source_id, adjustable_type, adjustable_id, amount, label, eligible, created_at, updated_at, order_id, included, promotion_code_id, adjustment_reason_id, finalized) FROM stdin;
1	Spree::TaxRate	1	Spree::LineItem	1	0.80	North America 5.0%	t	2025-03-22 05:28:49.567845	2025-03-22 05:28:50.69883	1	f	\N	\N	t
2	Spree::TaxRate	1	Spree::Shipment	1	0.25	North America 5.0%	t	2025-03-22 05:28:49.579296	2025-03-22 05:28:50.773359	1	f	\N	\N	t
3	Spree::TaxRate	1	Spree::LineItem	2	1.15	North America 5.0%	t	2025-03-22 05:28:53.329098	2025-03-22 05:28:53.76933	2	f	\N	\N	t
4	Spree::TaxRate	1	Spree::Shipment	2	0.25	North America 5.0%	t	2025-03-22 05:28:53.343463	2025-03-22 05:28:53.837054	2	f	\N	\N	t
\.


--
-- TOC entry 5908 (class 0 OID 186778)
-- Dependencies: 238
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_assets (id, viewable_type, viewable_id, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
37	Spree::Variant	39	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:35.753482	2025-03-22 05:28:46.795152
38	Spree::Variant	39	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:35.909552	2025-03-22 05:28:47.036547
50	Spree::Variant	5	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:39.278756	2025-03-22 05:28:54.043534
51	Spree::Variant	6	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:39.480809	2025-03-22 05:28:54.098098
17	Spree::Variant	32	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.914938	2025-03-22 05:28:39.618366
18	Spree::Variant	32	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:31.317759	2025-03-22 05:28:39.663872
19	Spree::Variant	33	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:31.696607	2025-03-22 05:28:39.701968
25	Spree::Variant	35	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:32.990875	2025-03-22 05:28:43.237338
26	Spree::Variant	35	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:33.373089	2025-03-22 05:28:43.292053
1	Spree::Variant	13	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:27.564497	2025-03-22 05:28:32.146953
2	Spree::Variant	14	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:27.657409	2025-03-22 05:28:32.187852
4	Spree::Variant	16	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:27.80417	2025-03-22 05:28:32.185666
3	Spree::Variant	15	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:27.730811	2025-03-22 05:28:32.192817
27	Spree::Variant	35	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:33.553133	2025-03-22 05:28:43.337805
5	Spree::Variant	17	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:27.912104	2025-03-22 05:28:32.447117
28	Spree::Variant	36	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:33.675538	2025-03-22 05:28:43.395861
6	Spree::Variant	17	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:28.790827	2025-03-22 05:28:32.62711
29	Spree::Variant	36	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:33.814819	2025-03-22 05:28:43.45076
39	Spree::Variant	39	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:36.118631	2025-03-22 05:28:47.866682
7	Spree::Variant	18	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:29.156335	2025-03-22 05:28:33.156553
8	Spree::Variant	18	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:29.365155	2025-03-22 05:28:33.360493
40	Spree::Variant	40	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:36.341763	2025-03-22 05:28:47.875331
41	Spree::Variant	40	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:36.646395	2025-03-22 05:28:50.170054
42	Spree::Variant	40	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:36.996406	2025-03-22 05:28:50.250291
43	Spree::Variant	41	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:37.198999	2025-03-22 05:28:50.306314
44	Spree::Variant	41	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:37.283519	2025-03-22 05:28:50.38436
45	Spree::Variant	41	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:37.371465	2025-03-22 05:28:50.480895
46	Spree::Variant	1	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:38.227421	2025-03-22 05:28:50.763804
47	Spree::Variant	1	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:38.75042	2025-03-22 05:28:51.49215
9	Spree::Variant	19	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:29.539932	2025-03-22 05:28:35.846063
10	Spree::Variant	19	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:29.720564	2025-03-22 05:28:35.862848
11	Spree::Variant	20	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:29.939631	2025-03-22 05:28:35.915264
52	Spree::Variant	4	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:39.707747	2025-03-22 05:28:54.169349
12	Spree::Variant	20	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.084148	2025-03-22 05:28:35.9672
13	Spree::Variant	31	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.259677	2025-03-22 05:28:36.026701
53	Spree::Variant	7	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:39.876291	2025-03-22 05:28:54.252803
14	Spree::Variant	31	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.347947	2025-03-22 05:28:36.263149
54	Spree::Variant	8	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:40.050625	2025-03-22 05:28:54.544879
55	Spree::Variant	9	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:40.355037	2025-03-22 05:28:55.085594
15	Spree::Variant	31	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.471167	2025-03-22 05:28:36.961513
56	Spree::Variant	10	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:40.738122	2025-03-22 05:28:55.170016
16	Spree::Variant	32	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:30.690864	2025-03-22 05:28:37.066167
57	Spree::Variant	11	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:40.94679	2025-03-22 05:28:56.48693
58	Spree::Variant	12	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:41.070368	2025-03-22 05:28:56.521552
20	Spree::Variant	33	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:31.89849	2025-03-22 05:28:39.74256
21	Spree::Variant	33	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:32.005083	2025-03-22 05:28:39.81414
22	Spree::Variant	34	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:32.194735	2025-03-22 05:28:40.047507
23	Spree::Variant	34	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:32.432789	2025-03-22 05:28:40.803459
24	Spree::Variant	34	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:32.641796	2025-03-22 05:28:40.872017
30	Spree::Variant	36	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:33.942482	2025-03-22 05:28:43.66957
31	Spree::Variant	37	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:34.104401	2025-03-22 05:28:44.37161
32	Spree::Variant	37	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:34.431982	2025-03-22 05:28:44.409572
33	Spree::Variant	37	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:34.939197	2025-03-22 05:28:46.521359
34	Spree::Variant	38	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:35.168897	2025-03-22 05:28:46.599265
35	Spree::Variant	38	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:35.372161	2025-03-22 05:28:46.677766
36	Spree::Variant	38	\N	\N	\N	3	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:35.524521	2025-03-22 05:28:46.727474
48	Spree::Variant	2	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:38.942539	2025-03-22 05:28:51.574787
49	Spree::Variant	3	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2025-03-22 05:28:39.115458	2025-03-22 05:28:53.943312
\.


--
-- TOC entry 5910 (class 0 OID 186789)
-- Dependencies: 240
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_calculators (id, type, calculable_type, calculable_id, created_at, updated_at, preferences) FROM stdin;
1	Spree::Calculator::DefaultTax	Spree::TaxRate	1	2025-03-22 05:28:20.265035	2025-03-22 05:28:20.278166	\N
2	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	1	2025-03-22 05:28:20.385619	2025-03-22 05:28:20.543791	---\n:amount: 5\n:currency: USD\n
5	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	4	2025-03-22 05:28:20.398592	2025-03-22 05:28:20.554664	---\n:amount: 5\n:currency: USD\n
4	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	3	2025-03-22 05:28:20.394005	2025-03-22 05:28:20.574762	---\n:amount: 15\n:currency: USD\n
3	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	2	2025-03-22 05:28:20.389834	2025-03-22 05:28:20.585671	---\n:amount: 10\n:currency: USD\n
6	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	5	2025-03-22 05:28:20.402165	2025-03-22 05:28:20.596572	---\n:amount: 8\n:currency: EUR\n
\.


--
-- TOC entry 5912 (class 0 OID 186800)
-- Dependencies: 242
-- Data for Name: spree_cartons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_cartons (id, number, external_number, stock_location_id, address_id, shipping_method_id, tracking, shipped_at, created_at, updated_at, imported_from_shipment_id) FROM stdin;
1	C16706840162	\N	1	1	1	\N	2025-03-22 05:28:56.176298	2025-03-22 05:28:56.237496	2025-03-22 05:28:56.237496	\N
\.


--
-- TOC entry 5914 (class 0 OID 186813)
-- Dependencies: 244
-- Data for Name: spree_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_countries (id, iso_name, iso, iso3, name, numcode, states_required, updated_at, created_at) FROM stdin;
1	ANDORRA	AD	AND	Andorra	20	t	\N	\N
2	UNITED ARAB EMIRATES	AE	ARE	United Arab Emirates	784	t	\N	\N
3	AFGHANISTAN	AF	AFG	Afghanistan	4	t	\N	\N
4	ANTIGUA AND BARBUDA	AG	ATG	Antigua and Barbuda	28	t	\N	\N
5	ANGUILLA	AI	AIA	Anguilla	660	f	\N	\N
6	ALBANIA	AL	ALB	Albania	8	t	\N	\N
7	ARMENIA	AM	ARM	Armenia	51	t	\N	\N
8	ANGOLA	AO	AGO	Angola	24	t	\N	\N
9	ANTARCTICA	AQ	ATA	Antarctica	10	f	\N	\N
10	ARGENTINA	AR	ARG	Argentina	32	t	\N	\N
11	AMERICAN SAMOA	AS	ASM	American Samoa	16	f	\N	\N
12	AUSTRIA	AT	AUT	Austria	40	t	\N	\N
13	AUSTRALIA	AU	AUS	Australia	36	t	\N	\N
14	ARUBA	AW	ABW	Aruba	533	f	\N	\N
15	ÅLAND ISLANDS	AX	ALA	Åland Islands	248	f	\N	\N
16	AZERBAIJAN	AZ	AZE	Azerbaijan	31	t	\N	\N
17	BOSNIA AND HERZEGOVINA	BA	BIH	Bosnia and Herzegovina	70	t	\N	\N
18	BARBADOS	BB	BRB	Barbados	52	t	\N	\N
19	BANGLADESH	BD	BGD	Bangladesh	50	t	\N	\N
20	BELGIUM	BE	BEL	Belgium	56	t	\N	\N
21	BURKINA FASO	BF	BFA	Burkina Faso	854	t	\N	\N
22	BULGARIA	BG	BGR	Bulgaria	100	t	\N	\N
23	BAHRAIN	BH	BHR	Bahrain	48	t	\N	\N
24	BURUNDI	BI	BDI	Burundi	108	t	\N	\N
25	BENIN	BJ	BEN	Benin	204	t	\N	\N
26	SAINT BARTHÉLEMY	BL	BLM	Saint Barthélemy	652	f	\N	\N
27	BERMUDA	BM	BMU	Bermuda	60	t	\N	\N
28	BRUNEI DARUSSALAM	BN	BRN	Brunei Darussalam	96	t	\N	\N
29	BOLIVIA, PLURINATIONAL STATE OF	BO	BOL	Bolivia, Plurinational State of	68	t	\N	\N
30	BONAIRE, SINT EUSTATIUS AND SABA	BQ	BES	Bonaire, Sint Eustatius and Saba	535	t	\N	\N
31	BRAZIL	BR	BRA	Brazil	76	t	\N	\N
32	BAHAMAS	BS	BHS	Bahamas	44	t	\N	\N
33	BHUTAN	BT	BTN	Bhutan	64	t	\N	\N
34	BOUVET ISLAND	BV	BVT	Bouvet Island	74	f	\N	\N
35	BOTSWANA	BW	BWA	Botswana	72	t	\N	\N
36	BELARUS	BY	BLR	Belarus	112	t	\N	\N
37	BELIZE	BZ	BLZ	Belize	84	t	\N	\N
38	CANADA	CA	CAN	Canada	124	t	\N	\N
39	COCOS (KEELING) ISLANDS	CC	CCK	Cocos (Keeling) Islands	166	f	\N	\N
40	CONGO, THE DEMOCRATIC REPUBLIC OF THE	CD	COD	Congo, The Democratic Republic of the	180	t	\N	\N
41	CENTRAL AFRICAN REPUBLIC	CF	CAF	Central African Republic	140	t	\N	\N
42	CONGO	CG	COG	Congo	178	t	\N	\N
43	SWITZERLAND	CH	CHE	Switzerland	756	t	\N	\N
44	CÔTE D'IVOIRE	CI	CIV	Côte d'Ivoire	384	t	\N	\N
45	COOK ISLANDS	CK	COK	Cook Islands	184	f	\N	\N
46	CHILE	CL	CHL	Chile	152	t	\N	\N
47	CAMEROON	CM	CMR	Cameroon	120	t	\N	\N
48	CHINA	CN	CHN	China	156	t	\N	\N
49	COLOMBIA	CO	COL	Colombia	170	t	\N	\N
50	COSTA RICA	CR	CRI	Costa Rica	188	t	\N	\N
51	CUBA	CU	CUB	Cuba	192	t	\N	\N
52	CABO VERDE	CV	CPV	Cabo Verde	132	t	\N	\N
53	CURAÇAO	CW	CUW	Curaçao	531	f	\N	\N
54	CHRISTMAS ISLAND	CX	CXR	Christmas Island	162	f	\N	\N
55	CYPRUS	CY	CYP	Cyprus	196	t	\N	\N
56	CZECHIA	CZ	CZE	Czechia	203	t	\N	\N
57	GERMANY	DE	DEU	Germany	276	t	\N	\N
58	DJIBOUTI	DJ	DJI	Djibouti	262	t	\N	\N
59	DENMARK	DK	DNK	Denmark	208	t	\N	\N
60	DOMINICA	DM	DMA	Dominica	212	t	\N	\N
61	DOMINICAN REPUBLIC	DO	DOM	Dominican Republic	214	t	\N	\N
62	ALGERIA	DZ	DZA	Algeria	12	t	\N	\N
63	ECUADOR	EC	ECU	Ecuador	218	t	\N	\N
64	ESTONIA	EE	EST	Estonia	233	t	\N	\N
65	EGYPT	EG	EGY	Egypt	818	t	\N	\N
66	WESTERN SAHARA	EH	ESH	Western Sahara	732	f	\N	\N
67	ERITREA	ER	ERI	Eritrea	232	t	\N	\N
68	SPAIN	ES	ESP	Spain	724	t	\N	\N
69	ETHIOPIA	ET	ETH	Ethiopia	231	t	\N	\N
70	FINLAND	FI	FIN	Finland	246	t	\N	\N
71	FIJI	FJ	FJI	Fiji	242	t	\N	\N
72	FALKLAND ISLANDS (MALVINAS)	FK	FLK	Falkland Islands (Malvinas)	238	f	\N	\N
73	MICRONESIA, FEDERATED STATES OF	FM	FSM	Micronesia, Federated States of	583	t	\N	\N
74	FAROE ISLANDS	FO	FRO	Faroe Islands	234	f	\N	\N
75	FRANCE	FR	FRA	France	250	t	\N	\N
76	GABON	GA	GAB	Gabon	266	t	\N	\N
77	UNITED KINGDOM	GB	GBR	United Kingdom	826	t	\N	\N
78	GRENADA	GD	GRD	Grenada	308	t	\N	\N
79	GEORGIA	GE	GEO	Georgia	268	t	\N	\N
80	FRENCH GUIANA	GF	GUF	French Guiana	254	f	\N	\N
81	GUERNSEY	GG	GGY	Guernsey	831	f	\N	\N
82	GHANA	GH	GHA	Ghana	288	t	\N	\N
83	GIBRALTAR	GI	GIB	Gibraltar	292	f	\N	\N
84	GREENLAND	GL	GRL	Greenland	304	t	\N	\N
85	GAMBIA	GM	GMB	Gambia	270	t	\N	\N
86	GUINEA	GN	GIN	Guinea	324	t	\N	\N
87	GUADELOUPE	GP	GLP	Guadeloupe	312	f	\N	\N
88	EQUATORIAL GUINEA	GQ	GNQ	Equatorial Guinea	226	t	\N	\N
89	GREECE	GR	GRC	Greece	300	t	\N	\N
90	SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS	GS	SGS	South Georgia and the South Sandwich Islands	239	f	\N	\N
91	GUATEMALA	GT	GTM	Guatemala	320	t	\N	\N
92	GUAM	GU	GUM	Guam	316	f	\N	\N
93	GUINEA-BISSAU	GW	GNB	Guinea-Bissau	624	t	\N	\N
94	GUYANA	GY	GUY	Guyana	328	t	\N	\N
95	HONG KONG	HK	HKG	Hong Kong	344	f	\N	\N
96	HEARD ISLAND AND MCDONALD ISLANDS	HM	HMD	Heard Island and McDonald Islands	334	f	\N	\N
97	HONDURAS	HN	HND	Honduras	340	t	\N	\N
98	CROATIA	HR	HRV	Croatia	191	t	\N	\N
99	HAITI	HT	HTI	Haiti	332	t	\N	\N
100	HUNGARY	HU	HUN	Hungary	348	t	\N	\N
101	INDONESIA	ID	IDN	Indonesia	360	t	\N	\N
102	IRELAND	IE	IRL	Ireland	372	t	\N	\N
103	ISRAEL	IL	ISR	Israel	376	t	\N	\N
104	ISLE OF MAN	IM	IMN	Isle of Man	833	f	\N	\N
105	INDIA	IN	IND	India	356	t	\N	\N
106	BRITISH INDIAN OCEAN TERRITORY	IO	IOT	British Indian Ocean Territory	86	f	\N	\N
107	IRAQ	IQ	IRQ	Iraq	368	t	\N	\N
108	IRAN, ISLAMIC REPUBLIC OF	IR	IRN	Iran, Islamic Republic of	364	t	\N	\N
109	ICELAND	IS	ISL	Iceland	352	t	\N	\N
110	ITALY	IT	ITA	Italy	380	t	\N	\N
111	JERSEY	JE	JEY	Jersey	832	f	\N	\N
112	JAMAICA	JM	JAM	Jamaica	388	t	\N	\N
113	JORDAN	JO	JOR	Jordan	400	t	\N	\N
114	JAPAN	JP	JPN	Japan	392	t	\N	\N
115	KENYA	KE	KEN	Kenya	404	t	\N	\N
116	KYRGYZSTAN	KG	KGZ	Kyrgyzstan	417	t	\N	\N
117	CAMBODIA	KH	KHM	Cambodia	116	t	\N	\N
118	KIRIBATI	KI	KIR	Kiribati	296	t	\N	\N
119	COMOROS	KM	COM	Comoros	174	t	\N	\N
120	SAINT KITTS AND NEVIS	KN	KNA	Saint Kitts and Nevis	659	t	\N	\N
121	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	KP	PRK	Korea, Democratic People's Republic of	408	t	\N	\N
122	KOREA, REPUBLIC OF	KR	KOR	Korea, Republic of	410	t	\N	\N
123	KUWAIT	KW	KWT	Kuwait	414	t	\N	\N
124	CAYMAN ISLANDS	KY	CYM	Cayman Islands	136	f	\N	\N
125	KAZAKHSTAN	KZ	KAZ	Kazakhstan	398	t	\N	\N
126	LAO PEOPLE'S DEMOCRATIC REPUBLIC	LA	LAO	Lao People's Democratic Republic	418	t	\N	\N
127	LEBANON	LB	LBN	Lebanon	422	t	\N	\N
128	SAINT LUCIA	LC	LCA	Saint Lucia	662	f	\N	\N
129	LIECHTENSTEIN	LI	LIE	Liechtenstein	438	t	\N	\N
130	SRI LANKA	LK	LKA	Sri Lanka	144	t	\N	\N
131	LIBERIA	LR	LBR	Liberia	430	t	\N	\N
132	LESOTHO	LS	LSO	Lesotho	426	t	\N	\N
133	LITHUANIA	LT	LTU	Lithuania	440	t	\N	\N
134	LUXEMBOURG	LU	LUX	Luxembourg	442	t	\N	\N
135	LATVIA	LV	LVA	Latvia	428	t	\N	\N
136	LIBYA	LY	LBY	Libya	434	t	\N	\N
137	MOROCCO	MA	MAR	Morocco	504	t	\N	\N
138	MONACO	MC	MCO	Monaco	492	t	\N	\N
139	MOLDOVA, REPUBLIC OF	MD	MDA	Moldova, Republic of	498	t	\N	\N
140	MONTENEGRO	ME	MNE	Montenegro	499	t	\N	\N
141	SAINT MARTIN (FRENCH PART)	MF	MAF	Saint Martin (French part)	663	f	\N	\N
142	MADAGASCAR	MG	MDG	Madagascar	450	t	\N	\N
143	MARSHALL ISLANDS	MH	MHL	Marshall Islands	584	t	\N	\N
144	NORTH MACEDONIA	MK	MKD	North Macedonia	807	t	\N	\N
145	MALI	ML	MLI	Mali	466	t	\N	\N
146	MYANMAR	MM	MMR	Myanmar	104	t	\N	\N
147	MONGOLIA	MN	MNG	Mongolia	496	t	\N	\N
148	MACAO	MO	MAC	Macao	446	f	\N	\N
149	NORTHERN MARIANA ISLANDS	MP	MNP	Northern Mariana Islands	580	f	\N	\N
150	MARTINIQUE	MQ	MTQ	Martinique	474	f	\N	\N
151	MAURITANIA	MR	MRT	Mauritania	478	t	\N	\N
152	MONTSERRAT	MS	MSR	Montserrat	500	f	\N	\N
153	MALTA	MT	MLT	Malta	470	t	\N	\N
154	MAURITIUS	MU	MUS	Mauritius	480	t	\N	\N
155	MALDIVES	MV	MDV	Maldives	462	t	\N	\N
156	MALAWI	MW	MWI	Malawi	454	t	\N	\N
157	MEXICO	MX	MEX	Mexico	484	t	\N	\N
158	MALAYSIA	MY	MYS	Malaysia	458	t	\N	\N
159	MOZAMBIQUE	MZ	MOZ	Mozambique	508	t	\N	\N
160	NAMIBIA	NA	NAM	Namibia	516	t	\N	\N
161	NEW CALEDONIA	NC	NCL	New Caledonia	540	f	\N	\N
162	NIGER	NE	NER	Niger	562	t	\N	\N
163	NORFOLK ISLAND	NF	NFK	Norfolk Island	574	f	\N	\N
164	NIGERIA	NG	NGA	Nigeria	566	t	\N	\N
165	NICARAGUA	NI	NIC	Nicaragua	558	t	\N	\N
166	NETHERLANDS	NL	NLD	Netherlands	528	t	\N	\N
167	NORWAY	NO	NOR	Norway	578	t	\N	\N
168	NEPAL	NP	NPL	Nepal	524	t	\N	\N
169	NAURU	NR	NRU	Nauru	520	t	\N	\N
170	NIUE	NU	NIU	Niue	570	f	\N	\N
171	NEW ZEALAND	NZ	NZL	New Zealand	554	t	\N	\N
172	OMAN	OM	OMN	Oman	512	t	\N	\N
173	PANAMA	PA	PAN	Panama	591	t	\N	\N
174	PERU	PE	PER	Peru	604	t	\N	\N
175	FRENCH POLYNESIA	PF	PYF	French Polynesia	258	f	\N	\N
176	PAPUA NEW GUINEA	PG	PNG	Papua New Guinea	598	t	\N	\N
177	PHILIPPINES	PH	PHL	Philippines	608	t	\N	\N
178	PAKISTAN	PK	PAK	Pakistan	586	t	\N	\N
179	POLAND	PL	POL	Poland	616	t	\N	\N
180	SAINT PIERRE AND MIQUELON	PM	SPM	Saint Pierre and Miquelon	666	f	\N	\N
181	PITCAIRN	PN	PCN	Pitcairn	612	f	\N	\N
182	PUERTO RICO	PR	PRI	Puerto Rico	630	f	\N	\N
183	PALESTINE, STATE OF	PS	PSE	Palestine, State of	275	t	\N	\N
184	PORTUGAL	PT	PRT	Portugal	620	t	\N	\N
185	PALAU	PW	PLW	Palau	585	t	\N	\N
186	PARAGUAY	PY	PRY	Paraguay	600	t	\N	\N
187	QATAR	QA	QAT	Qatar	634	t	\N	\N
188	RÉUNION	RE	REU	Réunion	638	f	\N	\N
189	ROMANIA	RO	ROU	Romania	642	t	\N	\N
190	SERBIA	RS	SRB	Serbia	688	t	\N	\N
191	RUSSIA	RU	RUS	Russia	643	t	\N	\N
192	RWANDA	RW	RWA	Rwanda	646	t	\N	\N
193	SAUDI ARABIA	SA	SAU	Saudi Arabia	682	t	\N	\N
194	SOLOMON ISLANDS	SB	SLB	Solomon Islands	90	t	\N	\N
195	SEYCHELLES	SC	SYC	Seychelles	690	t	\N	\N
196	SUDAN	SD	SDN	Sudan	729	t	\N	\N
197	SWEDEN	SE	SWE	Sweden	752	t	\N	\N
198	SINGAPORE	SG	SGP	Singapore	702	t	\N	\N
199	SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA	SH	SHN	Saint Helena, Ascension and Tristan da Cunha	654	t	\N	\N
200	SLOVENIA	SI	SVN	Slovenia	705	t	\N	\N
201	SVALBARD AND JAN MAYEN	SJ	SJM	Svalbard and Jan Mayen	744	f	\N	\N
202	SLOVAKIA	SK	SVK	Slovakia	703	t	\N	\N
203	SIERRA LEONE	SL	SLE	Sierra Leone	694	t	\N	\N
204	SAN MARINO	SM	SMR	San Marino	674	t	\N	\N
205	SENEGAL	SN	SEN	Senegal	686	t	\N	\N
206	SOMALIA	SO	SOM	Somalia	706	t	\N	\N
207	SURINAME	SR	SUR	Suriname	740	t	\N	\N
208	SOUTH SUDAN	SS	SSD	South Sudan	728	t	\N	\N
209	SAO TOME AND PRINCIPE	ST	STP	Sao Tome and Principe	678	t	\N	\N
210	EL SALVADOR	SV	SLV	El Salvador	222	t	\N	\N
211	SINT MAARTEN (DUTCH PART)	SX	SXM	Sint Maarten (Dutch part)	534	f	\N	\N
212	SYRIAN ARAB REPUBLIC	SY	SYR	Syrian Arab Republic	760	t	\N	\N
213	ESWATINI	SZ	SWZ	Eswatini	748	t	\N	\N
214	TURKS AND CAICOS ISLANDS	TC	TCA	Turks and Caicos Islands	796	f	\N	\N
215	CHAD	TD	TCD	Chad	148	t	\N	\N
216	FRENCH SOUTHERN TERRITORIES	TF	ATF	French Southern Territories	260	f	\N	\N
217	TOGO	TG	TGO	Togo	768	t	\N	\N
218	THAILAND	TH	THA	Thailand	764	t	\N	\N
219	TAJIKISTAN	TJ	TJK	Tajikistan	762	t	\N	\N
220	TOKELAU	TK	TKL	Tokelau	772	f	\N	\N
221	TIMOR-LESTE	TL	TLS	Timor-Leste	626	t	\N	\N
222	TURKMENISTAN	TM	TKM	Turkmenistan	795	t	\N	\N
223	TUNISIA	TN	TUN	Tunisia	788	t	\N	\N
224	TONGA	TO	TON	Tonga	776	t	\N	\N
225	TURKEY	TR	TUR	Turkey	792	t	\N	\N
226	TRINIDAD AND TOBAGO	TT	TTO	Trinidad and Tobago	780	t	\N	\N
227	TUVALU	TV	TUV	Tuvalu	798	t	\N	\N
228	TAIWAN	TW	TWN	Taiwan	158	t	\N	\N
229	TANZANIA, UNITED REPUBLIC OF	TZ	TZA	Tanzania, United Republic of	834	t	\N	\N
230	UKRAINE	UA	UKR	Ukraine	804	t	\N	\N
231	UGANDA	UG	UGA	Uganda	800	t	\N	\N
232	UNITED STATES MINOR OUTLYING ISLANDS	UM	UMI	United States Minor Outlying Islands	581	t	\N	\N
233	UNITED STATES	US	USA	United States	840	t	\N	\N
234	URUGUAY	UY	URY	Uruguay	858	t	\N	\N
235	UZBEKISTAN	UZ	UZB	Uzbekistan	860	t	\N	\N
236	HOLY SEE (VATICAN CITY STATE)	VA	VAT	Holy See (Vatican City State)	336	f	\N	\N
237	SAINT VINCENT AND THE GRENADINES	VC	VCT	Saint Vincent and the Grenadines	670	t	\N	\N
238	VENEZUELA, BOLIVARIAN REPUBLIC OF	VE	VEN	Venezuela, Bolivarian Republic of	862	t	\N	\N
239	VIRGIN ISLANDS, BRITISH	VG	VGB	Virgin Islands, British	92	f	\N	\N
240	VIRGIN ISLANDS, U.S.	VI	VIR	Virgin Islands, U.S.	850	f	\N	\N
241	VIETNAM	VN	VNM	Vietnam	704	t	\N	\N
242	VANUATU	VU	VUT	Vanuatu	548	t	\N	\N
243	WALLIS AND FUTUNA	WF	WLF	Wallis and Futuna	876	f	\N	\N
244	SAMOA	WS	WSM	Samoa	882	t	\N	\N
245	YEMEN	YE	YEM	Yemen	887	t	\N	\N
246	MAYOTTE	YT	MYT	Mayotte	175	f	\N	\N
247	SOUTH AFRICA	ZA	ZAF	South Africa	710	t	\N	\N
248	ZAMBIA	ZM	ZMB	Zambia	894	t	\N	\N
249	ZIMBABWE	ZW	ZWE	Zimbabwe	716	t	\N	\N
\.


--
-- TOC entry 5916 (class 0 OID 186824)
-- Dependencies: 246
-- Data for Name: spree_credit_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_credit_cards (id, month, year, cc_type, last_digits, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, name, user_id, payment_method_id, "default", address_id) FROM stdin;
1	12	2027	visa	1111	BGS-1234	\N	2025-03-22 05:28:54.488156	2025-03-22 05:28:54.488156	Sean Schofield	\N	\N	f	\N
\.


--
-- TOC entry 5918 (class 0 OID 186836)
-- Dependencies: 248
-- Data for Name: spree_customer_returns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_customer_returns (id, number, stock_location_id, created_at, updated_at) FROM stdin;
1	CR350138710	1	2025-03-22 05:28:57.257462	2025-03-22 05:28:57.753739
\.


--
-- TOC entry 5920 (class 0 OID 186845)
-- Dependencies: 250
-- Data for Name: spree_inventory_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_inventory_units (id, state, variant_id, shipment_id, created_at, updated_at, pending, line_item_id, carton_id) FROM stdin;
1	on_hand	1	1	2025-03-22 05:28:48.069947	2025-03-22 05:28:51.814692	f	1	\N
2	returned	12	2	2025-03-22 05:28:53.119185	2025-03-22 05:28:57.345382	f	2	1
\.


--
-- TOC entry 5922 (class 0 OID 186860)
-- Dependencies: 252
-- Data for Name: spree_line_item_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_line_item_actions (id, line_item_id, action_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5924 (class 0 OID 186870)
-- Dependencies: 254
-- Data for Name: spree_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_line_items (id, variant_id, order_id, quantity, price, created_at, updated_at, cost_price, tax_category_id, adjustment_total, additional_tax_total, promo_total, included_tax_total) FROM stdin;
1	1	1	1	15.99	2025-03-22 05:28:42.751043	2025-03-22 05:28:50.701463	17.00	1	0.80	0.80	0.00	0.00
2	12	2	1	22.99	2025-03-22 05:28:42.855916	2025-03-22 05:28:53.777366	24.00	1	1.15	1.15	0.00	0.00
3	10	4	3	15.99	2025-03-22 06:20:15.250742	2025-03-22 06:20:15.250742	7.00	1	0.00	0.00	0.00	0.00
4	11	4	7	15.99	2025-03-22 06:22:51.747648	2025-03-22 06:22:51.747648	19.00	1	0.00	0.00	0.00	0.00
5	2	4	3	19.99	2025-03-22 06:23:02.940513	2025-03-22 06:23:02.940513	17.00	1	0.00	0.00	0.00	0.00
6	5	4	1	29.99	2025-03-22 06:23:15.186695	2025-03-22 06:23:15.186695	27.00	1	0.00	0.00	0.00	0.00
7	5	4	2	29.99	2025-03-22 06:24:30.596584	2025-03-22 06:24:30.596584	27.00	1	0.00	0.00	0.00	0.00
8	10	4	3	15.99	2025-03-22 06:33:05.732732	2025-03-22 06:33:05.732732	7.00	1	0.00	0.00	0.00	0.00
\.


--
-- TOC entry 5926 (class 0 OID 186885)
-- Dependencies: 256
-- Data for Name: spree_log_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_log_entries (id, source_type, source_id, details, created_at, updated_at) FROM stdin;
1	Spree::Refund	1	--- !ruby/object:ActiveMerchant::Billing::Response\nparams: {}\nmessage: 'Bogus Gateway: Forced success - credit'\nsuccess: true\ntest: true\nauthorization: '12345'\nfraud_review:\nerror_code:\nemv_authorization:\nnetwork_transaction_id:\navs_result:\n  code:\n  message:\n  street_match:\n  postal_match:\ncvv_result:\n  code:\n  message:\n	2025-03-22 05:28:57.676292	2025-03-22 05:28:57.676292
\.


--
-- TOC entry 5928 (class 0 OID 186895)
-- Dependencies: 258
-- Data for Name: spree_option_type_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_type_prototypes (id, prototype_id, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5930 (class 0 OID 186902)
-- Dependencies: 260
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_types (id, name, presentation, "position", created_at, updated_at) FROM stdin;
1	clothing-size	Size	1	2025-03-22 05:28:22.838478	2025-03-22 05:28:22.838478
2	clothing-color	Color	2	2025-03-22 05:28:22.86914	2025-03-22 05:28:22.86914
\.


--
-- TOC entry 5932 (class 0 OID 186911)
-- Dependencies: 262
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_values (id, "position", name, presentation, option_type_id, created_at, updated_at) FROM stdin;
1	1	Small	S	1	2025-03-22 05:28:22.907557	2025-03-22 05:28:22.914667
2	2	Medium	M	1	2025-03-22 05:28:22.934263	2025-03-22 05:28:22.940342
3	3	Large	L	1	2025-03-22 05:28:22.947766	2025-03-22 05:28:22.953174
4	4	Extra Large	XL	1	2025-03-22 05:28:22.960947	2025-03-22 05:28:22.966456
5	1	Black	Black	2	2025-03-22 05:28:22.973261	2025-03-22 05:28:22.979899
6	2	Gray	Gray	2	2025-03-22 05:28:22.988832	2025-03-22 05:28:22.994345
7	3	Blue	Blue	2	2025-03-22 05:28:23.001128	2025-03-22 05:28:23.00698
8	4	Red	Red	2	2025-03-22 05:28:23.018009	2025-03-22 05:28:23.02446
\.


--
-- TOC entry 5934 (class 0 OID 186922)
-- Dependencies: 264
-- Data for Name: spree_option_values_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_values_variants (id, variant_id, option_value_id, created_at, updated_at) FROM stdin;
1	13	1	2025-03-22 05:28:24.087923	2025-03-22 05:28:24.087923
2	13	5	2025-03-22 05:28:24.090583	2025-03-22 05:28:24.090583
3	14	2	2025-03-22 05:28:24.140987	2025-03-22 05:28:24.140987
4	14	5	2025-03-22 05:28:24.142912	2025-03-22 05:28:24.142912
5	15	3	2025-03-22 05:28:24.174808	2025-03-22 05:28:24.174808
6	15	5	2025-03-22 05:28:24.176478	2025-03-22 05:28:24.176478
7	16	4	2025-03-22 05:28:24.211925	2025-03-22 05:28:24.211925
8	16	5	2025-03-22 05:28:24.213493	2025-03-22 05:28:24.213493
9	17	1	2025-03-22 05:28:24.245809	2025-03-22 05:28:24.245809
10	17	8	2025-03-22 05:28:24.247303	2025-03-22 05:28:24.247303
11	18	2	2025-03-22 05:28:24.279294	2025-03-22 05:28:24.279294
12	18	8	2025-03-22 05:28:24.281032	2025-03-22 05:28:24.281032
13	19	3	2025-03-22 05:28:24.315987	2025-03-22 05:28:24.315987
14	19	8	2025-03-22 05:28:24.317908	2025-03-22 05:28:24.317908
15	20	4	2025-03-22 05:28:24.351	2025-03-22 05:28:24.351
16	20	8	2025-03-22 05:28:24.352553	2025-03-22 05:28:24.352553
17	21	2	2025-03-22 05:28:24.387665	2025-03-22 05:28:24.387665
18	21	5	2025-03-22 05:28:24.389267	2025-03-22 05:28:24.389267
19	22	3	2025-03-22 05:28:24.428675	2025-03-22 05:28:24.428675
20	22	5	2025-03-22 05:28:24.430375	2025-03-22 05:28:24.430375
21	23	4	2025-03-22 05:28:24.463283	2025-03-22 05:28:24.463283
22	23	5	2025-03-22 05:28:24.464993	2025-03-22 05:28:24.464993
23	24	1	2025-03-22 05:28:24.502284	2025-03-22 05:28:24.502284
24	24	8	2025-03-22 05:28:24.504191	2025-03-22 05:28:24.504191
25	25	3	2025-03-22 05:28:24.541228	2025-03-22 05:28:24.541228
26	25	8	2025-03-22 05:28:24.542924	2025-03-22 05:28:24.542924
27	26	4	2025-03-22 05:28:24.574277	2025-03-22 05:28:24.574277
28	26	8	2025-03-22 05:28:24.575909	2025-03-22 05:28:24.575909
29	27	1	2025-03-22 05:28:24.613876	2025-03-22 05:28:24.613876
30	27	6	2025-03-22 05:28:24.615387	2025-03-22 05:28:24.615387
31	28	2	2025-03-22 05:28:24.652755	2025-03-22 05:28:24.652755
32	28	6	2025-03-22 05:28:24.654613	2025-03-22 05:28:24.654613
33	29	3	2025-03-22 05:28:24.684966	2025-03-22 05:28:24.684966
34	29	6	2025-03-22 05:28:24.68806	2025-03-22 05:28:24.68806
35	30	4	2025-03-22 05:28:24.721398	2025-03-22 05:28:24.721398
36	30	6	2025-03-22 05:28:24.723534	2025-03-22 05:28:24.723534
37	31	1	2025-03-22 05:28:24.76086	2025-03-22 05:28:24.76086
38	31	5	2025-03-22 05:28:24.762434	2025-03-22 05:28:24.762434
39	32	1	2025-03-22 05:28:24.799623	2025-03-22 05:28:24.799623
40	32	6	2025-03-22 05:28:24.801242	2025-03-22 05:28:24.801242
41	33	2	2025-03-22 05:28:24.833993	2025-03-22 05:28:24.833993
42	33	5	2025-03-22 05:28:24.835795	2025-03-22 05:28:24.835795
43	34	2	2025-03-22 05:28:24.865795	2025-03-22 05:28:24.865795
44	34	6	2025-03-22 05:28:24.867295	2025-03-22 05:28:24.867295
45	35	3	2025-03-22 05:28:24.900466	2025-03-22 05:28:24.900466
46	35	5	2025-03-22 05:28:24.902035	2025-03-22 05:28:24.902035
47	36	4	2025-03-22 05:28:24.934063	2025-03-22 05:28:24.934063
48	36	5	2025-03-22 05:28:24.935529	2025-03-22 05:28:24.935529
49	37	3	2025-03-22 05:28:24.967426	2025-03-22 05:28:24.967426
50	37	6	2025-03-22 05:28:24.968909	2025-03-22 05:28:24.968909
51	38	1	2025-03-22 05:28:25.001533	2025-03-22 05:28:25.001533
52	38	8	2025-03-22 05:28:25.003558	2025-03-22 05:28:25.003558
53	39	2	2025-03-22 05:28:25.03404	2025-03-22 05:28:25.03404
54	39	8	2025-03-22 05:28:25.035572	2025-03-22 05:28:25.035572
55	40	3	2025-03-22 05:28:25.070202	2025-03-22 05:28:25.070202
56	40	8	2025-03-22 05:28:25.071851	2025-03-22 05:28:25.071851
57	41	4	2025-03-22 05:28:25.104036	2025-03-22 05:28:25.104036
58	41	8	2025-03-22 05:28:25.10589	2025-03-22 05:28:25.10589
59	42	1	2025-03-22 05:28:25.141897	2025-03-22 05:28:25.141897
60	42	6	2025-03-22 05:28:25.143864	2025-03-22 05:28:25.143864
61	43	2	2025-03-22 05:28:25.178371	2025-03-22 05:28:25.178371
62	43	6	2025-03-22 05:28:25.18001	2025-03-22 05:28:25.18001
63	44	4	2025-03-22 05:28:25.207337	2025-03-22 05:28:25.207337
64	44	6	2025-03-22 05:28:25.208964	2025-03-22 05:28:25.208964
65	45	1	2025-03-22 05:28:25.235138	2025-03-22 05:28:25.235138
66	45	5	2025-03-22 05:28:25.236637	2025-03-22 05:28:25.236637
67	46	2	2025-03-22 05:28:25.267101	2025-03-22 05:28:25.267101
68	46	5	2025-03-22 05:28:25.268582	2025-03-22 05:28:25.268582
69	47	3	2025-03-22 05:28:25.297508	2025-03-22 05:28:25.297508
70	47	5	2025-03-22 05:28:25.299228	2025-03-22 05:28:25.299228
71	48	4	2025-03-22 05:28:25.324876	2025-03-22 05:28:25.324876
72	48	5	2025-03-22 05:28:25.326309	2025-03-22 05:28:25.326309
73	49	3	2025-03-22 05:28:25.356251	2025-03-22 05:28:25.356251
74	49	7	2025-03-22 05:28:25.357934	2025-03-22 05:28:25.357934
75	50	2	2025-03-22 05:28:25.385283	2025-03-22 05:28:25.385283
76	50	7	2025-03-22 05:28:25.386928	2025-03-22 05:28:25.386928
77	51	4	2025-03-22 05:28:25.412609	2025-03-22 05:28:25.412609
78	51	7	2025-03-22 05:28:25.414223	2025-03-22 05:28:25.414223
\.


--
-- TOC entry 5936 (class 0 OID 186931)
-- Dependencies: 266
-- Data for Name: spree_order_mutexes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_order_mutexes (id, order_id, created_at) FROM stdin;
\.


--
-- TOC entry 5938 (class 0 OID 186939)
-- Dependencies: 268
-- Data for Name: spree_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_orders (id, number, item_total, total, state, adjustment_total, user_id, completed_at, bill_address_id, ship_address_id, payment_total, shipment_state, payment_state, email, special_instructions, created_at, updated_at, currency, last_ip_address, created_by_id, shipment_total, additional_tax_total, promo_total, channel, included_tax_total, item_count, approver_id, approved_at, confirmation_delivered, guest_token, canceled_at, canceler_id, store_id, approver_name, frontend_viewable) FROM stdin;
2	R987654321	22.99	29.39	returned	1.40	\N	2025-03-22 05:28:54.278836	2	1	5.25	shipped	paid	spree@example.com	\N	2025-03-22 05:28:42.561052	2025-03-22 05:28:57.732693	USD	\N	\N	5.00	1.40	0.00	spree	0.00	1	\N	\N	t	CoFo_LN-M1qHqG_5_bVcow	\N	\N	1	\N	t
3	R429108920	0.00	0.00	cart	0.00	\N	\N	\N	\N	0.00	\N	\N	\N	\N	2025-03-22 06:13:09.558713	2025-03-22 06:13:09.558713	USD	\N	\N	0.00	0.00	0.00	spree	0.00	0	\N	\N	f	cxnWP6F9TAEMebb0NOT9CQ	\N	\N	1	\N	t
4	R859653725	357.81	357.81	cart	0.00	\N	\N	\N	\N	0.00	\N	\N	\N	\N	2025-03-22 06:17:27.122	2025-03-22 06:33:05.947406	USD	\N	\N	0.00	0.00	0.00	spree	0.00	19	\N	\N	f	oJclQwjr69cGxbM2H9bWYA	\N	\N	1	\N	t
1	R123456789	15.99	22.04	complete	1.05	\N	2025-03-22 05:28:51.928399	2	1	0.00	pending	balance_due	spree@example.com	\N	2025-03-22 05:28:42.469536	2025-03-22 05:28:54.970122	USD	\N	\N	5.00	1.05	0.00	spree	0.00	1	\N	\N	t	HH1LChI1Qwz8J6dQrMnDyw	\N	\N	1	\N	t
\.


--
-- TOC entry 5940 (class 0 OID 186969)
-- Dependencies: 270
-- Data for Name: spree_orders_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_orders_promotions (id, order_id, promotion_id, promotion_code_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5942 (class 0 OID 186978)
-- Dependencies: 272
-- Data for Name: spree_payment_capture_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_capture_events (id, amount, payment_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5944 (class 0 OID 186987)
-- Dependencies: 274
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, auto_capture, preferences, preference_source, "position", available_to_users, available_to_admin, type_before_removal) FROM stdin;
1	Spree::PaymentMethod::BogusCreditCard	Credit Card	Bogus payment gateway	t	\N	2025-03-22 05:23:18.420173	2025-03-22 05:23:18.420173	\N	---\n:server: test\n:test_mode: true\n	\N	1	t	t	\N
2	Spree::PaymentMethod::Check	Check	Pay by check.	t	\N	2025-03-22 05:23:18.443408	2025-03-22 05:23:18.443408	\N	---\n:server: test\n:test_mode: true\n	\N	2	t	t	\N
3	Spree::PaymentMethod::StoreCredit	Store Credit	Store credit	t	\N	2025-03-22 05:25:54.860733	2025-03-22 05:25:54.860733	\N	---\n:server: test\n:test_mode: true\n	\N	3	f	f	\N
4	Spree::PaymentMethod::BogusCreditCard	Credit Card	Bogus payment gateway	t	\N	2025-03-22 05:28:20.06058	2025-03-22 05:28:20.06058	\N	---\n:server: test\n:test_mode: true\n	\N	4	t	t	\N
5	Spree::PaymentMethod::Check	Check	Pay by check.	t	\N	2025-03-22 05:28:20.091748	2025-03-22 05:28:20.091748	\N	---\n:server: test\n:test_mode: true\n	\N	5	t	t	\N
\.


--
-- TOC entry 5946 (class 0 OID 186999)
-- Dependencies: 276
-- Data for Name: spree_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payments (id, amount, order_id, source_type, source_id, payment_method_id, state, response_code, avs_response, created_at, updated_at, number, cvv_response_code, cvv_response_message) FROM stdin;
1	0.00	1	\N	\N	2	invalid	\N	\N	2025-03-22 05:28:42.941486	2025-03-22 05:28:54.965872	Z8VAQQPV	\N	\N
3	22.04	1	Spree::CreditCard	1	1	pending	12345	\N	2025-03-22 05:28:54.951765	2025-03-22 05:28:54.951765	QPS8N9ZT	\N	\N
2	0.00	2	\N	\N	2	invalid	\N	\N	2025-03-22 05:28:52.239649	2025-03-22 05:28:55.167509	LDG5EPFF	\N	\N
4	29.39	2	Spree::CreditCard	1	1	completed	12345	\N	2025-03-22 05:28:55.15034	2025-03-22 05:28:55.672793	YPYH67Q5	\N	\N
\.


--
-- TOC entry 5948 (class 0 OID 187012)
-- Dependencies: 278
-- Data for Name: spree_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_preferences (id, value, key, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5950 (class 0 OID 187022)
-- Dependencies: 280
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prices (id, variant_id, amount, currency, deleted_at, created_at, updated_at, country_iso) FROM stdin;
1	1	19.99	USD	\N	2025-03-22 05:28:20.857359	2025-03-22 05:28:20.857359	\N
2	1	16.00	EUR	\N	2025-03-22 05:28:21.193065	2025-03-22 05:28:21.193065	\N
3	2	19.99	USD	\N	2025-03-22 05:28:21.221451	2025-03-22 05:28:21.221451	\N
4	2	16.00	EUR	\N	2025-03-22 05:28:21.251306	2025-03-22 05:28:21.251306	\N
5	3	29.99	USD	\N	2025-03-22 05:28:21.280803	2025-03-22 05:28:21.280803	\N
6	3	27.00	EUR	\N	2025-03-22 05:28:21.322783	2025-03-22 05:28:21.322783	\N
7	4	19.99	USD	\N	2025-03-22 05:28:21.350249	2025-03-22 05:28:21.350249	\N
8	4	16.00	EUR	\N	2025-03-22 05:28:21.380162	2025-03-22 05:28:21.380162	\N
9	5	29.99	USD	\N	2025-03-22 05:28:21.405406	2025-03-22 05:28:21.405406	\N
10	5	27.00	EUR	\N	2025-03-22 05:28:21.442592	2025-03-22 05:28:21.442592	\N
11	6	29.99	USD	\N	2025-03-22 05:28:21.470396	2025-03-22 05:28:21.470396	\N
12	6	27.00	EUR	\N	2025-03-22 05:28:21.49926	2025-03-22 05:28:21.49926	\N
13	7	26.99	USD	\N	2025-03-22 05:28:21.526715	2025-03-22 05:28:21.526715	\N
14	7	23.00	EUR	\N	2025-03-22 05:28:21.561375	2025-03-22 05:28:21.561375	\N
15	8	9.99	USD	\N	2025-03-22 05:28:21.589934	2025-03-22 05:28:21.589934	\N
16	8	7.00	EUR	\N	2025-03-22 05:28:21.61937	2025-03-22 05:28:21.61937	\N
17	9	15.99	USD	\N	2025-03-22 05:28:21.646491	2025-03-22 05:28:21.646491	\N
18	9	14.00	EUR	\N	2025-03-22 05:28:21.679942	2025-03-22 05:28:21.679942	\N
19	10	15.99	USD	\N	2025-03-22 05:28:21.709146	2025-03-22 05:28:21.709146	\N
20	10	14.00	EUR	\N	2025-03-22 05:28:21.738261	2025-03-22 05:28:21.738261	\N
21	11	15.99	USD	\N	2025-03-22 05:28:21.766006	2025-03-22 05:28:21.766006	\N
22	11	14.00	EUR	\N	2025-03-22 05:28:21.796242	2025-03-22 05:28:21.796242	\N
23	12	24.00	USD	\N	2025-03-22 05:28:21.825032	2025-03-22 05:28:21.825032	\N
24	12	22.00	EUR	\N	2025-03-22 05:28:21.85334	2025-03-22 05:28:21.85334	\N
25	13	29.99	USD	\N	2025-03-22 05:28:24.092565	2025-03-22 05:28:24.092565	\N
26	14	29.99	USD	\N	2025-03-22 05:28:24.144781	2025-03-22 05:28:24.144781	\N
27	15	29.99	USD	\N	2025-03-22 05:28:24.178283	2025-03-22 05:28:24.178283	\N
28	16	29.99	USD	\N	2025-03-22 05:28:24.21498	2025-03-22 05:28:24.21498	\N
29	17	29.99	USD	\N	2025-03-22 05:28:24.248908	2025-03-22 05:28:24.248908	\N
30	18	29.99	USD	\N	2025-03-22 05:28:24.282596	2025-03-22 05:28:24.282596	\N
31	19	29.99	USD	\N	2025-03-22 05:28:24.319509	2025-03-22 05:28:24.319509	\N
32	20	29.99	USD	\N	2025-03-22 05:28:24.354196	2025-03-22 05:28:24.354196	\N
33	21	9.99	USD	\N	2025-03-22 05:28:24.391181	2025-03-22 05:28:24.391181	\N
34	22	9.99	USD	\N	2025-03-22 05:28:24.432338	2025-03-22 05:28:24.432338	\N
35	23	9.99	USD	\N	2025-03-22 05:28:24.466511	2025-03-22 05:28:24.466511	\N
36	24	19.99	USD	\N	2025-03-22 05:28:24.506106	2025-03-22 05:28:24.506106	\N
37	25	19.99	USD	\N	2025-03-22 05:28:24.544439	2025-03-22 05:28:24.544439	\N
38	26	19.99	USD	\N	2025-03-22 05:28:24.577398	2025-03-22 05:28:24.577398	\N
39	27	19.99	USD	\N	2025-03-22 05:28:24.617316	2025-03-22 05:28:24.617316	\N
40	28	19.99	USD	\N	2025-03-22 05:28:24.656569	2025-03-22 05:28:24.656569	\N
41	29	19.99	USD	\N	2025-03-22 05:28:24.690015	2025-03-22 05:28:24.690015	\N
42	30	19.99	USD	\N	2025-03-22 05:28:24.725689	2025-03-22 05:28:24.725689	\N
43	31	24.00	USD	\N	2025-03-22 05:28:24.763934	2025-03-22 05:28:24.763934	\N
44	32	24.00	USD	\N	2025-03-22 05:28:24.80302	2025-03-22 05:28:24.80302	\N
45	33	24.00	USD	\N	2025-03-22 05:28:24.837279	2025-03-22 05:28:24.837279	\N
46	34	24.00	USD	\N	2025-03-22 05:28:24.868836	2025-03-22 05:28:24.868836	\N
47	35	24.00	USD	\N	2025-03-22 05:28:24.903659	2025-03-22 05:28:24.903659	\N
48	36	24.00	USD	\N	2025-03-22 05:28:24.937013	2025-03-22 05:28:24.937013	\N
49	37	24.00	USD	\N	2025-03-22 05:28:24.970502	2025-03-22 05:28:24.970502	\N
50	38	24.00	USD	\N	2025-03-22 05:28:25.005083	2025-03-22 05:28:25.005083	\N
51	39	24.00	USD	\N	2025-03-22 05:28:25.037037	2025-03-22 05:28:25.037037	\N
52	40	24.00	USD	\N	2025-03-22 05:28:25.073595	2025-03-22 05:28:25.073595	\N
53	41	24.00	USD	\N	2025-03-22 05:28:25.108296	2025-03-22 05:28:25.108296	\N
54	42	19.99	USD	\N	2025-03-22 05:28:25.145433	2025-03-22 05:28:25.145433	\N
55	43	19.99	USD	\N	2025-03-22 05:28:25.181576	2025-03-22 05:28:25.181576	\N
56	44	19.99	USD	\N	2025-03-22 05:28:25.21137	2025-03-22 05:28:25.21137	\N
57	45	19.99	USD	\N	2025-03-22 05:28:25.240026	2025-03-22 05:28:25.240026	\N
58	46	19.99	USD	\N	2025-03-22 05:28:25.270271	2025-03-22 05:28:25.270271	\N
59	47	19.99	USD	\N	2025-03-22 05:28:25.300878	2025-03-22 05:28:25.300878	\N
60	48	19.99	USD	\N	2025-03-22 05:28:25.329395	2025-03-22 05:28:25.329395	\N
61	49	19.99	USD	\N	2025-03-22 05:28:25.359622	2025-03-22 05:28:25.359622	\N
62	50	19.99	USD	\N	2025-03-22 05:28:25.388498	2025-03-22 05:28:25.388498	\N
63	51	19.99	USD	\N	2025-03-22 05:28:25.41737	2025-03-22 05:28:25.41737	\N
\.


--
-- TOC entry 5952 (class 0 OID 187034)
-- Dependencies: 282
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_option_types (id, "position", product_id, option_type_id, created_at, updated_at) FROM stdin;
1	1	12	1	2025-03-22 05:28:23.048876	2025-03-22 05:28:23.048876
2	2	12	2	2025-03-22 05:28:23.05469	2025-03-22 05:28:23.05469
3	1	3	1	2025-03-22 05:28:23.081652	2025-03-22 05:28:23.081652
4	2	3	2	2025-03-22 05:28:23.086562	2025-03-22 05:28:23.086562
\.


--
-- TOC entry 5954 (class 0 OID 187044)
-- Dependencies: 284
-- Data for Name: spree_product_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_promotion_rules (id, product_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5956 (class 0 OID 187053)
-- Dependencies: 286
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") FROM stdin;
1	Tote	2	1	2025-03-22 05:28:23.171929	2025-03-22 05:28:23.171929	1
2	15" x 18" x 6"	2	2	2025-03-22 05:28:23.202042	2025-03-22 05:28:23.202042	2
3	Canvas	2	3	2025-03-22 05:28:23.22543	2025-03-22 05:28:23.22543	3
4	Tote	11	1	2025-03-22 05:28:23.246994	2025-03-22 05:28:23.246994	1
5	15" x 18" x 6"	11	2	2025-03-22 05:28:23.265512	2025-03-22 05:28:23.265512	2
6	Canvas	11	3	2025-03-22 05:28:23.287684	2025-03-22 05:28:23.287684	3
7	Cap	12	1	2025-03-22 05:28:23.311485	2025-03-22 05:28:23.311485	1
8	One Size	12	2	2025-03-22 05:28:23.329687	2025-03-22 05:28:23.329687	2
9	100% Cotton	12	3	2025-03-22 05:28:23.35023	2025-03-22 05:28:23.35023	3
10	Jerseys	10	4	2025-03-22 05:28:23.37257	2025-03-22 05:28:23.37257	1
11	Solidus	10	5	2025-03-22 05:28:23.39695	2025-03-22 05:28:23.39695	2
12	TL9002	10	6	2025-03-22 05:28:23.418936	2025-03-22 05:28:23.418936	3
13	Ringer T	10	7	2025-03-22 05:28:23.441363	2025-03-22 05:28:23.441363	4
14	Short	10	8	2025-03-22 05:28:23.463621	2025-03-22 05:28:23.463621	5
15	100% Cotton	10	9	2025-03-22 05:28:23.484028	2025-03-22 05:28:23.484028	6
16	Loose	10	10	2025-03-22 05:28:23.509655	2025-03-22 05:28:23.509655	7
17	Unisex	10	11	2025-03-22 05:28:23.530355	2025-03-22 05:28:23.530355	8
18	Wilson	8	4	2025-03-22 05:28:23.551109	2025-03-22 05:28:23.551109	1
19	Solidus	8	5	2025-03-22 05:28:23.568387	2025-03-22 05:28:23.568387	2
20	TL9002	8	6	2025-03-22 05:28:23.587115	2025-03-22 05:28:23.587115	3
21	Jersey	8	7	2025-03-22 05:28:23.606404	2025-03-22 05:28:23.606404	4
22	Long	8	8	2025-03-22 05:28:23.624457	2025-03-22 05:28:23.624457	5
23	100% cotton	8	9	2025-03-22 05:28:23.641842	2025-03-22 05:28:23.641842	6
24	Loose	8	10	2025-03-22 05:28:23.660397	2025-03-22 05:28:23.660397	7
25	Unisex	8	11	2025-03-22 05:28:23.678366	2025-03-22 05:28:23.678366	8
26	Jerseys	3	4	2025-03-22 05:28:23.698785	2025-03-22 05:28:23.698785	1
27	Solidus	3	5	2025-03-22 05:28:23.718011	2025-03-22 05:28:23.718011	2
28	HD9001	3	6	2025-03-22 05:28:23.736763	2025-03-22 05:28:23.736763	3
29	Jersey	3	7	2025-03-22 05:28:23.75462	2025-03-22 05:28:23.75462	4
30	Long	3	8	2025-03-22 05:28:23.772325	2025-03-22 05:28:23.772325	5
31	100% cotton	3	9	2025-03-22 05:28:23.791978	2025-03-22 05:28:23.791978	6
32	Loose	3	10	2025-03-22 05:28:23.809668	2025-03-22 05:28:23.809668	7
33	Unisex	3	11	2025-03-22 05:28:23.828405	2025-03-22 05:28:23.828405	8
34	Wilson	9	4	2025-03-22 05:28:23.847119	2025-03-22 05:28:23.847119	1
35	Solidus	9	5	2025-03-22 05:28:23.864617	2025-03-22 05:28:23.864617	2
36	HD2001	9	6	2025-03-22 05:28:23.884077	2025-03-22 05:28:23.884077	3
37	Baseball	9	7	2025-03-22 05:28:23.901133	2025-03-22 05:28:23.901133	4
38	Long	9	8	2025-03-22 05:28:23.920102	2025-03-22 05:28:23.920102	5
39	90% Cotton, 10% Nylon	9	9	2025-03-22 05:28:23.941472	2025-03-22 05:28:23.941472	6
40	Loose	9	10	2025-03-22 05:28:23.957609	2025-03-22 05:28:23.957609	7
41	Unisex	9	11	2025-03-22 05:28:23.977666	2025-03-22 05:28:23.977666	8
42	Insulated Water Bottle	1	1	2025-03-22 05:28:23.9966	2025-03-22 05:28:23.9966	1
43	4.5" tall, 3.25" dia.	1	2	2025-03-22 05:28:24.01425	2025-03-22 05:28:24.01425	2
\.


--
-- TOC entry 5958 (class 0 OID 187066)
-- Dependencies: 288
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title, discontinue_on) FROM stdin;
2	Solidus tote	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-tote	\N	\N	1	1	2025-03-22 05:28:21.214674	2025-03-22 05:28:51.595812	t	\N	\N
1	Solidus Water Bottle	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-water-bottle	\N	\N	1	1	2025-03-22 05:28:20.844516	2025-03-22 05:28:51.814471	t	\N	\N
3	Solidus hoodie	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-hoodie	\N	\N	1	1	2025-03-22 05:28:21.274067	2025-03-22 05:28:54.013574	t	\N	\N
12	Solidus cap	Step into style with our signature cap – a perfect blend of comfort and trendsetting flair. Crafted with care and designed for the fashion-forward, this cap adds an instant touch of cool to any outfit. Whether you're hitting the streets or simply seeking shade, our cap is your go-to accessory. Elevate your look today!	2025-03-22 05:28:20.611754	\N	solidus-cap	\N	\N	1	1	2025-03-22 05:28:21.819008	2025-03-22 05:28:57.376992	t	\N	\N
5	Solidus winter hat	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-winter-hat	\N	\N	1	1	2025-03-22 05:28:21.399735	2025-03-22 05:28:54.116836	t	\N	\N
6	Solidus circle sticker	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-circle-sticker	\N	\N	1	1	2025-03-22 05:28:21.464757	2025-03-22 05:28:54.164582	t	\N	\N
4	Solidus mug set	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-mug-set	\N	\N	1	1	2025-03-22 05:28:21.344609	2025-03-22 05:28:54.212509	t	\N	\N
7	Solidus notebook	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-notebook	\N	\N	1	1	2025-03-22 05:28:21.520431	2025-03-22 05:28:54.302913	t	\N	\N
8	Solidus t-shirt	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-t-shirt	\N	\N	1	1	2025-03-22 05:28:21.583797	2025-03-22 05:28:54.601647	t	\N	\N
9	Solidus long sleeve tee	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-long-sleeve-tee	\N	\N	1	1	2025-03-22 05:28:21.640088	2025-03-22 05:28:55.109149	t	\N	\N
10	Solidus dark tee	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-dark-tee	\N	\N	1	1	2025-03-22 05:28:21.702809	2025-03-22 05:28:55.190782	t	\N	\N
11	Solidus canvas tote bag	Recusandae animi deserunt provident dignissimos ullam harum alias et. Itaque dicta maxime consectetur ut nemo non voluptatem. Voluptatem ipsum ut culpa eaque dolores.	2025-03-22 05:28:20.611754	\N	solidus-canvas-tote-bag	\N	\N	1	1	2025-03-22 05:28:21.760071	2025-03-22 05:28:56.533426	t	\N	\N
\.


--
-- TOC entry 5960 (class 0 OID 187081)
-- Dependencies: 290
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products_taxons (id, product_id, taxon_id, "position", created_at, updated_at) FROM stdin;
1	6	5	1	2025-03-22 05:28:22.36601	2025-03-22 05:28:22.36601
2	5	6	1	2025-03-22 05:28:22.43802	2025-03-22 05:28:22.43802
3	12	6	2	2025-03-22 05:28:22.444509	2025-03-22 05:28:22.444509
4	2	7	1	2025-03-22 05:28:22.523715	2025-03-22 05:28:22.523715
5	11	7	2	2025-03-22 05:28:22.529018	2025-03-22 05:28:22.529018
6	1	8	1	2025-03-22 05:28:22.596071	2025-03-22 05:28:22.596071
7	8	9	1	2025-03-22 05:28:22.679625	2025-03-22 05:28:22.679625
8	10	9	2	2025-03-22 05:28:22.684342	2025-03-22 05:28:22.684342
9	9	9	3	2025-03-22 05:28:22.688609	2025-03-22 05:28:22.688609
10	3	10	1	2025-03-22 05:28:22.764636	2025-03-22 05:28:22.764636
\.


--
-- TOC entry 5962 (class 0 OID 187101)
-- Dependencies: 292
-- Data for Name: spree_promotion_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_actions (id, promotion_id, "position", type, deleted_at, preferences, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5964 (class 0 OID 187113)
-- Dependencies: 294
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_categories (id, name, created_at, updated_at, code) FROM stdin;
\.


--
-- TOC entry 6070 (class 0 OID 187715)
-- Dependencies: 400
-- Data for Name: spree_promotion_code_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_code_batches (id, promotion_id, base_code, number_of_codes, email, error, state, created_at, updated_at, join_characters) FROM stdin;
\.


--
-- TOC entry 5966 (class 0 OID 187122)
-- Dependencies: 296
-- Data for Name: spree_promotion_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_codes (id, promotion_id, value, created_at, updated_at, promotion_code_batch_id) FROM stdin;
\.


--
-- TOC entry 5968 (class 0 OID 187133)
-- Dependencies: 298
-- Data for Name: spree_promotion_rule_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rule_taxons (id, taxon_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5970 (class 0 OID 187142)
-- Dependencies: 300
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules (id, promotion_id, type, created_at, updated_at, preferences) FROM stdin;
\.


--
-- TOC entry 6074 (class 0 OID 187762)
-- Dependencies: 404
-- Data for Name: spree_promotion_rules_stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules_stores (id, store_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5972 (class 0 OID 187153)
-- Dependencies: 302
-- Data for Name: spree_promotion_rules_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules_users (id, user_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5974 (class 0 OID 187162)
-- Dependencies: 304
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotions (id, description, expires_at, starts_at, name, type, usage_limit, advertise, path, created_at, updated_at, promotion_category_id, per_code_usage_limit, apply_automatically) FROM stdin;
\.


--
-- TOC entry 5976 (class 0 OID 187181)
-- Dependencies: 306
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_properties (id, name, presentation, created_at, updated_at) FROM stdin;
1	Type	Type	2025-03-22 05:28:23.131351	2025-03-22 05:28:23.131351
2	Size	Size	2025-03-22 05:28:23.195195	2025-03-22 05:28:23.195195
3	Material	Material	2025-03-22 05:28:23.218193	2025-03-22 05:28:23.218193
4	Manufacturer	Manufacturer	2025-03-22 05:28:23.366802	2025-03-22 05:28:23.366802
5	Brand	Brand	2025-03-22 05:28:23.387723	2025-03-22 05:28:23.387723
6	Model	Model	2025-03-22 05:28:23.413071	2025-03-22 05:28:23.413071
7	Shirt Type	Shirt Type	2025-03-22 05:28:23.434821	2025-03-22 05:28:23.434821
8	Sleeve Type	Sleeve Type	2025-03-22 05:28:23.457073	2025-03-22 05:28:23.457073
9	Made from	Made from	2025-03-22 05:28:23.477616	2025-03-22 05:28:23.477616
10	Fit	Fit	2025-03-22 05:28:23.503	2025-03-22 05:28:23.503
11	Gender	Gender	2025-03-22 05:28:23.524232	2025-03-22 05:28:23.524232
\.


--
-- TOC entry 5978 (class 0 OID 187190)
-- Dependencies: 308
-- Data for Name: spree_property_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_property_prototypes (id, prototype_id, property_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5980 (class 0 OID 187197)
-- Dependencies: 310
-- Data for Name: spree_prototype_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototype_taxons (id, taxon_id, prototype_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5982 (class 0 OID 187206)
-- Dependencies: 312
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototypes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5984 (class 0 OID 187215)
-- Dependencies: 314
-- Data for Name: spree_refund_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refund_reasons (id, name, active, mutable, created_at, updated_at, code) FROM stdin;
1	Return processing	t	f	2025-03-22 05:26:16.358265	2025-03-22 05:26:16.358265	\N
\.


--
-- TOC entry 5986 (class 0 OID 187226)
-- Dependencies: 316
-- Data for Name: spree_refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refunds (id, payment_id, amount, transaction_id, created_at, updated_at, refund_reason_id, reimbursement_id) FROM stdin;
1	4	24.14	12345	2025-03-22 05:28:57.619248	2025-03-22 05:28:57.67286	1	1
\.


--
-- TOC entry 5988 (class 0 OID 187239)
-- Dependencies: 318
-- Data for Name: spree_reimbursement_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_credits (id, amount, reimbursement_id, creditable_id, creditable_type, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5990 (class 0 OID 187249)
-- Dependencies: 320
-- Data for Name: spree_reimbursement_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_types (id, name, active, mutable, created_at, updated_at, type) FROM stdin;
1	Store Credit	t	t	2025-03-22 05:25:54.947237	2025-03-22 05:25:54.947237	Spree::ReimbursementType::StoreCredit
2	Original	t	t	2025-03-22 05:25:54.963278	2025-03-22 05:25:54.963278	Spree::ReimbursementType::OriginalPayment
\.


--
-- TOC entry 5992 (class 0 OID 187261)
-- Dependencies: 322
-- Data for Name: spree_reimbursements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursements (id, number, reimbursement_status, customer_return_id, order_id, total, created_at, updated_at) FROM stdin;
1	RI558811675	reimbursed	1	2	24.14	2025-03-22 05:28:57.493779	2025-03-22 05:28:57.750749
\.


--
-- TOC entry 5994 (class 0 OID 187272)
-- Dependencies: 324
-- Data for Name: spree_return_authorizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_authorizations (id, number, state, order_id, memo, created_at, updated_at, stock_location_id, return_reason_id) FROM stdin;
1	RA318058053	authorized	2	\N	2025-03-22 05:28:57.149862	2025-03-22 05:28:57.149862	1	8
\.


--
-- TOC entry 5996 (class 0 OID 187282)
-- Dependencies: 326
-- Data for Name: spree_return_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_items (id, return_authorization_id, inventory_unit_id, exchange_variant_id, created_at, updated_at, amount, included_tax_total, additional_tax_total, reception_status, acceptance_status, customer_return_id, reimbursement_id, exchange_inventory_unit_id, acceptance_status_errors, preferred_reimbursement_type_id, override_reimbursement_type_id, resellable, return_reason_id) FROM stdin;
1	1	2	\N	2025-03-22 05:28:57.155573	2025-03-22 05:28:57.53931	22.9900	0.0000	1.1500	received	accepted	1	1	\N	--- {}\n	2	\N	t	\N
\.


--
-- TOC entry 5998 (class 0 OID 187297)
-- Dependencies: 328
-- Data for Name: spree_return_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Better price available	t	t	2025-03-22 05:25:57.765032	2025-03-22 05:25:57.765032
2	Missed estimated delivery date	t	t	2025-03-22 05:25:57.771497	2025-03-22 05:25:57.771497
3	Missing parts or accessories	t	t	2025-03-22 05:25:57.777516	2025-03-22 05:25:57.777516
4	Damaged/Defective	t	t	2025-03-22 05:25:57.783271	2025-03-22 05:25:57.783271
5	Different from what was ordered	t	t	2025-03-22 05:25:57.78886	2025-03-22 05:25:57.78886
6	Different from description	t	t	2025-03-22 05:25:57.794631	2025-03-22 05:25:57.794631
7	No longer needed/wanted	t	t	2025-03-22 05:25:57.800413	2025-03-22 05:25:57.800413
8	Accidental order	t	t	2025-03-22 05:25:57.8064	2025-03-22 05:25:57.8064
9	Unauthorized purchase	t	t	2025-03-22 05:25:57.812114	2025-03-22 05:25:57.812114
\.


--
-- TOC entry 6000 (class 0 OID 187308)
-- Dependencies: 330
-- Data for Name: spree_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2025-03-22 05:26:16.385428	2025-03-22 05:26:16.385428
\.


--
-- TOC entry 6002 (class 0 OID 187317)
-- Dependencies: 332
-- Data for Name: spree_roles_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_roles_users (id, role_id, user_id, created_at, updated_at) FROM stdin;
1	1	1	2025-03-22 05:26:16.529083	2025-03-22 05:26:16.529083
\.


--
-- TOC entry 6004 (class 0 OID 187326)
-- Dependencies: 334
-- Data for Name: spree_shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipments (id, tracking, number, cost, shipped_at, order_id, state, created_at, updated_at, stock_location_id, adjustment_total, additional_tax_total, promo_total, included_tax_total) FROM stdin;
1	\N	H00681014066	5.00	\N	1	pending	2025-03-22 05:28:48.064742	2025-03-22 05:28:50.780696	1	0.25	0.25	0.00	0.00
2	\N	H82138588312	5.00	2025-03-22 05:28:56.2529	2	shipped	2025-03-22 05:28:53.101639	2025-03-22 05:28:57.347777	1	0.25	0.25	0.00	0.00
\.


--
-- TOC entry 6006 (class 0 OID 187344)
-- Dependencies: 336
-- Data for Name: spree_shipping_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2025-03-22 05:26:16.411002	2025-03-22 05:26:16.411002
\.


--
-- TOC entry 6008 (class 0 OID 187353)
-- Dependencies: 338
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) FROM stdin;
1	1	1	2025-03-22 05:28:20.481532	2025-03-22 05:28:20.481532
2	2	1	2025-03-22 05:28:20.497709	2025-03-22 05:28:20.497709
3	3	1	2025-03-22 05:28:20.510207	2025-03-22 05:28:20.510207
4	4	1	2025-03-22 05:28:20.522714	2025-03-22 05:28:20.522714
5	5	1	2025-03-22 05:28:20.535529	2025-03-22 05:28:20.535529
\.


--
-- TOC entry 6010 (class 0 OID 187362)
-- Dependencies: 340
-- Data for Name: spree_shipping_method_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_stock_locations (id, shipping_method_id, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6012 (class 0 OID 187371)
-- Dependencies: 342
-- Data for Name: spree_shipping_method_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_zones (id, shipping_method_id, zone_id, created_at, updated_at) FROM stdin;
1	1	2	2025-03-22 05:28:20.486613	2025-03-22 05:28:20.486613
2	2	2	2025-03-22 05:28:20.499368	2025-03-22 05:28:20.499368
3	3	2	2025-03-22 05:28:20.511844	2025-03-22 05:28:20.511844
4	4	1	2025-03-22 05:28:20.524704	2025-03-22 05:28:20.524704
5	5	1	2025-03-22 05:28:20.537109	2025-03-22 05:28:20.537109
\.


--
-- TOC entry 6014 (class 0 OID 187378)
-- Dependencies: 344
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_methods (id, name, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code, available_to_all, carrier, service_level, available_to_users) FROM stdin;
1	UPS Ground (USD)	\N	2025-03-22 05:28:20.47644	2025-03-22 05:28:20.47644	\N	\N	1	\N	t	\N	\N	t
2	UPS Two Day (USD)	\N	2025-03-22 05:28:20.494601	2025-03-22 05:28:20.494601	\N	\N	1	\N	t	\N	\N	t
3	UPS One Day (USD)	\N	2025-03-22 05:28:20.506159	2025-03-22 05:28:20.506159	\N	\N	1	\N	t	\N	\N	t
4	UPS Ground (EU)	\N	2025-03-22 05:28:20.519443	2025-03-22 05:28:20.519443	\N	\N	1	\N	t	\N	\N	t
5	UPS Ground (EUR)	\N	2025-03-22 05:28:20.532302	2025-03-22 05:28:20.532302	\N	\N	1	\N	t	\N	\N	t
\.


--
-- TOC entry 6016 (class 0 OID 187389)
-- Dependencies: 346
-- Data for Name: spree_shipping_rate_taxes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_rate_taxes (id, amount, tax_rate_id, shipping_rate_id, created_at, updated_at) FROM stdin;
1	0.25	1	1	2025-03-22 05:28:48.080228	2025-03-22 05:28:48.080228
2	0.50	1	2	2025-03-22 05:28:48.088782	2025-03-22 05:28:48.088782
3	0.75	1	3	2025-03-22 05:28:48.095806	2025-03-22 05:28:48.095806
4	0.25	1	4	2025-03-22 05:28:53.145748	2025-03-22 05:28:53.145748
5	0.50	1	5	2025-03-22 05:28:53.171874	2025-03-22 05:28:53.171874
6	0.75	1	6	2025-03-22 05:28:53.186357	2025-03-22 05:28:53.186357
\.


--
-- TOC entry 6018 (class 0 OID 187399)
-- Dependencies: 348
-- Data for Name: spree_shipping_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_rates (id, shipment_id, shipping_method_id, selected, cost, created_at, updated_at, tax_rate_id) FROM stdin;
1	1	1	t	5.00	2025-03-22 05:28:48.075074	2025-03-22 05:28:48.075074	\N
2	1	2	f	10.00	2025-03-22 05:28:48.085576	2025-03-22 05:28:48.085576	\N
3	1	3	f	15.00	2025-03-22 05:28:48.092735	2025-03-22 05:28:48.092735	\N
4	2	1	t	5.00	2025-03-22 05:28:53.132488	2025-03-22 05:28:53.132488	\N
5	2	2	f	10.00	2025-03-22 05:28:53.157783	2025-03-22 05:28:53.157783	\N
6	2	3	f	15.00	2025-03-22 05:28:53.179038	2025-03-22 05:28:53.179038	\N
\.


--
-- TOC entry 6020 (class 0 OID 187409)
-- Dependencies: 350
-- Data for Name: spree_state_changes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_state_changes (id, name, previous_state, stateful_id, user_id, stateful_type, next_state, created_at, updated_at) FROM stdin;
1	order	cart	1	\N	Spree::Order	address	2025-03-22 05:28:43.327359	2025-03-22 05:28:43.327359
2	order	address	1	\N	Spree::Order	delivery	2025-03-22 05:28:48.118349	2025-03-22 05:28:48.118349
3	order	delivery	1	\N	Spree::Order	payment	2025-03-22 05:28:50.04025	2025-03-22 05:28:50.04025
4	order	payment	1	\N	Spree::Order	confirm	2025-03-22 05:28:50.336665	2025-03-22 05:28:50.336665
5	order	confirm	1	\N	Spree::Order	complete	2025-03-22 05:28:50.58106	2025-03-22 05:28:50.58106
6	payment	\N	1	\N	Spree::Order	balance_due	2025-03-22 05:28:51.897774	2025-03-22 05:28:51.897774
7	shipment	\N	1	\N	Spree::Order	pending	2025-03-22 05:28:51.906451	2025-03-22 05:28:51.906451
8	order	cart	2	\N	Spree::Order	address	2025-03-22 05:28:52.534778	2025-03-22 05:28:52.534778
9	order	address	2	\N	Spree::Order	delivery	2025-03-22 05:28:53.241293	2025-03-22 05:28:53.241293
10	order	delivery	2	\N	Spree::Order	payment	2025-03-22 05:28:53.474187	2025-03-22 05:28:53.474187
11	order	payment	2	\N	Spree::Order	confirm	2025-03-22 05:28:53.573291	2025-03-22 05:28:53.573291
12	order	confirm	2	\N	Spree::Order	complete	2025-03-22 05:28:53.700871	2025-03-22 05:28:53.700871
13	payment	\N	2	\N	Spree::Order	balance_due	2025-03-22 05:28:54.245592	2025-03-22 05:28:54.245592
14	shipment	\N	2	\N	Spree::Order	pending	2025-03-22 05:28:54.250229	2025-03-22 05:28:54.250229
15	payment	checkout	1	\N	Spree::Payment	invalid	2025-03-22 05:28:55.000098	2025-03-22 05:28:55.000098
16	payment	checkout	2	\N	Spree::Payment	invalid	2025-03-22 05:28:55.220358	2025-03-22 05:28:55.220358
17	payment	balance_due	2	\N	Spree::Order	paid	2025-03-22 05:28:56.135189	2025-03-22 05:28:56.135189
18	shipment	pending	2	\N	Spree::Order	ready	2025-03-22 05:28:56.139101	2025-03-22 05:28:56.139101
19	payment	pending	4	\N	Spree::Payment	completed	2025-03-22 05:28:56.143806	2025-03-22 05:28:56.143806
20	shipment	ready	2	\N	Spree::Order	shipped	2025-03-22 05:28:56.3332	2025-03-22 05:28:56.3332
21	shipment	ready	2	\N	Spree::Shipment	shipped	2025-03-22 05:28:56.347654	2025-03-22 05:28:56.347654
22	order	complete	2	\N	Spree::Order	returned	2025-03-22 05:28:57.389571	2025-03-22 05:28:57.389571
\.


--
-- TOC entry 6022 (class 0 OID 187420)
-- Dependencies: 352
-- Data for Name: spree_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_states (id, name, abbr, country_id, updated_at, created_at) FROM stdin;
1	Canillo	02	1	2025-03-22 05:25:57.912567	2025-03-22 05:25:57.912567
2	Encamp	03	1	2025-03-22 05:25:57.918442	2025-03-22 05:25:57.918442
3	La Massana	04	1	2025-03-22 05:25:57.923232	2025-03-22 05:25:57.923232
4	Ordino	05	1	2025-03-22 05:25:57.927798	2025-03-22 05:25:57.927798
5	Sant Julià de Lòria	06	1	2025-03-22 05:25:57.932804	2025-03-22 05:25:57.932804
6	Andorra la Vella	07	1	2025-03-22 05:25:57.937406	2025-03-22 05:25:57.937406
7	Escaldes-Engordany	08	1	2025-03-22 05:25:57.942294	2025-03-22 05:25:57.942294
8	'Ajmān	AJ	2	2025-03-22 05:25:57.947283	2025-03-22 05:25:57.947283
9	Abū Ȥaby [Abu Dhabi]	AZ	2	2025-03-22 05:25:57.951732	2025-03-22 05:25:57.951732
10	Dubayy	DU	2	2025-03-22 05:25:57.956424	2025-03-22 05:25:57.956424
11	Al Fujayrah	FU	2	2025-03-22 05:25:57.965857	2025-03-22 05:25:57.965857
12	Ra’s al Khaymah	RK	2	2025-03-22 05:25:57.97064	2025-03-22 05:25:57.97064
13	Ash Shāriqah	SH	2	2025-03-22 05:25:57.975664	2025-03-22 05:25:57.975664
14	Umm al Qaywayn	UQ	2	2025-03-22 05:25:57.980733	2025-03-22 05:25:57.980733
15	Balkh	BAL	3	2025-03-22 05:25:57.985479	2025-03-22 05:25:57.985479
16	Bāmyān	BAM	3	2025-03-22 05:25:57.990379	2025-03-22 05:25:57.990379
17	Bādghīs	BDG	3	2025-03-22 05:25:57.994925	2025-03-22 05:25:57.994925
18	Badakhshān	BDS	3	2025-03-22 05:25:57.999959	2025-03-22 05:25:57.999959
19	Baghlān	BGL	3	2025-03-22 05:25:58.00455	2025-03-22 05:25:58.00455
20	Dāykundī	DAY	3	2025-03-22 05:25:58.009525	2025-03-22 05:25:58.009525
21	Farāh	FRA	3	2025-03-22 05:25:58.013979	2025-03-22 05:25:58.013979
22	Fāryāb	FYB	3	2025-03-22 05:25:58.018522	2025-03-22 05:25:58.018522
23	Ghaznī	GHA	3	2025-03-22 05:25:58.022966	2025-03-22 05:25:58.022966
24	Ghōr	GHO	3	2025-03-22 05:25:58.027703	2025-03-22 05:25:58.027703
25	Helmand	HEL	3	2025-03-22 05:25:58.032372	2025-03-22 05:25:58.032372
26	Herāt	HER	3	2025-03-22 05:25:58.036755	2025-03-22 05:25:58.036755
27	Jowzjān	JOW	3	2025-03-22 05:25:58.041529	2025-03-22 05:25:58.041529
28	Kābul	KAB	3	2025-03-22 05:25:58.047526	2025-03-22 05:25:58.047526
29	Kandahār	KAN	3	2025-03-22 05:25:58.05247	2025-03-22 05:25:58.05247
30	Kāpīsā	KAP	3	2025-03-22 05:25:58.057259	2025-03-22 05:25:58.057259
31	Kunduz	KDZ	3	2025-03-22 05:25:58.06227	2025-03-22 05:25:58.06227
32	Khōst	KHO	3	2025-03-22 05:25:58.067417	2025-03-22 05:25:58.067417
33	Kunar	KNR	3	2025-03-22 05:25:58.072419	2025-03-22 05:25:58.072419
34	Laghmān	LAG	3	2025-03-22 05:25:58.076917	2025-03-22 05:25:58.076917
35	Lōgar	LOG	3	2025-03-22 05:25:58.081291	2025-03-22 05:25:58.081291
36	Nangarhār	NAN	3	2025-03-22 05:25:58.085707	2025-03-22 05:25:58.085707
37	Nīmrōz	NIM	3	2025-03-22 05:25:58.090946	2025-03-22 05:25:58.090946
38	Nūristān	NUR	3	2025-03-22 05:25:58.095598	2025-03-22 05:25:58.095598
39	Panjshayr	PAN	3	2025-03-22 05:25:58.099971	2025-03-22 05:25:58.099971
40	Parwān	PAR	3	2025-03-22 05:25:58.104821	2025-03-22 05:25:58.104821
41	Paktiyā	PIA	3	2025-03-22 05:25:58.1093	2025-03-22 05:25:58.1093
42	Paktīkā	PKA	3	2025-03-22 05:25:58.113912	2025-03-22 05:25:58.113912
43	Samangān	SAM	3	2025-03-22 05:25:58.118306	2025-03-22 05:25:58.118306
44	Sar-e Pul	SAR	3	2025-03-22 05:25:58.122897	2025-03-22 05:25:58.122897
45	Takhār	TAK	3	2025-03-22 05:25:58.13213	2025-03-22 05:25:58.13213
46	Uruzgān	URU	3	2025-03-22 05:25:58.13688	2025-03-22 05:25:58.13688
47	Wardak	WAR	3	2025-03-22 05:25:58.142642	2025-03-22 05:25:58.142642
48	Zābul	ZAB	3	2025-03-22 05:25:58.147794	2025-03-22 05:25:58.147794
49	Saint George	03	4	2025-03-22 05:25:58.152594	2025-03-22 05:25:58.152594
50	Saint John	04	4	2025-03-22 05:25:58.15778	2025-03-22 05:25:58.15778
51	Saint Mary	05	4	2025-03-22 05:25:58.162338	2025-03-22 05:25:58.162338
52	Saint Paul	06	4	2025-03-22 05:25:58.167747	2025-03-22 05:25:58.167747
53	Saint Peter	07	4	2025-03-22 05:25:58.172259	2025-03-22 05:25:58.172259
54	Saint Philip	08	4	2025-03-22 05:25:58.177249	2025-03-22 05:25:58.177249
55	Barbuda	10	4	2025-03-22 05:25:58.181827	2025-03-22 05:25:58.181827
56	Redonda	11	4	2025-03-22 05:25:58.18679	2025-03-22 05:25:58.18679
57	Berat	01	6	2025-03-22 05:25:58.191294	2025-03-22 05:25:58.191294
58	Durrës	02	6	2025-03-22 05:25:58.196507	2025-03-22 05:25:58.196507
59	Elbasan	03	6	2025-03-22 05:25:58.201196	2025-03-22 05:25:58.201196
60	Fier	04	6	2025-03-22 05:25:58.206043	2025-03-22 05:25:58.206043
61	Gjirokastër	05	6	2025-03-22 05:25:58.210843	2025-03-22 05:25:58.210843
62	Korçë	06	6	2025-03-22 05:25:58.215705	2025-03-22 05:25:58.215705
63	Kukës	07	6	2025-03-22 05:25:58.22035	2025-03-22 05:25:58.22035
64	Lezhë	08	6	2025-03-22 05:25:58.225186	2025-03-22 05:25:58.225186
65	Dibër	09	6	2025-03-22 05:25:58.230255	2025-03-22 05:25:58.230255
66	Shkodër	10	6	2025-03-22 05:25:58.234823	2025-03-22 05:25:58.234823
67	Tiranë	11	6	2025-03-22 05:25:58.240388	2025-03-22 05:25:58.240388
68	Vlorë	12	6	2025-03-22 05:25:58.244978	2025-03-22 05:25:58.244978
69	Aragacotn	AG	7	2025-03-22 05:25:58.249702	2025-03-22 05:25:58.249702
70	Ararat	AR	7	2025-03-22 05:25:58.253993	2025-03-22 05:25:58.253993
71	Armavir	AV	7	2025-03-22 05:25:58.258254	2025-03-22 05:25:58.258254
72	Erevan	ER	7	2025-03-22 05:25:58.26274	2025-03-22 05:25:58.26274
73	Gegarkunik'	GR	7	2025-03-22 05:25:58.267005	2025-03-22 05:25:58.267005
74	Kotayk'	KT	7	2025-03-22 05:25:58.271125	2025-03-22 05:25:58.271125
75	Lory	LO	7	2025-03-22 05:25:58.275188	2025-03-22 05:25:58.275188
76	Sirak	SH	7	2025-03-22 05:25:58.279257	2025-03-22 05:25:58.279257
77	Syunik'	SU	7	2025-03-22 05:25:58.283571	2025-03-22 05:25:58.283571
78	Tavus	TV	7	2025-03-22 05:25:58.287836	2025-03-22 05:25:58.287836
79	Vayoc Jor	VD	7	2025-03-22 05:25:58.29668	2025-03-22 05:25:58.29668
80	Bengo	BGO	8	2025-03-22 05:25:58.302021	2025-03-22 05:25:58.302021
81	Benguela	BGU	8	2025-03-22 05:25:58.307277	2025-03-22 05:25:58.307277
82	Bié	BIE	8	2025-03-22 05:25:58.31212	2025-03-22 05:25:58.31212
83	Cabinda	CAB	8	2025-03-22 05:25:58.316985	2025-03-22 05:25:58.316985
84	Cuando-Cubango	CCU	8	2025-03-22 05:25:58.321401	2025-03-22 05:25:58.321401
85	Cunene	CNN	8	2025-03-22 05:25:58.326318	2025-03-22 05:25:58.326318
86	Cuanza Norte	CNO	8	2025-03-22 05:25:58.330885	2025-03-22 05:25:58.330885
87	Cuanza Sul	CUS	8	2025-03-22 05:25:58.335722	2025-03-22 05:25:58.335722
88	Huambo	HUA	8	2025-03-22 05:25:58.340588	2025-03-22 05:25:58.340588
89	Huíla	HUI	8	2025-03-22 05:25:58.345157	2025-03-22 05:25:58.345157
90	Lunda Norte	LNO	8	2025-03-22 05:25:58.350167	2025-03-22 05:25:58.350167
91	Lunda Sul	LSU	8	2025-03-22 05:25:58.354718	2025-03-22 05:25:58.354718
92	Luanda	LUA	8	2025-03-22 05:25:58.359682	2025-03-22 05:25:58.359682
93	Malange	MAL	8	2025-03-22 05:25:58.363974	2025-03-22 05:25:58.363974
94	Moxico	MOX	8	2025-03-22 05:25:58.368502	2025-03-22 05:25:58.368502
95	Namibe	NAM	8	2025-03-22 05:25:58.372805	2025-03-22 05:25:58.372805
96	Uíge	UIG	8	2025-03-22 05:25:58.377272	2025-03-22 05:25:58.377272
97	Zaire	ZAI	8	2025-03-22 05:25:58.381721	2025-03-22 05:25:58.381721
98	Salta	A	10	2025-03-22 05:25:58.386258	2025-03-22 05:25:58.386258
99	Buenos Aires	B	10	2025-03-22 05:25:58.390625	2025-03-22 05:25:58.390625
100	Ciudad Autónoma de Buenos Aires	C	10	2025-03-22 05:25:58.395172	2025-03-22 05:25:58.395172
101	San Luis	D	10	2025-03-22 05:25:58.40028	2025-03-22 05:25:58.40028
102	Entre Rios	E	10	2025-03-22 05:25:58.405353	2025-03-22 05:25:58.405353
103	Santiago del Estero	G	10	2025-03-22 05:25:58.409781	2025-03-22 05:25:58.409781
104	Chaco	H	10	2025-03-22 05:25:58.414021	2025-03-22 05:25:58.414021
105	San Juan	J	10	2025-03-22 05:25:58.418177	2025-03-22 05:25:58.418177
106	Catamarca	K	10	2025-03-22 05:25:58.422318	2025-03-22 05:25:58.422318
107	La Pampa	L	10	2025-03-22 05:25:58.426537	2025-03-22 05:25:58.426537
108	Mendoza	M	10	2025-03-22 05:25:58.430762	2025-03-22 05:25:58.430762
109	Misiones	N	10	2025-03-22 05:25:58.434968	2025-03-22 05:25:58.434968
110	Formosa	P	10	2025-03-22 05:25:58.439018	2025-03-22 05:25:58.439018
111	Neuquen	Q	10	2025-03-22 05:25:58.443444	2025-03-22 05:25:58.443444
112	Rio Negro	R	10	2025-03-22 05:25:58.447539	2025-03-22 05:25:58.447539
113	Santa Fe	S	10	2025-03-22 05:25:58.452153	2025-03-22 05:25:58.452153
114	Tucuman	T	10	2025-03-22 05:25:58.460834	2025-03-22 05:25:58.460834
115	Chubut	U	10	2025-03-22 05:25:58.467202	2025-03-22 05:25:58.467202
116	Tierra del Fuego	V	10	2025-03-22 05:25:58.471709	2025-03-22 05:25:58.471709
117	Corrientes	W	10	2025-03-22 05:25:58.476471	2025-03-22 05:25:58.476471
118	Cordoba	X	10	2025-03-22 05:25:58.480609	2025-03-22 05:25:58.480609
119	Jujuy	Y	10	2025-03-22 05:25:58.485242	2025-03-22 05:25:58.485242
120	Santa Cruz	Z	10	2025-03-22 05:25:58.490281	2025-03-22 05:25:58.490281
121	La Rioja	F	10	2025-03-22 05:25:58.49507	2025-03-22 05:25:58.49507
122	Burgenland	1	12	2025-03-22 05:25:58.499689	2025-03-22 05:25:58.499689
123	Kärnten	2	12	2025-03-22 05:25:58.504856	2025-03-22 05:25:58.504856
124	Niederösterreich	3	12	2025-03-22 05:25:58.509417	2025-03-22 05:25:58.509417
125	Oberösterreich	4	12	2025-03-22 05:25:58.514681	2025-03-22 05:25:58.514681
126	Salzburg	5	12	2025-03-22 05:25:58.519092	2025-03-22 05:25:58.519092
127	Steiermark	6	12	2025-03-22 05:25:58.524074	2025-03-22 05:25:58.524074
128	Tirol	7	12	2025-03-22 05:25:58.528865	2025-03-22 05:25:58.528865
129	Vorarlberg	8	12	2025-03-22 05:25:58.53344	2025-03-22 05:25:58.53344
130	Wien	9	12	2025-03-22 05:25:58.538089	2025-03-22 05:25:58.538089
131	Australian Capital Territory	ACT	13	2025-03-22 05:25:58.542647	2025-03-22 05:25:58.542647
132	New South Wales	NSW	13	2025-03-22 05:25:58.547271	2025-03-22 05:25:58.547271
133	Northern Territory	NT	13	2025-03-22 05:25:58.551756	2025-03-22 05:25:58.551756
134	Queensland	QLD	13	2025-03-22 05:25:58.556604	2025-03-22 05:25:58.556604
135	South Australia	SA	13	2025-03-22 05:25:58.56253	2025-03-22 05:25:58.56253
136	Tasmania	TAS	13	2025-03-22 05:25:58.566978	2025-03-22 05:25:58.566978
137	Victoria	VIC	13	2025-03-22 05:25:58.571415	2025-03-22 05:25:58.571415
138	Western Australia	WA	13	2025-03-22 05:25:58.575732	2025-03-22 05:25:58.575732
139	Abşeron	ABS	16	2025-03-22 05:25:58.580184	2025-03-22 05:25:58.580184
140	Ağstafa	AGA	16	2025-03-22 05:25:58.584817	2025-03-22 05:25:58.584817
141	Ağcabədi	AGC	16	2025-03-22 05:25:58.589415	2025-03-22 05:25:58.589415
142	Ağdam	AGM	16	2025-03-22 05:25:58.594023	2025-03-22 05:25:58.594023
143	Ağdaş	AGS	16	2025-03-22 05:25:58.598257	2025-03-22 05:25:58.598257
144	Ağsu	AGU	16	2025-03-22 05:25:58.6024	2025-03-22 05:25:58.6024
145	Astara	AST	16	2025-03-22 05:25:58.60658	2025-03-22 05:25:58.60658
146	Bakı	BA	16	2025-03-22 05:25:58.611521	2025-03-22 05:25:58.611521
147	Balakən	BAL	16	2025-03-22 05:25:58.616027	2025-03-22 05:25:58.616027
148	Bərdə	BAR	16	2025-03-22 05:25:58.621484	2025-03-22 05:25:58.621484
149	Beyləqan	BEY	16	2025-03-22 05:25:58.626006	2025-03-22 05:25:58.626006
150	Biləsuvar	BIL	16	2025-03-22 05:25:58.631018	2025-03-22 05:25:58.631018
151	Cəbrayıl	CAB	16	2025-03-22 05:25:58.635815	2025-03-22 05:25:58.635815
152	Cəlilabab	CAL	16	2025-03-22 05:25:58.639994	2025-03-22 05:25:58.639994
153	Daşkəsən	DAS	16	2025-03-22 05:25:58.644819	2025-03-22 05:25:58.644819
154	Füzuli	FUZ	16	2025-03-22 05:25:58.649038	2025-03-22 05:25:58.649038
155	Gəncə	GA	16	2025-03-22 05:25:58.653784	2025-03-22 05:25:58.653784
156	Gədəbəy	GAD	16	2025-03-22 05:25:58.657964	2025-03-22 05:25:58.657964
157	Goranboy	GOR	16	2025-03-22 05:25:58.66262	2025-03-22 05:25:58.66262
158	Göyçay	GOY	16	2025-03-22 05:25:58.667429	2025-03-22 05:25:58.667429
159	Göygöl	GYG	16	2025-03-22 05:25:58.673051	2025-03-22 05:25:58.673051
160	Hacıqabul	HAC	16	2025-03-22 05:25:58.677292	2025-03-22 05:25:58.677292
161	İmişli	IMI	16	2025-03-22 05:25:58.68199	2025-03-22 05:25:58.68199
162	İsmayıllı	ISM	16	2025-03-22 05:25:58.686677	2025-03-22 05:25:58.686677
163	Kəlbəcər	KAL	16	2025-03-22 05:25:58.690922	2025-03-22 05:25:58.690922
164	Kürdəmir	KUR	16	2025-03-22 05:25:58.695361	2025-03-22 05:25:58.695361
165	Lənkəran	LA	16	2025-03-22 05:25:58.699402	2025-03-22 05:25:58.699402
166	Laçın	LAC	16	2025-03-22 05:25:58.704572	2025-03-22 05:25:58.704572
167	Lənkəran	LAN	16	2025-03-22 05:25:58.709013	2025-03-22 05:25:58.709013
168	Lerik	LER	16	2025-03-22 05:25:58.713593	2025-03-22 05:25:58.713593
169	Masallı	MAS	16	2025-03-22 05:25:58.718573	2025-03-22 05:25:58.718573
170	Mingəçevir	MI	16	2025-03-22 05:25:58.724221	2025-03-22 05:25:58.724221
171	Naftalan	NA	16	2025-03-22 05:25:58.728286	2025-03-22 05:25:58.728286
172	Neftçala	NEF	16	2025-03-22 05:25:58.732355	2025-03-22 05:25:58.732355
173	Naxçıvan	NX	16	2025-03-22 05:25:58.736681	2025-03-22 05:25:58.736681
174	Oğuz	OGU	16	2025-03-22 05:25:58.7412	2025-03-22 05:25:58.7412
175	Qəbələ	QAB	16	2025-03-22 05:25:58.74543	2025-03-22 05:25:58.74543
176	Qax	QAX	16	2025-03-22 05:25:58.749914	2025-03-22 05:25:58.749914
177	Qazax	QAZ	16	2025-03-22 05:25:58.754428	2025-03-22 05:25:58.754428
178	Quba	QBA	16	2025-03-22 05:25:58.758871	2025-03-22 05:25:58.758871
179	Qubadlı	QBI	16	2025-03-22 05:25:58.763819	2025-03-22 05:25:58.763819
180	Qobustan	QOB	16	2025-03-22 05:25:58.768697	2025-03-22 05:25:58.768697
181	Qusar	QUS	16	2025-03-22 05:25:58.773437	2025-03-22 05:25:58.773437
182	Şəki	SA	16	2025-03-22 05:25:58.779724	2025-03-22 05:25:58.779724
183	Sabirabad	SAB	16	2025-03-22 05:25:58.78449	2025-03-22 05:25:58.78449
184	Şəki	SAK	16	2025-03-22 05:25:58.789743	2025-03-22 05:25:58.789743
185	Salyan	SAL	16	2025-03-22 05:25:58.79427	2025-03-22 05:25:58.79427
186	Saatlı	SAT	16	2025-03-22 05:25:58.798981	2025-03-22 05:25:58.798981
187	Şabran	SBN	16	2025-03-22 05:25:58.803371	2025-03-22 05:25:58.803371
188	Siyəzən	SIY	16	2025-03-22 05:25:58.808036	2025-03-22 05:25:58.808036
189	Şəmkir	SKR	16	2025-03-22 05:25:58.812901	2025-03-22 05:25:58.812901
190	Sumqayıt	SM	16	2025-03-22 05:25:58.817121	2025-03-22 05:25:58.817121
191	Şamaxı	SMI	16	2025-03-22 05:25:58.8219	2025-03-22 05:25:58.8219
192	Samux	SMX	16	2025-03-22 05:25:58.826615	2025-03-22 05:25:58.826615
193	Şirvan	SR	16	2025-03-22 05:25:58.831298	2025-03-22 05:25:58.831298
194	Şuşa	SUS	16	2025-03-22 05:25:58.835462	2025-03-22 05:25:58.835462
195	Tərtər	TAR	16	2025-03-22 05:25:58.840206	2025-03-22 05:25:58.840206
196	Tovuz	TOV	16	2025-03-22 05:25:58.844788	2025-03-22 05:25:58.844788
197	Ucar	UCA	16	2025-03-22 05:25:58.849886	2025-03-22 05:25:58.849886
198	Xankəndi	XA	16	2025-03-22 05:25:58.854644	2025-03-22 05:25:58.854644
199	Xaçmaz	XAC	16	2025-03-22 05:25:58.85952	2025-03-22 05:25:58.85952
200	Xocalı	XCI	16	2025-03-22 05:25:58.864198	2025-03-22 05:25:58.864198
201	Xızı	XIZ	16	2025-03-22 05:25:58.868966	2025-03-22 05:25:58.868966
202	Xocavənd	XVD	16	2025-03-22 05:25:58.874255	2025-03-22 05:25:58.874255
203	Yardımlı	YAR	16	2025-03-22 05:25:58.879063	2025-03-22 05:25:58.879063
204	Yevlax	YE	16	2025-03-22 05:25:58.884406	2025-03-22 05:25:58.884406
205	Yevlax	YEV	16	2025-03-22 05:25:58.889	2025-03-22 05:25:58.889
206	Zəngilan	ZAN	16	2025-03-22 05:25:58.893548	2025-03-22 05:25:58.893548
207	Zaqatala	ZAQ	16	2025-03-22 05:25:58.897751	2025-03-22 05:25:58.897751
208	Zərdab	ZAR	16	2025-03-22 05:25:58.903398	2025-03-22 05:25:58.903398
209	Federacija Bosne i Hercegovine	BIH	17	2025-03-22 05:25:58.90821	2025-03-22 05:25:58.90821
210	Brčko distrikt	BRC	17	2025-03-22 05:25:58.912592	2025-03-22 05:25:58.912592
211	Republika Srpska	SRP	17	2025-03-22 05:25:58.916907	2025-03-22 05:25:58.916907
212	Christ Church	01	18	2025-03-22 05:25:58.921277	2025-03-22 05:25:58.921277
213	Saint Andrew	02	18	2025-03-22 05:25:58.925984	2025-03-22 05:25:58.925984
214	Saint George	03	18	2025-03-22 05:25:58.930256	2025-03-22 05:25:58.930256
215	Saint James	04	18	2025-03-22 05:25:58.934386	2025-03-22 05:25:58.934386
216	Saint John	05	18	2025-03-22 05:25:58.940571	2025-03-22 05:25:58.940571
217	Saint Joseph	06	18	2025-03-22 05:25:58.945591	2025-03-22 05:25:58.945591
218	Saint Lucy	07	18	2025-03-22 05:25:58.95071	2025-03-22 05:25:58.95071
219	Saint Michael	08	18	2025-03-22 05:25:58.956103	2025-03-22 05:25:58.956103
220	Saint Peter	09	18	2025-03-22 05:25:58.961501	2025-03-22 05:25:58.961501
221	Saint Philip	10	18	2025-03-22 05:25:58.966671	2025-03-22 05:25:58.966671
222	Saint Thomas	11	18	2025-03-22 05:25:58.972846	2025-03-22 05:25:58.972846
223	Barisal	A	19	2025-03-22 05:25:58.977352	2025-03-22 05:25:58.977352
224	Chittagong	B	19	2025-03-22 05:25:58.982164	2025-03-22 05:25:58.982164
225	Dhaka	C	19	2025-03-22 05:25:58.987271	2025-03-22 05:25:58.987271
226	Khulna	D	19	2025-03-22 05:25:58.992851	2025-03-22 05:25:58.992851
227	Rajshahi	E	19	2025-03-22 05:25:58.997273	2025-03-22 05:25:58.997273
228	Rangpur	F	19	2025-03-22 05:25:59.002115	2025-03-22 05:25:59.002115
229	Sylhet	G	19	2025-03-22 05:25:59.007617	2025-03-22 05:25:59.007617
230	Rangpur bibhag	7	19	2025-03-22 05:25:59.01234	2025-03-22 05:25:59.01234
231	Brussels-Capital Region	BRU	20	2025-03-22 05:25:59.018201	2025-03-22 05:25:59.018201
232	Flemish Region	VLG	20	2025-03-22 05:25:59.023358	2025-03-22 05:25:59.023358
233	Walloon Region	WAL	20	2025-03-22 05:25:59.028012	2025-03-22 05:25:59.028012
234	Boucle du Mouhoun	01	21	2025-03-22 05:25:59.033521	2025-03-22 05:25:59.033521
235	Cascades	02	21	2025-03-22 05:25:59.039423	2025-03-22 05:25:59.039423
236	Centre	03	21	2025-03-22 05:25:59.045596	2025-03-22 05:25:59.045596
237	Centre-Est	04	21	2025-03-22 05:25:59.050833	2025-03-22 05:25:59.050833
238	Centre-Nord	05	21	2025-03-22 05:25:59.056774	2025-03-22 05:25:59.056774
239	Centre-Ouest	06	21	2025-03-22 05:25:59.061255	2025-03-22 05:25:59.061255
240	Centre-Sud	07	21	2025-03-22 05:25:59.066116	2025-03-22 05:25:59.066116
241	Est	08	21	2025-03-22 05:25:59.070867	2025-03-22 05:25:59.070867
242	Hauts-Bassins	09	21	2025-03-22 05:25:59.076091	2025-03-22 05:25:59.076091
243	Nord	10	21	2025-03-22 05:25:59.08076	2025-03-22 05:25:59.08076
244	Plateau-Central	11	21	2025-03-22 05:25:59.085109	2025-03-22 05:25:59.085109
245	Sahel	12	21	2025-03-22 05:25:59.089999	2025-03-22 05:25:59.089999
246	Sud-Ouest	13	21	2025-03-22 05:25:59.094627	2025-03-22 05:25:59.094627
247	Blagoevgrad	01	22	2025-03-22 05:25:59.099017	2025-03-22 05:25:59.099017
248	Burgas	02	22	2025-03-22 05:25:59.103756	2025-03-22 05:25:59.103756
249	Varna	03	22	2025-03-22 05:25:59.108199	2025-03-22 05:25:59.108199
250	Veliko Tarnovo	04	22	2025-03-22 05:25:59.112889	2025-03-22 05:25:59.112889
251	Vidin	05	22	2025-03-22 05:25:59.118791	2025-03-22 05:25:59.118791
252	Vratsa	06	22	2025-03-22 05:25:59.124423	2025-03-22 05:25:59.124423
253	Gabrovo	07	22	2025-03-22 05:25:59.129319	2025-03-22 05:25:59.129319
254	Dobrich	08	22	2025-03-22 05:25:59.134452	2025-03-22 05:25:59.134452
255	Kardzhali	09	22	2025-03-22 05:25:59.139055	2025-03-22 05:25:59.139055
256	Kyustendil	10	22	2025-03-22 05:25:59.144037	2025-03-22 05:25:59.144037
257	Lovech	11	22	2025-03-22 05:25:59.148321	2025-03-22 05:25:59.148321
258	Montana	12	22	2025-03-22 05:25:59.153571	2025-03-22 05:25:59.153571
259	Pazardzhik	13	22	2025-03-22 05:25:59.158029	2025-03-22 05:25:59.158029
260	Pernik	14	22	2025-03-22 05:25:59.16315	2025-03-22 05:25:59.16315
261	Pleven	15	22	2025-03-22 05:25:59.167682	2025-03-22 05:25:59.167682
262	Plovdiv	16	22	2025-03-22 05:25:59.172976	2025-03-22 05:25:59.172976
263	Razgrad	17	22	2025-03-22 05:25:59.177403	2025-03-22 05:25:59.177403
264	Ruse	18	22	2025-03-22 05:25:59.182385	2025-03-22 05:25:59.182385
265	Silistra	19	22	2025-03-22 05:25:59.187546	2025-03-22 05:25:59.187546
266	Sliven	20	22	2025-03-22 05:25:59.191884	2025-03-22 05:25:59.191884
267	Smolyan	21	22	2025-03-22 05:25:59.196201	2025-03-22 05:25:59.196201
268	Sofia-Grad	22	22	2025-03-22 05:25:59.200321	2025-03-22 05:25:59.200321
269	Sofia	23	22	2025-03-22 05:25:59.204787	2025-03-22 05:25:59.204787
270	Stara Zagora	24	22	2025-03-22 05:25:59.208938	2025-03-22 05:25:59.208938
271	Targovishte	25	22	2025-03-22 05:25:59.213439	2025-03-22 05:25:59.213439
272	Haskovo	26	22	2025-03-22 05:25:59.218439	2025-03-22 05:25:59.218439
273	Shumen	27	22	2025-03-22 05:25:59.222845	2025-03-22 05:25:59.222845
274	Yambol	28	22	2025-03-22 05:25:59.227029	2025-03-22 05:25:59.227029
275	Al Manāmah (Al ‘Āşimah)	13	23	2025-03-22 05:25:59.231594	2025-03-22 05:25:59.231594
276	Al Janūbīyah	14	23	2025-03-22 05:25:59.235929	2025-03-22 05:25:59.235929
277	Al Muḩarraq	15	23	2025-03-22 05:25:59.240026	2025-03-22 05:25:59.240026
278	Al Wusţá	16	23	2025-03-22 05:25:59.244398	2025-03-22 05:25:59.244398
279	Ash Shamālīyah	17	23	2025-03-22 05:25:59.248725	2025-03-22 05:25:59.248725
280	Bubanza	BB	24	2025-03-22 05:25:59.253294	2025-03-22 05:25:59.253294
281	Bujumbura Rural	BL	24	2025-03-22 05:25:59.258061	2025-03-22 05:25:59.258061
282	Bujumbura Mairie	BM	24	2025-03-22 05:25:59.263421	2025-03-22 05:25:59.263421
283	Bururi	BR	24	2025-03-22 05:25:59.267798	2025-03-22 05:25:59.267798
284	Cankuzo	CA	24	2025-03-22 05:25:59.272092	2025-03-22 05:25:59.272092
285	Cibitoke	CI	24	2025-03-22 05:25:59.277708	2025-03-22 05:25:59.277708
286	Gitega	GI	24	2025-03-22 05:25:59.282466	2025-03-22 05:25:59.282466
287	Kirundo	KI	24	2025-03-22 05:25:59.2877	2025-03-22 05:25:59.2877
288	Karuzi	KR	24	2025-03-22 05:25:59.293157	2025-03-22 05:25:59.293157
289	Kayanza	KY	24	2025-03-22 05:25:59.299261	2025-03-22 05:25:59.299261
290	Makamba	MA	24	2025-03-22 05:25:59.304302	2025-03-22 05:25:59.304302
291	Muramvya	MU	24	2025-03-22 05:25:59.308683	2025-03-22 05:25:59.308683
292	Mwaro	MW	24	2025-03-22 05:25:59.313345	2025-03-22 05:25:59.313345
293	Ngozi	NG	24	2025-03-22 05:25:59.317674	2025-03-22 05:25:59.317674
294	Rutana	RT	24	2025-03-22 05:25:59.322727	2025-03-22 05:25:59.322727
295	Ruyigi	RY	24	2025-03-22 05:25:59.327662	2025-03-22 05:25:59.327662
296	Atakora	AK	25	2025-03-22 05:25:59.33294	2025-03-22 05:25:59.33294
297	Alibori	AL	25	2025-03-22 05:25:59.337842	2025-03-22 05:25:59.337842
298	Atlantique	AQ	25	2025-03-22 05:25:59.343459	2025-03-22 05:25:59.343459
299	Borgou	BO	25	2025-03-22 05:25:59.348186	2025-03-22 05:25:59.348186
300	Collines	CO	25	2025-03-22 05:25:59.352405	2025-03-22 05:25:59.352405
301	Donga	DO	25	2025-03-22 05:25:59.357532	2025-03-22 05:25:59.357532
302	Kouffo	KO	25	2025-03-22 05:25:59.362026	2025-03-22 05:25:59.362026
303	Littoral	LI	25	2025-03-22 05:25:59.367267	2025-03-22 05:25:59.367267
304	Mono	MO	25	2025-03-22 05:25:59.372015	2025-03-22 05:25:59.372015
305	Ouémé	OU	25	2025-03-22 05:25:59.377241	2025-03-22 05:25:59.377241
306	Plateau	PL	25	2025-03-22 05:25:59.381686	2025-03-22 05:25:59.381686
307	Zou	ZO	25	2025-03-22 05:25:59.387792	2025-03-22 05:25:59.387792
308	Devenshire	DEV	27	2025-03-22 05:25:59.393685	2025-03-22 05:25:59.393685
309	Hamilton	HAM	27	2025-03-22 05:25:59.398072	2025-03-22 05:25:59.398072
310	Paget	PAG	27	2025-03-22 05:25:59.402368	2025-03-22 05:25:59.402368
311	Pembroke	PEM	27	2025-03-22 05:25:59.407543	2025-03-22 05:25:59.407543
312	Saint George's	SGE	27	2025-03-22 05:25:59.411869	2025-03-22 05:25:59.411869
313	Sandys	SAN	27	2025-03-22 05:25:59.416093	2025-03-22 05:25:59.416093
314	Smiths	SMI	27	2025-03-22 05:25:59.420343	2025-03-22 05:25:59.420343
315	Southampton	SOU	27	2025-03-22 05:25:59.424971	2025-03-22 05:25:59.424971
316	Warwick	WAR	27	2025-03-22 05:25:59.429082	2025-03-22 05:25:59.429082
317	Belait	BE	28	2025-03-22 05:25:59.433329	2025-03-22 05:25:59.433329
318	Brunei-Muara	BM	28	2025-03-22 05:25:59.437566	2025-03-22 05:25:59.437566
319	Temburong	TE	28	2025-03-22 05:25:59.443665	2025-03-22 05:25:59.443665
320	Tutong	TU	28	2025-03-22 05:25:59.447937	2025-03-22 05:25:59.447937
321	El Beni	B	29	2025-03-22 05:25:59.453147	2025-03-22 05:25:59.453147
322	Cochabamba	C	29	2025-03-22 05:25:59.457653	2025-03-22 05:25:59.457653
323	Chuquisaca	H	29	2025-03-22 05:25:59.464441	2025-03-22 05:25:59.464441
324	La Paz	L	29	2025-03-22 05:25:59.469625	2025-03-22 05:25:59.469625
325	Pando	N	29	2025-03-22 05:25:59.474919	2025-03-22 05:25:59.474919
326	Oruro	O	29	2025-03-22 05:25:59.479768	2025-03-22 05:25:59.479768
327	Potosí	P	29	2025-03-22 05:25:59.484064	2025-03-22 05:25:59.484064
328	Santa Cruz	S	29	2025-03-22 05:25:59.489292	2025-03-22 05:25:59.489292
329	Tarija	T	29	2025-03-22 05:25:59.494119	2025-03-22 05:25:59.494119
330	Bonaire	BO	30	2025-03-22 05:25:59.498907	2025-03-22 05:25:59.498907
331	Saba	SA	30	2025-03-22 05:25:59.503191	2025-03-22 05:25:59.503191
332	Sint Eustatius	SE	30	2025-03-22 05:25:59.507716	2025-03-22 05:25:59.507716
333	Acre	AC	31	2025-03-22 05:25:59.512015	2025-03-22 05:25:59.512015
334	Alagoas	AL	31	2025-03-22 05:25:59.517007	2025-03-22 05:25:59.517007
335	Amazonas	AM	31	2025-03-22 05:25:59.522751	2025-03-22 05:25:59.522751
336	Amapá	AP	31	2025-03-22 05:25:59.527163	2025-03-22 05:25:59.527163
337	Bahia	BA	31	2025-03-22 05:25:59.531351	2025-03-22 05:25:59.531351
338	Ceará	CE	31	2025-03-22 05:25:59.535885	2025-03-22 05:25:59.535885
339	Distrito Federal	DF	31	2025-03-22 05:25:59.540376	2025-03-22 05:25:59.540376
340	Espírito Santo	ES	31	2025-03-22 05:25:59.545226	2025-03-22 05:25:59.545226
341	Goiás	GO	31	2025-03-22 05:25:59.550493	2025-03-22 05:25:59.550493
342	Maranhão	MA	31	2025-03-22 05:25:59.55461	2025-03-22 05:25:59.55461
343	Minas Gerais	MG	31	2025-03-22 05:25:59.558963	2025-03-22 05:25:59.558963
344	Mato Grosso do Sul	MS	31	2025-03-22 05:25:59.563146	2025-03-22 05:25:59.563146
345	Mato Grosso	MT	31	2025-03-22 05:25:59.567364	2025-03-22 05:25:59.567364
346	Pará	PA	31	2025-03-22 05:25:59.57158	2025-03-22 05:25:59.57158
347	Paraíba	PB	31	2025-03-22 05:25:59.575751	2025-03-22 05:25:59.575751
348	Pernambuco	PE	31	2025-03-22 05:25:59.579965	2025-03-22 05:25:59.579965
349	Piauí	PI	31	2025-03-22 05:25:59.584305	2025-03-22 05:25:59.584305
350	Paraná	PR	31	2025-03-22 05:25:59.58868	2025-03-22 05:25:59.58868
351	Rio de Janeiro	RJ	31	2025-03-22 05:25:59.593486	2025-03-22 05:25:59.593486
352	Rio Grande do Norte	RN	31	2025-03-22 05:25:59.598214	2025-03-22 05:25:59.598214
353	Rondônia	RO	31	2025-03-22 05:25:59.602882	2025-03-22 05:25:59.602882
354	Roraima	RR	31	2025-03-22 05:25:59.609008	2025-03-22 05:25:59.609008
355	Rio Grande do Sul	RS	31	2025-03-22 05:25:59.614452	2025-03-22 05:25:59.614452
356	Santa Catarina	SC	31	2025-03-22 05:25:59.619104	2025-03-22 05:25:59.619104
357	Sergipe	SE	31	2025-03-22 05:25:59.62448	2025-03-22 05:25:59.62448
358	São Paulo	SP	31	2025-03-22 05:25:59.629005	2025-03-22 05:25:59.629005
359	Tocantins	TO	31	2025-03-22 05:25:59.633989	2025-03-22 05:25:59.633989
360	Acklins	AK	32	2025-03-22 05:25:59.639708	2025-03-22 05:25:59.639708
361	Bimini	BI	32	2025-03-22 05:25:59.645067	2025-03-22 05:25:59.645067
362	Black Point	BP	32	2025-03-22 05:25:59.649747	2025-03-22 05:25:59.649747
363	Berry Islands	BY	32	2025-03-22 05:25:59.65505	2025-03-22 05:25:59.65505
364	Central Eleuthera	CE	32	2025-03-22 05:25:59.659587	2025-03-22 05:25:59.659587
365	Cat Island	CI	32	2025-03-22 05:25:59.664753	2025-03-22 05:25:59.664753
366	Crooked Island and Long Cay	CK	32	2025-03-22 05:25:59.669048	2025-03-22 05:25:59.669048
367	Central Abaco	CO	32	2025-03-22 05:25:59.674046	2025-03-22 05:25:59.674046
368	Central Andros	CS	32	2025-03-22 05:25:59.680434	2025-03-22 05:25:59.680434
369	East Grand Bahama	EG	32	2025-03-22 05:25:59.685288	2025-03-22 05:25:59.685288
370	Exuma	EX	32	2025-03-22 05:25:59.689971	2025-03-22 05:25:59.689971
371	City of Freeport	FP	32	2025-03-22 05:25:59.695271	2025-03-22 05:25:59.695271
372	Grand Cay	GC	32	2025-03-22 05:25:59.700373	2025-03-22 05:25:59.700373
373	Harbour Island	HI	32	2025-03-22 05:25:59.704845	2025-03-22 05:25:59.704845
374	Hope Town	HT	32	2025-03-22 05:25:59.709247	2025-03-22 05:25:59.709247
375	Inagua	IN	32	2025-03-22 05:25:59.714445	2025-03-22 05:25:59.714445
376	Long Island	LI	32	2025-03-22 05:25:59.718713	2025-03-22 05:25:59.718713
377	Mangrove Cay	MC	32	2025-03-22 05:25:59.723632	2025-03-22 05:25:59.723632
378	Mayaguana	MG	32	2025-03-22 05:25:59.728355	2025-03-22 05:25:59.728355
379	Moore's Island	MI	32	2025-03-22 05:25:59.732823	2025-03-22 05:25:59.732823
380	North Eleuthera	NE	32	2025-03-22 05:25:59.737181	2025-03-22 05:25:59.737181
381	North Abaco	NO	32	2025-03-22 05:25:59.741737	2025-03-22 05:25:59.741737
382	North Andros	NS	32	2025-03-22 05:25:59.746108	2025-03-22 05:25:59.746108
383	Rum Cay	RC	32	2025-03-22 05:25:59.75049	2025-03-22 05:25:59.75049
384	Ragged Island	RI	32	2025-03-22 05:25:59.754883	2025-03-22 05:25:59.754883
385	South Andros	SA	32	2025-03-22 05:25:59.759065	2025-03-22 05:25:59.759065
386	South Eleuthera	SE	32	2025-03-22 05:25:59.763376	2025-03-22 05:25:59.763376
387	South Abaco	SO	32	2025-03-22 05:25:59.767627	2025-03-22 05:25:59.767627
388	San Salvador	SS	32	2025-03-22 05:25:59.773573	2025-03-22 05:25:59.773573
389	Spanish Wells	SW	32	2025-03-22 05:25:59.777806	2025-03-22 05:25:59.777806
390	West Grand Bahama	WG	32	2025-03-22 05:25:59.782719	2025-03-22 05:25:59.782719
391	Paro	11	33	2025-03-22 05:25:59.787795	2025-03-22 05:25:59.787795
392	Chhukha	12	33	2025-03-22 05:25:59.792104	2025-03-22 05:25:59.792104
393	Ha	13	33	2025-03-22 05:25:59.796784	2025-03-22 05:25:59.796784
394	Samtee	14	33	2025-03-22 05:25:59.801123	2025-03-22 05:25:59.801123
395	Thimphu	15	33	2025-03-22 05:25:59.806219	2025-03-22 05:25:59.806219
396	Tsirang	21	33	2025-03-22 05:25:59.810583	2025-03-22 05:25:59.810583
397	Dagana	22	33	2025-03-22 05:25:59.815314	2025-03-22 05:25:59.815314
398	Punakha	23	33	2025-03-22 05:25:59.819861	2025-03-22 05:25:59.819861
399	Wangdue Phodrang	24	33	2025-03-22 05:25:59.82614	2025-03-22 05:25:59.82614
400	Sarpang	31	33	2025-03-22 05:25:59.830749	2025-03-22 05:25:59.830749
401	Trongsa	32	33	2025-03-22 05:25:59.835424	2025-03-22 05:25:59.835424
402	Bumthang	33	33	2025-03-22 05:25:59.839512	2025-03-22 05:25:59.839512
403	Zhemgang	34	33	2025-03-22 05:25:59.84429	2025-03-22 05:25:59.84429
404	Trashigang	41	33	2025-03-22 05:25:59.848634	2025-03-22 05:25:59.848634
405	Monggar	42	33	2025-03-22 05:25:59.853133	2025-03-22 05:25:59.853133
406	Pemagatshel	43	33	2025-03-22 05:25:59.858084	2025-03-22 05:25:59.858084
407	Lhuentse	44	33	2025-03-22 05:25:59.862283	2025-03-22 05:25:59.862283
408	Samdrup Jongkha	45	33	2025-03-22 05:25:59.866987	2025-03-22 05:25:59.866987
409	Gasa	GA	33	2025-03-22 05:25:59.872681	2025-03-22 05:25:59.872681
410	Trashi Yangtse	TY	33	2025-03-22 05:25:59.876906	2025-03-22 05:25:59.876906
411	Central	CE	35	2025-03-22 05:25:59.881002	2025-03-22 05:25:59.881002
412	Ghanzi	GH	35	2025-03-22 05:25:59.885136	2025-03-22 05:25:59.885136
413	Kgalagadi	KG	35	2025-03-22 05:25:59.889239	2025-03-22 05:25:59.889239
414	Kgatleng	KL	35	2025-03-22 05:25:59.893371	2025-03-22 05:25:59.893371
415	Kweneng	KW	35	2025-03-22 05:25:59.897513	2025-03-22 05:25:59.897513
416	North-East	NE	35	2025-03-22 05:25:59.901847	2025-03-22 05:25:59.901847
417	North-West	NW	35	2025-03-22 05:25:59.906809	2025-03-22 05:25:59.906809
418	South-East	SE	35	2025-03-22 05:25:59.911748	2025-03-22 05:25:59.911748
419	Southern	SO	35	2025-03-22 05:25:59.916273	2025-03-22 05:25:59.916273
420	Brèsckaja voblasc'	BR	36	2025-03-22 05:25:59.921174	2025-03-22 05:25:59.921174
421	Horad Minsk	HM	36	2025-03-22 05:25:59.925813	2025-03-22 05:25:59.925813
422	Homel'skaja voblasc'	HO	36	2025-03-22 05:25:59.932155	2025-03-22 05:25:59.932155
423	Hrodzenskaja voblasc'	HR	36	2025-03-22 05:25:59.936653	2025-03-22 05:25:59.936653
424	Mahilëuskaja voblasc'	MA	36	2025-03-22 05:25:59.941815	2025-03-22 05:25:59.941815
425	Minskaja voblasc'	MI	36	2025-03-22 05:25:59.94708	2025-03-22 05:25:59.94708
426	Vicebskaja voblasc'	VI	36	2025-03-22 05:25:59.951329	2025-03-22 05:25:59.951329
427	Belize	BZ	37	2025-03-22 05:25:59.956455	2025-03-22 05:25:59.956455
428	Cayo	CY	37	2025-03-22 05:25:59.96095	2025-03-22 05:25:59.96095
429	Corozal	CZL	37	2025-03-22 05:25:59.966286	2025-03-22 05:25:59.966286
430	Orange Walk	OW	37	2025-03-22 05:25:59.97074	2025-03-22 05:25:59.97074
431	Stann Creek	SC	37	2025-03-22 05:25:59.975261	2025-03-22 05:25:59.975261
432	Toledo	TOL	37	2025-03-22 05:25:59.979515	2025-03-22 05:25:59.979515
433	Alberta	AB	38	2025-03-22 05:25:59.984267	2025-03-22 05:25:59.984267
434	British Columbia	BC	38	2025-03-22 05:25:59.988683	2025-03-22 05:25:59.988683
435	Manitoba	MB	38	2025-03-22 05:25:59.993476	2025-03-22 05:25:59.993476
436	New Brunswick	NB	38	2025-03-22 05:25:59.997871	2025-03-22 05:25:59.997871
437	Newfoundland and Labrador	NL	38	2025-03-22 05:26:00.002648	2025-03-22 05:26:00.002648
438	Nova Scotia	NS	38	2025-03-22 05:26:00.007141	2025-03-22 05:26:00.007141
439	Northwest Territories	NT	38	2025-03-22 05:26:00.012308	2025-03-22 05:26:00.012308
440	Nunavut	NU	38	2025-03-22 05:26:00.017597	2025-03-22 05:26:00.017597
441	Ontario	ON	38	2025-03-22 05:26:00.02261	2025-03-22 05:26:00.02261
442	Prince Edward Island	PE	38	2025-03-22 05:26:00.027514	2025-03-22 05:26:00.027514
443	Quebec	QC	38	2025-03-22 05:26:00.031893	2025-03-22 05:26:00.031893
444	Saskatchewan	SK	38	2025-03-22 05:26:00.037793	2025-03-22 05:26:00.037793
445	Yukon Territory	YT	38	2025-03-22 05:26:00.043849	2025-03-22 05:26:00.043849
446	Bas-Congo	BC	40	2025-03-22 05:26:00.047929	2025-03-22 05:26:00.047929
447	Bandundu	BN	40	2025-03-22 05:26:00.051974	2025-03-22 05:26:00.051974
448	Équateur	EQ	40	2025-03-22 05:26:00.057	2025-03-22 05:26:00.057
449	Katanga	KA	40	2025-03-22 05:26:00.06147	2025-03-22 05:26:00.06147
450	Kasai-Oriental	KE	40	2025-03-22 05:26:00.066019	2025-03-22 05:26:00.066019
451	Kinshasa	KN	40	2025-03-22 05:26:00.070769	2025-03-22 05:26:00.070769
452	Kasai-Occidental	KW	40	2025-03-22 05:26:00.075236	2025-03-22 05:26:00.075236
453	Maniema	MA	40	2025-03-22 05:26:00.079477	2025-03-22 05:26:00.079477
454	Nord-Kivu	NK	40	2025-03-22 05:26:00.08396	2025-03-22 05:26:00.08396
455	Orientale	OR	40	2025-03-22 05:26:00.090116	2025-03-22 05:26:00.090116
456	Sud-Kivu	SK	40	2025-03-22 05:26:00.095997	2025-03-22 05:26:00.095997
457	Ouham	AC	41	2025-03-22 05:26:00.100326	2025-03-22 05:26:00.100326
458	Bamingui-Bangoran	BB	41	2025-03-22 05:26:00.105639	2025-03-22 05:26:00.105639
459	Bangui	BGF	41	2025-03-22 05:26:00.110573	2025-03-22 05:26:00.110573
460	Basse-Kotto	BK	41	2025-03-22 05:26:00.115953	2025-03-22 05:26:00.115953
461	Haute-Kotto	HK	41	2025-03-22 05:26:00.120891	2025-03-22 05:26:00.120891
462	Haut-Mbomou	HM	41	2025-03-22 05:26:00.125958	2025-03-22 05:26:00.125958
463	Haute-Sangha / Mambéré-Kadéï	HS	41	2025-03-22 05:26:00.130454	2025-03-22 05:26:00.130454
464	Gribingui	KB	41	2025-03-22 05:26:00.135339	2025-03-22 05:26:00.135339
465	Kémo-Gribingui	KG	41	2025-03-22 05:26:00.140467	2025-03-22 05:26:00.140467
466	Lobaye	LB	41	2025-03-22 05:26:00.144931	2025-03-22 05:26:00.144931
467	Mbomou	MB	41	2025-03-22 05:26:00.149556	2025-03-22 05:26:00.149556
468	Ombella-M'poko	MP	41	2025-03-22 05:26:00.154561	2025-03-22 05:26:00.154561
469	Nana-Mambéré	NM	41	2025-03-22 05:26:00.159591	2025-03-22 05:26:00.159591
470	Ouham-Pendé	OP	41	2025-03-22 05:26:00.163907	2025-03-22 05:26:00.163907
471	Sangha	SE	41	2025-03-22 05:26:00.169301	2025-03-22 05:26:00.169301
472	Ouaka	UK	41	2025-03-22 05:26:00.173982	2025-03-22 05:26:00.173982
473	Vakaga	VK	41	2025-03-22 05:26:00.178379	2025-03-22 05:26:00.178379
474	Bouenza	11	42	2025-03-22 05:26:00.182944	2025-03-22 05:26:00.182944
475	Pool	12	42	2025-03-22 05:26:00.187542	2025-03-22 05:26:00.187542
476	Sangha	13	42	2025-03-22 05:26:00.192049	2025-03-22 05:26:00.192049
477	Plateaux	14	42	2025-03-22 05:26:00.196589	2025-03-22 05:26:00.196589
478	Cuvette-Ouest	15	42	2025-03-22 05:26:00.201918	2025-03-22 05:26:00.201918
479	Lékoumou	2	42	2025-03-22 05:26:00.206615	2025-03-22 05:26:00.206615
480	Kouilou	5	42	2025-03-22 05:26:00.211012	2025-03-22 05:26:00.211012
481	Likouala	7	42	2025-03-22 05:26:00.215327	2025-03-22 05:26:00.215327
482	Cuvette	8	42	2025-03-22 05:26:00.219871	2025-03-22 05:26:00.219871
483	Niari	9	42	2025-03-22 05:26:00.224216	2025-03-22 05:26:00.224216
484	Brazzaville	BZV	42	2025-03-22 05:26:00.228304	2025-03-22 05:26:00.228304
485	Aargau	AG	43	2025-03-22 05:26:00.232743	2025-03-22 05:26:00.232743
486	Appenzell Innerrhoden	AI	43	2025-03-22 05:26:00.236865	2025-03-22 05:26:00.236865
487	Appenzell Ausserrhoden	AR	43	2025-03-22 05:26:00.240942	2025-03-22 05:26:00.240942
488	Bern	BE	43	2025-03-22 05:26:00.245125	2025-03-22 05:26:00.245125
489	Basel-Landschaft	BL	43	2025-03-22 05:26:00.24915	2025-03-22 05:26:00.24915
490	Basel-Stadt	BS	43	2025-03-22 05:26:00.253455	2025-03-22 05:26:00.253455
491	Fribourg	FR	43	2025-03-22 05:26:00.259152	2025-03-22 05:26:00.259152
492	Genève	GE	43	2025-03-22 05:26:00.26438	2025-03-22 05:26:00.26438
493	Glarus	GL	43	2025-03-22 05:26:00.268681	2025-03-22 05:26:00.268681
494	Graubünden	GR	43	2025-03-22 05:26:00.273648	2025-03-22 05:26:00.273648
495	Jura	JU	43	2025-03-22 05:26:00.277943	2025-03-22 05:26:00.277943
496	Luzern	LU	43	2025-03-22 05:26:00.282737	2025-03-22 05:26:00.282737
497	Neuchâtel	NE	43	2025-03-22 05:26:00.286978	2025-03-22 05:26:00.286978
498	Nidwalden	NW	43	2025-03-22 05:26:00.291737	2025-03-22 05:26:00.291737
499	Obwalden	OW	43	2025-03-22 05:26:00.297132	2025-03-22 05:26:00.297132
500	Sankt Gallen	SG	43	2025-03-22 05:26:00.303183	2025-03-22 05:26:00.303183
501	Schaffhausen	SH	43	2025-03-22 05:26:00.307648	2025-03-22 05:26:00.307648
502	Solothurn	SO	43	2025-03-22 05:26:00.312794	2025-03-22 05:26:00.312794
503	Schwyz	SZ	43	2025-03-22 05:26:00.316949	2025-03-22 05:26:00.316949
504	Thurgau	TG	43	2025-03-22 05:26:00.322009	2025-03-22 05:26:00.322009
505	Ticino	TI	43	2025-03-22 05:26:00.327217	2025-03-22 05:26:00.327217
506	Uri	UR	43	2025-03-22 05:26:00.331355	2025-03-22 05:26:00.331355
507	Vaud	VD	43	2025-03-22 05:26:00.335562	2025-03-22 05:26:00.335562
508	Valais	VS	43	2025-03-22 05:26:00.340187	2025-03-22 05:26:00.340187
509	Zug	ZG	43	2025-03-22 05:26:00.344772	2025-03-22 05:26:00.344772
510	Zürich	ZH	43	2025-03-22 05:26:00.348832	2025-03-22 05:26:00.348832
511	Lagunes (Région des)	01	44	2025-03-22 05:26:00.353215	2025-03-22 05:26:00.353215
512	Haut-Sassandra (Région du)	02	44	2025-03-22 05:26:00.357992	2025-03-22 05:26:00.357992
513	Savanes (Région des)	03	44	2025-03-22 05:26:00.36228	2025-03-22 05:26:00.36228
514	Vallée du Bandama (Région de la)	04	44	2025-03-22 05:26:00.367972	2025-03-22 05:26:00.367972
515	Moyen-Comoé (Région du)	05	44	2025-03-22 05:26:00.373457	2025-03-22 05:26:00.373457
516	18 Montagnes (Région des)	06	44	2025-03-22 05:26:00.377925	2025-03-22 05:26:00.377925
517	Lacs (Région des)	07	44	2025-03-22 05:26:00.382109	2025-03-22 05:26:00.382109
518	Zanzan (Région du)	08	44	2025-03-22 05:26:00.386778	2025-03-22 05:26:00.386778
519	Bas-Sassandra (Région du)	09	44	2025-03-22 05:26:00.391188	2025-03-22 05:26:00.391188
520	Denguélé (Région du)	10	44	2025-03-22 05:26:00.395295	2025-03-22 05:26:00.395295
521	Nzi-Comoé (Région)	11	44	2025-03-22 05:26:00.400179	2025-03-22 05:26:00.400179
522	Marahoué (Région de la)	12	44	2025-03-22 05:26:00.405239	2025-03-22 05:26:00.405239
523	Sud-Comoé (Région du)	13	44	2025-03-22 05:26:00.409597	2025-03-22 05:26:00.409597
524	Worodouqou (Région du)	14	44	2025-03-22 05:26:00.41382	2025-03-22 05:26:00.41382
525	Sud-Bandama (Région du)	15	44	2025-03-22 05:26:00.41972	2025-03-22 05:26:00.41972
526	Agnébi (Région de l')	16	44	2025-03-22 05:26:00.424677	2025-03-22 05:26:00.424677
527	Bafing (Région du)	17	44	2025-03-22 05:26:00.429478	2025-03-22 05:26:00.429478
528	Fromager (Région du)	18	44	2025-03-22 05:26:00.434184	2025-03-22 05:26:00.434184
529	Moyen-Cavally (Région du)	19	44	2025-03-22 05:26:00.440495	2025-03-22 05:26:00.440495
530	Aisén del General Carlos Ibáñez del Campo	AI	46	2025-03-22 05:26:00.448455	2025-03-22 05:26:00.448455
531	Antofagasta	AN	46	2025-03-22 05:26:00.45992	2025-03-22 05:26:00.45992
532	Arica y Parinacota	AP	46	2025-03-22 05:26:00.473215	2025-03-22 05:26:00.473215
533	Araucanía	AR	46	2025-03-22 05:26:00.478555	2025-03-22 05:26:00.478555
534	Atacama	AT	46	2025-03-22 05:26:00.48348	2025-03-22 05:26:00.48348
535	Bío-Bío	BI	46	2025-03-22 05:26:00.487517	2025-03-22 05:26:00.487517
536	Coquimbo	CO	46	2025-03-22 05:26:00.492052	2025-03-22 05:26:00.492052
537	Libertador General Bernardo O'Higgins	LI	46	2025-03-22 05:26:00.496228	2025-03-22 05:26:00.496228
538	Los Lagos	LL	46	2025-03-22 05:26:00.500936	2025-03-22 05:26:00.500936
539	Los Ríos	LR	46	2025-03-22 05:26:00.505549	2025-03-22 05:26:00.505549
540	Magallanes y Antártica Chilena	MA	46	2025-03-22 05:26:00.509653	2025-03-22 05:26:00.509653
541	Maule	ML	46	2025-03-22 05:26:00.513985	2025-03-22 05:26:00.513985
542	Región Metropolitana de Santiago	RM	46	2025-03-22 05:26:00.518569	2025-03-22 05:26:00.518569
543	Tarapacá	TA	46	2025-03-22 05:26:00.52336	2025-03-22 05:26:00.52336
544	Valparaíso	VS	46	2025-03-22 05:26:00.527803	2025-03-22 05:26:00.527803
545	Adamaoua	AD	47	2025-03-22 05:26:00.532137	2025-03-22 05:26:00.532137
546	Centre	CE	47	2025-03-22 05:26:00.536252	2025-03-22 05:26:00.536252
547	Far North	EN	47	2025-03-22 05:26:00.5411	2025-03-22 05:26:00.5411
548	East	ES	47	2025-03-22 05:26:00.545301	2025-03-22 05:26:00.545301
549	Littoral	LT	47	2025-03-22 05:26:00.549496	2025-03-22 05:26:00.549496
550	North	NO	47	2025-03-22 05:26:00.553693	2025-03-22 05:26:00.553693
551	North-West (Cameroon)	NW	47	2025-03-22 05:26:00.55783	2025-03-22 05:26:00.55783
552	West	OU	47	2025-03-22 05:26:00.562144	2025-03-22 05:26:00.562144
553	South	SU	47	2025-03-22 05:26:00.566676	2025-03-22 05:26:00.566676
554	South-West	SW	47	2025-03-22 05:26:00.570977	2025-03-22 05:26:00.570977
555	Anhui Sheng	AH	48	2025-03-22 05:26:00.575237	2025-03-22 05:26:00.575237
556	Beijing Shi	BJ	48	2025-03-22 05:26:00.579681	2025-03-22 05:26:00.579681
557	Chongqing Shi	CQ	48	2025-03-22 05:26:00.583979	2025-03-22 05:26:00.583979
558	Fujian Sheng	FJ	48	2025-03-22 05:26:00.588152	2025-03-22 05:26:00.588152
559	Guangdong Sheng	GD	48	2025-03-22 05:26:00.593931	2025-03-22 05:26:00.593931
560	Gansu Sheng	GS	48	2025-03-22 05:26:00.598188	2025-03-22 05:26:00.598188
561	Guangxi Zhuangzu Zizhiqu	GX	48	2025-03-22 05:26:00.60306	2025-03-22 05:26:00.60306
562	Guizhou Sheng	GZ	48	2025-03-22 05:26:00.60721	2025-03-22 05:26:00.60721
563	Henan Sheng	HA	48	2025-03-22 05:26:00.611944	2025-03-22 05:26:00.611944
564	Hubei Sheng	HB	48	2025-03-22 05:26:00.616181	2025-03-22 05:26:00.616181
565	Hebei Sheng	HE	48	2025-03-22 05:26:00.62107	2025-03-22 05:26:00.62107
566	Hainan Sheng	HI	48	2025-03-22 05:26:00.626318	2025-03-22 05:26:00.626318
567	Hong Kong SAR (see also separate country code entry under HK)	HK	48	2025-03-22 05:26:00.631575	2025-03-22 05:26:00.631575
568	Heilongjiang Sheng	HL	48	2025-03-22 05:26:00.636673	2025-03-22 05:26:00.636673
569	Hunan Sheng	HN	48	2025-03-22 05:26:00.64087	2025-03-22 05:26:00.64087
570	Jilin Sheng	JL	48	2025-03-22 05:26:00.645584	2025-03-22 05:26:00.645584
571	Jiangsu Sheng	JS	48	2025-03-22 05:26:00.649705	2025-03-22 05:26:00.649705
572	Jiangxi Sheng	JX	48	2025-03-22 05:26:00.654313	2025-03-22 05:26:00.654313
573	Liaoning Sheng	LN	48	2025-03-22 05:26:00.658355	2025-03-22 05:26:00.658355
574	Macao SAR (see also separate country code entry under MO)	MO	48	2025-03-22 05:26:00.663175	2025-03-22 05:26:00.663175
575	Nei Mongol Zizhiqu	NM	48	2025-03-22 05:26:00.667339	2025-03-22 05:26:00.667339
576	Ningxia Huizi Zizhiqu	NX	48	2025-03-22 05:26:00.671842	2025-03-22 05:26:00.671842
577	Qinghai Sheng	QH	48	2025-03-22 05:26:00.676876	2025-03-22 05:26:00.676876
578	Sichuan Sheng	SC	48	2025-03-22 05:26:00.681504	2025-03-22 05:26:00.681504
579	Shandong Sheng	SD	48	2025-03-22 05:26:00.686225	2025-03-22 05:26:00.686225
580	Shanghai Shi	SH	48	2025-03-22 05:26:00.691414	2025-03-22 05:26:00.691414
695	Saint David	03	60	2025-03-22 05:26:01.478233	2025-03-22 05:26:01.478233
581	Shaanxi Sheng	SN	48	2025-03-22 05:26:00.697015	2025-03-22 05:26:00.697015
582	Shanxi Sheng	SX	48	2025-03-22 05:26:00.701497	2025-03-22 05:26:00.701497
583	Tianjin Shi	TJ	48	2025-03-22 05:26:00.70594	2025-03-22 05:26:00.70594
584	Taiwan Sheng (see also separate country code entry under TW)	TW	48	2025-03-22 05:26:00.710085	2025-03-22 05:26:00.710085
585	Xinjiang Uygur Zizhiqu	XJ	48	2025-03-22 05:26:00.714186	2025-03-22 05:26:00.714186
586	Xizang Zizhiqu	XZ	48	2025-03-22 05:26:00.718306	2025-03-22 05:26:00.718306
587	Yunnan Sheng	YN	48	2025-03-22 05:26:00.723487	2025-03-22 05:26:00.723487
588	Zhejiang Sheng	ZJ	48	2025-03-22 05:26:00.727804	2025-03-22 05:26:00.727804
589	Amazonas	AMA	49	2025-03-22 05:26:00.732159	2025-03-22 05:26:00.732159
590	Antioquia	ANT	49	2025-03-22 05:26:00.73695	2025-03-22 05:26:00.73695
591	Arauca	ARA	49	2025-03-22 05:26:00.741981	2025-03-22 05:26:00.741981
592	Atlántico	ATL	49	2025-03-22 05:26:00.746787	2025-03-22 05:26:00.746787
593	Bolívar	BOL	49	2025-03-22 05:26:00.752512	2025-03-22 05:26:00.752512
594	Boyacá	BOY	49	2025-03-22 05:26:00.757683	2025-03-22 05:26:00.757683
595	Caldas	CAL	49	2025-03-22 05:26:00.764512	2025-03-22 05:26:00.764512
596	Caquetá	CAQ	49	2025-03-22 05:26:00.769838	2025-03-22 05:26:00.769838
597	Casanare	CAS	49	2025-03-22 05:26:00.776112	2025-03-22 05:26:00.776112
598	Cauca	CAU	49	2025-03-22 05:26:00.783717	2025-03-22 05:26:00.783717
599	Cesar	CES	49	2025-03-22 05:26:00.794706	2025-03-22 05:26:00.794706
600	Chocó	CHO	49	2025-03-22 05:26:00.804029	2025-03-22 05:26:00.804029
601	Córdoba	COR	49	2025-03-22 05:26:00.809879	2025-03-22 05:26:00.809879
602	Cundinamarca	CUN	49	2025-03-22 05:26:00.815288	2025-03-22 05:26:00.815288
603	Distrito Capital de Bogotá	DC	49	2025-03-22 05:26:00.822332	2025-03-22 05:26:00.822332
604	Guainía	GUA	49	2025-03-22 05:26:00.828814	2025-03-22 05:26:00.828814
605	Guaviare	GUV	49	2025-03-22 05:26:00.833924	2025-03-22 05:26:00.833924
606	Huila	HUI	49	2025-03-22 05:26:00.841324	2025-03-22 05:26:00.841324
607	La Guajira	LAG	49	2025-03-22 05:26:00.848275	2025-03-22 05:26:00.848275
608	Magdalena	MAG	49	2025-03-22 05:26:00.854956	2025-03-22 05:26:00.854956
609	Meta	MET	49	2025-03-22 05:26:00.859658	2025-03-22 05:26:00.859658
610	Nariño	NAR	49	2025-03-22 05:26:00.865108	2025-03-22 05:26:00.865108
611	Norte de Santander	NSA	49	2025-03-22 05:26:00.871595	2025-03-22 05:26:00.871595
612	Putumayo	PUT	49	2025-03-22 05:26:00.877442	2025-03-22 05:26:00.877442
613	Quindío	QUI	49	2025-03-22 05:26:00.882761	2025-03-22 05:26:00.882761
614	Risaralda	RIS	49	2025-03-22 05:26:00.889385	2025-03-22 05:26:00.889385
615	Santander	SAN	49	2025-03-22 05:26:00.896114	2025-03-22 05:26:00.896114
616	San Andrés, Providencia y Santa Catalina	SAP	49	2025-03-22 05:26:00.901479	2025-03-22 05:26:00.901479
617	Sucre	SUC	49	2025-03-22 05:26:00.907222	2025-03-22 05:26:00.907222
618	Tolima	TOL	49	2025-03-22 05:26:00.91283	2025-03-22 05:26:00.91283
619	Valle del Cauca	VAC	49	2025-03-22 05:26:00.918202	2025-03-22 05:26:00.918202
620	Vaupés	VAU	49	2025-03-22 05:26:00.924919	2025-03-22 05:26:00.924919
621	Vichada	VID	49	2025-03-22 05:26:00.930037	2025-03-22 05:26:00.930037
622	Alajuela	A	50	2025-03-22 05:26:00.93513	2025-03-22 05:26:00.93513
623	Cartago	C	50	2025-03-22 05:26:00.941352	2025-03-22 05:26:00.941352
624	Guanacaste	G	50	2025-03-22 05:26:00.947489	2025-03-22 05:26:00.947489
625	Heredia	H	50	2025-03-22 05:26:00.954493	2025-03-22 05:26:00.954493
626	Limón	L	50	2025-03-22 05:26:00.96031	2025-03-22 05:26:00.96031
627	Puntarenas	P	50	2025-03-22 05:26:00.965819	2025-03-22 05:26:00.965819
628	San José	SJ	50	2025-03-22 05:26:00.973982	2025-03-22 05:26:00.973982
629	Pinar del Rio	01	51	2025-03-22 05:26:00.979936	2025-03-22 05:26:00.979936
630	La Habana	02	51	2025-03-22 05:26:00.98574	2025-03-22 05:26:00.98574
631	Ciudad de La Habana	03	51	2025-03-22 05:26:00.993341	2025-03-22 05:26:00.993341
632	Matanzas	04	51	2025-03-22 05:26:00.998883	2025-03-22 05:26:00.998883
633	Villa Clara	05	51	2025-03-22 05:26:01.005067	2025-03-22 05:26:01.005067
634	Cienfuegos	06	51	2025-03-22 05:26:01.01046	2025-03-22 05:26:01.01046
635	Sancti Spíritus	07	51	2025-03-22 05:26:01.016726	2025-03-22 05:26:01.016726
636	Ciego de Ávila	08	51	2025-03-22 05:26:01.023706	2025-03-22 05:26:01.023706
637	Camagüey	09	51	2025-03-22 05:26:01.030835	2025-03-22 05:26:01.030835
638	Las Tunas	10	51	2025-03-22 05:26:01.036715	2025-03-22 05:26:01.036715
639	Holguín	11	51	2025-03-22 05:26:01.04279	2025-03-22 05:26:01.04279
640	Granma	12	51	2025-03-22 05:26:01.048504	2025-03-22 05:26:01.048504
641	Santiago de Cuba	13	51	2025-03-22 05:26:01.054523	2025-03-22 05:26:01.054523
642	Guantánamo	14	51	2025-03-22 05:26:01.060477	2025-03-22 05:26:01.060477
643	Isla de la Juventud	99	51	2025-03-22 05:26:01.065808	2025-03-22 05:26:01.065808
644	Ilhas de Barlavento	B	52	2025-03-22 05:26:01.072929	2025-03-22 05:26:01.072929
645	Ilhas de Sotavento	S	52	2025-03-22 05:26:01.079276	2025-03-22 05:26:01.079276
646	Lefkosía	01	55	2025-03-22 05:26:01.085599	2025-03-22 05:26:01.085599
647	Lemesós	02	55	2025-03-22 05:26:01.113508	2025-03-22 05:26:01.113508
648	Lárnaka	03	55	2025-03-22 05:26:01.12554	2025-03-22 05:26:01.12554
649	Ammóchostos	04	55	2025-03-22 05:26:01.132213	2025-03-22 05:26:01.132213
650	Páfos	05	55	2025-03-22 05:26:01.137367	2025-03-22 05:26:01.137367
651	Kerýneia	06	55	2025-03-22 05:26:01.142097	2025-03-22 05:26:01.142097
652	Praha, Hlavní mešto	10	56	2025-03-22 05:26:01.146964	2025-03-22 05:26:01.146964
653	Středočeský kraj	20	56	2025-03-22 05:26:01.151828	2025-03-22 05:26:01.151828
654	Jihočeský kraj	31	56	2025-03-22 05:26:01.156677	2025-03-22 05:26:01.156677
655	Plzeňský kraj	32	56	2025-03-22 05:26:01.161914	2025-03-22 05:26:01.161914
656	Karlovarský kraj	41	56	2025-03-22 05:26:01.166824	2025-03-22 05:26:01.166824
657	Ústecký kraj	42	56	2025-03-22 05:26:01.171464	2025-03-22 05:26:01.171464
658	Liberecký kraj	51	56	2025-03-22 05:26:01.175917	2025-03-22 05:26:01.175917
659	Královéhradecký kraj	52	56	2025-03-22 05:26:01.181321	2025-03-22 05:26:01.181321
660	Pardubický kraj	53	56	2025-03-22 05:26:01.187267	2025-03-22 05:26:01.187267
661	Kraj Vysočina	63	56	2025-03-22 05:26:01.193054	2025-03-22 05:26:01.193054
662	Jihomoravský kraj	64	56	2025-03-22 05:26:01.200619	2025-03-22 05:26:01.200619
663	Olomoucký kraj	71	56	2025-03-22 05:26:01.206211	2025-03-22 05:26:01.206211
664	Zlínský kraj	72	56	2025-03-22 05:26:01.213047	2025-03-22 05:26:01.213047
665	Moravskoslezský kraj	80	56	2025-03-22 05:26:01.21829	2025-03-22 05:26:01.21829
666	Brandenburg	BB	57	2025-03-22 05:26:01.224345	2025-03-22 05:26:01.224345
667	Berlin	BE	57	2025-03-22 05:26:01.23279	2025-03-22 05:26:01.23279
668	Baden-Württemberg	BW	57	2025-03-22 05:26:01.241691	2025-03-22 05:26:01.241691
669	Bayern	BY	57	2025-03-22 05:26:01.255636	2025-03-22 05:26:01.255636
670	Bremen	HB	57	2025-03-22 05:26:01.265236	2025-03-22 05:26:01.265236
671	Hessen	HE	57	2025-03-22 05:26:01.274619	2025-03-22 05:26:01.274619
672	Hamburg	HH	57	2025-03-22 05:26:01.282856	2025-03-22 05:26:01.282856
673	Mecklenburg-Vorpommern	MV	57	2025-03-22 05:26:01.292655	2025-03-22 05:26:01.292655
674	Niedersachsen	NI	57	2025-03-22 05:26:01.301163	2025-03-22 05:26:01.301163
675	Nordrhein-Westfalen	NW	57	2025-03-22 05:26:01.310612	2025-03-22 05:26:01.310612
676	Rheinland-Pfalz	RP	57	2025-03-22 05:26:01.319634	2025-03-22 05:26:01.319634
677	Schleswig-Holstein	SH	57	2025-03-22 05:26:01.327862	2025-03-22 05:26:01.327862
678	Saarland	SL	57	2025-03-22 05:26:01.336732	2025-03-22 05:26:01.336732
679	Sachsen	SN	57	2025-03-22 05:26:01.344858	2025-03-22 05:26:01.344858
680	Sachsen-Anhalt	ST	57	2025-03-22 05:26:01.353256	2025-03-22 05:26:01.353256
681	Thüringen	TH	57	2025-03-22 05:26:01.361271	2025-03-22 05:26:01.361271
682	Arta	AR	58	2025-03-22 05:26:01.370992	2025-03-22 05:26:01.370992
683	Ali Sabieh	AS	58	2025-03-22 05:26:01.379269	2025-03-22 05:26:01.379269
684	Dikhil	DI	58	2025-03-22 05:26:01.388932	2025-03-22 05:26:01.388932
685	Djibouti	DJ	58	2025-03-22 05:26:01.397602	2025-03-22 05:26:01.397602
686	Obock	OB	58	2025-03-22 05:26:01.406204	2025-03-22 05:26:01.406204
687	Tadjourah	TA	58	2025-03-22 05:26:01.414678	2025-03-22 05:26:01.414678
688	Nordjylland	81	59	2025-03-22 05:26:01.423089	2025-03-22 05:26:01.423089
689	Midtjylland	82	59	2025-03-22 05:26:01.431453	2025-03-22 05:26:01.431453
690	Syddanmark	83	59	2025-03-22 05:26:01.43969	2025-03-22 05:26:01.43969
691	Hovedstaden	84	59	2025-03-22 05:26:01.446514	2025-03-22 05:26:01.446514
692	Sjælland	85	59	2025-03-22 05:26:01.45279	2025-03-22 05:26:01.45279
693	Saint Peter	01	60	2025-03-22 05:26:01.459749	2025-03-22 05:26:01.459749
694	Saint Andrew	02	60	2025-03-22 05:26:01.469161	2025-03-22 05:26:01.469161
696	Saint George	04	60	2025-03-22 05:26:01.49001	2025-03-22 05:26:01.49001
697	Saint John	05	60	2025-03-22 05:26:01.496216	2025-03-22 05:26:01.496216
698	Saint Joseph	06	60	2025-03-22 05:26:01.502096	2025-03-22 05:26:01.502096
699	Saint Luke	07	60	2025-03-22 05:26:01.506929	2025-03-22 05:26:01.506929
700	Saint Mark	08	60	2025-03-22 05:26:01.512292	2025-03-22 05:26:01.512292
701	Saint Patrick	09	60	2025-03-22 05:26:01.516962	2025-03-22 05:26:01.516962
702	Saint Paul	10	60	2025-03-22 05:26:01.522255	2025-03-22 05:26:01.522255
703	Distrito Nacional (Santo Domingo)	01	61	2025-03-22 05:26:01.527715	2025-03-22 05:26:01.527715
704	Azua	02	61	2025-03-22 05:26:01.533393	2025-03-22 05:26:01.533393
705	Bahoruco	03	61	2025-03-22 05:26:01.539447	2025-03-22 05:26:01.539447
706	Barahona	04	61	2025-03-22 05:26:01.544241	2025-03-22 05:26:01.544241
707	Dajabón	05	61	2025-03-22 05:26:01.54985	2025-03-22 05:26:01.54985
708	Duarte	06	61	2025-03-22 05:26:01.554938	2025-03-22 05:26:01.554938
709	La Estrelleta [Elías Piña]	07	61	2025-03-22 05:26:01.560295	2025-03-22 05:26:01.560295
710	El Seybo [El Seibo]	08	61	2025-03-22 05:26:01.56562	2025-03-22 05:26:01.56562
711	Espaillat	09	61	2025-03-22 05:26:01.571191	2025-03-22 05:26:01.571191
712	Independencia	10	61	2025-03-22 05:26:01.576003	2025-03-22 05:26:01.576003
713	La Altagracia	11	61	2025-03-22 05:26:01.582125	2025-03-22 05:26:01.582125
714	La Romana	12	61	2025-03-22 05:26:01.587754	2025-03-22 05:26:01.587754
715	La Vega	13	61	2025-03-22 05:26:01.593176	2025-03-22 05:26:01.593176
716	María Trinidad Sánchez	14	61	2025-03-22 05:26:01.598272	2025-03-22 05:26:01.598272
717	Monte Cristi	15	61	2025-03-22 05:26:01.603436	2025-03-22 05:26:01.603436
718	Pedernales	16	61	2025-03-22 05:26:01.609197	2025-03-22 05:26:01.609197
719	Peravia	17	61	2025-03-22 05:26:01.614375	2025-03-22 05:26:01.614375
720	Puerto Plata	18	61	2025-03-22 05:26:01.619471	2025-03-22 05:26:01.619471
721	Salcedo	19	61	2025-03-22 05:26:01.624429	2025-03-22 05:26:01.624429
722	Samaná	20	61	2025-03-22 05:26:01.629807	2025-03-22 05:26:01.629807
723	San Cristóbal	21	61	2025-03-22 05:26:01.63505	2025-03-22 05:26:01.63505
724	San Juan	22	61	2025-03-22 05:26:01.640519	2025-03-22 05:26:01.640519
725	San Pedro de Macorís	23	61	2025-03-22 05:26:01.64595	2025-03-22 05:26:01.64595
726	Sánchez Ramírez	24	61	2025-03-22 05:26:01.650874	2025-03-22 05:26:01.650874
727	Santiago	25	61	2025-03-22 05:26:01.65621	2025-03-22 05:26:01.65621
728	Santiago Rodríguez	26	61	2025-03-22 05:26:01.661699	2025-03-22 05:26:01.661699
729	Valverde	27	61	2025-03-22 05:26:01.666575	2025-03-22 05:26:01.666575
730	Monseñor Nouel	28	61	2025-03-22 05:26:01.673159	2025-03-22 05:26:01.673159
731	Monte Plata	29	61	2025-03-22 05:26:01.678766	2025-03-22 05:26:01.678766
732	Hato Mayor	30	61	2025-03-22 05:26:01.684762	2025-03-22 05:26:01.684762
733	Adrar	01	62	2025-03-22 05:26:01.690034	2025-03-22 05:26:01.690034
734	Chlef	02	62	2025-03-22 05:26:01.696351	2025-03-22 05:26:01.696351
735	Laghouat	03	62	2025-03-22 05:26:01.701563	2025-03-22 05:26:01.701563
736	Oum el Bouaghi	04	62	2025-03-22 05:26:01.707279	2025-03-22 05:26:01.707279
737	Batna	05	62	2025-03-22 05:26:01.712326	2025-03-22 05:26:01.712326
738	Béjaïa	06	62	2025-03-22 05:26:01.71764	2025-03-22 05:26:01.71764
739	Biskra	07	62	2025-03-22 05:26:01.723437	2025-03-22 05:26:01.723437
740	Béchar	08	62	2025-03-22 05:26:01.728694	2025-03-22 05:26:01.728694
741	Blida	09	62	2025-03-22 05:26:01.733693	2025-03-22 05:26:01.733693
742	Bouira	10	62	2025-03-22 05:26:01.739691	2025-03-22 05:26:01.739691
743	Tamanghasset	11	62	2025-03-22 05:26:01.74495	2025-03-22 05:26:01.74495
744	Tébessa	12	62	2025-03-22 05:26:01.75096	2025-03-22 05:26:01.75096
745	Tlemcen	13	62	2025-03-22 05:26:01.759447	2025-03-22 05:26:01.759447
746	Tiaret	14	62	2025-03-22 05:26:01.76499	2025-03-22 05:26:01.76499
747	Tizi Ouzou	15	62	2025-03-22 05:26:01.770291	2025-03-22 05:26:01.770291
748	Alger	16	62	2025-03-22 05:26:01.775523	2025-03-22 05:26:01.775523
749	Djelfa	17	62	2025-03-22 05:26:01.780162	2025-03-22 05:26:01.780162
750	Jijel	18	62	2025-03-22 05:26:01.78474	2025-03-22 05:26:01.78474
751	Sétif	19	62	2025-03-22 05:26:01.790127	2025-03-22 05:26:01.790127
752	Saïda	20	62	2025-03-22 05:26:01.795057	2025-03-22 05:26:01.795057
753	Skikda	21	62	2025-03-22 05:26:01.799447	2025-03-22 05:26:01.799447
754	Sidi Bel Abbès	22	62	2025-03-22 05:26:01.804126	2025-03-22 05:26:01.804126
755	Annaba	23	62	2025-03-22 05:26:01.808605	2025-03-22 05:26:01.808605
756	Guelma	24	62	2025-03-22 05:26:01.813018	2025-03-22 05:26:01.813018
757	Constantine	25	62	2025-03-22 05:26:01.81727	2025-03-22 05:26:01.81727
758	Médéa	26	62	2025-03-22 05:26:01.822507	2025-03-22 05:26:01.822507
759	Mostaganem	27	62	2025-03-22 05:26:01.82674	2025-03-22 05:26:01.82674
760	Msila	28	62	2025-03-22 05:26:01.831126	2025-03-22 05:26:01.831126
761	Mascara	29	62	2025-03-22 05:26:01.83528	2025-03-22 05:26:01.83528
762	Ouargla	30	62	2025-03-22 05:26:01.840439	2025-03-22 05:26:01.840439
763	Oran	31	62	2025-03-22 05:26:01.844576	2025-03-22 05:26:01.844576
764	El Bayadh	32	62	2025-03-22 05:26:01.848497	2025-03-22 05:26:01.848497
765	Illizi	33	62	2025-03-22 05:26:01.854985	2025-03-22 05:26:01.854985
766	Bordj Bou Arréridj	34	62	2025-03-22 05:26:01.859114	2025-03-22 05:26:01.859114
767	Boumerdès	35	62	2025-03-22 05:26:01.863951	2025-03-22 05:26:01.863951
768	El Tarf	36	62	2025-03-22 05:26:01.869346	2025-03-22 05:26:01.869346
769	Tindouf	37	62	2025-03-22 05:26:01.874587	2025-03-22 05:26:01.874587
770	Tissemsilt	38	62	2025-03-22 05:26:01.879544	2025-03-22 05:26:01.879544
771	El Oued	39	62	2025-03-22 05:26:01.884593	2025-03-22 05:26:01.884593
772	Khenchela	40	62	2025-03-22 05:26:01.890248	2025-03-22 05:26:01.890248
773	Souk Ahras	41	62	2025-03-22 05:26:01.894569	2025-03-22 05:26:01.894569
774	Tipaza	42	62	2025-03-22 05:26:01.899325	2025-03-22 05:26:01.899325
775	Mila	43	62	2025-03-22 05:26:01.904077	2025-03-22 05:26:01.904077
776	Aïn Defla	44	62	2025-03-22 05:26:01.908714	2025-03-22 05:26:01.908714
777	Naama	45	62	2025-03-22 05:26:01.912711	2025-03-22 05:26:01.912711
778	Aïn Témouchent	46	62	2025-03-22 05:26:01.917216	2025-03-22 05:26:01.917216
779	Ghardaïa	47	62	2025-03-22 05:26:01.921375	2025-03-22 05:26:01.921375
780	Relizane	48	62	2025-03-22 05:26:01.925724	2025-03-22 05:26:01.925724
781	Azuay	A	63	2025-03-22 05:26:01.929947	2025-03-22 05:26:01.929947
782	Bolívar	B	63	2025-03-22 05:26:01.934161	2025-03-22 05:26:01.934161
783	Carchi	C	63	2025-03-22 05:26:01.938438	2025-03-22 05:26:01.938438
784	Orellana	D	63	2025-03-22 05:26:01.94246	2025-03-22 05:26:01.94246
785	Esmeraldas	E	63	2025-03-22 05:26:01.947029	2025-03-22 05:26:01.947029
786	Cañar	F	63	2025-03-22 05:26:01.951763	2025-03-22 05:26:01.951763
787	Guayas	G	63	2025-03-22 05:26:01.955653	2025-03-22 05:26:01.955653
788	Chimborazo	H	63	2025-03-22 05:26:01.959693	2025-03-22 05:26:01.959693
789	Imbabura	I	63	2025-03-22 05:26:01.964093	2025-03-22 05:26:01.964093
790	Loja	L	63	2025-03-22 05:26:01.968287	2025-03-22 05:26:01.968287
791	Manabí	M	63	2025-03-22 05:26:01.972651	2025-03-22 05:26:01.972651
792	Napo	N	63	2025-03-22 05:26:01.976963	2025-03-22 05:26:01.976963
793	El Oro	O	63	2025-03-22 05:26:01.981494	2025-03-22 05:26:01.981494
794	Pichincha	P	63	2025-03-22 05:26:01.985835	2025-03-22 05:26:01.985835
795	Los Ríos	R	63	2025-03-22 05:26:01.990109	2025-03-22 05:26:01.990109
796	Morona-Santiago	S	63	2025-03-22 05:26:01.995478	2025-03-22 05:26:01.995478
797	Santo Domingo de los Tsáchilas	SD	63	2025-03-22 05:26:02.000684	2025-03-22 05:26:02.000684
798	Santa Elena	SE	63	2025-03-22 05:26:02.005322	2025-03-22 05:26:02.005322
799	Tungurahua	T	63	2025-03-22 05:26:02.011142	2025-03-22 05:26:02.011142
800	Sucumbíos	U	63	2025-03-22 05:26:02.015286	2025-03-22 05:26:02.015286
801	Galápagos	W	63	2025-03-22 05:26:02.019931	2025-03-22 05:26:02.019931
802	Cotopaxi	X	63	2025-03-22 05:26:02.024402	2025-03-22 05:26:02.024402
803	Pastaza	Y	63	2025-03-22 05:26:02.02843	2025-03-22 05:26:02.02843
804	Zamora-Chinchipe	Z	63	2025-03-22 05:26:02.033083	2025-03-22 05:26:02.033083
805	Harjumaa	37	64	2025-03-22 05:26:02.037072	2025-03-22 05:26:02.037072
806	Hiiumaa	39	64	2025-03-22 05:26:02.041553	2025-03-22 05:26:02.041553
807	Ida-Virumaa	44	64	2025-03-22 05:26:02.046616	2025-03-22 05:26:02.046616
808	Jõgevamaa	49	64	2025-03-22 05:26:02.051289	2025-03-22 05:26:02.051289
809	Järvamaa	51	64	2025-03-22 05:26:02.056915	2025-03-22 05:26:02.056915
810	Läänemaa	57	64	2025-03-22 05:26:02.064138	2025-03-22 05:26:02.064138
811	Lääne-Virumaa	59	64	2025-03-22 05:26:02.06915	2025-03-22 05:26:02.06915
812	Põlvamaa	65	64	2025-03-22 05:26:02.076106	2025-03-22 05:26:02.076106
813	Pärnumaa	67	64	2025-03-22 05:26:02.080561	2025-03-22 05:26:02.080561
814	Raplamaa	70	64	2025-03-22 05:26:02.085144	2025-03-22 05:26:02.085144
815	Saaremaa	74	64	2025-03-22 05:26:02.08975	2025-03-22 05:26:02.08975
816	Tartumaa	78	64	2025-03-22 05:26:02.094221	2025-03-22 05:26:02.094221
817	Valgamaa	82	64	2025-03-22 05:26:02.098545	2025-03-22 05:26:02.098545
818	Viljandimaa	84	64	2025-03-22 05:26:02.102756	2025-03-22 05:26:02.102756
819	Võrumaa	86	64	2025-03-22 05:26:02.107166	2025-03-22 05:26:02.107166
820	Al Iskandarīyah	ALX	65	2025-03-22 05:26:02.111382	2025-03-22 05:26:02.111382
821	Aswān	ASN	65	2025-03-22 05:26:02.116931	2025-03-22 05:26:02.116931
822	Asyūt	AST	65	2025-03-22 05:26:02.121442	2025-03-22 05:26:02.121442
823	Al Bahr al Ahmar	BA	65	2025-03-22 05:26:02.125953	2025-03-22 05:26:02.125953
824	Al Buhayrah	BH	65	2025-03-22 05:26:02.130256	2025-03-22 05:26:02.130256
825	Banī Suwayf	BNS	65	2025-03-22 05:26:02.134658	2025-03-22 05:26:02.134658
826	Al Qāhirah	C	65	2025-03-22 05:26:02.14103	2025-03-22 05:26:02.14103
827	Ad Daqahlīyah	DK	65	2025-03-22 05:26:02.145412	2025-03-22 05:26:02.145412
828	Dumyāt	DT	65	2025-03-22 05:26:02.149521	2025-03-22 05:26:02.149521
829	Al Fayyūm	FYM	65	2025-03-22 05:26:02.154132	2025-03-22 05:26:02.154132
830	Al Gharbīyah	GH	65	2025-03-22 05:26:02.159209	2025-03-22 05:26:02.159209
831	Al Jīzah	GZ	65	2025-03-22 05:26:02.164064	2025-03-22 05:26:02.164064
832	Ḩulwān	HU	65	2025-03-22 05:26:02.168631	2025-03-22 05:26:02.168631
833	Al Ismā`īlīyah	IS	65	2025-03-22 05:26:02.174956	2025-03-22 05:26:02.174956
834	Janūb Sīnā'	JS	65	2025-03-22 05:26:02.179647	2025-03-22 05:26:02.179647
835	Al Qalyūbīyah	KB	65	2025-03-22 05:26:02.18533	2025-03-22 05:26:02.18533
836	Kafr ash Shaykh	KFS	65	2025-03-22 05:26:02.189913	2025-03-22 05:26:02.189913
837	Qinā	KN	65	2025-03-22 05:26:02.195063	2025-03-22 05:26:02.195063
838	Al Minyā	MN	65	2025-03-22 05:26:02.199831	2025-03-22 05:26:02.199831
839	Al Minūfīyah	MNF	65	2025-03-22 05:26:02.204802	2025-03-22 05:26:02.204802
840	Matrūh	MT	65	2025-03-22 05:26:02.209351	2025-03-22 05:26:02.209351
841	Būr Sa`īd	PTS	65	2025-03-22 05:26:02.215523	2025-03-22 05:26:02.215523
842	Sūhāj	SHG	65	2025-03-22 05:26:02.223001	2025-03-22 05:26:02.223001
843	Ash Sharqīyah	SHR	65	2025-03-22 05:26:02.228367	2025-03-22 05:26:02.228367
844	Shamal Sīnā'	SIN	65	2025-03-22 05:26:02.233545	2025-03-22 05:26:02.233545
845	As Sādis min Uktūbar	SU	65	2025-03-22 05:26:02.238931	2025-03-22 05:26:02.238931
846	As Suways	SUZ	65	2025-03-22 05:26:02.244255	2025-03-22 05:26:02.244255
847	Al Wādī al Jadīd	WAD	65	2025-03-22 05:26:02.24915	2025-03-22 05:26:02.24915
848	Ansabā	AN	67	2025-03-22 05:26:02.25485	2025-03-22 05:26:02.25485
849	Janūbī al Baḩrī al Aḩmar	DK	67	2025-03-22 05:26:02.259598	2025-03-22 05:26:02.259598
850	Al Janūbī	DU	67	2025-03-22 05:26:02.264376	2025-03-22 05:26:02.264376
851	Qāsh-Barkah	GB	67	2025-03-22 05:26:02.269465	2025-03-22 05:26:02.269465
852	Al Awsaţ	MA	67	2025-03-22 05:26:02.274856	2025-03-22 05:26:02.274856
853	Shimālī al Baḩrī al Aḩmar	SK	67	2025-03-22 05:26:02.27948	2025-03-22 05:26:02.27948
854	Andalucía	AN	68	2025-03-22 05:26:02.284325	2025-03-22 05:26:02.284325
855	Aragón	AR	68	2025-03-22 05:26:02.290619	2025-03-22 05:26:02.290619
856	Asturias, Principado de	AS	68	2025-03-22 05:26:02.295946	2025-03-22 05:26:02.295946
857	Cantabria	CB	68	2025-03-22 05:26:02.300692	2025-03-22 05:26:02.300692
858	Ceuta	CE	68	2025-03-22 05:26:02.306182	2025-03-22 05:26:02.306182
859	Castilla y León	CL	68	2025-03-22 05:26:02.311299	2025-03-22 05:26:02.311299
860	Castilla-La Mancha	CM	68	2025-03-22 05:26:02.315927	2025-03-22 05:26:02.315927
861	Canarias	CN	68	2025-03-22 05:26:02.321385	2025-03-22 05:26:02.321385
862	Catalunya	CT	68	2025-03-22 05:26:02.326327	2025-03-22 05:26:02.326327
863	Extremadura	EX	68	2025-03-22 05:26:02.331046	2025-03-22 05:26:02.331046
864	Galicia	GA	68	2025-03-22 05:26:02.336397	2025-03-22 05:26:02.336397
865	Illes Balears	IB	68	2025-03-22 05:26:02.341794	2025-03-22 05:26:02.341794
866	Murcia, Región de	MC	68	2025-03-22 05:26:02.346506	2025-03-22 05:26:02.346506
867	Madrid, Comunidad de	MD	68	2025-03-22 05:26:02.351105	2025-03-22 05:26:02.351105
868	Melilla	ML	68	2025-03-22 05:26:02.357979	2025-03-22 05:26:02.357979
869	Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea	NC	68	2025-03-22 05:26:02.363992	2025-03-22 05:26:02.363992
870	País Vasco / Euskal Herria	PV	68	2025-03-22 05:26:02.370134	2025-03-22 05:26:02.370134
871	La Rioja	RI	68	2025-03-22 05:26:02.376096	2025-03-22 05:26:02.376096
872	Valenciana, Comunidad / Valenciana, Comunitat	VC	68	2025-03-22 05:26:02.381001	2025-03-22 05:26:02.381001
873	Ādīs Ābeba	AA	69	2025-03-22 05:26:02.386732	2025-03-22 05:26:02.386732
874	Āfar	AF	69	2025-03-22 05:26:02.392029	2025-03-22 05:26:02.392029
875	Āmara	AM	69	2025-03-22 05:26:02.397072	2025-03-22 05:26:02.397072
876	Bīnshangul Gumuz	BE	69	2025-03-22 05:26:02.401722	2025-03-22 05:26:02.401722
877	Dirē Dawa	DD	69	2025-03-22 05:26:02.407067	2025-03-22 05:26:02.407067
878	Gambēla Hizboch	GA	69	2025-03-22 05:26:02.411788	2025-03-22 05:26:02.411788
879	Hārerī Hizb	HA	69	2025-03-22 05:26:02.417095	2025-03-22 05:26:02.417095
880	Oromīya	OR	69	2025-03-22 05:26:02.421666	2025-03-22 05:26:02.421666
881	YeDebub Bihēroch Bihēreseboch na Hizboch	SN	69	2025-03-22 05:26:02.427184	2025-03-22 05:26:02.427184
882	Sumalē	SO	69	2025-03-22 05:26:02.433316	2025-03-22 05:26:02.433316
883	Tigray	TI	69	2025-03-22 05:26:02.4386	2025-03-22 05:26:02.4386
884	Ahvenanmaan maakunta	01	70	2025-03-22 05:26:02.443474	2025-03-22 05:26:02.443474
885	Etelä-Karjala	02	70	2025-03-22 05:26:02.448224	2025-03-22 05:26:02.448224
886	Etelä-Pohjanmaa	03	70	2025-03-22 05:26:02.45293	2025-03-22 05:26:02.45293
887	Etelä-Savo	04	70	2025-03-22 05:26:02.457417	2025-03-22 05:26:02.457417
888	Kainuu	05	70	2025-03-22 05:26:02.462157	2025-03-22 05:26:02.462157
889	Kanta-Häme	06	70	2025-03-22 05:26:02.467602	2025-03-22 05:26:02.467602
890	Keski-Pohjanmaa	07	70	2025-03-22 05:26:02.472547	2025-03-22 05:26:02.472547
891	Keski-Suomi	08	70	2025-03-22 05:26:02.477178	2025-03-22 05:26:02.477178
892	Kymenlaakso	09	70	2025-03-22 05:26:02.482076	2025-03-22 05:26:02.482076
893	Lappi	10	70	2025-03-22 05:26:02.486967	2025-03-22 05:26:02.486967
894	Pirkanmaa	11	70	2025-03-22 05:26:02.491495	2025-03-22 05:26:02.491495
895	Pohjanmaa	12	70	2025-03-22 05:26:02.496499	2025-03-22 05:26:02.496499
896	Pohjois-Karjala	13	70	2025-03-22 05:26:02.501311	2025-03-22 05:26:02.501311
897	Pohjois-Pohjanmaa	14	70	2025-03-22 05:26:02.506124	2025-03-22 05:26:02.506124
898	Pohjois-Savo	15	70	2025-03-22 05:26:02.511189	2025-03-22 05:26:02.511189
899	Päijät-Häme	16	70	2025-03-22 05:26:02.515727	2025-03-22 05:26:02.515727
900	Satakunta	17	70	2025-03-22 05:26:02.52053	2025-03-22 05:26:02.52053
901	Uusimaa	18	70	2025-03-22 05:26:02.525396	2025-03-22 05:26:02.525396
902	Varsinais-Suomi	19	70	2025-03-22 05:26:02.532128	2025-03-22 05:26:02.532128
903	Central	C	71	2025-03-22 05:26:02.537122	2025-03-22 05:26:02.537122
904	Eastern	E	71	2025-03-22 05:26:02.542773	2025-03-22 05:26:02.542773
905	Northern	N	71	2025-03-22 05:26:02.548765	2025-03-22 05:26:02.548765
906	Rotuma	R	71	2025-03-22 05:26:02.553543	2025-03-22 05:26:02.553543
907	Western	W	71	2025-03-22 05:26:02.55872	2025-03-22 05:26:02.55872
908	Kosrae	KSA	73	2025-03-22 05:26:02.563565	2025-03-22 05:26:02.563565
909	Pohnpei	PNI	73	2025-03-22 05:26:02.568716	2025-03-22 05:26:02.568716
910	Chuuk	TRK	73	2025-03-22 05:26:02.573673	2025-03-22 05:26:02.573673
911	Yap	YAP	73	2025-03-22 05:26:02.578614	2025-03-22 05:26:02.578614
912	Auvergne-Rhône-Alpes	ARA	75	2025-03-22 05:26:02.58359	2025-03-22 05:26:02.58359
913	Bourgogne-Franche-Comté	BFC	75	2025-03-22 05:26:02.589466	2025-03-22 05:26:02.589466
914	Saint-Barthélemy	BL	75	2025-03-22 05:26:02.594235	2025-03-22 05:26:02.594235
915	Bretagne	BRE	75	2025-03-22 05:26:02.599509	2025-03-22 05:26:02.599509
916	Corse	COR	75	2025-03-22 05:26:02.604737	2025-03-22 05:26:02.604737
917	Clipperton	CP	75	2025-03-22 05:26:02.609337	2025-03-22 05:26:02.609337
918	Centre-Val de Loire	CVL	75	2025-03-22 05:26:02.614705	2025-03-22 05:26:02.614705
919	Grand-Est	GES	75	2025-03-22 05:26:02.619623	2025-03-22 05:26:02.619623
920	Guyane (française)	GF	75	2025-03-22 05:26:02.625521	2025-03-22 05:26:02.625521
921	Guadeloupe	GUA	75	2025-03-22 05:26:02.630834	2025-03-22 05:26:02.630834
922	Hauts-de-France	HDF	75	2025-03-22 05:26:02.636144	2025-03-22 05:26:02.636144
923	Île-de-France	IDF	75	2025-03-22 05:26:02.641451	2025-03-22 05:26:02.641451
924	La Réunion	LRE	75	2025-03-22 05:26:02.647571	2025-03-22 05:26:02.647571
925	Mayotte	MAY	75	2025-03-22 05:26:02.653633	2025-03-22 05:26:02.653633
926	Saint-Martin	MF	75	2025-03-22 05:26:02.658489	2025-03-22 05:26:02.658489
927	Martinique	MQ	75	2025-03-22 05:26:02.663497	2025-03-22 05:26:02.663497
928	Nouvelle-Aquitaine	NAQ	75	2025-03-22 05:26:02.669039	2025-03-22 05:26:02.669039
929	Nouvelle-Calédonie	NC	75	2025-03-22 05:26:02.673764	2025-03-22 05:26:02.673764
930	Normandie	NOR	75	2025-03-22 05:26:02.6789	2025-03-22 05:26:02.6789
931	Occitanie	OCC	75	2025-03-22 05:26:02.683719	2025-03-22 05:26:02.683719
932	Provence-Alpes-Côte-d’Azur	PAC	75	2025-03-22 05:26:02.688594	2025-03-22 05:26:02.688594
933	Pays-de-la-Loire	PDL	75	2025-03-22 05:26:02.693218	2025-03-22 05:26:02.693218
934	Polynésie française	PF	75	2025-03-22 05:26:02.697894	2025-03-22 05:26:02.697894
935	Saint-Pierre-et-Miquelon	PM	75	2025-03-22 05:26:02.702997	2025-03-22 05:26:02.702997
936	Terres australes françaises	TF	75	2025-03-22 05:26:02.709094	2025-03-22 05:26:02.709094
937	Wallis-et-Futuna	WF	75	2025-03-22 05:26:02.713698	2025-03-22 05:26:02.713698
938	Estuaire	1	76	2025-03-22 05:26:02.719208	2025-03-22 05:26:02.719208
939	Haut-Ogooué	2	76	2025-03-22 05:26:02.724012	2025-03-22 05:26:02.724012
940	Moyen-Ogooué	3	76	2025-03-22 05:26:02.728982	2025-03-22 05:26:02.728982
941	Ngounié	4	76	2025-03-22 05:26:02.733799	2025-03-22 05:26:02.733799
942	Nyanga	5	76	2025-03-22 05:26:02.738852	2025-03-22 05:26:02.738852
943	Ogooué-Ivindo	6	76	2025-03-22 05:26:02.743804	2025-03-22 05:26:02.743804
944	Ogooué-Lolo	7	76	2025-03-22 05:26:02.748424	2025-03-22 05:26:02.748424
945	Ogooué-Maritime	8	76	2025-03-22 05:26:02.753431	2025-03-22 05:26:02.753431
946	Woleu-Ntem	9	76	2025-03-22 05:26:02.757807	2025-03-22 05:26:02.757807
947	England and Wales	EAW	77	2025-03-22 05:26:02.763065	2025-03-22 05:26:02.763065
948	England	ENG	77	2025-03-22 05:26:02.767737	2025-03-22 05:26:02.767737
949	Great Britain	GBN	77	2025-03-22 05:26:02.772905	2025-03-22 05:26:02.772905
950	Northern Ireland	NIR	77	2025-03-22 05:26:02.777259	2025-03-22 05:26:02.777259
951	Scotland	SCT	77	2025-03-22 05:26:02.781921	2025-03-22 05:26:02.781921
952	United Kingdom	UKM	77	2025-03-22 05:26:02.786594	2025-03-22 05:26:02.786594
953	Wales; Cymru	WLS	77	2025-03-22 05:26:02.79137	2025-03-22 05:26:02.79137
954	Saint Andrew	01	78	2025-03-22 05:26:02.796039	2025-03-22 05:26:02.796039
955	Saint David	02	78	2025-03-22 05:26:02.800841	2025-03-22 05:26:02.800841
956	Saint George	03	78	2025-03-22 05:26:02.8057	2025-03-22 05:26:02.8057
957	Saint John	04	78	2025-03-22 05:26:02.810534	2025-03-22 05:26:02.810534
958	Saint Mark	05	78	2025-03-22 05:26:02.815776	2025-03-22 05:26:02.815776
959	Saint Patrick	06	78	2025-03-22 05:26:02.820422	2025-03-22 05:26:02.820422
960	Southern Grenadine Islands	10	78	2025-03-22 05:26:02.82497	2025-03-22 05:26:02.82497
961	Abkhazia	AB	79	2025-03-22 05:26:02.829637	2025-03-22 05:26:02.829637
962	Ajaria	AJ	79	2025-03-22 05:26:02.834364	2025-03-22 05:26:02.834364
963	Guria	GU	79	2025-03-22 05:26:02.838862	2025-03-22 05:26:02.838862
964	Imeret’i	IM	79	2025-03-22 05:26:02.843731	2025-03-22 05:26:02.843731
965	Kakhet’i	KA	79	2025-03-22 05:26:02.84811	2025-03-22 05:26:02.84811
966	K’vemo K’art’li	KK	79	2025-03-22 05:26:02.853559	2025-03-22 05:26:02.853559
967	Mts’khet’a-Mt’ianet’i	MM	79	2025-03-22 05:26:02.858146	2025-03-22 05:26:02.858146
968	Racha-Lech’khumi-K’vemo Svanet’i	RL	79	2025-03-22 05:26:02.862797	2025-03-22 05:26:02.862797
969	Samts’khe-Javakhet’i	SJ	79	2025-03-22 05:26:02.867296	2025-03-22 05:26:02.867296
970	Shida K’art’li	SK	79	2025-03-22 05:26:02.873696	2025-03-22 05:26:02.873696
971	Samegrelo-Zemo Svanet’i	SZ	79	2025-03-22 05:26:02.878709	2025-03-22 05:26:02.878709
972	T’bilisi	TB	79	2025-03-22 05:26:02.88416	2025-03-22 05:26:02.88416
973	Greater Accra	AA	82	2025-03-22 05:26:02.888887	2025-03-22 05:26:02.888887
974	Ashanti	AH	82	2025-03-22 05:26:02.894158	2025-03-22 05:26:02.894158
975	Brong-Ahafo	BA	82	2025-03-22 05:26:02.898559	2025-03-22 05:26:02.898559
976	Central	CP	82	2025-03-22 05:26:02.903632	2025-03-22 05:26:02.903632
977	Eastern	EP	82	2025-03-22 05:26:02.908453	2025-03-22 05:26:02.908453
978	Northern	NP	82	2025-03-22 05:26:02.913694	2025-03-22 05:26:02.913694
979	Volta	TV	82	2025-03-22 05:26:02.918987	2025-03-22 05:26:02.918987
980	Upper East	UE	82	2025-03-22 05:26:02.923616	2025-03-22 05:26:02.923616
981	Upper West	UW	82	2025-03-22 05:26:02.928428	2025-03-22 05:26:02.928428
982	Western	WP	82	2025-03-22 05:26:02.933058	2025-03-22 05:26:02.933058
983	Kommune Kujalleq	KU	84	2025-03-22 05:26:02.93808	2025-03-22 05:26:02.93808
984	Qaasuitsup Kommunia	QA	84	2025-03-22 05:26:02.942581	2025-03-22 05:26:02.942581
985	Qeqqata Kommunia	QE	84	2025-03-22 05:26:02.947181	2025-03-22 05:26:02.947181
986	Kommuneqarfik Sermersooq	SM	84	2025-03-22 05:26:02.954368	2025-03-22 05:26:02.954368
987	Banjul	B	85	2025-03-22 05:26:02.961016	2025-03-22 05:26:02.961016
988	Lower River	L	85	2025-03-22 05:26:02.96599	2025-03-22 05:26:02.96599
989	Central River	M	85	2025-03-22 05:26:02.97129	2025-03-22 05:26:02.97129
990	North Bank	N	85	2025-03-22 05:26:02.975857	2025-03-22 05:26:02.975857
991	Upper River	U	85	2025-03-22 05:26:02.980597	2025-03-22 05:26:02.980597
992	Western	W	85	2025-03-22 05:26:02.986261	2025-03-22 05:26:02.986261
993	Boké	B	86	2025-03-22 05:26:02.990853	2025-03-22 05:26:02.990853
994	Conakry	C	86	2025-03-22 05:26:02.995281	2025-03-22 05:26:02.995281
995	Kindia	D	86	2025-03-22 05:26:02.999698	2025-03-22 05:26:02.999698
996	Faranah	F	86	2025-03-22 05:26:03.004495	2025-03-22 05:26:03.004495
997	Kankan	K	86	2025-03-22 05:26:03.008615	2025-03-22 05:26:03.008615
998	Labé	L	86	2025-03-22 05:26:03.012771	2025-03-22 05:26:03.012771
999	Mamou	M	86	2025-03-22 05:26:03.017118	2025-03-22 05:26:03.017118
1000	Nzérékoré	N	86	2025-03-22 05:26:03.021737	2025-03-22 05:26:03.021737
1001	Región Continental	C	88	2025-03-22 05:26:03.026344	2025-03-22 05:26:03.026344
1002	Región Insular	I	88	2025-03-22 05:26:03.030952	2025-03-22 05:26:03.030952
1003	Agio Oros	69	89	2025-03-22 05:26:03.035503	2025-03-22 05:26:03.035503
1004	Anatoliki Makedonia kai Thraki	A	89	2025-03-22 05:26:03.040782	2025-03-22 05:26:03.040782
1005	Kentriki Makedonia	B	89	2025-03-22 05:26:03.047477	2025-03-22 05:26:03.047477
1006	Dytiki Makedonia	C	89	2025-03-22 05:26:03.05322	2025-03-22 05:26:03.05322
1007	Ipeiros	D	89	2025-03-22 05:26:03.057965	2025-03-22 05:26:03.057965
1008	Thessalia	E	89	2025-03-22 05:26:03.063953	2025-03-22 05:26:03.063953
1009	Ionia Nisia	F	89	2025-03-22 05:26:03.068762	2025-03-22 05:26:03.068762
1010	Dytiki Ellada	G	89	2025-03-22 05:26:03.07432	2025-03-22 05:26:03.07432
1011	Sterea Ellada	H	89	2025-03-22 05:26:03.079419	2025-03-22 05:26:03.079419
1012	Attiki	I	89	2025-03-22 05:26:03.085526	2025-03-22 05:26:03.085526
1013	Peloponnisos	J	89	2025-03-22 05:26:03.090221	2025-03-22 05:26:03.090221
1014	Voreio Aigaio	K	89	2025-03-22 05:26:03.095807	2025-03-22 05:26:03.095807
1015	Notio Aigaio	L	89	2025-03-22 05:26:03.100547	2025-03-22 05:26:03.100547
1016	Kriti	M	89	2025-03-22 05:26:03.106081	2025-03-22 05:26:03.106081
1017	Alta Verapaz	AV	91	2025-03-22 05:26:03.111841	2025-03-22 05:26:03.111841
1018	Baja Verapaz	BV	91	2025-03-22 05:26:03.117125	2025-03-22 05:26:03.117125
1019	Chimaltenango	CM	91	2025-03-22 05:26:03.122342	2025-03-22 05:26:03.122342
1020	Chiquimula	CQ	91	2025-03-22 05:26:03.127407	2025-03-22 05:26:03.127407
1021	Escuintla	ES	91	2025-03-22 05:26:03.13262	2025-03-22 05:26:03.13262
1022	Guatemala	GU	91	2025-03-22 05:26:03.137362	2025-03-22 05:26:03.137362
1023	Huehuetenango	HU	91	2025-03-22 05:26:03.1423	2025-03-22 05:26:03.1423
1024	Izabal	IZ	91	2025-03-22 05:26:03.146906	2025-03-22 05:26:03.146906
1025	Jalapa	JA	91	2025-03-22 05:26:03.151864	2025-03-22 05:26:03.151864
1026	Jutiapa	JU	91	2025-03-22 05:26:03.157336	2025-03-22 05:26:03.157336
1027	Petén	PE	91	2025-03-22 05:26:03.163126	2025-03-22 05:26:03.163126
1028	El Progreso	PR	91	2025-03-22 05:26:03.168528	2025-03-22 05:26:03.168528
1029	Quiché	QC	91	2025-03-22 05:26:03.173665	2025-03-22 05:26:03.173665
1030	Quetzaltenango	QZ	91	2025-03-22 05:26:03.178588	2025-03-22 05:26:03.178588
1031	Retalhuleu	RE	91	2025-03-22 05:26:03.183807	2025-03-22 05:26:03.183807
1032	Sacatepéquez	SA	91	2025-03-22 05:26:03.189576	2025-03-22 05:26:03.189576
1033	San Marcos	SM	91	2025-03-22 05:26:03.194335	2025-03-22 05:26:03.194335
1034	Sololá	SO	91	2025-03-22 05:26:03.199736	2025-03-22 05:26:03.199736
1035	Santa Rosa	SR	91	2025-03-22 05:26:03.205095	2025-03-22 05:26:03.205095
1036	Suchitepéquez	SU	91	2025-03-22 05:26:03.209881	2025-03-22 05:26:03.209881
1037	Totonicapán	TO	91	2025-03-22 05:26:03.21459	2025-03-22 05:26:03.21459
1038	Zacapa	ZA	91	2025-03-22 05:26:03.219259	2025-03-22 05:26:03.219259
1039	Bissau	BS	93	2025-03-22 05:26:03.225622	2025-03-22 05:26:03.225622
1040	Leste	L	93	2025-03-22 05:26:03.230648	2025-03-22 05:26:03.230648
1041	Norte	N	93	2025-03-22 05:26:03.235854	2025-03-22 05:26:03.235854
1042	Sul	S	93	2025-03-22 05:26:03.241083	2025-03-22 05:26:03.241083
1043	Barima-Waini	BA	94	2025-03-22 05:26:03.245577	2025-03-22 05:26:03.245577
1044	Cuyuni-Mazaruni	CU	94	2025-03-22 05:26:03.250288	2025-03-22 05:26:03.250288
1045	Demerara-Mahaica	DE	94	2025-03-22 05:26:03.255295	2025-03-22 05:26:03.255295
1046	East Berbice-Corentyne	EB	94	2025-03-22 05:26:03.260414	2025-03-22 05:26:03.260414
1047	Essequibo Islands-West Demerara	ES	94	2025-03-22 05:26:03.265072	2025-03-22 05:26:03.265072
1048	Mahaica-Berbice	MA	94	2025-03-22 05:26:03.27044	2025-03-22 05:26:03.27044
1049	Pomeroon-Supenaam	PM	94	2025-03-22 05:26:03.274834	2025-03-22 05:26:03.274834
1050	Potaro-Siparuni	PT	94	2025-03-22 05:26:03.280248	2025-03-22 05:26:03.280248
1051	Upper Demerara-Berbice	UD	94	2025-03-22 05:26:03.285056	2025-03-22 05:26:03.285056
1052	Upper Takutu-Upper Essequibo	UT	94	2025-03-22 05:26:03.29065	2025-03-22 05:26:03.29065
1053	Atlántida	AT	97	2025-03-22 05:26:03.295899	2025-03-22 05:26:03.295899
1054	Choluteca	CH	97	2025-03-22 05:26:03.300763	2025-03-22 05:26:03.300763
1055	Colón	CL	97	2025-03-22 05:26:03.305928	2025-03-22 05:26:03.305928
1056	Comayagua	CM	97	2025-03-22 05:26:03.311459	2025-03-22 05:26:03.311459
1057	Copán	CP	97	2025-03-22 05:26:03.316635	2025-03-22 05:26:03.316635
1058	Cortés	CR	97	2025-03-22 05:26:03.321665	2025-03-22 05:26:03.321665
1059	El Paraíso	EP	97	2025-03-22 05:26:03.327068	2025-03-22 05:26:03.327068
1060	Francisco Morazán	FM	97	2025-03-22 05:26:03.331906	2025-03-22 05:26:03.331906
1061	Gracias a Dios	GD	97	2025-03-22 05:26:03.337951	2025-03-22 05:26:03.337951
1062	Islas de la Bahía	IB	97	2025-03-22 05:26:03.343485	2025-03-22 05:26:03.343485
1063	Intibucá	IN	97	2025-03-22 05:26:03.348199	2025-03-22 05:26:03.348199
1064	Lempira	LE	97	2025-03-22 05:26:03.353217	2025-03-22 05:26:03.353217
1065	La Paz	LP	97	2025-03-22 05:26:03.358231	2025-03-22 05:26:03.358231
1066	Ocotepeque	OC	97	2025-03-22 05:26:03.363225	2025-03-22 05:26:03.363225
1067	Olancho	OL	97	2025-03-22 05:26:03.369455	2025-03-22 05:26:03.369455
1068	Santa Bárbara	SB	97	2025-03-22 05:26:03.37502	2025-03-22 05:26:03.37502
1069	Valle	VA	97	2025-03-22 05:26:03.379655	2025-03-22 05:26:03.379655
1070	Yoro	YO	97	2025-03-22 05:26:03.385266	2025-03-22 05:26:03.385266
1071	Zagrebačka županija	01	98	2025-03-22 05:26:03.390611	2025-03-22 05:26:03.390611
1072	Krapinsko-zagorska županija	02	98	2025-03-22 05:26:03.395891	2025-03-22 05:26:03.395891
1073	Sisačko-moslavačka županija	03	98	2025-03-22 05:26:03.402782	2025-03-22 05:26:03.402782
1074	Karlovačka županija	04	98	2025-03-22 05:26:03.408117	2025-03-22 05:26:03.408117
1075	Varaždinska županija	05	98	2025-03-22 05:26:03.414113	2025-03-22 05:26:03.414113
1076	Koprivničko-križevačka županija	06	98	2025-03-22 05:26:03.419266	2025-03-22 05:26:03.419266
1077	Bjelovarsko-bilogorska županija	07	98	2025-03-22 05:26:03.424929	2025-03-22 05:26:03.424929
1078	Primorsko-goranska županija	08	98	2025-03-22 05:26:03.429902	2025-03-22 05:26:03.429902
1079	Ličko-senjska županija	09	98	2025-03-22 05:26:03.43547	2025-03-22 05:26:03.43547
1080	Virovitičko-podravska županija	10	98	2025-03-22 05:26:03.441274	2025-03-22 05:26:03.441274
1081	Požeško-slavonska županija	11	98	2025-03-22 05:26:03.446778	2025-03-22 05:26:03.446778
1082	Brodsko-posavska županija	12	98	2025-03-22 05:26:03.452138	2025-03-22 05:26:03.452138
1083	Zadarska županija	13	98	2025-03-22 05:26:03.456866	2025-03-22 05:26:03.456866
1084	Osječko-baranjska županija	14	98	2025-03-22 05:26:03.46232	2025-03-22 05:26:03.46232
1085	Šibensko-kninska županija	15	98	2025-03-22 05:26:03.467092	2025-03-22 05:26:03.467092
1086	Vukovarsko-srijemska županija	16	98	2025-03-22 05:26:03.472463	2025-03-22 05:26:03.472463
1087	Splitsko-dalmatinska županija	17	98	2025-03-22 05:26:03.477056	2025-03-22 05:26:03.477056
1088	Istarska županija	18	98	2025-03-22 05:26:03.481985	2025-03-22 05:26:03.481985
1089	Dubrovačko-neretvanska županija	19	98	2025-03-22 05:26:03.487081	2025-03-22 05:26:03.487081
1090	Međimurska županija	20	98	2025-03-22 05:26:03.49252	2025-03-22 05:26:03.49252
1091	Grad Zagreb	21	98	2025-03-22 05:26:03.497609	2025-03-22 05:26:03.497609
1092	Artibonite	AR	99	2025-03-22 05:26:03.503152	2025-03-22 05:26:03.503152
1093	Centre	CE	99	2025-03-22 05:26:03.508089	2025-03-22 05:26:03.508089
1094	Grande-Anse	GA	99	2025-03-22 05:26:03.513429	2025-03-22 05:26:03.513429
1095	Nord	ND	99	2025-03-22 05:26:03.519221	2025-03-22 05:26:03.519221
1096	Nord-Est	NE	99	2025-03-22 05:26:03.523984	2025-03-22 05:26:03.523984
1097	Nord-Ouest	NO	99	2025-03-22 05:26:03.528839	2025-03-22 05:26:03.528839
1098	Ouest	OU	99	2025-03-22 05:26:03.533645	2025-03-22 05:26:03.533645
1099	Sud	SD	99	2025-03-22 05:26:03.538283	2025-03-22 05:26:03.538283
1100	Sud-Est	SE	99	2025-03-22 05:26:03.542948	2025-03-22 05:26:03.542948
1101	Baranya	BA	100	2025-03-22 05:26:03.5471	2025-03-22 05:26:03.5471
1102	Békéscsaba	BC	100	2025-03-22 05:26:03.552182	2025-03-22 05:26:03.552182
1103	Békés	BE	100	2025-03-22 05:26:03.556802	2025-03-22 05:26:03.556802
1104	Bács-Kiskun	BK	100	2025-03-22 05:26:03.561824	2025-03-22 05:26:03.561824
1105	Budapest	BU	100	2025-03-22 05:26:03.566597	2025-03-22 05:26:03.566597
1106	Borsod-Abaúj-Zemplén	BZ	100	2025-03-22 05:26:03.571373	2025-03-22 05:26:03.571373
1107	Csongrád	CS	100	2025-03-22 05:26:03.577815	2025-03-22 05:26:03.577815
1108	Debrecen	DE	100	2025-03-22 05:26:03.582896	2025-03-22 05:26:03.582896
1109	Dunaújváros	DU	100	2025-03-22 05:26:03.588735	2025-03-22 05:26:03.588735
1110	Eger	EG	100	2025-03-22 05:26:03.59372	2025-03-22 05:26:03.59372
1111	Érd	ER	100	2025-03-22 05:26:03.599173	2025-03-22 05:26:03.599173
1112	Fejér	FE	100	2025-03-22 05:26:03.605079	2025-03-22 05:26:03.605079
1113	Győr-Moson-Sopron	GS	100	2025-03-22 05:26:03.613707	2025-03-22 05:26:03.613707
1114	Győr	GY	100	2025-03-22 05:26:03.619737	2025-03-22 05:26:03.619737
1115	Hajdú-Bihar	HB	100	2025-03-22 05:26:03.626947	2025-03-22 05:26:03.626947
1116	Heves	HE	100	2025-03-22 05:26:03.6318	2025-03-22 05:26:03.6318
1117	Hódmezővásárhely	HV	100	2025-03-22 05:26:03.638467	2025-03-22 05:26:03.638467
1118	Jász-Nagykun-Szolnok	JN	100	2025-03-22 05:26:03.644732	2025-03-22 05:26:03.644732
1119	Komárom-Esztergom	KE	100	2025-03-22 05:26:03.653673	2025-03-22 05:26:03.653673
1120	Kecskemét	KM	100	2025-03-22 05:26:03.65914	2025-03-22 05:26:03.65914
1121	Kaposvár	KV	100	2025-03-22 05:26:03.664385	2025-03-22 05:26:03.664385
1122	Miskolc	MI	100	2025-03-22 05:26:03.670429	2025-03-22 05:26:03.670429
1123	Nagykanizsa	NK	100	2025-03-22 05:26:03.67589	2025-03-22 05:26:03.67589
1124	Nógrád	NO	100	2025-03-22 05:26:03.680816	2025-03-22 05:26:03.680816
1125	Nyíregyháza	NY	100	2025-03-22 05:26:03.686484	2025-03-22 05:26:03.686484
1126	Pest	PE	100	2025-03-22 05:26:03.692441	2025-03-22 05:26:03.692441
1127	Pécs	PS	100	2025-03-22 05:26:03.697014	2025-03-22 05:26:03.697014
1128	Szeged	SD	100	2025-03-22 05:26:03.703153	2025-03-22 05:26:03.703153
1129	Székesfehérvár	SF	100	2025-03-22 05:26:03.709516	2025-03-22 05:26:03.709516
1130	Szombathely	SH	100	2025-03-22 05:26:03.714269	2025-03-22 05:26:03.714269
1131	Szolnok	SK	100	2025-03-22 05:26:03.719452	2025-03-22 05:26:03.719452
1132	Sopron	SN	100	2025-03-22 05:26:03.724283	2025-03-22 05:26:03.724283
1133	Somogy	SO	100	2025-03-22 05:26:03.728639	2025-03-22 05:26:03.728639
1134	Szekszárd	SS	100	2025-03-22 05:26:03.733228	2025-03-22 05:26:03.733228
1135	Salgótarján	ST	100	2025-03-22 05:26:03.738665	2025-03-22 05:26:03.738665
1136	Szabolcs-Szatmár-Bereg	SZ	100	2025-03-22 05:26:03.743748	2025-03-22 05:26:03.743748
1137	Tatabánya	TB	100	2025-03-22 05:26:03.748924	2025-03-22 05:26:03.748924
1138	Tolna	TO	100	2025-03-22 05:26:03.754116	2025-03-22 05:26:03.754116
1139	Vas	VA	100	2025-03-22 05:26:03.758936	2025-03-22 05:26:03.758936
1140	Veszprém (county)	VE	100	2025-03-22 05:26:03.763546	2025-03-22 05:26:03.763546
1141	Veszprém	VM	100	2025-03-22 05:26:03.768561	2025-03-22 05:26:03.768561
1142	Zala	ZA	100	2025-03-22 05:26:03.774957	2025-03-22 05:26:03.774957
1143	Zalaegerszeg	ZE	100	2025-03-22 05:26:03.779528	2025-03-22 05:26:03.779528
1144	Papua	IJ	101	2025-03-22 05:26:03.785568	2025-03-22 05:26:03.785568
1145	Jawa	JW	101	2025-03-22 05:26:03.791145	2025-03-22 05:26:03.791145
1146	Kalimantan	KA	101	2025-03-22 05:26:03.795869	2025-03-22 05:26:03.795869
1147	Maluku	ML	101	2025-03-22 05:26:03.801117	2025-03-22 05:26:03.801117
1148	Nusa Tenggara	NU	101	2025-03-22 05:26:03.806459	2025-03-22 05:26:03.806459
1149	Sulawesi	SL	101	2025-03-22 05:26:03.811487	2025-03-22 05:26:03.811487
1150	Sumatera	SM	101	2025-03-22 05:26:03.816234	2025-03-22 05:26:03.816234
1151	Connacht	C	102	2025-03-22 05:26:03.821505	2025-03-22 05:26:03.821505
1152	Leinster	L	102	2025-03-22 05:26:03.825865	2025-03-22 05:26:03.825865
1153	Munster	M	102	2025-03-22 05:26:03.830903	2025-03-22 05:26:03.830903
1154	Ulster	U	102	2025-03-22 05:26:03.835472	2025-03-22 05:26:03.835472
1155	HaDarom	D	103	2025-03-22 05:26:03.840727	2025-03-22 05:26:03.840727
1156	Hefa	HA	103	2025-03-22 05:26:03.845434	2025-03-22 05:26:03.845434
1157	Yerushalayim Al Quds	JM	103	2025-03-22 05:26:03.850807	2025-03-22 05:26:03.850807
1158	HaMerkaz	M	103	2025-03-22 05:26:03.855788	2025-03-22 05:26:03.855788
1159	Tel-Aviv	TA	103	2025-03-22 05:26:03.860237	2025-03-22 05:26:03.860237
1160	HaZafon	Z	103	2025-03-22 05:26:03.86545	2025-03-22 05:26:03.86545
1161	Andaman and Nicobar Islands	AN	105	2025-03-22 05:26:03.870787	2025-03-22 05:26:03.870787
1162	Andhra Pradesh	AP	105	2025-03-22 05:26:03.875893	2025-03-22 05:26:03.875893
1163	Arunachal Pradesh	AR	105	2025-03-22 05:26:03.881569	2025-03-22 05:26:03.881569
1164	Assam	AS	105	2025-03-22 05:26:03.886592	2025-03-22 05:26:03.886592
1165	Bihar	BR	105	2025-03-22 05:26:03.891249	2025-03-22 05:26:03.891249
1166	Chandigarh	CH	105	2025-03-22 05:26:03.895651	2025-03-22 05:26:03.895651
1167	Chhattisgarh	CT	105	2025-03-22 05:26:03.900039	2025-03-22 05:26:03.900039
1168	Daman and Diu	DD	105	2025-03-22 05:26:03.904362	2025-03-22 05:26:03.904362
1169	Delhi	DL	105	2025-03-22 05:26:03.909476	2025-03-22 05:26:03.909476
1170	Dadra and Nagar Haveli	DN	105	2025-03-22 05:26:03.914609	2025-03-22 05:26:03.914609
1171	Goa	GA	105	2025-03-22 05:26:03.919447	2025-03-22 05:26:03.919447
1172	Gujarat	GJ	105	2025-03-22 05:26:03.924524	2025-03-22 05:26:03.924524
1173	Himachal Pradesh	HP	105	2025-03-22 05:26:03.928985	2025-03-22 05:26:03.928985
1174	Haryana	HR	105	2025-03-22 05:26:03.933525	2025-03-22 05:26:03.933525
1175	Jharkhand	JH	105	2025-03-22 05:26:03.93835	2025-03-22 05:26:03.93835
1176	Jammu and Kashmir	JK	105	2025-03-22 05:26:03.944801	2025-03-22 05:26:03.944801
1177	Karnataka	KA	105	2025-03-22 05:26:03.949368	2025-03-22 05:26:03.949368
1178	Kerala	KL	105	2025-03-22 05:26:03.954822	2025-03-22 05:26:03.954822
1179	Lakshadweep	LD	105	2025-03-22 05:26:03.960171	2025-03-22 05:26:03.960171
1180	Maharashtra	MH	105	2025-03-22 05:26:03.965021	2025-03-22 05:26:03.965021
1181	Meghalaya	ML	105	2025-03-22 05:26:03.969978	2025-03-22 05:26:03.969978
1182	Manipur	MN	105	2025-03-22 05:26:03.976533	2025-03-22 05:26:03.976533
1183	Madhya Pradesh	MP	105	2025-03-22 05:26:03.981667	2025-03-22 05:26:03.981667
1184	Mizoram	MZ	105	2025-03-22 05:26:03.986616	2025-03-22 05:26:03.986616
1185	Nagaland	NL	105	2025-03-22 05:26:03.991613	2025-03-22 05:26:03.991613
1186	Odisha	OR	105	2025-03-22 05:26:03.996432	2025-03-22 05:26:03.996432
1187	Punjab	PB	105	2025-03-22 05:26:04.002099	2025-03-22 05:26:04.002099
1188	Puducherry	PY	105	2025-03-22 05:26:04.00701	2025-03-22 05:26:04.00701
1189	Rajasthan	RJ	105	2025-03-22 05:26:04.012072	2025-03-22 05:26:04.012072
1190	Sikkim	SK	105	2025-03-22 05:26:04.016786	2025-03-22 05:26:04.016786
1191	Telangana	TG	105	2025-03-22 05:26:04.022725	2025-03-22 05:26:04.022725
1192	Tamil Nadu	TN	105	2025-03-22 05:26:04.027633	2025-03-22 05:26:04.027633
1193	Tripura	TR	105	2025-03-22 05:26:04.032511	2025-03-22 05:26:04.032511
1194	Uttar Pradesh	UP	105	2025-03-22 05:26:04.0378	2025-03-22 05:26:04.0378
1195	Uttarakhand	UT	105	2025-03-22 05:26:04.043525	2025-03-22 05:26:04.043525
1196	West Bengal	WB	105	2025-03-22 05:26:04.048632	2025-03-22 05:26:04.048632
1197	Al Anbar	AN	107	2025-03-22 05:26:04.054245	2025-03-22 05:26:04.054245
1198	Arbil	AR	107	2025-03-22 05:26:04.059487	2025-03-22 05:26:04.059487
1199	Al Basrah	BA	107	2025-03-22 05:26:04.064205	2025-03-22 05:26:04.064205
1200	Babil	BB	107	2025-03-22 05:26:04.069322	2025-03-22 05:26:04.069322
1201	Baghdad	BG	107	2025-03-22 05:26:04.074019	2025-03-22 05:26:04.074019
1202	Dahuk	DA	107	2025-03-22 05:26:04.078405	2025-03-22 05:26:04.078405
1203	Diyala	DI	107	2025-03-22 05:26:04.083078	2025-03-22 05:26:04.083078
1204	Dhi Qar	DQ	107	2025-03-22 05:26:04.088098	2025-03-22 05:26:04.088098
1205	Karbala'	KA	107	2025-03-22 05:26:04.093106	2025-03-22 05:26:04.093106
1206	Maysan	MA	107	2025-03-22 05:26:04.097676	2025-03-22 05:26:04.097676
1207	Al Muthanna	MU	107	2025-03-22 05:26:04.10262	2025-03-22 05:26:04.10262
1208	An Najef	NA	107	2025-03-22 05:26:04.10736	2025-03-22 05:26:04.10736
1209	Ninawa	NI	107	2025-03-22 05:26:04.112113	2025-03-22 05:26:04.112113
1210	Al Qadisiyah	QA	107	2025-03-22 05:26:04.118434	2025-03-22 05:26:04.118434
1211	Salah ad Din	SD	107	2025-03-22 05:26:04.123629	2025-03-22 05:26:04.123629
1212	As Sulaymaniyah	SW	107	2025-03-22 05:26:04.12913	2025-03-22 05:26:04.12913
1213	At Ta'mim	TS	107	2025-03-22 05:26:04.133984	2025-03-22 05:26:04.133984
1214	Wasit	WA	107	2025-03-22 05:26:04.139291	2025-03-22 05:26:04.139291
1215	Āzarbāyjān-e Sharqī	01	108	2025-03-22 05:26:04.144389	2025-03-22 05:26:04.144389
1216	Āzarbāyjān-e Gharbī	02	108	2025-03-22 05:26:04.149577	2025-03-22 05:26:04.149577
1217	Ardabīl	03	108	2025-03-22 05:26:04.154686	2025-03-22 05:26:04.154686
1218	Eşfahān	04	108	2025-03-22 05:26:04.160065	2025-03-22 05:26:04.160065
1219	Īlām	05	108	2025-03-22 05:26:04.165542	2025-03-22 05:26:04.165542
1220	Būshehr	06	108	2025-03-22 05:26:04.170317	2025-03-22 05:26:04.170317
1221	Tehrān	07	108	2025-03-22 05:26:04.175432	2025-03-22 05:26:04.175432
1222	Chahār Mahāll va Bakhtīārī	08	108	2025-03-22 05:26:04.180433	2025-03-22 05:26:04.180433
1223	Khūzestān	10	108	2025-03-22 05:26:04.185772	2025-03-22 05:26:04.185772
1224	Zanjān	11	108	2025-03-22 05:26:04.19134	2025-03-22 05:26:04.19134
1225	Semnān	12	108	2025-03-22 05:26:04.196541	2025-03-22 05:26:04.196541
1226	Sīstān va Balūchestān	13	108	2025-03-22 05:26:04.201294	2025-03-22 05:26:04.201294
1227	Fārs	14	108	2025-03-22 05:26:04.20632	2025-03-22 05:26:04.20632
1228	Kermān	15	108	2025-03-22 05:26:04.210896	2025-03-22 05:26:04.210896
1229	Kordestān	16	108	2025-03-22 05:26:04.215783	2025-03-22 05:26:04.215783
1230	Kermānshāh	17	108	2025-03-22 05:26:04.220657	2025-03-22 05:26:04.220657
1231	Kohgīlūyeh va Būyer Ahmad	18	108	2025-03-22 05:26:04.226333	2025-03-22 05:26:04.226333
1232	Gīlān	19	108	2025-03-22 05:26:04.231896	2025-03-22 05:26:04.231896
1233	Lorestān	20	108	2025-03-22 05:26:04.236855	2025-03-22 05:26:04.236855
1234	Māzandarān	21	108	2025-03-22 05:26:04.241891	2025-03-22 05:26:04.241891
1235	Markazī	22	108	2025-03-22 05:26:04.24659	2025-03-22 05:26:04.24659
1236	Hormozgān	23	108	2025-03-22 05:26:04.251283	2025-03-22 05:26:04.251283
1237	Hamadān	24	108	2025-03-22 05:26:04.256305	2025-03-22 05:26:04.256305
1238	Yazd	25	108	2025-03-22 05:26:04.260844	2025-03-22 05:26:04.260844
1239	Qom	26	108	2025-03-22 05:26:04.265404	2025-03-22 05:26:04.265404
1240	Golestān	27	108	2025-03-22 05:26:04.270536	2025-03-22 05:26:04.270536
1241	Qazvīn	28	108	2025-03-22 05:26:04.278222	2025-03-22 05:26:04.278222
1242	Khorāsān-e Janūbī	29	108	2025-03-22 05:26:04.285486	2025-03-22 05:26:04.285486
1243	Khorāsān-e Razavī	30	108	2025-03-22 05:26:04.291451	2025-03-22 05:26:04.291451
1244	Khorāsān-e Shemālī	31	108	2025-03-22 05:26:04.296663	2025-03-22 05:26:04.296663
1245	Reykjavík	0	109	2025-03-22 05:26:04.30463	2025-03-22 05:26:04.30463
1246	Höfuðborgarsvæðið	1	109	2025-03-22 05:26:04.310372	2025-03-22 05:26:04.310372
1247	Suðurnes	2	109	2025-03-22 05:26:04.314974	2025-03-22 05:26:04.314974
1248	Vesturland	3	109	2025-03-22 05:26:04.321272	2025-03-22 05:26:04.321272
1249	Vestfirðir	4	109	2025-03-22 05:26:04.328389	2025-03-22 05:26:04.328389
1250	Norðurland vestra	5	109	2025-03-22 05:26:04.334906	2025-03-22 05:26:04.334906
1251	Norðurland eystra	6	109	2025-03-22 05:26:04.340846	2025-03-22 05:26:04.340846
1252	Austurland	7	109	2025-03-22 05:26:04.346226	2025-03-22 05:26:04.346226
1253	Suðurland	8	109	2025-03-22 05:26:04.350771	2025-03-22 05:26:04.350771
1254	Alessandria	AL	110	2025-03-22 05:26:04.418995	2025-03-22 05:26:04.418995
1255	Asti	AT	110	2025-03-22 05:26:04.424143	2025-03-22 05:26:04.424143
1256	Biella	BI	110	2025-03-22 05:26:04.428168	2025-03-22 05:26:04.428168
1257	Cuneo	CN	110	2025-03-22 05:26:04.432668	2025-03-22 05:26:04.432668
1258	Novara	NO	110	2025-03-22 05:26:04.437001	2025-03-22 05:26:04.437001
1259	Torino	TO	110	2025-03-22 05:26:04.441852	2025-03-22 05:26:04.441852
1260	Verbano-Cusio-Ossola	VB	110	2025-03-22 05:26:04.445862	2025-03-22 05:26:04.445862
1261	Vercelli	VC	110	2025-03-22 05:26:04.450516	2025-03-22 05:26:04.450516
1262	Aosta	AO	110	2025-03-22 05:26:04.454879	2025-03-22 05:26:04.454879
1263	Bergamo	BG	110	2025-03-22 05:26:04.459097	2025-03-22 05:26:04.459097
1264	Brescia	BS	110	2025-03-22 05:26:04.463409	2025-03-22 05:26:04.463409
1265	Como	CO	110	2025-03-22 05:26:04.468171	2025-03-22 05:26:04.468171
1266	Cremona	CR	110	2025-03-22 05:26:04.472358	2025-03-22 05:26:04.472358
1267	Lecco	LC	110	2025-03-22 05:26:04.476428	2025-03-22 05:26:04.476428
1268	Lodi	LO	110	2025-03-22 05:26:04.480693	2025-03-22 05:26:04.480693
1269	Monza e Brianza	MB	110	2025-03-22 05:26:04.485129	2025-03-22 05:26:04.485129
1270	Milano	MI	110	2025-03-22 05:26:04.489978	2025-03-22 05:26:04.489978
1271	Mantova	MN	110	2025-03-22 05:26:04.494506	2025-03-22 05:26:04.494506
1272	Pavia	PV	110	2025-03-22 05:26:04.499952	2025-03-22 05:26:04.499952
1273	Sondrio	SO	110	2025-03-22 05:26:04.505313	2025-03-22 05:26:04.505313
1274	Varese	VA	110	2025-03-22 05:26:04.509534	2025-03-22 05:26:04.509534
1275	Bolzano	BZ	110	2025-03-22 05:26:04.513825	2025-03-22 05:26:04.513825
1276	Trento	TN	110	2025-03-22 05:26:04.518122	2025-03-22 05:26:04.518122
1277	Belluno	BL	110	2025-03-22 05:26:04.524103	2025-03-22 05:26:04.524103
1278	Padova	PD	110	2025-03-22 05:26:04.528468	2025-03-22 05:26:04.528468
1279	Rovigo	RO	110	2025-03-22 05:26:04.533987	2025-03-22 05:26:04.533987
1280	Treviso	TV	110	2025-03-22 05:26:04.538954	2025-03-22 05:26:04.538954
1281	Venezia	VE	110	2025-03-22 05:26:04.544	2025-03-22 05:26:04.544
1282	Vicenza	VI	110	2025-03-22 05:26:04.548349	2025-03-22 05:26:04.548349
1283	Verona	VR	110	2025-03-22 05:26:04.553487	2025-03-22 05:26:04.553487
1284	Gorizia	GO	110	2025-03-22 05:26:04.557788	2025-03-22 05:26:04.557788
1285	Pordenone	PN	110	2025-03-22 05:26:04.562884	2025-03-22 05:26:04.562884
1286	Trieste	TS	110	2025-03-22 05:26:04.567486	2025-03-22 05:26:04.567486
1287	Udine	UD	110	2025-03-22 05:26:04.57191	2025-03-22 05:26:04.57191
1288	Genova	GE	110	2025-03-22 05:26:04.576525	2025-03-22 05:26:04.576525
1289	Imperia	IM	110	2025-03-22 05:26:04.580821	2025-03-22 05:26:04.580821
1290	La Spezia	SP	110	2025-03-22 05:26:04.585586	2025-03-22 05:26:04.585586
1291	Savona	SV	110	2025-03-22 05:26:04.589841	2025-03-22 05:26:04.589841
1292	Bologna	BO	110	2025-03-22 05:26:04.594697	2025-03-22 05:26:04.594697
1293	Forlì-Cesena	FC	110	2025-03-22 05:26:04.59897	2025-03-22 05:26:04.59897
1294	Ferrara	FE	110	2025-03-22 05:26:04.603786	2025-03-22 05:26:04.603786
1295	Modena	MO	110	2025-03-22 05:26:04.608276	2025-03-22 05:26:04.608276
1296	Piacenza	PC	110	2025-03-22 05:26:04.613027	2025-03-22 05:26:04.613027
1297	Parma	PR	110	2025-03-22 05:26:04.617204	2025-03-22 05:26:04.617204
1298	Ravenna	RA	110	2025-03-22 05:26:04.62222	2025-03-22 05:26:04.62222
1299	Reggio Emilia	RE	110	2025-03-22 05:26:04.627408	2025-03-22 05:26:04.627408
1300	Rimini	RN	110	2025-03-22 05:26:04.631605	2025-03-22 05:26:04.631605
1301	Arezzo	AR	110	2025-03-22 05:26:04.636258	2025-03-22 05:26:04.636258
1302	Firenze	FI	110	2025-03-22 05:26:04.6409	2025-03-22 05:26:04.6409
1303	Grosseto	GR	110	2025-03-22 05:26:04.645448	2025-03-22 05:26:04.645448
1304	Livorno	LI	110	2025-03-22 05:26:04.649706	2025-03-22 05:26:04.649706
1305	Lucca	LU	110	2025-03-22 05:26:04.6541	2025-03-22 05:26:04.6541
1306	Massa-Carrara	MS	110	2025-03-22 05:26:04.658569	2025-03-22 05:26:04.658569
1307	Pisa	PI	110	2025-03-22 05:26:04.663274	2025-03-22 05:26:04.663274
1308	Prato	PO	110	2025-03-22 05:26:04.667497	2025-03-22 05:26:04.667497
1309	Pistoia	PT	110	2025-03-22 05:26:04.671913	2025-03-22 05:26:04.671913
1310	Siena	SI	110	2025-03-22 05:26:04.676966	2025-03-22 05:26:04.676966
1311	Perugia	PG	110	2025-03-22 05:26:04.681293	2025-03-22 05:26:04.681293
1312	Terni	TR	110	2025-03-22 05:26:04.687472	2025-03-22 05:26:04.687472
1313	Ancona	AN	110	2025-03-22 05:26:04.693215	2025-03-22 05:26:04.693215
1314	Ascoli Piceno	AP	110	2025-03-22 05:26:04.697641	2025-03-22 05:26:04.697641
1315	Fermo	FM	110	2025-03-22 05:26:04.702921	2025-03-22 05:26:04.702921
1316	Macerata	MC	110	2025-03-22 05:26:04.707737	2025-03-22 05:26:04.707737
1317	Pesaro e Urbino	PU	110	2025-03-22 05:26:04.712549	2025-03-22 05:26:04.712549
1318	Frosinone	FR	110	2025-03-22 05:26:04.716751	2025-03-22 05:26:04.716751
1319	Latina	LT	110	2025-03-22 05:26:04.72261	2025-03-22 05:26:04.72261
1320	Rieti	RI	110	2025-03-22 05:26:04.727203	2025-03-22 05:26:04.727203
1321	Roma	RM	110	2025-03-22 05:26:04.732385	2025-03-22 05:26:04.732385
1322	Viterbo	VT	110	2025-03-22 05:26:04.737113	2025-03-22 05:26:04.737113
1323	L'Aquila	AQ	110	2025-03-22 05:26:04.743178	2025-03-22 05:26:04.743178
1324	Chieti	CH	110	2025-03-22 05:26:04.747651	2025-03-22 05:26:04.747651
1325	Pescara	PE	110	2025-03-22 05:26:04.752638	2025-03-22 05:26:04.752638
1326	Teramo	TE	110	2025-03-22 05:26:04.757663	2025-03-22 05:26:04.757663
1327	Campobasso	CB	110	2025-03-22 05:26:04.762173	2025-03-22 05:26:04.762173
1328	Isernia	IS	110	2025-03-22 05:26:04.767046	2025-03-22 05:26:04.767046
1329	Avellino	AV	110	2025-03-22 05:26:04.772095	2025-03-22 05:26:04.772095
1330	Benevento	BN	110	2025-03-22 05:26:04.777061	2025-03-22 05:26:04.777061
1331	Caserta	CE	110	2025-03-22 05:26:04.781402	2025-03-22 05:26:04.781402
1332	Napoli	NA	110	2025-03-22 05:26:04.786359	2025-03-22 05:26:04.786359
1333	Salerno	SA	110	2025-03-22 05:26:04.791648	2025-03-22 05:26:04.791648
1334	Bari	BA	110	2025-03-22 05:26:04.796059	2025-03-22 05:26:04.796059
1335	Brindisi	BR	110	2025-03-22 05:26:04.80042	2025-03-22 05:26:04.80042
1336	Barletta-Andria-Trani	BT	110	2025-03-22 05:26:04.805155	2025-03-22 05:26:04.805155
1337	Foggia	FG	110	2025-03-22 05:26:04.809343	2025-03-22 05:26:04.809343
1338	Lecce	LE	110	2025-03-22 05:26:04.813926	2025-03-22 05:26:04.813926
1339	Taranto	TA	110	2025-03-22 05:26:04.819221	2025-03-22 05:26:04.819221
1340	Matera	MT	110	2025-03-22 05:26:04.823878	2025-03-22 05:26:04.823878
1341	Potenza	PZ	110	2025-03-22 05:26:04.828254	2025-03-22 05:26:04.828254
1342	Cosenza	CS	110	2025-03-22 05:26:04.832888	2025-03-22 05:26:04.832888
1343	Catanzaro	CZ	110	2025-03-22 05:26:04.837753	2025-03-22 05:26:04.837753
1344	Crotone	KR	110	2025-03-22 05:26:04.84299	2025-03-22 05:26:04.84299
1345	Reggio Calabria	RC	110	2025-03-22 05:26:04.847879	2025-03-22 05:26:04.847879
1346	Vibo Valentia	VV	110	2025-03-22 05:26:04.854591	2025-03-22 05:26:04.854591
1347	Agrigento	AG	110	2025-03-22 05:26:04.859307	2025-03-22 05:26:04.859307
1348	Caltanissetta	CL	110	2025-03-22 05:26:04.864835	2025-03-22 05:26:04.864835
1349	Catania	CT	110	2025-03-22 05:26:04.870577	2025-03-22 05:26:04.870577
1350	Enna	EN	110	2025-03-22 05:26:04.875465	2025-03-22 05:26:04.875465
1351	Messina	ME	110	2025-03-22 05:26:04.880811	2025-03-22 05:26:04.880811
1352	Palermo	PA	110	2025-03-22 05:26:04.886046	2025-03-22 05:26:04.886046
1353	Ragusa	RG	110	2025-03-22 05:26:04.891515	2025-03-22 05:26:04.891515
1354	Siracusa	SR	110	2025-03-22 05:26:04.896319	2025-03-22 05:26:04.896319
1355	Trapani	TP	110	2025-03-22 05:26:04.90185	2025-03-22 05:26:04.90185
1356	Cagliari	CA	110	2025-03-22 05:26:04.906563	2025-03-22 05:26:04.906563
1357	Carbonia-Iglesias	CI	110	2025-03-22 05:26:04.911877	2025-03-22 05:26:04.911877
1358	Nuoro	NU	110	2025-03-22 05:26:04.916446	2025-03-22 05:26:04.916446
1359	Ogliastra	OG	110	2025-03-22 05:26:04.921702	2025-03-22 05:26:04.921702
1360	Oristano	OR	110	2025-03-22 05:26:04.926712	2025-03-22 05:26:04.926712
1361	Olbia-Tempio	OT	110	2025-03-22 05:26:04.93136	2025-03-22 05:26:04.93136
1362	Sassari	SS	110	2025-03-22 05:26:04.936533	2025-03-22 05:26:04.936533
1363	Medio Campidano	VS	110	2025-03-22 05:26:04.941685	2025-03-22 05:26:04.941685
1364	Kingston	01	112	2025-03-22 05:26:04.947062	2025-03-22 05:26:04.947062
1365	Saint Andrew	02	112	2025-03-22 05:26:04.952117	2025-03-22 05:26:04.952117
1366	Saint Thomas	03	112	2025-03-22 05:26:04.957195	2025-03-22 05:26:04.957195
1367	Portland	04	112	2025-03-22 05:26:04.962622	2025-03-22 05:26:04.962622
1368	Saint Mary	05	112	2025-03-22 05:26:04.967316	2025-03-22 05:26:04.967316
1369	Saint Ann	06	112	2025-03-22 05:26:04.973213	2025-03-22 05:26:04.973213
1370	Trelawny	07	112	2025-03-22 05:26:04.977702	2025-03-22 05:26:04.977702
1371	Saint James	08	112	2025-03-22 05:26:04.98217	2025-03-22 05:26:04.98217
1372	Hanover	09	112	2025-03-22 05:26:04.987059	2025-03-22 05:26:04.987059
1373	Westmoreland	10	112	2025-03-22 05:26:04.991805	2025-03-22 05:26:04.991805
1374	Saint Elizabeth	11	112	2025-03-22 05:26:04.996331	2025-03-22 05:26:04.996331
1375	Manchester	12	112	2025-03-22 05:26:05.001444	2025-03-22 05:26:05.001444
1376	Clarendon	13	112	2025-03-22 05:26:05.006278	2025-03-22 05:26:05.006278
1377	Saint Catherine	14	112	2025-03-22 05:26:05.010758	2025-03-22 05:26:05.010758
1378	‘Ajlūn	AJ	113	2025-03-22 05:26:05.015419	2025-03-22 05:26:05.015419
1379	‘Ammān (Al ‘Aşimah)	AM	113	2025-03-22 05:26:05.020075	2025-03-22 05:26:05.020075
1380	Al ‘Aqabah	AQ	113	2025-03-22 05:26:05.025882	2025-03-22 05:26:05.025882
1381	Aţ Ţafīlah	AT	113	2025-03-22 05:26:05.030642	2025-03-22 05:26:05.030642
1382	Az Zarqā'	AZ	113	2025-03-22 05:26:05.036562	2025-03-22 05:26:05.036562
1383	Al Balqā'	BA	113	2025-03-22 05:26:05.041272	2025-03-22 05:26:05.041272
1384	Irbid	IR	113	2025-03-22 05:26:05.047517	2025-03-22 05:26:05.047517
1385	Jarash	JA	113	2025-03-22 05:26:05.052218	2025-03-22 05:26:05.052218
1386	Al Karak	KA	113	2025-03-22 05:26:05.057431	2025-03-22 05:26:05.057431
1387	Al Mafraq	MA	113	2025-03-22 05:26:05.062338	2025-03-22 05:26:05.062338
1388	Mādabā	MD	113	2025-03-22 05:26:05.066916	2025-03-22 05:26:05.066916
1389	Ma‘ān	MN	113	2025-03-22 05:26:05.072221	2025-03-22 05:26:05.072221
1390	Hokkaido	01	114	2025-03-22 05:26:05.076682	2025-03-22 05:26:05.076682
1391	Aomori	02	114	2025-03-22 05:26:05.081668	2025-03-22 05:26:05.081668
1392	Iwate	03	114	2025-03-22 05:26:05.086369	2025-03-22 05:26:05.086369
1393	Miyagi	04	114	2025-03-22 05:26:05.091112	2025-03-22 05:26:05.091112
1394	Akita	05	114	2025-03-22 05:26:05.095885	2025-03-22 05:26:05.095885
1395	Yamagata	06	114	2025-03-22 05:26:05.100488	2025-03-22 05:26:05.100488
1396	Fukushima	07	114	2025-03-22 05:26:05.105314	2025-03-22 05:26:05.105314
1397	Ibaraki	08	114	2025-03-22 05:26:05.110165	2025-03-22 05:26:05.110165
1398	Tochigi	09	114	2025-03-22 05:26:05.114858	2025-03-22 05:26:05.114858
1399	Gunma	10	114	2025-03-22 05:26:05.119547	2025-03-22 05:26:05.119547
1400	Saitama	11	114	2025-03-22 05:26:05.124442	2025-03-22 05:26:05.124442
1401	Chiba	12	114	2025-03-22 05:26:05.129361	2025-03-22 05:26:05.129361
1402	Tokyo	13	114	2025-03-22 05:26:05.134635	2025-03-22 05:26:05.134635
1403	Kanagawa	14	114	2025-03-22 05:26:05.13893	2025-03-22 05:26:05.13893
1404	Niigata	15	114	2025-03-22 05:26:05.143572	2025-03-22 05:26:05.143572
1405	Toyama	16	114	2025-03-22 05:26:05.147631	2025-03-22 05:26:05.147631
1406	Ishikawa	17	114	2025-03-22 05:26:05.152788	2025-03-22 05:26:05.152788
1407	Fukui	18	114	2025-03-22 05:26:05.157088	2025-03-22 05:26:05.157088
1408	Yamanashi	19	114	2025-03-22 05:26:05.161349	2025-03-22 05:26:05.161349
1409	Nagano	20	114	2025-03-22 05:26:05.16627	2025-03-22 05:26:05.16627
1410	Gifu	21	114	2025-03-22 05:26:05.171068	2025-03-22 05:26:05.171068
1411	Shizuoka	22	114	2025-03-22 05:26:05.175485	2025-03-22 05:26:05.175485
1412	Aichi	23	114	2025-03-22 05:26:05.179669	2025-03-22 05:26:05.179669
1413	Mie	24	114	2025-03-22 05:26:05.184818	2025-03-22 05:26:05.184818
1414	Shiga	25	114	2025-03-22 05:26:05.191226	2025-03-22 05:26:05.191226
1415	Kyoto	26	114	2025-03-22 05:26:05.196648	2025-03-22 05:26:05.196648
1416	Osaka	27	114	2025-03-22 05:26:05.202349	2025-03-22 05:26:05.202349
1417	Hyogo	28	114	2025-03-22 05:26:05.207156	2025-03-22 05:26:05.207156
1418	Nara	29	114	2025-03-22 05:26:05.212431	2025-03-22 05:26:05.212431
1419	Wakayama	30	114	2025-03-22 05:26:05.217385	2025-03-22 05:26:05.217385
1420	Tottori	31	114	2025-03-22 05:26:05.222969	2025-03-22 05:26:05.222969
1421	Shimane	32	114	2025-03-22 05:26:05.227388	2025-03-22 05:26:05.227388
1422	Okayama	33	114	2025-03-22 05:26:05.232594	2025-03-22 05:26:05.232594
1423	Hiroshima	34	114	2025-03-22 05:26:05.237156	2025-03-22 05:26:05.237156
1424	Yamaguchi	35	114	2025-03-22 05:26:05.241917	2025-03-22 05:26:05.241917
1425	Tokushima	36	114	2025-03-22 05:26:05.247461	2025-03-22 05:26:05.247461
1426	Kagawa	37	114	2025-03-22 05:26:05.253052	2025-03-22 05:26:05.253052
1427	Ehime	38	114	2025-03-22 05:26:05.257832	2025-03-22 05:26:05.257832
1428	Kochi	39	114	2025-03-22 05:26:05.26226	2025-03-22 05:26:05.26226
1429	Fukuoka	40	114	2025-03-22 05:26:05.266953	2025-03-22 05:26:05.266953
1430	Saga	41	114	2025-03-22 05:26:05.271863	2025-03-22 05:26:05.271863
1431	Nagasaki	42	114	2025-03-22 05:26:05.276455	2025-03-22 05:26:05.276455
1432	Kumamoto	43	114	2025-03-22 05:26:05.280777	2025-03-22 05:26:05.280777
1433	Oita	44	114	2025-03-22 05:26:05.287427	2025-03-22 05:26:05.287427
1434	Miyazaki	45	114	2025-03-22 05:26:05.29265	2025-03-22 05:26:05.29265
1435	Kagoshima	46	114	2025-03-22 05:26:05.298169	2025-03-22 05:26:05.298169
1436	Okinawa	47	114	2025-03-22 05:26:05.303351	2025-03-22 05:26:05.303351
1437	Baringo	01	115	2025-03-22 05:26:05.30808	2025-03-22 05:26:05.30808
1438	Bomet	02	115	2025-03-22 05:26:05.312335	2025-03-22 05:26:05.312335
1439	Bungoma	03	115	2025-03-22 05:26:05.316791	2025-03-22 05:26:05.316791
1440	Busia	04	115	2025-03-22 05:26:05.32181	2025-03-22 05:26:05.32181
1441	Elgeyo/Marakwet	05	115	2025-03-22 05:26:05.326296	2025-03-22 05:26:05.326296
1442	Embu	06	115	2025-03-22 05:26:05.33102	2025-03-22 05:26:05.33102
1443	Garissa	07	115	2025-03-22 05:26:05.335991	2025-03-22 05:26:05.335991
1444	Homa Bay	08	115	2025-03-22 05:26:05.340707	2025-03-22 05:26:05.340707
1445	Isiolo	09	115	2025-03-22 05:26:05.34543	2025-03-22 05:26:05.34543
1446	Kajiado	10	115	2025-03-22 05:26:05.350621	2025-03-22 05:26:05.350621
1447	Kakamega	11	115	2025-03-22 05:26:05.355434	2025-03-22 05:26:05.355434
1448	Kericho	12	115	2025-03-22 05:26:05.36018	2025-03-22 05:26:05.36018
1449	Kiambu	13	115	2025-03-22 05:26:05.36694	2025-03-22 05:26:05.36694
1450	Kilifi	14	115	2025-03-22 05:26:05.371926	2025-03-22 05:26:05.371926
1451	Kirinyaga	15	115	2025-03-22 05:26:05.377827	2025-03-22 05:26:05.377827
1452	Kisii	16	115	2025-03-22 05:26:05.383279	2025-03-22 05:26:05.383279
1453	Kisumu	17	115	2025-03-22 05:26:05.387913	2025-03-22 05:26:05.387913
1454	Kitui	18	115	2025-03-22 05:26:05.393409	2025-03-22 05:26:05.393409
1455	Kwale	19	115	2025-03-22 05:26:05.398565	2025-03-22 05:26:05.398565
1456	Laikipia	20	115	2025-03-22 05:26:05.404219	2025-03-22 05:26:05.404219
1457	Lamu	21	115	2025-03-22 05:26:05.409115	2025-03-22 05:26:05.409115
1458	Machakos	22	115	2025-03-22 05:26:05.414641	2025-03-22 05:26:05.414641
1459	Makueni	23	115	2025-03-22 05:26:05.419213	2025-03-22 05:26:05.419213
1460	Mandera	24	115	2025-03-22 05:26:05.424638	2025-03-22 05:26:05.424638
1461	Marsabit	25	115	2025-03-22 05:26:05.429501	2025-03-22 05:26:05.429501
1462	Meru	26	115	2025-03-22 05:26:05.434485	2025-03-22 05:26:05.434485
1463	Migori	27	115	2025-03-22 05:26:05.439751	2025-03-22 05:26:05.439751
1464	Mombasa	28	115	2025-03-22 05:26:05.444334	2025-03-22 05:26:05.444334
1465	Murang'a	29	115	2025-03-22 05:26:05.44909	2025-03-22 05:26:05.44909
1466	Nairobi City	30	115	2025-03-22 05:26:05.454164	2025-03-22 05:26:05.454164
1467	Nakuru	31	115	2025-03-22 05:26:05.458999	2025-03-22 05:26:05.458999
1468	Nandi	32	115	2025-03-22 05:26:05.463529	2025-03-22 05:26:05.463529
1469	Narok	33	115	2025-03-22 05:26:05.468127	2025-03-22 05:26:05.468127
1470	Nyamira	34	115	2025-03-22 05:26:05.473632	2025-03-22 05:26:05.473632
1471	Nyandarua	35	115	2025-03-22 05:26:05.478564	2025-03-22 05:26:05.478564
1472	Nyeri	36	115	2025-03-22 05:26:05.483493	2025-03-22 05:26:05.483493
1473	Samburu	37	115	2025-03-22 05:26:05.488484	2025-03-22 05:26:05.488484
1474	Siaya	38	115	2025-03-22 05:26:05.493143	2025-03-22 05:26:05.493143
1475	Taita/Taveta	39	115	2025-03-22 05:26:05.497557	2025-03-22 05:26:05.497557
1476	Tana River	40	115	2025-03-22 05:26:05.502428	2025-03-22 05:26:05.502428
1477	Tharaka-Nithi	41	115	2025-03-22 05:26:05.507052	2025-03-22 05:26:05.507052
1478	Trans Nzoia	42	115	2025-03-22 05:26:05.511502	2025-03-22 05:26:05.511502
1479	Turkana	43	115	2025-03-22 05:26:05.515871	2025-03-22 05:26:05.515871
1480	Uasin Gishu	44	115	2025-03-22 05:26:05.520497	2025-03-22 05:26:05.520497
1481	Vihiga	45	115	2025-03-22 05:26:05.524928	2025-03-22 05:26:05.524928
1482	Wajir	46	115	2025-03-22 05:26:05.529316	2025-03-22 05:26:05.529316
1483	West Pokot	47	115	2025-03-22 05:26:05.535826	2025-03-22 05:26:05.535826
1484	Batken	B	116	2025-03-22 05:26:05.540575	2025-03-22 05:26:05.540575
1485	Chü	C	116	2025-03-22 05:26:05.54612	2025-03-22 05:26:05.54612
1486	Bishkek	GB	116	2025-03-22 05:26:05.551213	2025-03-22 05:26:05.551213
1487	Jalal-Abad	J	116	2025-03-22 05:26:05.555719	2025-03-22 05:26:05.555719
1488	Naryn	N	116	2025-03-22 05:26:05.560844	2025-03-22 05:26:05.560844
1489	Osh	O	116	2025-03-22 05:26:05.565526	2025-03-22 05:26:05.565526
1490	Talas	T	116	2025-03-22 05:26:05.570514	2025-03-22 05:26:05.570514
1491	Ysyk-Köl	Y	116	2025-03-22 05:26:05.574907	2025-03-22 05:26:05.574907
1492	Banteay Mean Chey	1	117	2025-03-22 05:26:05.579846	2025-03-22 05:26:05.579846
1493	Krachoh	10	117	2025-03-22 05:26:05.584526	2025-03-22 05:26:05.584526
1494	Mondol Kiri	11	117	2025-03-22 05:26:05.589344	2025-03-22 05:26:05.589344
1495	Phnom Penh	12	117	2025-03-22 05:26:05.59363	2025-03-22 05:26:05.59363
1496	Preah Vihear	13	117	2025-03-22 05:26:05.598371	2025-03-22 05:26:05.598371
1497	Prey Veaeng	14	117	2025-03-22 05:26:05.602558	2025-03-22 05:26:05.602558
1498	Pousaat	15	117	2025-03-22 05:26:05.607298	2025-03-22 05:26:05.607298
1499	Rotanak Kiri	16	117	2025-03-22 05:26:05.611827	2025-03-22 05:26:05.611827
1500	Siem Reab	17	117	2025-03-22 05:26:05.616484	2025-03-22 05:26:05.616484
1501	Krong Preah Sihanouk	18	117	2025-03-22 05:26:05.620974	2025-03-22 05:26:05.620974
1502	Stueng Traeng	19	117	2025-03-22 05:26:05.625561	2025-03-22 05:26:05.625561
1503	Battambang	2	117	2025-03-22 05:26:05.630208	2025-03-22 05:26:05.630208
1504	Svaay Rieng	20	117	2025-03-22 05:26:05.634576	2025-03-22 05:26:05.634576
1505	Taakaev	21	117	2025-03-22 05:26:05.639868	2025-03-22 05:26:05.639868
1506	Otdar Mean Chey	22	117	2025-03-22 05:26:05.644598	2025-03-22 05:26:05.644598
1507	Krong Kaeb	23	117	2025-03-22 05:26:05.648944	2025-03-22 05:26:05.648944
1508	Krong Pailin	24	117	2025-03-22 05:26:05.653284	2025-03-22 05:26:05.653284
1509	Kampong Cham	3	117	2025-03-22 05:26:05.657404	2025-03-22 05:26:05.657404
1510	Kampong Chhnang	4	117	2025-03-22 05:26:05.661727	2025-03-22 05:26:05.661727
1511	Kampong Speu	5	117	2025-03-22 05:26:05.666603	2025-03-22 05:26:05.666603
1512	Kampong Thom	6	117	2025-03-22 05:26:05.670917	2025-03-22 05:26:05.670917
1513	Kampot	7	117	2025-03-22 05:26:05.676221	2025-03-22 05:26:05.676221
1514	Kandal	8	117	2025-03-22 05:26:05.680827	2025-03-22 05:26:05.680827
1515	Kach Kong	9	117	2025-03-22 05:26:05.685143	2025-03-22 05:26:05.685143
1516	Gilbert Islands	G	118	2025-03-22 05:26:05.689438	2025-03-22 05:26:05.689438
1517	Line Islands	L	118	2025-03-22 05:26:05.696228	2025-03-22 05:26:05.696228
1518	Phoenix Islands	P	118	2025-03-22 05:26:05.700793	2025-03-22 05:26:05.700793
1519	Andjouân (Anjwān)	A	119	2025-03-22 05:26:05.705816	2025-03-22 05:26:05.705816
1520	Andjazîdja (Anjazījah)	G	119	2025-03-22 05:26:05.711269	2025-03-22 05:26:05.711269
1521	Moûhîlî (Mūhīlī)	M	119	2025-03-22 05:26:05.716304	2025-03-22 05:26:05.716304
1522	Saint Kitts	K	120	2025-03-22 05:26:05.721477	2025-03-22 05:26:05.721477
1523	Nevis	N	120	2025-03-22 05:26:05.726675	2025-03-22 05:26:05.726675
1524	P’yŏngyang	01	121	2025-03-22 05:26:05.731539	2025-03-22 05:26:05.731539
1525	P’yŏngan-namdo	02	121	2025-03-22 05:26:05.735736	2025-03-22 05:26:05.735736
1526	P’yŏngan-bukto	03	121	2025-03-22 05:26:05.740634	2025-03-22 05:26:05.740634
1527	Chagang-do	04	121	2025-03-22 05:26:05.745386	2025-03-22 05:26:05.745386
1528	Hwanghae-namdo	05	121	2025-03-22 05:26:05.750286	2025-03-22 05:26:05.750286
1529	Hwanghae-bukto	06	121	2025-03-22 05:26:05.754672	2025-03-22 05:26:05.754672
1530	Kangwŏn-do	07	121	2025-03-22 05:26:05.759303	2025-03-22 05:26:05.759303
1531	Hamgyŏng-namdo	08	121	2025-03-22 05:26:05.763624	2025-03-22 05:26:05.763624
1532	Hamgyŏng-bukto	09	121	2025-03-22 05:26:05.768102	2025-03-22 05:26:05.768102
1533	Yanggang-do	10	121	2025-03-22 05:26:05.772666	2025-03-22 05:26:05.772666
1534	Nasŏn (Najin-Sŏnbong)	13	121	2025-03-22 05:26:05.777052	2025-03-22 05:26:05.777052
1535	Seoul Teugbyeolsi	11	122	2025-03-22 05:26:05.781386	2025-03-22 05:26:05.781386
1536	Busan Gwang'yeogsi	26	122	2025-03-22 05:26:05.786676	2025-03-22 05:26:05.786676
1537	Daegu Gwang'yeogsi	27	122	2025-03-22 05:26:05.793212	2025-03-22 05:26:05.793212
1538	Incheon Gwang'yeogsi	28	122	2025-03-22 05:26:05.79818	2025-03-22 05:26:05.79818
1539	Gwangju Gwang'yeogsi	29	122	2025-03-22 05:26:05.803558	2025-03-22 05:26:05.803558
1540	Daejeon Gwang'yeogsi	30	122	2025-03-22 05:26:05.807771	2025-03-22 05:26:05.807771
1541	Ulsan Gwang'yeogsi	31	122	2025-03-22 05:26:05.812082	2025-03-22 05:26:05.812082
1542	Gyeonggido	41	122	2025-03-22 05:26:05.816308	2025-03-22 05:26:05.816308
1543	Gang'weondo	42	122	2025-03-22 05:26:05.820429	2025-03-22 05:26:05.820429
1544	Chungcheongbukdo	43	122	2025-03-22 05:26:05.824773	2025-03-22 05:26:05.824773
1545	Chungcheongnamdo	44	122	2025-03-22 05:26:05.828849	2025-03-22 05:26:05.828849
1546	Jeonrabukdo	45	122	2025-03-22 05:26:05.833898	2025-03-22 05:26:05.833898
1547	Jeonranamdo	46	122	2025-03-22 05:26:05.838156	2025-03-22 05:26:05.838156
1548	Gyeongsangbukdo	47	122	2025-03-22 05:26:05.84225	2025-03-22 05:26:05.84225
1549	Gyeongsangnamdo	48	122	2025-03-22 05:26:05.846767	2025-03-22 05:26:05.846767
1550	Jejudo	49	122	2025-03-22 05:26:05.851173	2025-03-22 05:26:05.851173
1551	Al Ahmadi	AH	123	2025-03-22 05:26:05.855431	2025-03-22 05:26:05.855431
1552	Al Farwānīyah	FA	123	2025-03-22 05:26:05.861197	2025-03-22 05:26:05.861197
1553	Hawallī	HA	123	2025-03-22 05:26:05.866509	2025-03-22 05:26:05.866509
1554	Al Jahrrā’	JA	123	2025-03-22 05:26:05.870788	2025-03-22 05:26:05.870788
1555	Al Kuwayt (Al ‘Āşimah)	KU	123	2025-03-22 05:26:05.875616	2025-03-22 05:26:05.875616
1556	Mubārak al Kabīr	MU	123	2025-03-22 05:26:05.880041	2025-03-22 05:26:05.880041
1557	Aqmola oblysy	AKM	125	2025-03-22 05:26:05.885099	2025-03-22 05:26:05.885099
1558	Aqtöbe oblysy	AKT	125	2025-03-22 05:26:05.889396	2025-03-22 05:26:05.889396
1559	Almaty	ALA	125	2025-03-22 05:26:05.894181	2025-03-22 05:26:05.894181
1560	Almaty oblysy	ALM	125	2025-03-22 05:26:05.898425	2025-03-22 05:26:05.898425
1561	Astana	AST	125	2025-03-22 05:26:05.903426	2025-03-22 05:26:05.903426
1562	Atyraū oblysy	ATY	125	2025-03-22 05:26:05.907578	2025-03-22 05:26:05.907578
1563	Qaraghandy oblysy	KAR	125	2025-03-22 05:26:05.912522	2025-03-22 05:26:05.912522
1564	Qostanay oblysy	KUS	125	2025-03-22 05:26:05.916916	2025-03-22 05:26:05.916916
1565	Qyzylorda oblysy	KZY	125	2025-03-22 05:26:05.921597	2025-03-22 05:26:05.921597
1566	Mangghystaū oblysy	MAN	125	2025-03-22 05:26:05.926509	2025-03-22 05:26:05.926509
1567	Pavlodar oblysy	PAV	125	2025-03-22 05:26:05.93073	2025-03-22 05:26:05.93073
1568	Soltüstik Quzaqstan oblysy	SEV	125	2025-03-22 05:26:05.935367	2025-03-22 05:26:05.935367
1569	Shyghys Qazaqstan oblysy	VOS	125	2025-03-22 05:26:05.940219	2025-03-22 05:26:05.940219
1570	Ongtüstik Qazaqstan oblysy	YUZ	125	2025-03-22 05:26:05.944847	2025-03-22 05:26:05.944847
1571	Batys Quzaqstan oblysy	ZAP	125	2025-03-22 05:26:05.949228	2025-03-22 05:26:05.949228
1572	Zhambyl oblysy	ZHA	125	2025-03-22 05:26:05.954005	2025-03-22 05:26:05.954005
1573	Attapu	AT	126	2025-03-22 05:26:05.959234	2025-03-22 05:26:05.959234
1574	Bokèo	BK	126	2025-03-22 05:26:05.96366	2025-03-22 05:26:05.96366
1575	Bolikhamxai	BL	126	2025-03-22 05:26:05.968304	2025-03-22 05:26:05.968304
1576	Champasak	CH	126	2025-03-22 05:26:05.97322	2025-03-22 05:26:05.97322
1577	Houaphan	HO	126	2025-03-22 05:26:05.977441	2025-03-22 05:26:05.977441
1578	Khammouan	KH	126	2025-03-22 05:26:05.981895	2025-03-22 05:26:05.981895
1579	Louang Namtha	LM	126	2025-03-22 05:26:05.98729	2025-03-22 05:26:05.98729
1580	Louangphabang	LP	126	2025-03-22 05:26:05.991835	2025-03-22 05:26:05.991835
1581	Oudômxai	OU	126	2025-03-22 05:26:05.996343	2025-03-22 05:26:05.996343
1582	Phôngsali	PH	126	2025-03-22 05:26:06.00087	2025-03-22 05:26:06.00087
1583	Salavan	SL	126	2025-03-22 05:26:06.005457	2025-03-22 05:26:06.005457
1584	Savannakhét	SV	126	2025-03-22 05:26:06.009775	2025-03-22 05:26:06.009775
1585	Vientiane	VI	126	2025-03-22 05:26:06.014018	2025-03-22 05:26:06.014018
1586	Vientiane	VT	126	2025-03-22 05:26:06.019785	2025-03-22 05:26:06.019785
1587	Xaignabouli	XA	126	2025-03-22 05:26:06.024641	2025-03-22 05:26:06.024641
1588	Xékong	XE	126	2025-03-22 05:26:06.029588	2025-03-22 05:26:06.029588
1589	Xiangkhouang	XI	126	2025-03-22 05:26:06.034535	2025-03-22 05:26:06.034535
1590	Xaisômboun	XS	126	2025-03-22 05:26:06.03886	2025-03-22 05:26:06.03886
1591	Aakkâr	AK	127	2025-03-22 05:26:06.044278	2025-03-22 05:26:06.044278
1592	Liban-Nord	AS	127	2025-03-22 05:26:06.049048	2025-03-22 05:26:06.049048
1593	Beyrouth	BA	127	2025-03-22 05:26:06.05444	2025-03-22 05:26:06.05444
1594	Baalbek-Hermel	BH	127	2025-03-22 05:26:06.058577	2025-03-22 05:26:06.058577
1595	Béqaa	BI	127	2025-03-22 05:26:06.063256	2025-03-22 05:26:06.063256
1596	Liban-Sud	JA	127	2025-03-22 05:26:06.067603	2025-03-22 05:26:06.067603
1597	Mont-Liban	JL	127	2025-03-22 05:26:06.072543	2025-03-22 05:26:06.072543
1598	Nabatîyé	NA	127	2025-03-22 05:26:06.076715	2025-03-22 05:26:06.076715
1599	Balzers	01	129	2025-03-22 05:26:06.081716	2025-03-22 05:26:06.081716
1600	Eschen	02	129	2025-03-22 05:26:06.086782	2025-03-22 05:26:06.086782
1601	Gamprin	03	129	2025-03-22 05:26:06.091878	2025-03-22 05:26:06.091878
1602	Mauren	04	129	2025-03-22 05:26:06.096538	2025-03-22 05:26:06.096538
1603	Planken	05	129	2025-03-22 05:26:06.101251	2025-03-22 05:26:06.101251
1604	Ruggell	06	129	2025-03-22 05:26:06.105875	2025-03-22 05:26:06.105875
1605	Schaan	07	129	2025-03-22 05:26:06.110123	2025-03-22 05:26:06.110123
1606	Schellenberg	08	129	2025-03-22 05:26:06.114543	2025-03-22 05:26:06.114543
1607	Triesen	09	129	2025-03-22 05:26:06.119418	2025-03-22 05:26:06.119418
1608	Triesenberg	10	129	2025-03-22 05:26:06.123658	2025-03-22 05:26:06.123658
1609	Vaduz	11	129	2025-03-22 05:26:06.127799	2025-03-22 05:26:06.127799
1610	Basnāhira paḷāta	1	130	2025-03-22 05:26:06.132388	2025-03-22 05:26:06.132388
1611	Madhyama paḷāta	2	130	2025-03-22 05:26:06.136853	2025-03-22 05:26:06.136853
1612	Dakuṇu paḷāta	3	130	2025-03-22 05:26:06.141069	2025-03-22 05:26:06.141069
1613	Uturu paḷāta	4	130	2025-03-22 05:26:06.145523	2025-03-22 05:26:06.145523
1614	Næ̆gĕnahira paḷāta	5	130	2025-03-22 05:26:06.149802	2025-03-22 05:26:06.149802
1615	Vayamba paḷāta	6	130	2025-03-22 05:26:06.15458	2025-03-22 05:26:06.15458
1616	Uturumæ̆da paḷāta	7	130	2025-03-22 05:26:06.158968	2025-03-22 05:26:06.158968
1617	Ūva paḷāta	8	130	2025-03-22 05:26:06.163394	2025-03-22 05:26:06.163394
1618	Sabaragamuva paḷāta	9	130	2025-03-22 05:26:06.16767	2025-03-22 05:26:06.16767
1619	Bong	BG	131	2025-03-22 05:26:06.171973	2025-03-22 05:26:06.171973
1620	Bomi	BM	131	2025-03-22 05:26:06.177747	2025-03-22 05:26:06.177747
1621	Grand Cape Mount	CM	131	2025-03-22 05:26:06.182161	2025-03-22 05:26:06.182161
1622	Grand Bassa	GB	131	2025-03-22 05:26:06.187393	2025-03-22 05:26:06.187393
1623	Grand Gedeh	GG	131	2025-03-22 05:26:06.19259	2025-03-22 05:26:06.19259
1624	Grand Kru	GK	131	2025-03-22 05:26:06.197291	2025-03-22 05:26:06.197291
1625	Lofa	LO	131	2025-03-22 05:26:06.202557	2025-03-22 05:26:06.202557
1626	Margibi	MG	131	2025-03-22 05:26:06.207516	2025-03-22 05:26:06.207516
1627	Montserrado	MO	131	2025-03-22 05:26:06.212809	2025-03-22 05:26:06.212809
1628	Maryland	MY	131	2025-03-22 05:26:06.217218	2025-03-22 05:26:06.217218
1629	Nimba	NI	131	2025-03-22 05:26:06.22226	2025-03-22 05:26:06.22226
1630	Rivercess	RI	131	2025-03-22 05:26:06.227202	2025-03-22 05:26:06.227202
1631	Sinoe	SI	131	2025-03-22 05:26:06.233339	2025-03-22 05:26:06.233339
1632	Maseru	A	132	2025-03-22 05:26:06.238415	2025-03-22 05:26:06.238415
1633	Butha-Buthe	B	132	2025-03-22 05:26:06.243717	2025-03-22 05:26:06.243717
1634	Leribe	C	132	2025-03-22 05:26:06.247912	2025-03-22 05:26:06.247912
1635	Berea	D	132	2025-03-22 05:26:06.253011	2025-03-22 05:26:06.253011
1636	Mafeteng	E	132	2025-03-22 05:26:06.257763	2025-03-22 05:26:06.257763
1637	Mohale's Hoek	F	132	2025-03-22 05:26:06.262818	2025-03-22 05:26:06.262818
1638	Quthing	G	132	2025-03-22 05:26:06.268198	2025-03-22 05:26:06.268198
1639	Qacha's Nek	H	132	2025-03-22 05:26:06.273113	2025-03-22 05:26:06.273113
1640	Mokhotlong	J	132	2025-03-22 05:26:06.277932	2025-03-22 05:26:06.277932
1641	Thaba-Tseka	K	132	2025-03-22 05:26:06.282268	2025-03-22 05:26:06.282268
1642	Alytaus Apskritis	AL	133	2025-03-22 05:26:06.287172	2025-03-22 05:26:06.287172
1643	Klaipėdos Apskritis	KL	133	2025-03-22 05:26:06.291848	2025-03-22 05:26:06.291848
1644	Kauno Apskritis	KU	133	2025-03-22 05:26:06.296419	2025-03-22 05:26:06.296419
1645	Marijampolės Apskritis	MR	133	2025-03-22 05:26:06.30066	2025-03-22 05:26:06.30066
1646	Panevėžio Apskritis	PN	133	2025-03-22 05:26:06.305167	2025-03-22 05:26:06.305167
1647	Šiaulių Apskritis	SA	133	2025-03-22 05:26:06.309397	2025-03-22 05:26:06.309397
1648	Tauragés Apskritis	TA	133	2025-03-22 05:26:06.313617	2025-03-22 05:26:06.313617
1649	Telšių Apskritis	TE	133	2025-03-22 05:26:06.317546	2025-03-22 05:26:06.317546
1650	Utenos Apskritis	UT	133	2025-03-22 05:26:06.322252	2025-03-22 05:26:06.322252
1651	Vilniaus Apskritis	VL	133	2025-03-22 05:26:06.326887	2025-03-22 05:26:06.326887
1652	Diekirch	D	134	2025-03-22 05:26:06.331136	2025-03-22 05:26:06.331136
1653	Grevenmacher	G	134	2025-03-22 05:26:06.335279	2025-03-22 05:26:06.335279
1654	Luxembourg	L	134	2025-03-22 05:26:06.341179	2025-03-22 05:26:06.341179
1655	Aglonas novads	001	135	2025-03-22 05:26:06.345538	2025-03-22 05:26:06.345538
1656	Aizkraukles novads	002	135	2025-03-22 05:26:06.350663	2025-03-22 05:26:06.350663
1657	Aizputes novads	003	135	2025-03-22 05:26:06.355074	2025-03-22 05:26:06.355074
1658	Aknīstes novads	004	135	2025-03-22 05:26:06.359864	2025-03-22 05:26:06.359864
1659	Alojas novads	005	135	2025-03-22 05:26:06.364193	2025-03-22 05:26:06.364193
1660	Alsungas novads	006	135	2025-03-22 05:26:06.368887	2025-03-22 05:26:06.368887
1661	Alūksnes novads	007	135	2025-03-22 05:26:06.373213	2025-03-22 05:26:06.373213
1662	Amatas novads	008	135	2025-03-22 05:26:06.378365	2025-03-22 05:26:06.378365
1663	Apes novads	009	135	2025-03-22 05:26:06.383599	2025-03-22 05:26:06.383599
1664	Auces novads	010	135	2025-03-22 05:26:06.38817	2025-03-22 05:26:06.38817
1665	Ādažu novads	011	135	2025-03-22 05:26:06.393237	2025-03-22 05:26:06.393237
1666	Babītes novads	012	135	2025-03-22 05:26:06.39769	2025-03-22 05:26:06.39769
1667	Baldones novads	013	135	2025-03-22 05:26:06.403055	2025-03-22 05:26:06.403055
1668	Baltinavas novads	014	135	2025-03-22 05:26:06.407538	2025-03-22 05:26:06.407538
1669	Balvu novads	015	135	2025-03-22 05:26:06.412716	2025-03-22 05:26:06.412716
1670	Bauskas novads	016	135	2025-03-22 05:26:06.417298	2025-03-22 05:26:06.417298
1671	Beverīnas novads	017	135	2025-03-22 05:26:06.422091	2025-03-22 05:26:06.422091
1672	Brocēnu novads	018	135	2025-03-22 05:26:06.426417	2025-03-22 05:26:06.426417
1673	Burtnieku novads	019	135	2025-03-22 05:26:06.431576	2025-03-22 05:26:06.431576
1674	Carnikavas novads	020	135	2025-03-22 05:26:06.435993	2025-03-22 05:26:06.435993
1675	Cesvaines novads	021	135	2025-03-22 05:26:06.44039	2025-03-22 05:26:06.44039
1676	Cēsu novads	022	135	2025-03-22 05:26:06.445564	2025-03-22 05:26:06.445564
1677	Ciblas novads	023	135	2025-03-22 05:26:06.449814	2025-03-22 05:26:06.449814
1678	Dagdas novads	024	135	2025-03-22 05:26:06.454108	2025-03-22 05:26:06.454108
1679	Daugavpils novads	025	135	2025-03-22 05:26:06.458318	2025-03-22 05:26:06.458318
1680	Dobeles novads	026	135	2025-03-22 05:26:06.462736	2025-03-22 05:26:06.462736
1681	Dundagas novads	027	135	2025-03-22 05:26:06.467022	2025-03-22 05:26:06.467022
1682	Durbes novads	028	135	2025-03-22 05:26:06.471813	2025-03-22 05:26:06.471813
1683	Engures novads	029	135	2025-03-22 05:26:06.476234	2025-03-22 05:26:06.476234
1684	Ērgļu novads	030	135	2025-03-22 05:26:06.480599	2025-03-22 05:26:06.480599
1685	Garkalnes novads	031	135	2025-03-22 05:26:06.484961	2025-03-22 05:26:06.484961
1686	Grobiņas novads	032	135	2025-03-22 05:26:06.489063	2025-03-22 05:26:06.489063
1687	Gulbenes novads	033	135	2025-03-22 05:26:06.49333	2025-03-22 05:26:06.49333
1688	Iecavas novads	034	135	2025-03-22 05:26:06.49775	2025-03-22 05:26:06.49775
1689	Ikšķiles novads	035	135	2025-03-22 05:26:06.503893	2025-03-22 05:26:06.503893
1690	Ilūkstes novads	036	135	2025-03-22 05:26:06.508822	2025-03-22 05:26:06.508822
1691	Inčukalna novads	037	135	2025-03-22 05:26:06.513267	2025-03-22 05:26:06.513267
1692	Jaunjelgavas novads	038	135	2025-03-22 05:26:06.517991	2025-03-22 05:26:06.517991
1693	Jaunpiebalgas novads	039	135	2025-03-22 05:26:06.522372	2025-03-22 05:26:06.522372
1694	Jaunpils novads	040	135	2025-03-22 05:26:06.527601	2025-03-22 05:26:06.527601
1695	Jelgavas novads	041	135	2025-03-22 05:26:06.532015	2025-03-22 05:26:06.532015
1696	Jēkabpils novads	042	135	2025-03-22 05:26:06.536801	2025-03-22 05:26:06.536801
1697	Kandavas novads	043	135	2025-03-22 05:26:06.541044	2025-03-22 05:26:06.541044
1698	Kārsavas novads	044	135	2025-03-22 05:26:06.545748	2025-03-22 05:26:06.545748
1699	Kocēnu novads	045	135	2025-03-22 05:26:06.549909	2025-03-22 05:26:06.549909
1700	Kokneses novads	046	135	2025-03-22 05:26:06.554831	2025-03-22 05:26:06.554831
1701	Krāslavas novads	047	135	2025-03-22 05:26:06.55917	2025-03-22 05:26:06.55917
1702	Krimuldas novads	048	135	2025-03-22 05:26:06.564155	2025-03-22 05:26:06.564155
1703	Krustpils novads	049	135	2025-03-22 05:26:06.568764	2025-03-22 05:26:06.568764
1704	Kuldīgas novads	050	135	2025-03-22 05:26:06.573163	2025-03-22 05:26:06.573163
1705	Ķeguma novads	051	135	2025-03-22 05:26:06.577877	2025-03-22 05:26:06.577877
1706	Ķekavas novads	052	135	2025-03-22 05:26:06.582138	2025-03-22 05:26:06.582138
1707	Lielvārdes novads	053	135	2025-03-22 05:26:06.586969	2025-03-22 05:26:06.586969
1708	Limbažu novads	054	135	2025-03-22 05:26:06.591278	2025-03-22 05:26:06.591278
1709	Līgatnes novads	055	135	2025-03-22 05:26:06.595625	2025-03-22 05:26:06.595625
1710	Līvānu novads	056	135	2025-03-22 05:26:06.600536	2025-03-22 05:26:06.600536
1711	Lubānas novads	057	135	2025-03-22 05:26:06.604952	2025-03-22 05:26:06.604952
1712	Ludzas novads	058	135	2025-03-22 05:26:06.609424	2025-03-22 05:26:06.609424
1713	Madonas novads	059	135	2025-03-22 05:26:06.613851	2025-03-22 05:26:06.613851
1714	Mazsalacas novads	060	135	2025-03-22 05:26:06.61801	2025-03-22 05:26:06.61801
1715	Mālpils novads	061	135	2025-03-22 05:26:06.62268	2025-03-22 05:26:06.62268
1716	Mārupes novads	062	135	2025-03-22 05:26:06.628619	2025-03-22 05:26:06.628619
1717	Mērsraga novads	063	135	2025-03-22 05:26:06.632908	2025-03-22 05:26:06.632908
1718	Naukšēnu novads	064	135	2025-03-22 05:26:06.638114	2025-03-22 05:26:06.638114
1719	Neretas novads	065	135	2025-03-22 05:26:06.642547	2025-03-22 05:26:06.642547
1720	Nīcas novads	066	135	2025-03-22 05:26:06.646708	2025-03-22 05:26:06.646708
1721	Ogres novads	067	135	2025-03-22 05:26:06.650994	2025-03-22 05:26:06.650994
1722	Olaines novads	068	135	2025-03-22 05:26:06.655266	2025-03-22 05:26:06.655266
1723	Ozolnieku novads	069	135	2025-03-22 05:26:06.661025	2025-03-22 05:26:06.661025
1724	Pārgaujas novads	070	135	2025-03-22 05:26:06.665308	2025-03-22 05:26:06.665308
1725	Pāvilostas novads	071	135	2025-03-22 05:26:06.670988	2025-03-22 05:26:06.670988
1726	Pļaviņu novads	072	135	2025-03-22 05:26:06.67583	2025-03-22 05:26:06.67583
1727	Preiļu novads	073	135	2025-03-22 05:26:06.680036	2025-03-22 05:26:06.680036
1728	Priekules novads	074	135	2025-03-22 05:26:06.685199	2025-03-22 05:26:06.685199
1729	Priekuļu novads	075	135	2025-03-22 05:26:06.690261	2025-03-22 05:26:06.690261
1730	Raunas novads	076	135	2025-03-22 05:26:06.695366	2025-03-22 05:26:06.695366
1731	Rēzeknes novads	077	135	2025-03-22 05:26:06.700486	2025-03-22 05:26:06.700486
1732	Riebiņu novads	078	135	2025-03-22 05:26:06.705767	2025-03-22 05:26:06.705767
1733	Rojas novads	079	135	2025-03-22 05:26:06.710246	2025-03-22 05:26:06.710246
1734	Ropažu novads	080	135	2025-03-22 05:26:06.715399	2025-03-22 05:26:06.715399
1735	Rucavas novads	081	135	2025-03-22 05:26:06.720265	2025-03-22 05:26:06.720265
1736	Rugāju novads	082	135	2025-03-22 05:26:06.725291	2025-03-22 05:26:06.725291
1737	Rundāles novads	083	135	2025-03-22 05:26:06.730495	2025-03-22 05:26:06.730495
1738	Rūjienas novads	084	135	2025-03-22 05:26:06.735346	2025-03-22 05:26:06.735346
1739	Salas novads	085	135	2025-03-22 05:26:06.740759	2025-03-22 05:26:06.740759
1740	Salacgrīvas novads	086	135	2025-03-22 05:26:06.745527	2025-03-22 05:26:06.745527
1741	Salaspils novads	087	135	2025-03-22 05:26:06.749976	2025-03-22 05:26:06.749976
1742	Saldus novads	088	135	2025-03-22 05:26:06.754487	2025-03-22 05:26:06.754487
1743	Saulkrastu novads	089	135	2025-03-22 05:26:06.759017	2025-03-22 05:26:06.759017
1744	Sējas novads	090	135	2025-03-22 05:26:06.76428	2025-03-22 05:26:06.76428
1745	Siguldas novads	091	135	2025-03-22 05:26:06.768556	2025-03-22 05:26:06.768556
1746	Skrīveru novads	092	135	2025-03-22 05:26:06.772845	2025-03-22 05:26:06.772845
1747	Skrundas novads	093	135	2025-03-22 05:26:06.777023	2025-03-22 05:26:06.777023
1748	Smiltenes novads	094	135	2025-03-22 05:26:06.781267	2025-03-22 05:26:06.781267
1749	Stopiņu novads	095	135	2025-03-22 05:26:06.785667	2025-03-22 05:26:06.785667
1750	Strenču novads	096	135	2025-03-22 05:26:06.790042	2025-03-22 05:26:06.790042
1751	Talsu novads	097	135	2025-03-22 05:26:06.79517	2025-03-22 05:26:06.79517
1752	Tērvetes novads	098	135	2025-03-22 05:26:06.799471	2025-03-22 05:26:06.799471
1753	Tukuma novads	099	135	2025-03-22 05:26:06.804161	2025-03-22 05:26:06.804161
1754	Vaiņodes novads	100	135	2025-03-22 05:26:06.808466	2025-03-22 05:26:06.808466
1755	Valkas novads	101	135	2025-03-22 05:26:06.812819	2025-03-22 05:26:06.812819
1756	Varakļānu novads	102	135	2025-03-22 05:26:06.816984	2025-03-22 05:26:06.816984
1757	Vārkavas novads	103	135	2025-03-22 05:26:06.822638	2025-03-22 05:26:06.822638
1758	Vecpiebalgas novads	104	135	2025-03-22 05:26:06.827081	2025-03-22 05:26:06.827081
1759	Vecumnieku novads	105	135	2025-03-22 05:26:06.831901	2025-03-22 05:26:06.831901
1760	Ventspils novads	106	135	2025-03-22 05:26:06.836209	2025-03-22 05:26:06.836209
1761	Viesītes novads	107	135	2025-03-22 05:26:06.841014	2025-03-22 05:26:06.841014
1762	Viļakas novads	108	135	2025-03-22 05:26:06.84591	2025-03-22 05:26:06.84591
1763	Viļānu novads	109	135	2025-03-22 05:26:06.850692	2025-03-22 05:26:06.850692
1764	Zilupes novads	110	135	2025-03-22 05:26:06.855604	2025-03-22 05:26:06.855604
1765	Daugavpils	DGV	135	2025-03-22 05:26:06.859807	2025-03-22 05:26:06.859807
1766	Jelgava	JEL	135	2025-03-22 05:26:06.864624	2025-03-22 05:26:06.864624
1767	Jēkabpils	JKB	135	2025-03-22 05:26:06.868943	2025-03-22 05:26:06.868943
1768	Jūrmala	JUR	135	2025-03-22 05:26:06.873787	2025-03-22 05:26:06.873787
1769	Liepāja	LPX	135	2025-03-22 05:26:06.878024	2025-03-22 05:26:06.878024
1770	Rēzekne	REZ	135	2025-03-22 05:26:06.882926	2025-03-22 05:26:06.882926
1771	Rīga	RIX	135	2025-03-22 05:26:06.887238	2025-03-22 05:26:06.887238
1772	Ventspils	VEN	135	2025-03-22 05:26:06.891901	2025-03-22 05:26:06.891901
1773	Valmiera	VMR	135	2025-03-22 05:26:06.896233	2025-03-22 05:26:06.896233
1774	Banghāzī	BA	136	2025-03-22 05:26:06.901395	2025-03-22 05:26:06.901395
1775	Al Buţnān	BU	136	2025-03-22 05:26:06.906372	2025-03-22 05:26:06.906372
1776	Darnah	DR	136	2025-03-22 05:26:06.910797	2025-03-22 05:26:06.910797
1777	Ghāt	GT	136	2025-03-22 05:26:06.914886	2025-03-22 05:26:06.914886
1778	Al Jabal al Akhḑar	JA	136	2025-03-22 05:26:06.919381	2025-03-22 05:26:06.919381
1779	Jaghbūb	JB	136	2025-03-22 05:26:06.924591	2025-03-22 05:26:06.924591
1780	Al Jabal al Gharbī	JG	136	2025-03-22 05:26:06.928791	2025-03-22 05:26:06.928791
1781	Al Jifārah	JI	136	2025-03-22 05:26:06.933017	2025-03-22 05:26:06.933017
1782	Al Jufrah	JU	136	2025-03-22 05:26:06.937444	2025-03-22 05:26:06.937444
1783	Al Kufrah	KF	136	2025-03-22 05:26:06.941587	2025-03-22 05:26:06.941587
1784	Al Marqab	MB	136	2025-03-22 05:26:06.945692	2025-03-22 05:26:06.945692
1785	Mişrātah	MI	136	2025-03-22 05:26:06.95037	2025-03-22 05:26:06.95037
1786	Al Marj	MJ	136	2025-03-22 05:26:06.955381	2025-03-22 05:26:06.955381
1787	Murzuq	MQ	136	2025-03-22 05:26:06.959795	2025-03-22 05:26:06.959795
1788	Nālūt	NL	136	2025-03-22 05:26:06.964324	2025-03-22 05:26:06.964324
1789	An Nuqaţ al Khams	NQ	136	2025-03-22 05:26:06.968868	2025-03-22 05:26:06.968868
1790	Sabhā	SB	136	2025-03-22 05:26:06.973359	2025-03-22 05:26:06.973359
1791	Surt	SR	136	2025-03-22 05:26:06.979177	2025-03-22 05:26:06.979177
1792	Ţarābulus	TB	136	2025-03-22 05:26:06.984358	2025-03-22 05:26:06.984358
1793	Al Wāḩāt	WA	136	2025-03-22 05:26:06.989492	2025-03-22 05:26:06.989492
1794	Wādī al Ḩayāt	WD	136	2025-03-22 05:26:06.993795	2025-03-22 05:26:06.993795
1795	Wādī ash Shāţiʾ	WS	136	2025-03-22 05:26:06.998953	2025-03-22 05:26:06.998953
1796	Az Zāwiyah	ZA	136	2025-03-22 05:26:07.003553	2025-03-22 05:26:07.003553
1797	Tanger-Tétouan-Al Hoceïma	01	137	2025-03-22 05:26:07.009267	2025-03-22 05:26:07.009267
1798	L'Oriental	02	137	2025-03-22 05:26:07.013764	2025-03-22 05:26:07.013764
1799	Fès-Meknès	03	137	2025-03-22 05:26:07.01841	2025-03-22 05:26:07.01841
1800	Rabat-Salé-Kénitra	04	137	2025-03-22 05:26:07.023161	2025-03-22 05:26:07.023161
1801	Béni Mellal-Khénifra	05	137	2025-03-22 05:26:07.027311	2025-03-22 05:26:07.027311
1802	Casablanca-Settat	06	137	2025-03-22 05:26:07.031639	2025-03-22 05:26:07.031639
1803	Marrakech-Safi	07	137	2025-03-22 05:26:07.036225	2025-03-22 05:26:07.036225
1804	Drâa-Tafilalet	08	137	2025-03-22 05:26:07.041025	2025-03-22 05:26:07.041025
1805	Souss-Massa	09	137	2025-03-22 05:26:07.046736	2025-03-22 05:26:07.046736
1806	Guelmim-Oued Noun	10	137	2025-03-22 05:26:07.052036	2025-03-22 05:26:07.052036
1807	Laâyoune-Sakia El Hamra	11	137	2025-03-22 05:26:07.05685	2025-03-22 05:26:07.05685
1808	Dakhla-Oued Ed Dahab	12	137	2025-03-22 05:26:07.064208	2025-03-22 05:26:07.064208
1809	La Colle	CL	138	2025-03-22 05:26:07.070118	2025-03-22 05:26:07.070118
1810	La Condamine	CO	138	2025-03-22 05:26:07.075055	2025-03-22 05:26:07.075055
1811	Fontvieille	FO	138	2025-03-22 05:26:07.079433	2025-03-22 05:26:07.079433
1812	La Gare	GA	138	2025-03-22 05:26:07.084207	2025-03-22 05:26:07.084207
1813	Jardin Exotique	JE	138	2025-03-22 05:26:07.089571	2025-03-22 05:26:07.089571
1814	Larvotto	LA	138	2025-03-22 05:26:07.094176	2025-03-22 05:26:07.094176
1815	Malbousquet	MA	138	2025-03-22 05:26:07.098334	2025-03-22 05:26:07.098334
1816	Monte-Carlo	MC	138	2025-03-22 05:26:07.102535	2025-03-22 05:26:07.102535
1817	Moneghetti	MG	138	2025-03-22 05:26:07.107125	2025-03-22 05:26:07.107125
1818	Monaco-Ville	MO	138	2025-03-22 05:26:07.112231	2025-03-22 05:26:07.112231
1819	Moulins	MU	138	2025-03-22 05:26:07.116767	2025-03-22 05:26:07.116767
1820	Port-Hercule	PH	138	2025-03-22 05:26:07.121005	2025-03-22 05:26:07.121005
1821	Sainte-Dévote	SD	138	2025-03-22 05:26:07.125378	2025-03-22 05:26:07.125378
1822	La Source	SO	138	2025-03-22 05:26:07.129611	2025-03-22 05:26:07.129611
1823	Spélugues	SP	138	2025-03-22 05:26:07.133842	2025-03-22 05:26:07.133842
1824	Saint-Roman	SR	138	2025-03-22 05:26:07.138023	2025-03-22 05:26:07.138023
1825	Vallon de la Rousse	VR	138	2025-03-22 05:26:07.142461	2025-03-22 05:26:07.142461
1826	Anenii Noi	AN	139	2025-03-22 05:26:07.148275	2025-03-22 05:26:07.148275
1827	Bălți	BA	139	2025-03-22 05:26:07.153395	2025-03-22 05:26:07.153395
1828	Tighina	BD	139	2025-03-22 05:26:07.157934	2025-03-22 05:26:07.157934
1829	Briceni	BR	139	2025-03-22 05:26:07.163087	2025-03-22 05:26:07.163087
1830	Basarabeasca	BS	139	2025-03-22 05:26:07.167757	2025-03-22 05:26:07.167757
1831	Cahul	CA	139	2025-03-22 05:26:07.172915	2025-03-22 05:26:07.172915
1832	Călărași	CL	139	2025-03-22 05:26:07.177103	2025-03-22 05:26:07.177103
1833	Cimișlia	CM	139	2025-03-22 05:26:07.181867	2025-03-22 05:26:07.181867
1834	Criuleni	CR	139	2025-03-22 05:26:07.186065	2025-03-22 05:26:07.186065
1835	Căușeni	CS	139	2025-03-22 05:26:07.19094	2025-03-22 05:26:07.19094
1836	Cantemir	CT	139	2025-03-22 05:26:07.195103	2025-03-22 05:26:07.195103
1837	Chișinău	CU	139	2025-03-22 05:26:07.199731	2025-03-22 05:26:07.199731
1838	Dondușeni	DO	139	2025-03-22 05:26:07.204095	2025-03-22 05:26:07.204095
1839	Drochia	DR	139	2025-03-22 05:26:07.208761	2025-03-22 05:26:07.208761
1840	Dubăsari	DU	139	2025-03-22 05:26:07.2133	2025-03-22 05:26:07.2133
1841	Edineț	ED	139	2025-03-22 05:26:07.218152	2025-03-22 05:26:07.218152
1842	Fălești	FA	139	2025-03-22 05:26:07.223127	2025-03-22 05:26:07.223127
1843	Florești	FL	139	2025-03-22 05:26:07.227483	2025-03-22 05:26:07.227483
1844	Găgăuzia, Unitatea teritorială autonomă	GA	139	2025-03-22 05:26:07.232131	2025-03-22 05:26:07.232131
1845	Glodeni	GL	139	2025-03-22 05:26:07.236526	2025-03-22 05:26:07.236526
1846	Hîncești	HI	139	2025-03-22 05:26:07.241027	2025-03-22 05:26:07.241027
1847	Ialoveni	IA	139	2025-03-22 05:26:07.245979	2025-03-22 05:26:07.245979
1848	Leova	LE	139	2025-03-22 05:26:07.250304	2025-03-22 05:26:07.250304
1849	Nisporeni	NI	139	2025-03-22 05:26:07.254782	2025-03-22 05:26:07.254782
1850	Ocnița	OC	139	2025-03-22 05:26:07.259025	2025-03-22 05:26:07.259025
1851	Orhei	OR	139	2025-03-22 05:26:07.263586	2025-03-22 05:26:07.263586
1852	Rezina	RE	139	2025-03-22 05:26:07.267786	2025-03-22 05:26:07.267786
1853	Rîșcani	RI	139	2025-03-22 05:26:07.272679	2025-03-22 05:26:07.272679
1854	Șoldănești	SD	139	2025-03-22 05:26:07.276839	2025-03-22 05:26:07.276839
1855	Sîngerei	SI	139	2025-03-22 05:26:07.281123	2025-03-22 05:26:07.281123
1856	Stînga Nistrului, unitatea teritorială din	SN	139	2025-03-22 05:26:07.285661	2025-03-22 05:26:07.285661
1857	Soroca	SO	139	2025-03-22 05:26:07.289913	2025-03-22 05:26:07.289913
1858	Strășeni	ST	139	2025-03-22 05:26:07.294862	2025-03-22 05:26:07.294862
1859	Ștefan Vodă	SV	139	2025-03-22 05:26:07.299343	2025-03-22 05:26:07.299343
1860	Taraclia	TA	139	2025-03-22 05:26:07.30527	2025-03-22 05:26:07.30527
1861	Telenești	TE	139	2025-03-22 05:26:07.309835	2025-03-22 05:26:07.309835
1862	Ungheni	UN	139	2025-03-22 05:26:07.314763	2025-03-22 05:26:07.314763
1863	Andrijevica	01	140	2025-03-22 05:26:07.319661	2025-03-22 05:26:07.319661
1864	Bar	02	140	2025-03-22 05:26:07.324494	2025-03-22 05:26:07.324494
1865	Berane	03	140	2025-03-22 05:26:07.329126	2025-03-22 05:26:07.329126
1866	Bijelo Polje	04	140	2025-03-22 05:26:07.333385	2025-03-22 05:26:07.333385
1867	Budva	05	140	2025-03-22 05:26:07.337922	2025-03-22 05:26:07.337922
1868	Cetinje	06	140	2025-03-22 05:26:07.34234	2025-03-22 05:26:07.34234
1869	Danilovgrad	07	140	2025-03-22 05:26:07.347205	2025-03-22 05:26:07.347205
1870	Herceg-Novi	08	140	2025-03-22 05:26:07.351469	2025-03-22 05:26:07.351469
1871	Kolašin	09	140	2025-03-22 05:26:07.35643	2025-03-22 05:26:07.35643
1872	Kotor	10	140	2025-03-22 05:26:07.360601	2025-03-22 05:26:07.360601
1873	Mojkovac	11	140	2025-03-22 05:26:07.365363	2025-03-22 05:26:07.365363
1874	Nikšić	12	140	2025-03-22 05:26:07.370067	2025-03-22 05:26:07.370067
1875	Plav	13	140	2025-03-22 05:26:07.374625	2025-03-22 05:26:07.374625
1876	Pljevlja	14	140	2025-03-22 05:26:07.379234	2025-03-22 05:26:07.379234
1877	Plužine	15	140	2025-03-22 05:26:07.383679	2025-03-22 05:26:07.383679
1878	Podgorica	16	140	2025-03-22 05:26:07.388225	2025-03-22 05:26:07.388225
1879	Rožaje	17	140	2025-03-22 05:26:07.392449	2025-03-22 05:26:07.392449
1880	Šavnik	18	140	2025-03-22 05:26:07.39684	2025-03-22 05:26:07.39684
1881	Tivat	19	140	2025-03-22 05:26:07.403108	2025-03-22 05:26:07.403108
1882	Ulcinj	20	140	2025-03-22 05:26:07.407726	2025-03-22 05:26:07.407726
1883	Žabljak	21	140	2025-03-22 05:26:07.412289	2025-03-22 05:26:07.412289
1884	Toamasina	A	142	2025-03-22 05:26:07.416769	2025-03-22 05:26:07.416769
1885	Antsiranana	D	142	2025-03-22 05:26:07.421324	2025-03-22 05:26:07.421324
1886	Fianarantsoa	F	142	2025-03-22 05:26:07.425801	2025-03-22 05:26:07.425801
1887	Mahajanga	M	142	2025-03-22 05:26:07.430593	2025-03-22 05:26:07.430593
1888	Antananarivo	T	142	2025-03-22 05:26:07.43528	2025-03-22 05:26:07.43528
1889	Toliara	U	142	2025-03-22 05:26:07.439578	2025-03-22 05:26:07.439578
1890	Ralik chain	L	143	2025-03-22 05:26:07.44413	2025-03-22 05:26:07.44413
1891	Ratak chain	T	143	2025-03-22 05:26:07.448374	2025-03-22 05:26:07.448374
1892	Aerodrom	01	144	2025-03-22 05:26:07.452672	2025-03-22 05:26:07.452672
1893	Aračinovo	02	144	2025-03-22 05:26:07.456974	2025-03-22 05:26:07.456974
1894	Berovo	03	144	2025-03-22 05:26:07.46309	2025-03-22 05:26:07.46309
1895	Bitola	04	144	2025-03-22 05:26:07.467789	2025-03-22 05:26:07.467789
1896	Bogdanci	05	144	2025-03-22 05:26:07.472858	2025-03-22 05:26:07.472858
1897	Bogovinje	06	144	2025-03-22 05:26:07.477282	2025-03-22 05:26:07.477282
1898	Bosilovo	07	144	2025-03-22 05:26:07.482728	2025-03-22 05:26:07.482728
1899	Brvenica	08	144	2025-03-22 05:26:07.487019	2025-03-22 05:26:07.487019
1900	Butel	09	144	2025-03-22 05:26:07.491798	2025-03-22 05:26:07.491798
1901	Valandovo	10	144	2025-03-22 05:26:07.496437	2025-03-22 05:26:07.496437
1902	Vasilevo	11	144	2025-03-22 05:26:07.500674	2025-03-22 05:26:07.500674
1903	Vevčani	12	144	2025-03-22 05:26:07.505477	2025-03-22 05:26:07.505477
1904	Veles	13	144	2025-03-22 05:26:07.509694	2025-03-22 05:26:07.509694
1905	Vinica	14	144	2025-03-22 05:26:07.514388	2025-03-22 05:26:07.514388
1906	Vraneštica	15	144	2025-03-22 05:26:07.518702	2025-03-22 05:26:07.518702
1907	Vrapčište	16	144	2025-03-22 05:26:07.523726	2025-03-22 05:26:07.523726
1908	Gazi Baba	17	144	2025-03-22 05:26:07.528094	2025-03-22 05:26:07.528094
1909	Gevgelija	18	144	2025-03-22 05:26:07.532979	2025-03-22 05:26:07.532979
1910	Gostivar	19	144	2025-03-22 05:26:07.537495	2025-03-22 05:26:07.537495
1911	Gradsko	20	144	2025-03-22 05:26:07.542188	2025-03-22 05:26:07.542188
1912	Debar	21	144	2025-03-22 05:26:07.54673	2025-03-22 05:26:07.54673
1913	Debarca	22	144	2025-03-22 05:26:07.551154	2025-03-22 05:26:07.551154
1914	Delčevo	23	144	2025-03-22 05:26:07.555354	2025-03-22 05:26:07.555354
1915	Demir Kapija	24	144	2025-03-22 05:26:07.559739	2025-03-22 05:26:07.559739
1916	Demir Hisar	25	144	2025-03-22 05:26:07.564851	2025-03-22 05:26:07.564851
1917	Dojran	26	144	2025-03-22 05:26:07.569041	2025-03-22 05:26:07.569041
1918	Dolneni	27	144	2025-03-22 05:26:07.573271	2025-03-22 05:26:07.573271
1919	Drugovo	28	144	2025-03-22 05:26:07.577551	2025-03-22 05:26:07.577551
1920	Gjorče Petrov	29	144	2025-03-22 05:26:07.581858	2025-03-22 05:26:07.581858
1921	Želino	30	144	2025-03-22 05:26:07.586684	2025-03-22 05:26:07.586684
1922	Zajas	31	144	2025-03-22 05:26:07.591211	2025-03-22 05:26:07.591211
1923	Zelenikovo	32	144	2025-03-22 05:26:07.595498	2025-03-22 05:26:07.595498
1924	Zrnovci	33	144	2025-03-22 05:26:07.599769	2025-03-22 05:26:07.599769
1925	Ilinden	34	144	2025-03-22 05:26:07.604051	2025-03-22 05:26:07.604051
1926	Jegunovce	35	144	2025-03-22 05:26:07.608512	2025-03-22 05:26:07.608512
1927	Kavadarci	36	144	2025-03-22 05:26:07.612826	2025-03-22 05:26:07.612826
1928	Karbinci	37	144	2025-03-22 05:26:07.618398	2025-03-22 05:26:07.618398
1929	Karpoš	38	144	2025-03-22 05:26:07.623008	2025-03-22 05:26:07.623008
1930	Kisela Voda	39	144	2025-03-22 05:26:07.627916	2025-03-22 05:26:07.627916
1931	Kičevo	40	144	2025-03-22 05:26:07.632502	2025-03-22 05:26:07.632502
1932	Konče	41	144	2025-03-22 05:26:07.637296	2025-03-22 05:26:07.637296
1933	Kočani	42	144	2025-03-22 05:26:07.641983	2025-03-22 05:26:07.641983
1934	Kratovo	43	144	2025-03-22 05:26:07.646854	2025-03-22 05:26:07.646854
1935	Kriva Palanka	44	144	2025-03-22 05:26:07.651007	2025-03-22 05:26:07.651007
1936	Krivogaštani	45	144	2025-03-22 05:26:07.655682	2025-03-22 05:26:07.655682
1937	Kruševo	46	144	2025-03-22 05:26:07.659902	2025-03-22 05:26:07.659902
1938	Kumanovo	47	144	2025-03-22 05:26:07.664625	2025-03-22 05:26:07.664625
1939	Lipkovo	48	144	2025-03-22 05:26:07.668851	2025-03-22 05:26:07.668851
1940	Lozovo	49	144	2025-03-22 05:26:07.674426	2025-03-22 05:26:07.674426
1941	Mavrovo-i-Rostuša	50	144	2025-03-22 05:26:07.678622	2025-03-22 05:26:07.678622
1942	Makedonska Kamenica	51	144	2025-03-22 05:26:07.683345	2025-03-22 05:26:07.683345
1943	Makedonski Brod	52	144	2025-03-22 05:26:07.687919	2025-03-22 05:26:07.687919
1944	Mogila	53	144	2025-03-22 05:26:07.692763	2025-03-22 05:26:07.692763
1945	Negotino	54	144	2025-03-22 05:26:07.697182	2025-03-22 05:26:07.697182
1946	Novaci	55	144	2025-03-22 05:26:07.701426	2025-03-22 05:26:07.701426
1947	Novo Selo	56	144	2025-03-22 05:26:07.706974	2025-03-22 05:26:07.706974
1948	Oslomej	57	144	2025-03-22 05:26:07.711554	2025-03-22 05:26:07.711554
1949	Ohrid	58	144	2025-03-22 05:26:07.716002	2025-03-22 05:26:07.716002
1950	Petrovec	59	144	2025-03-22 05:26:07.722255	2025-03-22 05:26:07.722255
1951	Pehčevo	60	144	2025-03-22 05:26:07.726788	2025-03-22 05:26:07.726788
1952	Plasnica	61	144	2025-03-22 05:26:07.730867	2025-03-22 05:26:07.730867
1953	Prilep	62	144	2025-03-22 05:26:07.735757	2025-03-22 05:26:07.735757
1954	Probištip	63	144	2025-03-22 05:26:07.740209	2025-03-22 05:26:07.740209
1955	Radoviš	64	144	2025-03-22 05:26:07.744706	2025-03-22 05:26:07.744706
1956	Rankovce	65	144	2025-03-22 05:26:07.749144	2025-03-22 05:26:07.749144
1957	Resen	66	144	2025-03-22 05:26:07.753481	2025-03-22 05:26:07.753481
1958	Rosoman	67	144	2025-03-22 05:26:07.757781	2025-03-22 05:26:07.757781
1959	Saraj	68	144	2025-03-22 05:26:07.762009	2025-03-22 05:26:07.762009
1960	Sveti Nikole	69	144	2025-03-22 05:26:07.766735	2025-03-22 05:26:07.766735
1961	Sopište	70	144	2025-03-22 05:26:07.770945	2025-03-22 05:26:07.770945
1962	Staro Nagoričane	71	144	2025-03-22 05:26:07.775115	2025-03-22 05:26:07.775115
1963	Struga	72	144	2025-03-22 05:26:07.781117	2025-03-22 05:26:07.781117
1964	Strumica	73	144	2025-03-22 05:26:07.785687	2025-03-22 05:26:07.785687
1965	Studeničani	74	144	2025-03-22 05:26:07.790837	2025-03-22 05:26:07.790837
1966	Tearce	75	144	2025-03-22 05:26:07.79535	2025-03-22 05:26:07.79535
1967	Tetovo	76	144	2025-03-22 05:26:07.800289	2025-03-22 05:26:07.800289
1968	Centar	77	144	2025-03-22 05:26:07.805232	2025-03-22 05:26:07.805232
1969	Centar Župa	78	144	2025-03-22 05:26:07.809671	2025-03-22 05:26:07.809671
1970	Čair	79	144	2025-03-22 05:26:07.814617	2025-03-22 05:26:07.814617
1971	Čaška	80	144	2025-03-22 05:26:07.81882	2025-03-22 05:26:07.81882
1972	Češinovo-Obleševo	81	144	2025-03-22 05:26:07.823762	2025-03-22 05:26:07.823762
1973	Čučer Sandevo	82	144	2025-03-22 05:26:07.828173	2025-03-22 05:26:07.828173
1974	Štip	83	144	2025-03-22 05:26:07.833026	2025-03-22 05:26:07.833026
1975	Šuto Orizari	84	144	2025-03-22 05:26:07.837252	2025-03-22 05:26:07.837252
1976	Kayes	1	145	2025-03-22 05:26:07.842229	2025-03-22 05:26:07.842229
1977	Koulikoro	2	145	2025-03-22 05:26:07.846706	2025-03-22 05:26:07.846706
1978	Sikasso	3	145	2025-03-22 05:26:07.85181	2025-03-22 05:26:07.85181
1979	Ségou	4	145	2025-03-22 05:26:07.856421	2025-03-22 05:26:07.856421
1980	Mopti	5	145	2025-03-22 05:26:07.860984	2025-03-22 05:26:07.860984
1981	Tombouctou	6	145	2025-03-22 05:26:07.865513	2025-03-22 05:26:07.865513
1982	Gao	7	145	2025-03-22 05:26:07.869734	2025-03-22 05:26:07.869734
1983	Kidal	8	145	2025-03-22 05:26:07.874197	2025-03-22 05:26:07.874197
1984	Bamako	BK0	145	2025-03-22 05:26:07.879016	2025-03-22 05:26:07.879016
1985	Sagaing	01	146	2025-03-22 05:26:07.883817	2025-03-22 05:26:07.883817
1986	Bago	02	146	2025-03-22 05:26:07.888112	2025-03-22 05:26:07.888112
1987	Magway	03	146	2025-03-22 05:26:07.892519	2025-03-22 05:26:07.892519
1988	Mandalay	04	146	2025-03-22 05:26:07.896852	2025-03-22 05:26:07.896852
1989	Tanintharyi	05	146	2025-03-22 05:26:07.901126	2025-03-22 05:26:07.901126
1990	Yangon	06	146	2025-03-22 05:26:07.905558	2025-03-22 05:26:07.905558
1991	Ayeyarwady	07	146	2025-03-22 05:26:07.909926	2025-03-22 05:26:07.909926
1992	Kachin	11	146	2025-03-22 05:26:07.914142	2025-03-22 05:26:07.914142
1993	Kayah	12	146	2025-03-22 05:26:07.918194	2025-03-22 05:26:07.918194
1994	Kayin	13	146	2025-03-22 05:26:07.922346	2025-03-22 05:26:07.922346
1995	Chin	14	146	2025-03-22 05:26:07.926859	2025-03-22 05:26:07.926859
1996	Mon	15	146	2025-03-22 05:26:07.931219	2025-03-22 05:26:07.931219
1997	Rakhine	16	146	2025-03-22 05:26:07.937028	2025-03-22 05:26:07.937028
1998	Shan	17	146	2025-03-22 05:26:07.941805	2025-03-22 05:26:07.941805
1999	Orhon	035	147	2025-03-22 05:26:07.946952	2025-03-22 05:26:07.946952
2000	Darhan uul	037	147	2025-03-22 05:26:07.951777	2025-03-22 05:26:07.951777
2001	Hentiy	039	147	2025-03-22 05:26:07.956019	2025-03-22 05:26:07.956019
2002	Hövsgöl	041	147	2025-03-22 05:26:07.961044	2025-03-22 05:26:07.961044
2003	Hovd	043	147	2025-03-22 05:26:07.965352	2025-03-22 05:26:07.965352
2004	Uvs	046	147	2025-03-22 05:26:07.96993	2025-03-22 05:26:07.96993
2005	Töv	047	147	2025-03-22 05:26:07.974287	2025-03-22 05:26:07.974287
2006	Selenge	049	147	2025-03-22 05:26:07.978767	2025-03-22 05:26:07.978767
2007	Sühbaatar	051	147	2025-03-22 05:26:07.983084	2025-03-22 05:26:07.983084
2008	Ömnögovi	053	147	2025-03-22 05:26:07.988517	2025-03-22 05:26:07.988517
2009	Övörhangay	055	147	2025-03-22 05:26:07.993219	2025-03-22 05:26:07.993219
2010	Dzavhan	057	147	2025-03-22 05:26:07.997824	2025-03-22 05:26:07.997824
2011	Dundgovi	059	147	2025-03-22 05:26:08.002045	2025-03-22 05:26:08.002045
2012	Dornod	061	147	2025-03-22 05:26:08.007302	2025-03-22 05:26:08.007302
2013	Dornogovi	063	147	2025-03-22 05:26:08.012137	2025-03-22 05:26:08.012137
2014	Govi-Sumber	064	147	2025-03-22 05:26:08.016484	2025-03-22 05:26:08.016484
2015	Govi-Altay	065	147	2025-03-22 05:26:08.020977	2025-03-22 05:26:08.020977
2016	Bulgan	067	147	2025-03-22 05:26:08.025294	2025-03-22 05:26:08.025294
2017	Bayanhongor	069	147	2025-03-22 05:26:08.029695	2025-03-22 05:26:08.029695
2018	Bayan-Ölgiy	071	147	2025-03-22 05:26:08.033946	2025-03-22 05:26:08.033946
2019	Arhangay	073	147	2025-03-22 05:26:08.038982	2025-03-22 05:26:08.038982
2020	Ulanbaatar	1	147	2025-03-22 05:26:08.043776	2025-03-22 05:26:08.043776
2021	Hodh ech Chargui	01	151	2025-03-22 05:26:08.048333	2025-03-22 05:26:08.048333
2022	Hodh el Charbi	02	151	2025-03-22 05:26:08.053024	2025-03-22 05:26:08.053024
2023	Assaba	03	151	2025-03-22 05:26:08.057463	2025-03-22 05:26:08.057463
2024	Gorgol	04	151	2025-03-22 05:26:08.061895	2025-03-22 05:26:08.061895
2025	Brakna	05	151	2025-03-22 05:26:08.066841	2025-03-22 05:26:08.066841
2026	Trarza	06	151	2025-03-22 05:26:08.071673	2025-03-22 05:26:08.071673
2027	Adrar	07	151	2025-03-22 05:26:08.075952	2025-03-22 05:26:08.075952
2028	Dakhlet Nouadhibou	08	151	2025-03-22 05:26:08.080526	2025-03-22 05:26:08.080526
2029	Tagant	09	151	2025-03-22 05:26:08.08499	2025-03-22 05:26:08.08499
2030	Guidimaka	10	151	2025-03-22 05:26:08.08939	2025-03-22 05:26:08.08939
2031	Tiris Zemmour	11	151	2025-03-22 05:26:08.095324	2025-03-22 05:26:08.095324
2032	Inchiri	12	151	2025-03-22 05:26:08.099732	2025-03-22 05:26:08.099732
2033	Nouakchott	NKC	151	2025-03-22 05:26:08.104686	2025-03-22 05:26:08.104686
2034	Attard	01	153	2025-03-22 05:26:08.109019	2025-03-22 05:26:08.109019
2035	Balzan	02	153	2025-03-22 05:26:08.114068	2025-03-22 05:26:08.114068
2036	Birgu	03	153	2025-03-22 05:26:08.118382	2025-03-22 05:26:08.118382
2037	Birkirkara	04	153	2025-03-22 05:26:08.123542	2025-03-22 05:26:08.123542
2038	Birżebbuġa	05	153	2025-03-22 05:26:08.127926	2025-03-22 05:26:08.127926
2039	Bormla	06	153	2025-03-22 05:26:08.132847	2025-03-22 05:26:08.132847
2040	Dingli	07	153	2025-03-22 05:26:08.137568	2025-03-22 05:26:08.137568
2041	Fgura	08	153	2025-03-22 05:26:08.141887	2025-03-22 05:26:08.141887
2042	Floriana	09	153	2025-03-22 05:26:08.146567	2025-03-22 05:26:08.146567
2043	Fontana	10	153	2025-03-22 05:26:08.150824	2025-03-22 05:26:08.150824
2044	Gudja	11	153	2025-03-22 05:26:08.155471	2025-03-22 05:26:08.155471
2045	Gżira	12	153	2025-03-22 05:26:08.159829	2025-03-22 05:26:08.159829
2046	Għajnsielem	13	153	2025-03-22 05:26:08.164777	2025-03-22 05:26:08.164777
2047	Għarb	14	153	2025-03-22 05:26:08.169343	2025-03-22 05:26:08.169343
2048	Għargħur	15	153	2025-03-22 05:26:08.174387	2025-03-22 05:26:08.174387
2049	Għasri	16	153	2025-03-22 05:26:08.178676	2025-03-22 05:26:08.178676
2050	Għaxaq	17	153	2025-03-22 05:26:08.183413	2025-03-22 05:26:08.183413
2051	Ħamrun	18	153	2025-03-22 05:26:08.187741	2025-03-22 05:26:08.187741
2052	Iklin	19	153	2025-03-22 05:26:08.19231	2025-03-22 05:26:08.19231
2053	Isla	20	153	2025-03-22 05:26:08.197176	2025-03-22 05:26:08.197176
2054	Kalkara	21	153	2025-03-22 05:26:08.201803	2025-03-22 05:26:08.201803
2055	Kerċem	22	153	2025-03-22 05:26:08.206464	2025-03-22 05:26:08.206464
2056	Kirkop	23	153	2025-03-22 05:26:08.211161	2025-03-22 05:26:08.211161
2057	Lija	24	153	2025-03-22 05:26:08.215702	2025-03-22 05:26:08.215702
2058	Luqa	25	153	2025-03-22 05:26:08.220409	2025-03-22 05:26:08.220409
2059	Marsa	26	153	2025-03-22 05:26:08.225087	2025-03-22 05:26:08.225087
2060	Marsaskala	27	153	2025-03-22 05:26:08.229918	2025-03-22 05:26:08.229918
2061	Marsaxlokk	28	153	2025-03-22 05:26:08.234556	2025-03-22 05:26:08.234556
2062	Mdina	29	153	2025-03-22 05:26:08.239244	2025-03-22 05:26:08.239244
2063	Mellieħa	30	153	2025-03-22 05:26:08.244122	2025-03-22 05:26:08.244122
2064	Mġarr	31	153	2025-03-22 05:26:08.248601	2025-03-22 05:26:08.248601
2065	Mosta	32	153	2025-03-22 05:26:08.253579	2025-03-22 05:26:08.253579
2066	Mqabba	33	153	2025-03-22 05:26:08.259652	2025-03-22 05:26:08.259652
2067	Msida	34	153	2025-03-22 05:26:08.264714	2025-03-22 05:26:08.264714
2068	Mtarfa	35	153	2025-03-22 05:26:08.269328	2025-03-22 05:26:08.269328
2069	Munxar	36	153	2025-03-22 05:26:08.274123	2025-03-22 05:26:08.274123
2070	Nadur	37	153	2025-03-22 05:26:08.278342	2025-03-22 05:26:08.278342
2071	Naxxar	38	153	2025-03-22 05:26:08.28365	2025-03-22 05:26:08.28365
2072	Paola	39	153	2025-03-22 05:26:08.288612	2025-03-22 05:26:08.288612
2073	Pembroke	40	153	2025-03-22 05:26:08.293608	2025-03-22 05:26:08.293608
2074	Pietà	41	153	2025-03-22 05:26:08.297813	2025-03-22 05:26:08.297813
2075	Qala	42	153	2025-03-22 05:26:08.302797	2025-03-22 05:26:08.302797
2076	Qormi	43	153	2025-03-22 05:26:08.307128	2025-03-22 05:26:08.307128
2077	Qrendi	44	153	2025-03-22 05:26:08.311824	2025-03-22 05:26:08.311824
2078	Rabat Għawdex	45	153	2025-03-22 05:26:08.316217	2025-03-22 05:26:08.316217
2079	Rabat Malta	46	153	2025-03-22 05:26:08.320974	2025-03-22 05:26:08.320974
2080	Safi	47	153	2025-03-22 05:26:08.325752	2025-03-22 05:26:08.325752
2081	San Ġiljan	48	153	2025-03-22 05:26:08.329965	2025-03-22 05:26:08.329965
2082	San Ġwann	49	153	2025-03-22 05:26:08.334833	2025-03-22 05:26:08.334833
2083	San Lawrenz	50	153	2025-03-22 05:26:08.339014	2025-03-22 05:26:08.339014
2084	San Pawl il-Baħar	51	153	2025-03-22 05:26:08.343653	2025-03-22 05:26:08.343653
2085	Sannat	52	153	2025-03-22 05:26:08.347987	2025-03-22 05:26:08.347987
2086	Santa Luċija	53	153	2025-03-22 05:26:08.352703	2025-03-22 05:26:08.352703
2087	Santa Venera	54	153	2025-03-22 05:26:08.35759	2025-03-22 05:26:08.35759
2088	Siġġiewi	55	153	2025-03-22 05:26:08.361877	2025-03-22 05:26:08.361877
2089	Sliema	56	153	2025-03-22 05:26:08.366663	2025-03-22 05:26:08.366663
2090	Swieqi	57	153	2025-03-22 05:26:08.371311	2025-03-22 05:26:08.371311
2091	Ta’ Xbiex	58	153	2025-03-22 05:26:08.375587	2025-03-22 05:26:08.375587
2092	Tarxien	59	153	2025-03-22 05:26:08.379815	2025-03-22 05:26:08.379815
2093	Valletta	60	153	2025-03-22 05:26:08.384161	2025-03-22 05:26:08.384161
2094	Xagħra	61	153	2025-03-22 05:26:08.388572	2025-03-22 05:26:08.388572
2095	Xewkija	62	153	2025-03-22 05:26:08.392776	2025-03-22 05:26:08.392776
2096	Xgħajra	63	153	2025-03-22 05:26:08.397104	2025-03-22 05:26:08.397104
2097	Żabbar	64	153	2025-03-22 05:26:08.401383	2025-03-22 05:26:08.401383
2098	Żebbuġ Għawdex	65	153	2025-03-22 05:26:08.405575	2025-03-22 05:26:08.405575
2099	Żebbuġ Malta	66	153	2025-03-22 05:26:08.409785	2025-03-22 05:26:08.409785
2100	Żejtun	67	153	2025-03-22 05:26:08.41584	2025-03-22 05:26:08.41584
2101	Żurrieq	68	153	2025-03-22 05:26:08.420136	2025-03-22 05:26:08.420136
2102	Agalega Islands	AG	154	2025-03-22 05:26:08.425324	2025-03-22 05:26:08.425324
2103	Black River	BL	154	2025-03-22 05:26:08.43044	2025-03-22 05:26:08.43044
2104	Beau Bassin-Rose Hill	BR	154	2025-03-22 05:26:08.434727	2025-03-22 05:26:08.434727
2105	Cargados Carajos Shoals	CC	154	2025-03-22 05:26:08.439797	2025-03-22 05:26:08.439797
2106	Curepipe	CU	154	2025-03-22 05:26:08.444519	2025-03-22 05:26:08.444519
2107	Flacq	FL	154	2025-03-22 05:26:08.44909	2025-03-22 05:26:08.44909
2108	Grand Port	GP	154	2025-03-22 05:26:08.45341	2025-03-22 05:26:08.45341
2109	Moka	MO	154	2025-03-22 05:26:08.458028	2025-03-22 05:26:08.458028
2110	Pamplemousses	PA	154	2025-03-22 05:26:08.462669	2025-03-22 05:26:08.462669
2111	Port Louis	PL	154	2025-03-22 05:26:08.467358	2025-03-22 05:26:08.467358
2112	Port Louis	PU	154	2025-03-22 05:26:08.47177	2025-03-22 05:26:08.47177
2113	Plaines Wilhems	PW	154	2025-03-22 05:26:08.476588	2025-03-22 05:26:08.476588
2114	Quatre Bornes	QB	154	2025-03-22 05:26:08.48117	2025-03-22 05:26:08.48117
2115	Rodrigues Island	RO	154	2025-03-22 05:26:08.485527	2025-03-22 05:26:08.485527
2116	Rivière du Rempart	RP	154	2025-03-22 05:26:08.489948	2025-03-22 05:26:08.489948
2117	Savanne	SA	154	2025-03-22 05:26:08.495079	2025-03-22 05:26:08.495079
2118	Vacoas-Phoenix	VP	154	2025-03-22 05:26:08.499581	2025-03-22 05:26:08.499581
2119	Central	CE	155	2025-03-22 05:26:08.503819	2025-03-22 05:26:08.503819
2120	Male	MLE	155	2025-03-22 05:26:08.508349	2025-03-22 05:26:08.508349
2121	North Central	NC	155	2025-03-22 05:26:08.513428	2025-03-22 05:26:08.513428
2122	North	NO	155	2025-03-22 05:26:08.517644	2025-03-22 05:26:08.517644
2123	South Central	SC	155	2025-03-22 05:26:08.521881	2025-03-22 05:26:08.521881
2124	South	SU	155	2025-03-22 05:26:08.526135	2025-03-22 05:26:08.526135
2125	Upper North	UN	155	2025-03-22 05:26:08.530431	2025-03-22 05:26:08.530431
2126	Upper South	US	155	2025-03-22 05:26:08.534645	2025-03-22 05:26:08.534645
2127	Central Region	C	156	2025-03-22 05:26:08.539424	2025-03-22 05:26:08.539424
2128	Northern Region	N	156	2025-03-22 05:26:08.544009	2025-03-22 05:26:08.544009
2129	Southern Region	S	156	2025-03-22 05:26:08.548245	2025-03-22 05:26:08.548245
2130	Aguascalientes	AGU	157	2025-03-22 05:26:08.552569	2025-03-22 05:26:08.552569
2131	Baja California	BCN	157	2025-03-22 05:26:08.557005	2025-03-22 05:26:08.557005
2132	Baja California Sur	BCS	157	2025-03-22 05:26:08.5615	2025-03-22 05:26:08.5615
2133	Campeche	CAM	157	2025-03-22 05:26:08.5658	2025-03-22 05:26:08.5658
2134	Chihuahua	CHH	157	2025-03-22 05:26:08.571978	2025-03-22 05:26:08.571978
2135	Chiapas	CHP	157	2025-03-22 05:26:08.576503	2025-03-22 05:26:08.576503
2136	Ciudad de México	CMX	157	2025-03-22 05:26:08.581357	2025-03-22 05:26:08.581357
2137	Coahuila de Zaragoza	COA	157	2025-03-22 05:26:08.585975	2025-03-22 05:26:08.585975
2138	Colima	COL	157	2025-03-22 05:26:08.590795	2025-03-22 05:26:08.590795
2139	Durango	DUR	157	2025-03-22 05:26:08.595013	2025-03-22 05:26:08.595013
2140	Guerrero	GRO	157	2025-03-22 05:26:08.599537	2025-03-22 05:26:08.599537
2141	Guanajuato	GUA	157	2025-03-22 05:26:08.604453	2025-03-22 05:26:08.604453
2142	Hidalgo	HID	157	2025-03-22 05:26:08.608635	2025-03-22 05:26:08.608635
2143	Jalisco	JAL	157	2025-03-22 05:26:08.613329	2025-03-22 05:26:08.613329
2144	México	MEX	157	2025-03-22 05:26:08.617548	2025-03-22 05:26:08.617548
2145	Michoacán de Ocampo	MIC	157	2025-03-22 05:26:08.622179	2025-03-22 05:26:08.622179
2146	Morelos	MOR	157	2025-03-22 05:26:08.627143	2025-03-22 05:26:08.627143
2147	Nayarit	NAY	157	2025-03-22 05:26:08.632462	2025-03-22 05:26:08.632462
2148	Nuevo León	NLE	157	2025-03-22 05:26:08.636698	2025-03-22 05:26:08.636698
2149	Oaxaca	OAX	157	2025-03-22 05:26:08.641181	2025-03-22 05:26:08.641181
2150	Puebla	PUE	157	2025-03-22 05:26:08.645389	2025-03-22 05:26:08.645389
2151	Querétaro	QUE	157	2025-03-22 05:26:08.649852	2025-03-22 05:26:08.649852
2152	Quintana Roo	ROO	157	2025-03-22 05:26:08.654051	2025-03-22 05:26:08.654051
2153	Sinaloa	SIN	157	2025-03-22 05:26:08.658358	2025-03-22 05:26:08.658358
2154	San Luis Potosí	SLP	157	2025-03-22 05:26:08.662928	2025-03-22 05:26:08.662928
2155	Sonora	SON	157	2025-03-22 05:26:08.668266	2025-03-22 05:26:08.668266
2156	Tabasco	TAB	157	2025-03-22 05:26:08.673834	2025-03-22 05:26:08.673834
2157	Tamaulipas	TAM	157	2025-03-22 05:26:08.678128	2025-03-22 05:26:08.678128
2158	Tlaxcala	TLA	157	2025-03-22 05:26:08.682496	2025-03-22 05:26:08.682496
2159	Veracruz de Ignacio de la Llave	VER	157	2025-03-22 05:26:08.686691	2025-03-22 05:26:08.686691
2160	Yucatán	YUC	157	2025-03-22 05:26:08.69099	2025-03-22 05:26:08.69099
2161	Zacatecas	ZAC	157	2025-03-22 05:26:08.69515	2025-03-22 05:26:08.69515
2162	Johor	01	158	2025-03-22 05:26:08.700082	2025-03-22 05:26:08.700082
2163	Kedah	02	158	2025-03-22 05:26:08.70461	2025-03-22 05:26:08.70461
2164	Kelantan	03	158	2025-03-22 05:26:08.708768	2025-03-22 05:26:08.708768
2165	Melaka	04	158	2025-03-22 05:26:08.713136	2025-03-22 05:26:08.713136
2166	Negeri Sembilan	05	158	2025-03-22 05:26:08.717577	2025-03-22 05:26:08.717577
2167	Pahang	06	158	2025-03-22 05:26:08.722438	2025-03-22 05:26:08.722438
2168	Pulau Pinang	07	158	2025-03-22 05:26:08.7288	2025-03-22 05:26:08.7288
2169	Perak	08	158	2025-03-22 05:26:08.733591	2025-03-22 05:26:08.733591
2170	Perlis	09	158	2025-03-22 05:26:08.738477	2025-03-22 05:26:08.738477
2171	Selangor	10	158	2025-03-22 05:26:08.742841	2025-03-22 05:26:08.742841
2172	Terengganu	11	158	2025-03-22 05:26:08.747615	2025-03-22 05:26:08.747615
2173	Sabah	12	158	2025-03-22 05:26:08.751981	2025-03-22 05:26:08.751981
2174	Sarawak	13	158	2025-03-22 05:26:08.756734	2025-03-22 05:26:08.756734
2175	Wilayah Persekutuan Kuala Lumpur	14	158	2025-03-22 05:26:08.7625	2025-03-22 05:26:08.7625
2176	Wilayah Persekutuan Labuan	15	158	2025-03-22 05:26:08.767412	2025-03-22 05:26:08.767412
2177	Wilayah Persekutuan Putrajaya	16	158	2025-03-22 05:26:08.772192	2025-03-22 05:26:08.772192
2178	Niassa	A	159	2025-03-22 05:26:08.776438	2025-03-22 05:26:08.776438
2179	Manica	B	159	2025-03-22 05:26:08.781001	2025-03-22 05:26:08.781001
2180	Gaza	G	159	2025-03-22 05:26:08.785566	2025-03-22 05:26:08.785566
2181	Inhambane	I	159	2025-03-22 05:26:08.790326	2025-03-22 05:26:08.790326
2182	Maputo	L	159	2025-03-22 05:26:08.794567	2025-03-22 05:26:08.794567
2183	Maputo (city)	MPM	159	2025-03-22 05:26:08.799151	2025-03-22 05:26:08.799151
2184	Nampula	N	159	2025-03-22 05:26:08.803978	2025-03-22 05:26:08.803978
2185	Cabo Delgado	P	159	2025-03-22 05:26:08.80874	2025-03-22 05:26:08.80874
2186	Zambézia	Q	159	2025-03-22 05:26:08.813547	2025-03-22 05:26:08.813547
2187	Sofala	S	159	2025-03-22 05:26:08.81803	2025-03-22 05:26:08.81803
2188	Tete	T	159	2025-03-22 05:26:08.82254	2025-03-22 05:26:08.82254
2189	Caprivi	CA	160	2025-03-22 05:26:08.82699	2025-03-22 05:26:08.82699
2190	Erongo	ER	160	2025-03-22 05:26:08.831958	2025-03-22 05:26:08.831958
2191	Hardap	HA	160	2025-03-22 05:26:08.836217	2025-03-22 05:26:08.836217
2192	Karas	KA	160	2025-03-22 05:26:08.84044	2025-03-22 05:26:08.84044
2193	Khomas	KH	160	2025-03-22 05:26:08.844919	2025-03-22 05:26:08.844919
2194	Kunene	KU	160	2025-03-22 05:26:08.849848	2025-03-22 05:26:08.849848
2195	Otjozondjupa	OD	160	2025-03-22 05:26:08.854782	2025-03-22 05:26:08.854782
2196	Omaheke	OH	160	2025-03-22 05:26:08.85917	2025-03-22 05:26:08.85917
2197	Okavango	OK	160	2025-03-22 05:26:08.863458	2025-03-22 05:26:08.863458
2198	Oshana	ON	160	2025-03-22 05:26:08.867563	2025-03-22 05:26:08.867563
2199	Omusati	OS	160	2025-03-22 05:26:08.871681	2025-03-22 05:26:08.871681
2200	Oshikoto	OT	160	2025-03-22 05:26:08.875991	2025-03-22 05:26:08.875991
2201	Ohangwena	OW	160	2025-03-22 05:26:08.879983	2025-03-22 05:26:08.879983
2202	Agadez	1	162	2025-03-22 05:26:08.884301	2025-03-22 05:26:08.884301
2203	Diffa	2	162	2025-03-22 05:26:08.890263	2025-03-22 05:26:08.890263
2204	Dosso	3	162	2025-03-22 05:26:08.895881	2025-03-22 05:26:08.895881
2205	Maradi	4	162	2025-03-22 05:26:08.900515	2025-03-22 05:26:08.900515
2206	Tahoua	5	162	2025-03-22 05:26:08.905854	2025-03-22 05:26:08.905854
2207	Tillabéri	6	162	2025-03-22 05:26:08.910264	2025-03-22 05:26:08.910264
2208	Zinder	7	162	2025-03-22 05:26:08.915665	2025-03-22 05:26:08.915665
2209	Niamey	8	162	2025-03-22 05:26:08.920441	2025-03-22 05:26:08.920441
2210	Abia	AB	164	2025-03-22 05:26:08.925537	2025-03-22 05:26:08.925537
2211	Adamawa	AD	164	2025-03-22 05:26:08.929989	2025-03-22 05:26:08.929989
2212	Akwa Ibom	AK	164	2025-03-22 05:26:08.934987	2025-03-22 05:26:08.934987
2213	Anambra	AN	164	2025-03-22 05:26:08.939488	2025-03-22 05:26:08.939488
2214	Bauchi	BA	164	2025-03-22 05:26:08.944533	2025-03-22 05:26:08.944533
2215	Benue	BE	164	2025-03-22 05:26:08.949019	2025-03-22 05:26:08.949019
2216	Borno	BO	164	2025-03-22 05:26:08.954026	2025-03-22 05:26:08.954026
2217	Bayelsa	BY	164	2025-03-22 05:26:08.958838	2025-03-22 05:26:08.958838
2218	Cross River	CR	164	2025-03-22 05:26:08.96358	2025-03-22 05:26:08.96358
2219	Delta	DE	164	2025-03-22 05:26:08.968289	2025-03-22 05:26:08.968289
2220	Ebonyi	EB	164	2025-03-22 05:26:08.972667	2025-03-22 05:26:08.972667
2221	Edo	ED	164	2025-03-22 05:26:08.977103	2025-03-22 05:26:08.977103
2222	Ekiti	EK	164	2025-03-22 05:26:08.981349	2025-03-22 05:26:08.981349
2223	Enugu	EN	164	2025-03-22 05:26:08.985985	2025-03-22 05:26:08.985985
2224	Abuja Capital Territory	FC	164	2025-03-22 05:26:08.991128	2025-03-22 05:26:08.991128
2225	Gombe	GO	164	2025-03-22 05:26:08.995353	2025-03-22 05:26:08.995353
2226	Imo	IM	164	2025-03-22 05:26:08.999605	2025-03-22 05:26:08.999605
2227	Jigawa	JI	164	2025-03-22 05:26:09.004009	2025-03-22 05:26:09.004009
2228	Kaduna	KD	164	2025-03-22 05:26:09.008165	2025-03-22 05:26:09.008165
2229	Kebbi	KE	164	2025-03-22 05:26:09.012941	2025-03-22 05:26:09.012941
2230	Kano	KN	164	2025-03-22 05:26:09.017308	2025-03-22 05:26:09.017308
2231	Kogi	KO	164	2025-03-22 05:26:09.021596	2025-03-22 05:26:09.021596
2232	Katsina	KT	164	2025-03-22 05:26:09.026261	2025-03-22 05:26:09.026261
2233	Kwara	KW	164	2025-03-22 05:26:09.030795	2025-03-22 05:26:09.030795
2234	Lagos	LA	164	2025-03-22 05:26:09.03497	2025-03-22 05:26:09.03497
2235	Nassarawa	NA	164	2025-03-22 05:26:09.039235	2025-03-22 05:26:09.039235
2236	Niger	NI	164	2025-03-22 05:26:09.044571	2025-03-22 05:26:09.044571
2237	Ogun	OG	164	2025-03-22 05:26:09.050552	2025-03-22 05:26:09.050552
2238	Ondo	ON	164	2025-03-22 05:26:09.055028	2025-03-22 05:26:09.055028
2239	Osun	OS	164	2025-03-22 05:26:09.060063	2025-03-22 05:26:09.060063
2240	Oyo	OY	164	2025-03-22 05:26:09.065231	2025-03-22 05:26:09.065231
2241	Plateau	PL	164	2025-03-22 05:26:09.069829	2025-03-22 05:26:09.069829
2242	Rivers	RI	164	2025-03-22 05:26:09.075196	2025-03-22 05:26:09.075196
2243	Sokoto	SO	164	2025-03-22 05:26:09.079526	2025-03-22 05:26:09.079526
2244	Taraba	TA	164	2025-03-22 05:26:09.084488	2025-03-22 05:26:09.084488
2245	Yobe	YO	164	2025-03-22 05:26:09.088872	2025-03-22 05:26:09.088872
2246	Zamfara	ZA	164	2025-03-22 05:26:09.093893	2025-03-22 05:26:09.093893
2247	Atlántico Norte	AN	165	2025-03-22 05:26:09.098151	2025-03-22 05:26:09.098151
2248	Atlántico Sur	AS	165	2025-03-22 05:26:09.102861	2025-03-22 05:26:09.102861
2249	Boaco	BO	165	2025-03-22 05:26:09.1069	2025-03-22 05:26:09.1069
2250	Carazo	CA	165	2025-03-22 05:26:09.11167	2025-03-22 05:26:09.11167
2251	Chinandega	CI	165	2025-03-22 05:26:09.116368	2025-03-22 05:26:09.116368
2252	Chontales	CO	165	2025-03-22 05:26:09.120599	2025-03-22 05:26:09.120599
2253	Estelí	ES	165	2025-03-22 05:26:09.125505	2025-03-22 05:26:09.125505
2254	Granada	GR	165	2025-03-22 05:26:09.129735	2025-03-22 05:26:09.129735
2255	Jinotega	JI	165	2025-03-22 05:26:09.134209	2025-03-22 05:26:09.134209
2256	León	LE	165	2025-03-22 05:26:09.138431	2025-03-22 05:26:09.138431
2257	Madriz	MD	165	2025-03-22 05:26:09.143218	2025-03-22 05:26:09.143218
2258	Managua	MN	165	2025-03-22 05:26:09.148173	2025-03-22 05:26:09.148173
2259	Masaya	MS	165	2025-03-22 05:26:09.152506	2025-03-22 05:26:09.152506
2260	Matagalpa	MT	165	2025-03-22 05:26:09.157398	2025-03-22 05:26:09.157398
2261	Nueva Segovia	NS	165	2025-03-22 05:26:09.161897	2025-03-22 05:26:09.161897
2262	Rivas	RI	165	2025-03-22 05:26:09.166388	2025-03-22 05:26:09.166388
2263	Río San Juan	SJ	165	2025-03-22 05:26:09.171312	2025-03-22 05:26:09.171312
2264	Aruba	AW	166	2025-03-22 05:26:09.175757	2025-03-22 05:26:09.175757
2265	Bonaire	BQ1	166	2025-03-22 05:26:09.179927	2025-03-22 05:26:09.179927
2266	Saba	BQ2	166	2025-03-22 05:26:09.184084	2025-03-22 05:26:09.184084
2267	Sint Eustatius	BQ3	166	2025-03-22 05:26:09.188558	2025-03-22 05:26:09.188558
2268	Curaçao	CW	166	2025-03-22 05:26:09.192854	2025-03-22 05:26:09.192854
2269	Drenthe	DR	166	2025-03-22 05:26:09.196946	2025-03-22 05:26:09.196946
2270	Flevoland	FL	166	2025-03-22 05:26:09.200998	2025-03-22 05:26:09.200998
2271	Friesland	FR	166	2025-03-22 05:26:09.206904	2025-03-22 05:26:09.206904
2272	Gelderland	GE	166	2025-03-22 05:26:09.2112	2025-03-22 05:26:09.2112
2273	Groningen	GR	166	2025-03-22 05:26:09.216664	2025-03-22 05:26:09.216664
2274	Limburg	LI	166	2025-03-22 05:26:09.221752	2025-03-22 05:26:09.221752
2275	Noord-Brabant	NB	166	2025-03-22 05:26:09.227037	2025-03-22 05:26:09.227037
2276	Noord-Holland	NH	166	2025-03-22 05:26:09.23154	2025-03-22 05:26:09.23154
2277	Overijssel	OV	166	2025-03-22 05:26:09.236699	2025-03-22 05:26:09.236699
2278	Sint Maarten	SX	166	2025-03-22 05:26:09.241613	2025-03-22 05:26:09.241613
2279	Utrecht	UT	166	2025-03-22 05:26:09.24598	2025-03-22 05:26:09.24598
2280	Zeeland	ZE	166	2025-03-22 05:26:09.250939	2025-03-22 05:26:09.250939
2281	Zuid-Holland	ZH	166	2025-03-22 05:26:09.255319	2025-03-22 05:26:09.255319
2282	Østfold	01	167	2025-03-22 05:26:09.260204	2025-03-22 05:26:09.260204
2283	Akershus	02	167	2025-03-22 05:26:09.2649	2025-03-22 05:26:09.2649
2284	Oslo	03	167	2025-03-22 05:26:09.269952	2025-03-22 05:26:09.269952
2285	Hedmark	04	167	2025-03-22 05:26:09.274816	2025-03-22 05:26:09.274816
2286	Oppland	05	167	2025-03-22 05:26:09.279524	2025-03-22 05:26:09.279524
2287	Buskerud	06	167	2025-03-22 05:26:09.284433	2025-03-22 05:26:09.284433
2288	Vestfold	07	167	2025-03-22 05:26:09.289041	2025-03-22 05:26:09.289041
2289	Telemark	08	167	2025-03-22 05:26:09.293313	2025-03-22 05:26:09.293313
2290	Aust-Agder	09	167	2025-03-22 05:26:09.297761	2025-03-22 05:26:09.297761
2291	Vest-Agder	10	167	2025-03-22 05:26:09.302045	2025-03-22 05:26:09.302045
2292	Rogaland	11	167	2025-03-22 05:26:09.306597	2025-03-22 05:26:09.306597
2293	Hordaland	12	167	2025-03-22 05:26:09.311799	2025-03-22 05:26:09.311799
2294	Sogn og Fjordane	14	167	2025-03-22 05:26:09.316318	2025-03-22 05:26:09.316318
2295	Møre og Romsdal	15	167	2025-03-22 05:26:09.320581	2025-03-22 05:26:09.320581
2296	Sør-Trøndelag	16	167	2025-03-22 05:26:09.325682	2025-03-22 05:26:09.325682
2297	Nord-Trøndelag	17	167	2025-03-22 05:26:09.330221	2025-03-22 05:26:09.330221
2298	Nordland	18	167	2025-03-22 05:26:09.334631	2025-03-22 05:26:09.334631
2299	Troms	19	167	2025-03-22 05:26:09.339101	2025-03-22 05:26:09.339101
2300	Finnmark	20	167	2025-03-22 05:26:09.343553	2025-03-22 05:26:09.343553
2301	Svalbard (Arctic Region)	21	167	2025-03-22 05:26:09.348379	2025-03-22 05:26:09.348379
2302	Jan Mayen (Arctic Region)	22	167	2025-03-22 05:26:09.353013	2025-03-22 05:26:09.353013
2303	Madhyamanchal	1	168	2025-03-22 05:26:09.357446	2025-03-22 05:26:09.357446
2304	Madhya Pashchimanchal	2	168	2025-03-22 05:26:09.36199	2025-03-22 05:26:09.36199
2305	Pashchimanchal	3	168	2025-03-22 05:26:09.367859	2025-03-22 05:26:09.367859
2306	Purwanchal	4	168	2025-03-22 05:26:09.372757	2025-03-22 05:26:09.372757
2307	Sudur Pashchimanchal	5	168	2025-03-22 05:26:09.377689	2025-03-22 05:26:09.377689
2308	Aiwo	01	169	2025-03-22 05:26:09.382403	2025-03-22 05:26:09.382403
2309	Anabar	02	169	2025-03-22 05:26:09.387715	2025-03-22 05:26:09.387715
2310	Anetan	03	169	2025-03-22 05:26:09.392026	2025-03-22 05:26:09.392026
2311	Anibare	04	169	2025-03-22 05:26:09.39683	2025-03-22 05:26:09.39683
2312	Baiti	05	169	2025-03-22 05:26:09.401409	2025-03-22 05:26:09.401409
2313	Boe	06	169	2025-03-22 05:26:09.406464	2025-03-22 05:26:09.406464
2314	Buada	07	169	2025-03-22 05:26:09.41099	2025-03-22 05:26:09.41099
2315	Denigomodu	08	169	2025-03-22 05:26:09.41569	2025-03-22 05:26:09.41569
2316	Ewa	09	169	2025-03-22 05:26:09.420125	2025-03-22 05:26:09.420125
2317	Ijuw	10	169	2025-03-22 05:26:09.425087	2025-03-22 05:26:09.425087
2318	Meneng	11	169	2025-03-22 05:26:09.429296	2025-03-22 05:26:09.429296
2319	Nibok	12	169	2025-03-22 05:26:09.434359	2025-03-22 05:26:09.434359
2320	Uaboe	13	169	2025-03-22 05:26:09.438861	2025-03-22 05:26:09.438861
2321	Yaren	14	169	2025-03-22 05:26:09.443536	2025-03-22 05:26:09.443536
2322	Chatham Islands Territory	CIT	171	2025-03-22 05:26:09.448152	2025-03-22 05:26:09.448152
2323	Auckland	AUK	171	2025-03-22 05:26:09.452406	2025-03-22 05:26:09.452406
2324	Bay of Plenty	BOP	171	2025-03-22 05:26:09.457029	2025-03-22 05:26:09.457029
2325	Canterbury	CAN	171	2025-03-22 05:26:09.461254	2025-03-22 05:26:09.461254
2326	Gisborne	GIS	171	2025-03-22 05:26:09.465905	2025-03-22 05:26:09.465905
2327	Hawke's Bay	HKB	171	2025-03-22 05:26:09.470981	2025-03-22 05:26:09.470981
2328	Manawatu-Wanganui	MWT	171	2025-03-22 05:26:09.475666	2025-03-22 05:26:09.475666
2329	Marlborough	MBH	171	2025-03-22 05:26:09.479824	2025-03-22 05:26:09.479824
2330	Nelson	NSN	171	2025-03-22 05:26:09.484366	2025-03-22 05:26:09.484366
2331	Northland	NTL	171	2025-03-22 05:26:09.488596	2025-03-22 05:26:09.488596
2332	Otago	OTA	171	2025-03-22 05:26:09.493005	2025-03-22 05:26:09.493005
2333	Southland	STL	171	2025-03-22 05:26:09.497154	2025-03-22 05:26:09.497154
2334	Taranaki	TKI	171	2025-03-22 05:26:09.50129	2025-03-22 05:26:09.50129
2335	Tasman	TAS	171	2025-03-22 05:26:09.505785	2025-03-22 05:26:09.505785
2336	Wellington	WGN	171	2025-03-22 05:26:09.510103	2025-03-22 05:26:09.510103
2337	Waikato	WKO	171	2025-03-22 05:26:09.514447	2025-03-22 05:26:09.514447
2338	West Coast	WTC	171	2025-03-22 05:26:09.518592	2025-03-22 05:26:09.518592
2339	Al Bāţinah	BA	172	2025-03-22 05:26:09.523099	2025-03-22 05:26:09.523099
2340	Al Buraymī	BU	172	2025-03-22 05:26:09.529392	2025-03-22 05:26:09.529392
2341	Ad Dākhilīya	DA	172	2025-03-22 05:26:09.533735	2025-03-22 05:26:09.533735
2342	Masqaţ	MA	172	2025-03-22 05:26:09.538822	2025-03-22 05:26:09.538822
2343	Musandam	MU	172	2025-03-22 05:26:09.543667	2025-03-22 05:26:09.543667
2344	Ash Sharqīyah	SH	172	2025-03-22 05:26:09.547832	2025-03-22 05:26:09.547832
2345	Al Wusţá	WU	172	2025-03-22 05:26:09.552556	2025-03-22 05:26:09.552556
2346	Az̧ Z̧āhirah	ZA	172	2025-03-22 05:26:09.556787	2025-03-22 05:26:09.556787
2347	Z̧ufār	ZU	172	2025-03-22 05:26:09.561376	2025-03-22 05:26:09.561376
2348	Bocas del Toro	1	173	2025-03-22 05:26:09.566442	2025-03-22 05:26:09.566442
2349	Coclé	2	173	2025-03-22 05:26:09.571333	2025-03-22 05:26:09.571333
2350	Colón	3	173	2025-03-22 05:26:09.575538	2025-03-22 05:26:09.575538
2351	Chiriquí	4	173	2025-03-22 05:26:09.580457	2025-03-22 05:26:09.580457
2352	Darién	5	173	2025-03-22 05:26:09.584977	2025-03-22 05:26:09.584977
2353	Herrera	6	173	2025-03-22 05:26:09.589648	2025-03-22 05:26:09.589648
2354	Los Santos	7	173	2025-03-22 05:26:09.59389	2025-03-22 05:26:09.59389
2355	Panamá	8	173	2025-03-22 05:26:09.598405	2025-03-22 05:26:09.598405
2356	Veraguas	9	173	2025-03-22 05:26:09.6031	2025-03-22 05:26:09.6031
2357	Emberá	EM	173	2025-03-22 05:26:09.607255	2025-03-22 05:26:09.607255
2358	Kuna Yala	KY	173	2025-03-22 05:26:09.6116	2025-03-22 05:26:09.6116
2359	Ngöbe-Buglé	NB	173	2025-03-22 05:26:09.616124	2025-03-22 05:26:09.616124
2360	Amazonas	AMA	174	2025-03-22 05:26:09.620595	2025-03-22 05:26:09.620595
2361	Ancash	ANC	174	2025-03-22 05:26:09.625708	2025-03-22 05:26:09.625708
2362	Apurímac	APU	174	2025-03-22 05:26:09.63017	2025-03-22 05:26:09.63017
2363	Arequipa	ARE	174	2025-03-22 05:26:09.634712	2025-03-22 05:26:09.634712
2364	Ayacucho	AYA	174	2025-03-22 05:26:09.639243	2025-03-22 05:26:09.639243
2365	Cajamarca	CAJ	174	2025-03-22 05:26:09.643452	2025-03-22 05:26:09.643452
2366	El Callao	CAL	174	2025-03-22 05:26:09.647559	2025-03-22 05:26:09.647559
2367	Cusco [Cuzco]	CUS	174	2025-03-22 05:26:09.651711	2025-03-22 05:26:09.651711
2368	Huánuco	HUC	174	2025-03-22 05:26:09.655757	2025-03-22 05:26:09.655757
2369	Huancavelica	HUV	174	2025-03-22 05:26:09.659876	2025-03-22 05:26:09.659876
2370	Ica	ICA	174	2025-03-22 05:26:09.664665	2025-03-22 05:26:09.664665
2371	Junín	JUN	174	2025-03-22 05:26:09.668873	2025-03-22 05:26:09.668873
2372	La Libertad	LAL	174	2025-03-22 05:26:09.673203	2025-03-22 05:26:09.673203
2373	Lambayeque	LAM	174	2025-03-22 05:26:09.67788	2025-03-22 05:26:09.67788
2374	Lima	LIM	174	2025-03-22 05:26:09.684248	2025-03-22 05:26:09.684248
2375	Municipalidad Metropolitana de Lima	LMA	174	2025-03-22 05:26:09.688634	2025-03-22 05:26:09.688634
2376	Loreto	LOR	174	2025-03-22 05:26:09.69383	2025-03-22 05:26:09.69383
2377	Madre de Dios	MDD	174	2025-03-22 05:26:09.69946	2025-03-22 05:26:09.69946
2378	Moquegua	MOQ	174	2025-03-22 05:26:09.704045	2025-03-22 05:26:09.704045
2379	Pasco	PAS	174	2025-03-22 05:26:09.708854	2025-03-22 05:26:09.708854
2380	Piura	PIU	174	2025-03-22 05:26:09.713492	2025-03-22 05:26:09.713492
2381	Puno	PUN	174	2025-03-22 05:26:09.718672	2025-03-22 05:26:09.718672
2382	San Martín	SAM	174	2025-03-22 05:26:09.723313	2025-03-22 05:26:09.723313
2383	Tacna	TAC	174	2025-03-22 05:26:09.72862	2025-03-22 05:26:09.72862
2384	Tumbes	TUM	174	2025-03-22 05:26:09.733377	2025-03-22 05:26:09.733377
2385	Ucayali	UCA	174	2025-03-22 05:26:09.738179	2025-03-22 05:26:09.738179
2386	Chimbu	CPK	176	2025-03-22 05:26:09.742728	2025-03-22 05:26:09.742728
2387	Central	CPM	176	2025-03-22 05:26:09.747638	2025-03-22 05:26:09.747638
2388	East New Britain	EBR	176	2025-03-22 05:26:09.751807	2025-03-22 05:26:09.751807
2389	Eastern Highlands	EHG	176	2025-03-22 05:26:09.756622	2025-03-22 05:26:09.756622
2390	Enga	EPW	176	2025-03-22 05:26:09.761138	2025-03-22 05:26:09.761138
2391	East Sepik	ESW	176	2025-03-22 05:26:09.765852	2025-03-22 05:26:09.765852
2392	Gulf	GPK	176	2025-03-22 05:26:09.770538	2025-03-22 05:26:09.770538
2393	Milne Bay	MBA	176	2025-03-22 05:26:09.774997	2025-03-22 05:26:09.774997
2394	Morobe	MPL	176	2025-03-22 05:26:09.779414	2025-03-22 05:26:09.779414
2395	Madang	MPM	176	2025-03-22 05:26:09.784556	2025-03-22 05:26:09.784556
2396	Manus	MRL	176	2025-03-22 05:26:09.788792	2025-03-22 05:26:09.788792
2397	National Capital District (Port Moresby)	NCD	176	2025-03-22 05:26:09.793234	2025-03-22 05:26:09.793234
2398	New Ireland	NIK	176	2025-03-22 05:26:09.797388	2025-03-22 05:26:09.797388
2399	Northern	NPP	176	2025-03-22 05:26:09.801622	2025-03-22 05:26:09.801622
2400	Bougainville	NSB	176	2025-03-22 05:26:09.806335	2025-03-22 05:26:09.806335
2401	Sandaun	SAN	176	2025-03-22 05:26:09.810702	2025-03-22 05:26:09.810702
2402	Southern Highlands	SHM	176	2025-03-22 05:26:09.815125	2025-03-22 05:26:09.815125
2403	West New Britain	WBK	176	2025-03-22 05:26:09.819933	2025-03-22 05:26:09.819933
2404	Western Highlands	WHM	176	2025-03-22 05:26:09.824834	2025-03-22 05:26:09.824834
2405	Western	WPD	176	2025-03-22 05:26:09.829499	2025-03-22 05:26:09.829499
2406	National Capital Region	00	177	2025-03-22 05:26:09.834173	2025-03-22 05:26:09.834173
2407	Ilocos (Region I)	01	177	2025-03-22 05:26:09.838615	2025-03-22 05:26:09.838615
2408	Cagayan Valley (Region II)	02	177	2025-03-22 05:26:09.844614	2025-03-22 05:26:09.844614
2409	Central Luzon (Region III)	03	177	2025-03-22 05:26:09.849174	2025-03-22 05:26:09.849174
2410	Bicol (Region V)	05	177	2025-03-22 05:26:09.854454	2025-03-22 05:26:09.854454
2411	Western Visayas (Region VI)	06	177	2025-03-22 05:26:09.858876	2025-03-22 05:26:09.858876
2412	Central Visayas (Region VII)	07	177	2025-03-22 05:26:09.864259	2025-03-22 05:26:09.864259
2413	Eastern Visayas (Region VIII)	08	177	2025-03-22 05:26:09.869117	2025-03-22 05:26:09.869117
2414	Zamboanga Peninsula (Region IX)	09	177	2025-03-22 05:26:09.874327	2025-03-22 05:26:09.874327
2415	Northern Mindanao (Region X)	10	177	2025-03-22 05:26:09.879269	2025-03-22 05:26:09.879269
2416	Davao (Region XI)	11	177	2025-03-22 05:26:09.884466	2025-03-22 05:26:09.884466
2417	Soccsksargen (Region XII)	12	177	2025-03-22 05:26:09.889648	2025-03-22 05:26:09.889648
2418	Caraga (Region XIII)	13	177	2025-03-22 05:26:09.89415	2025-03-22 05:26:09.89415
2419	Autonomous Region in Muslim Mindanao (ARMM)	14	177	2025-03-22 05:26:09.899001	2025-03-22 05:26:09.899001
2420	Cordillera Administrative Region (CAR)	15	177	2025-03-22 05:26:09.903642	2025-03-22 05:26:09.903642
2421	CALABARZON (Region IV-A)	40	177	2025-03-22 05:26:09.90857	2025-03-22 05:26:09.90857
2422	MIMAROPA (Region IV-B)	41	177	2025-03-22 05:26:09.913364	2025-03-22 05:26:09.913364
2423	Balochistan	BA	178	2025-03-22 05:26:09.918337	2025-03-22 05:26:09.918337
2424	Gilgit-Baltistan	GB	178	2025-03-22 05:26:09.923021	2025-03-22 05:26:09.923021
2425	Islamabad	IS	178	2025-03-22 05:26:09.927655	2025-03-22 05:26:09.927655
2426	Azad Kashmir	JK	178	2025-03-22 05:26:09.932349	2025-03-22 05:26:09.932349
2427	Khyber Pakhtunkhwa	KP	178	2025-03-22 05:26:09.937057	2025-03-22 05:26:09.937057
2428	Punjab	PB	178	2025-03-22 05:26:09.941438	2025-03-22 05:26:09.941438
2429	Sindh	SD	178	2025-03-22 05:26:09.945999	2025-03-22 05:26:09.945999
2430	Federally Administered Tribal Areas	TA	178	2025-03-22 05:26:09.951093	2025-03-22 05:26:09.951093
2431	Dolnośląskie	DS	179	2025-03-22 05:26:09.955565	2025-03-22 05:26:09.955565
2432	Kujawsko-pomorskie	KP	179	2025-03-22 05:26:09.959684	2025-03-22 05:26:09.959684
2433	Lubuskie	LB	179	2025-03-22 05:26:09.964055	2025-03-22 05:26:09.964055
2434	Łódzkie	LD	179	2025-03-22 05:26:09.968449	2025-03-22 05:26:09.968449
2435	Lubelskie	LU	179	2025-03-22 05:26:09.973153	2025-03-22 05:26:09.973153
2436	Małopolskie	MA	179	2025-03-22 05:26:09.977819	2025-03-22 05:26:09.977819
2437	Mazowieckie	MZ	179	2025-03-22 05:26:09.98242	2025-03-22 05:26:09.98242
2438	Opolskie	OP	179	2025-03-22 05:26:09.987179	2025-03-22 05:26:09.987179
2439	Podlaskie	PD	179	2025-03-22 05:26:09.991798	2025-03-22 05:26:09.991798
2440	Podkarpackie	PK	179	2025-03-22 05:26:09.996366	2025-03-22 05:26:09.996366
2441	Pomorskie	PM	179	2025-03-22 05:26:10.000801	2025-03-22 05:26:10.000801
2442	Świętokrzyskie	SK	179	2025-03-22 05:26:10.005297	2025-03-22 05:26:10.005297
2443	Śląskie	SL	179	2025-03-22 05:26:10.011521	2025-03-22 05:26:10.011521
2444	Warmińsko-mazurskie	WN	179	2025-03-22 05:26:10.016828	2025-03-22 05:26:10.016828
2445	Wielkopolskie	WP	179	2025-03-22 05:26:10.021441	2025-03-22 05:26:10.021441
2446	Zachodniopomorskie	ZP	179	2025-03-22 05:26:10.02645	2025-03-22 05:26:10.02645
2447	Bethlehem	BTH	183	2025-03-22 05:26:10.031465	2025-03-22 05:26:10.031465
2448	Deir El Balah	DEB	183	2025-03-22 05:26:10.036874	2025-03-22 05:26:10.036874
2449	Gaza	GZA	183	2025-03-22 05:26:10.041519	2025-03-22 05:26:10.041519
2450	Hebron	HBN	183	2025-03-22 05:26:10.047714	2025-03-22 05:26:10.047714
2451	Jerusalem	JEM	183	2025-03-22 05:26:10.052725	2025-03-22 05:26:10.052725
2452	Jenin	JEN	183	2025-03-22 05:26:10.057982	2025-03-22 05:26:10.057982
2453	Jericho - Al Aghwar	JRH	183	2025-03-22 05:26:10.062573	2025-03-22 05:26:10.062573
2454	Khan Yunis	KYS	183	2025-03-22 05:26:10.067752	2025-03-22 05:26:10.067752
2455	Nablus	NBS	183	2025-03-22 05:26:10.072716	2025-03-22 05:26:10.072716
2456	North Gaza	NGZ	183	2025-03-22 05:26:10.077548	2025-03-22 05:26:10.077548
2457	Qalqilya	QQA	183	2025-03-22 05:26:10.082523	2025-03-22 05:26:10.082523
2458	Ramallah	RBH	183	2025-03-22 05:26:10.087108	2025-03-22 05:26:10.087108
2459	Rafah	RFH	183	2025-03-22 05:26:10.092035	2025-03-22 05:26:10.092035
2460	Salfit	SLT	183	2025-03-22 05:26:10.096373	2025-03-22 05:26:10.096373
2461	Tubas	TBS	183	2025-03-22 05:26:10.101303	2025-03-22 05:26:10.101303
2462	Tulkarm	TKM	183	2025-03-22 05:26:10.10609	2025-03-22 05:26:10.10609
2463	Aveiro	01	184	2025-03-22 05:26:10.111011	2025-03-22 05:26:10.111011
2464	Beja	02	184	2025-03-22 05:26:10.11633	2025-03-22 05:26:10.11633
2465	Braga	03	184	2025-03-22 05:26:10.120923	2025-03-22 05:26:10.120923
2466	Bragança	04	184	2025-03-22 05:26:10.125273	2025-03-22 05:26:10.125273
2467	Castelo Branco	05	184	2025-03-22 05:26:10.129439	2025-03-22 05:26:10.129439
2468	Coimbra	06	184	2025-03-22 05:26:10.133986	2025-03-22 05:26:10.133986
2469	Évora	07	184	2025-03-22 05:26:10.138515	2025-03-22 05:26:10.138515
2470	Faro	08	184	2025-03-22 05:26:10.142994	2025-03-22 05:26:10.142994
2471	Guarda	09	184	2025-03-22 05:26:10.147065	2025-03-22 05:26:10.147065
2472	Leiria	10	184	2025-03-22 05:26:10.15182	2025-03-22 05:26:10.15182
2473	Lisboa	11	184	2025-03-22 05:26:10.156248	2025-03-22 05:26:10.156248
2474	Portalegre	12	184	2025-03-22 05:26:10.160406	2025-03-22 05:26:10.160406
2475	Porto	13	184	2025-03-22 05:26:10.164927	2025-03-22 05:26:10.164927
2476	Santarém	14	184	2025-03-22 05:26:10.169723	2025-03-22 05:26:10.169723
2477	Setúbal	15	184	2025-03-22 05:26:10.17557	2025-03-22 05:26:10.17557
2478	Viana do Castelo	16	184	2025-03-22 05:26:10.179932	2025-03-22 05:26:10.179932
2479	Vila Real	17	184	2025-03-22 05:26:10.185071	2025-03-22 05:26:10.185071
2480	Viseu	18	184	2025-03-22 05:26:10.189739	2025-03-22 05:26:10.189739
2481	Região Autónoma dos Açores	20	184	2025-03-22 05:26:10.193928	2025-03-22 05:26:10.193928
2482	Região Autónoma da Madeira	30	184	2025-03-22 05:26:10.198819	2025-03-22 05:26:10.198819
2483	Aimeliik	002	185	2025-03-22 05:26:10.203493	2025-03-22 05:26:10.203493
2484	Airai	004	185	2025-03-22 05:26:10.20835	2025-03-22 05:26:10.20835
2485	Angaur	010	185	2025-03-22 05:26:10.213093	2025-03-22 05:26:10.213093
2486	Hatobohei	050	185	2025-03-22 05:26:10.217811	2025-03-22 05:26:10.217811
2487	Kayangel	100	185	2025-03-22 05:26:10.221979	2025-03-22 05:26:10.221979
2488	Koror	150	185	2025-03-22 05:26:10.226909	2025-03-22 05:26:10.226909
2489	Melekeok	212	185	2025-03-22 05:26:10.231471	2025-03-22 05:26:10.231471
2490	Ngaraard	214	185	2025-03-22 05:26:10.236315	2025-03-22 05:26:10.236315
2491	Ngarchelong	218	185	2025-03-22 05:26:10.240929	2025-03-22 05:26:10.240929
2492	Ngardmau	222	185	2025-03-22 05:26:10.245195	2025-03-22 05:26:10.245195
2493	Ngatpang	224	185	2025-03-22 05:26:10.24965	2025-03-22 05:26:10.24965
2494	Ngchesar	226	185	2025-03-22 05:26:10.254065	2025-03-22 05:26:10.254065
2495	Ngeremlengui	227	185	2025-03-22 05:26:10.258523	2025-03-22 05:26:10.258523
2496	Ngiwal	228	185	2025-03-22 05:26:10.263007	2025-03-22 05:26:10.263007
2497	Peleliu	350	185	2025-03-22 05:26:10.267457	2025-03-22 05:26:10.267457
2498	Sonsorol	370	185	2025-03-22 05:26:10.272476	2025-03-22 05:26:10.272476
2499	Concepción	1	186	2025-03-22 05:26:10.276797	2025-03-22 05:26:10.276797
2500	Alto Paraná	10	186	2025-03-22 05:26:10.280845	2025-03-22 05:26:10.280845
2501	Central	11	186	2025-03-22 05:26:10.285323	2025-03-22 05:26:10.285323
2502	Ñeembucú	12	186	2025-03-22 05:26:10.28966	2025-03-22 05:26:10.28966
2503	Amambay	13	186	2025-03-22 05:26:10.294731	2025-03-22 05:26:10.294731
2504	Canindeyú	14	186	2025-03-22 05:26:10.299095	2025-03-22 05:26:10.299095
2505	Presidente Hayes	15	186	2025-03-22 05:26:10.303774	2025-03-22 05:26:10.303774
2506	Alto Paraguay	16	186	2025-03-22 05:26:10.307996	2025-03-22 05:26:10.307996
2507	Boquerón	19	186	2025-03-22 05:26:10.312787	2025-03-22 05:26:10.312787
2508	San Pedro	2	186	2025-03-22 05:26:10.317161	2025-03-22 05:26:10.317161
2509	Cordillera	3	186	2025-03-22 05:26:10.321246	2025-03-22 05:26:10.321246
2510	Guairá	4	186	2025-03-22 05:26:10.325599	2025-03-22 05:26:10.325599
2511	Caaguazú	5	186	2025-03-22 05:26:10.331393	2025-03-22 05:26:10.331393
2512	Caazapá	6	186	2025-03-22 05:26:10.335709	2025-03-22 05:26:10.335709
2513	Itapúa	7	186	2025-03-22 05:26:10.340568	2025-03-22 05:26:10.340568
2514	Misiones	8	186	2025-03-22 05:26:10.344846	2025-03-22 05:26:10.344846
2515	Paraguarí	9	186	2025-03-22 05:26:10.349743	2025-03-22 05:26:10.349743
2516	Asunción	ASU	186	2025-03-22 05:26:10.354425	2025-03-22 05:26:10.354425
2517	Ad Dawhah	DA	187	2025-03-22 05:26:10.359644	2025-03-22 05:26:10.359644
2518	Al Khawr wa adh Dhakhīrah	KH	187	2025-03-22 05:26:10.364573	2025-03-22 05:26:10.364573
2519	Ash Shamal	MS	187	2025-03-22 05:26:10.368971	2025-03-22 05:26:10.368971
2520	Ar Rayyan	RA	187	2025-03-22 05:26:10.373886	2025-03-22 05:26:10.373886
2521	Umm Salal	US	187	2025-03-22 05:26:10.378017	2025-03-22 05:26:10.378017
2522	Al Wakrah	WA	187	2025-03-22 05:26:10.382745	2025-03-22 05:26:10.382745
2523	Az̧ Z̧a‘āyin	ZA	187	2025-03-22 05:26:10.386992	2025-03-22 05:26:10.386992
2524	Alba	AB	189	2025-03-22 05:26:10.391763	2025-03-22 05:26:10.391763
2525	Argeș	AG	189	2025-03-22 05:26:10.396231	2025-03-22 05:26:10.396231
2526	Arad	AR	189	2025-03-22 05:26:10.400987	2025-03-22 05:26:10.400987
2527	București	B	189	2025-03-22 05:26:10.405232	2025-03-22 05:26:10.405232
2528	Bacău	BC	189	2025-03-22 05:26:10.410154	2025-03-22 05:26:10.410154
2529	Bihor	BH	189	2025-03-22 05:26:10.41448	2025-03-22 05:26:10.41448
2530	Bistrița-Năsăud	BN	189	2025-03-22 05:26:10.419198	2025-03-22 05:26:10.419198
2531	Brăila	BR	189	2025-03-22 05:26:10.42348	2025-03-22 05:26:10.42348
2532	Botoșani	BT	189	2025-03-22 05:26:10.427805	2025-03-22 05:26:10.427805
2533	Brașov	BV	189	2025-03-22 05:26:10.433176	2025-03-22 05:26:10.433176
2534	Buzău	BZ	189	2025-03-22 05:26:10.437326	2025-03-22 05:26:10.437326
2535	Cluj	CJ	189	2025-03-22 05:26:10.441527	2025-03-22 05:26:10.441527
2536	Călărași	CL	189	2025-03-22 05:26:10.445651	2025-03-22 05:26:10.445651
2537	Caraș-Severin	CS	189	2025-03-22 05:26:10.44978	2025-03-22 05:26:10.44978
2538	Constanța	CT	189	2025-03-22 05:26:10.454087	2025-03-22 05:26:10.454087
2539	Covasna	CV	189	2025-03-22 05:26:10.458127	2025-03-22 05:26:10.458127
2540	Dâmbovița	DB	189	2025-03-22 05:26:10.462501	2025-03-22 05:26:10.462501
2541	Dolj	DJ	189	2025-03-22 05:26:10.466926	2025-03-22 05:26:10.466926
2542	Gorj	GJ	189	2025-03-22 05:26:10.471153	2025-03-22 05:26:10.471153
2543	Galați	GL	189	2025-03-22 05:26:10.475718	2025-03-22 05:26:10.475718
2544	Giurgiu	GR	189	2025-03-22 05:26:10.48037	2025-03-22 05:26:10.48037
2545	Hunedoara	HD	189	2025-03-22 05:26:10.486045	2025-03-22 05:26:10.486045
2546	Harghita	HR	189	2025-03-22 05:26:10.490459	2025-03-22 05:26:10.490459
2547	Ilfov	IF	189	2025-03-22 05:26:10.495359	2025-03-22 05:26:10.495359
2548	Ialomița	IL	189	2025-03-22 05:26:10.49964	2025-03-22 05:26:10.49964
2549	Iași	IS	189	2025-03-22 05:26:10.504486	2025-03-22 05:26:10.504486
2550	Mehedinți	MH	189	2025-03-22 05:26:10.508613	2025-03-22 05:26:10.508613
2551	Maramureș	MM	189	2025-03-22 05:26:10.513709	2025-03-22 05:26:10.513709
2552	Mureș	MS	189	2025-03-22 05:26:10.518189	2025-03-22 05:26:10.518189
2553	Neamț	NT	189	2025-03-22 05:26:10.523102	2025-03-22 05:26:10.523102
2554	Olt	OT	189	2025-03-22 05:26:10.528438	2025-03-22 05:26:10.528438
2555	Prahova	PH	189	2025-03-22 05:26:10.532847	2025-03-22 05:26:10.532847
2556	Sibiu	SB	189	2025-03-22 05:26:10.537434	2025-03-22 05:26:10.537434
2557	Sălaj	SJ	189	2025-03-22 05:26:10.541697	2025-03-22 05:26:10.541697
2558	Satu Mare	SM	189	2025-03-22 05:26:10.546307	2025-03-22 05:26:10.546307
2559	Suceava	SV	189	2025-03-22 05:26:10.550594	2025-03-22 05:26:10.550594
2560	Tulcea	TL	189	2025-03-22 05:26:10.555003	2025-03-22 05:26:10.555003
2561	Timiș	TM	189	2025-03-22 05:26:10.559449	2025-03-22 05:26:10.559449
2562	Teleorman	TR	189	2025-03-22 05:26:10.563882	2025-03-22 05:26:10.563882
2563	Vâlcea	VL	189	2025-03-22 05:26:10.568434	2025-03-22 05:26:10.568434
2564	Vrancea	VN	189	2025-03-22 05:26:10.573772	2025-03-22 05:26:10.573772
2565	Vaslui	VS	189	2025-03-22 05:26:10.578031	2025-03-22 05:26:10.578031
2566	Beograd	00	190	2025-03-22 05:26:10.582648	2025-03-22 05:26:10.582648
2567	Mačvanski okrug	08	190	2025-03-22 05:26:10.587735	2025-03-22 05:26:10.587735
2568	Kolubarski okrug	09	190	2025-03-22 05:26:10.591991	2025-03-22 05:26:10.591991
2569	Podunavski okrug	10	190	2025-03-22 05:26:10.596094	2025-03-22 05:26:10.596094
2570	Braničevski okrug	11	190	2025-03-22 05:26:10.60045	2025-03-22 05:26:10.60045
2571	Šumadijski okrug	12	190	2025-03-22 05:26:10.604676	2025-03-22 05:26:10.604676
2572	Pomoravski okrug	13	190	2025-03-22 05:26:10.608898	2025-03-22 05:26:10.608898
2573	Borski okrug	14	190	2025-03-22 05:26:10.61306	2025-03-22 05:26:10.61306
2574	Zaječarski okrug	15	190	2025-03-22 05:26:10.617047	2025-03-22 05:26:10.617047
2575	Zlatiborski okrug	16	190	2025-03-22 05:26:10.621962	2025-03-22 05:26:10.621962
2576	Moravički okrug	17	190	2025-03-22 05:26:10.62665	2025-03-22 05:26:10.62665
2577	Raški okrug	18	190	2025-03-22 05:26:10.631026	2025-03-22 05:26:10.631026
2578	Rasinski okrug	19	190	2025-03-22 05:26:10.635308	2025-03-22 05:26:10.635308
2579	Nišavski okrug	20	190	2025-03-22 05:26:10.639711	2025-03-22 05:26:10.639711
2580	Toplički okrug	21	190	2025-03-22 05:26:10.645789	2025-03-22 05:26:10.645789
2581	Pirotski okrug	22	190	2025-03-22 05:26:10.65075	2025-03-22 05:26:10.65075
2582	Jablanički okrug	23	190	2025-03-22 05:26:10.655151	2025-03-22 05:26:10.655151
2583	Pčinjski okrug	24	190	2025-03-22 05:26:10.659834	2025-03-22 05:26:10.659834
2584	Kosovo-Metohija	KM	190	2025-03-22 05:26:10.664319	2025-03-22 05:26:10.664319
2585	Vojvodina	VO	190	2025-03-22 05:26:10.669672	2025-03-22 05:26:10.669672
2586	Adygeya, Respublika	AD	191	2025-03-22 05:26:10.674619	2025-03-22 05:26:10.674619
2587	Altay, Respublika	AL	191	2025-03-22 05:26:10.679326	2025-03-22 05:26:10.679326
2588	Altayskiy kray	ALT	191	2025-03-22 05:26:10.683759	2025-03-22 05:26:10.683759
2589	Amurskaya oblast'	AMU	191	2025-03-22 05:26:10.688326	2025-03-22 05:26:10.688326
2590	Arkhangel'skaya oblast'	ARK	191	2025-03-22 05:26:10.692569	2025-03-22 05:26:10.692569
2591	Astrakhanskaya oblast'	AST	191	2025-03-22 05:26:10.697146	2025-03-22 05:26:10.697146
2592	Bashkortostan, Respublika	BA	191	2025-03-22 05:26:10.701851	2025-03-22 05:26:10.701851
2593	Belgorodskaya oblast'	BEL	191	2025-03-22 05:26:10.707008	2025-03-22 05:26:10.707008
2594	Bryanskaya oblast'	BRY	191	2025-03-22 05:26:10.711634	2025-03-22 05:26:10.711634
2595	Buryatiya, Respublika	BU	191	2025-03-22 05:26:10.716456	2025-03-22 05:26:10.716456
2596	Chechenskaya Respublika	CE	191	2025-03-22 05:26:10.721731	2025-03-22 05:26:10.721731
2597	Chelyabinskaya oblast'	CHE	191	2025-03-22 05:26:10.726359	2025-03-22 05:26:10.726359
2598	Chukotskiy avtonomnyy okrug	CHU	191	2025-03-22 05:26:10.731129	2025-03-22 05:26:10.731129
2599	Chuvashskaya Respublika	CU	191	2025-03-22 05:26:10.736079	2025-03-22 05:26:10.736079
2600	Dagestan, Respublika	DA	191	2025-03-22 05:26:10.740621	2025-03-22 05:26:10.740621
2601	Respublika Ingushetiya	IN	191	2025-03-22 05:26:10.745764	2025-03-22 05:26:10.745764
2602	Irkutiskaya oblast'	IRK	191	2025-03-22 05:26:10.750094	2025-03-22 05:26:10.750094
2603	Ivanovskaya oblast'	IVA	191	2025-03-22 05:26:10.75425	2025-03-22 05:26:10.75425
2604	Kamchatskiy kray	KAM	191	2025-03-22 05:26:10.758323	2025-03-22 05:26:10.758323
2605	Kabardino-Balkarskaya Respublika	KB	191	2025-03-22 05:26:10.762956	2025-03-22 05:26:10.762956
2606	Karachayevo-Cherkesskaya Respublika	KC	191	2025-03-22 05:26:10.767338	2025-03-22 05:26:10.767338
2607	Krasnodarskiy kray	KDA	191	2025-03-22 05:26:10.771614	2025-03-22 05:26:10.771614
2608	Kemerovskaya oblast'	KEM	191	2025-03-22 05:26:10.775892	2025-03-22 05:26:10.775892
2609	Kaliningradskaya oblast'	KGD	191	2025-03-22 05:26:10.780536	2025-03-22 05:26:10.780536
2610	Kurganskaya oblast'	KGN	191	2025-03-22 05:26:10.785286	2025-03-22 05:26:10.785286
2611	Khabarovskiy kray	KHA	191	2025-03-22 05:26:10.790985	2025-03-22 05:26:10.790985
2612	Khanty-Mansiysky avtonomnyy okrug-Yugra	KHM	191	2025-03-22 05:26:10.795513	2025-03-22 05:26:10.795513
2613	Kirovskaya oblast'	KIR	191	2025-03-22 05:26:10.799779	2025-03-22 05:26:10.799779
2614	Khakasiya, Respublika	KK	191	2025-03-22 05:26:10.805461	2025-03-22 05:26:10.805461
2615	Kalmykiya, Respublika	KL	191	2025-03-22 05:26:10.809941	2025-03-22 05:26:10.809941
2616	Kaluzhskaya oblast'	KLU	191	2025-03-22 05:26:10.814772	2025-03-22 05:26:10.814772
2617	Komi, Respublika	KO	191	2025-03-22 05:26:10.819651	2025-03-22 05:26:10.819651
2618	Kostromskaya oblast'	KOS	191	2025-03-22 05:26:10.824083	2025-03-22 05:26:10.824083
2619	Kareliya, Respublika	KR	191	2025-03-22 05:26:10.829354	2025-03-22 05:26:10.829354
2620	Kurskaya oblast'	KRS	191	2025-03-22 05:26:10.834068	2025-03-22 05:26:10.834068
2621	Krasnoyarskiy kray	KYA	191	2025-03-22 05:26:10.839089	2025-03-22 05:26:10.839089
2622	Leningradskaya oblast'	LEN	191	2025-03-22 05:26:10.843318	2025-03-22 05:26:10.843318
2623	Lipetskaya oblast'	LIP	191	2025-03-22 05:26:10.848023	2025-03-22 05:26:10.848023
2624	Magadanskaya oblast'	MAG	191	2025-03-22 05:26:10.852159	2025-03-22 05:26:10.852159
2625	Mariy El, Respublika	ME	191	2025-03-22 05:26:10.856809	2025-03-22 05:26:10.856809
2626	Mordoviya, Respublika	MO	191	2025-03-22 05:26:10.860995	2025-03-22 05:26:10.860995
2627	Moskovskaya oblast'	MOS	191	2025-03-22 05:26:10.865559	2025-03-22 05:26:10.865559
2628	Moskva	MOW	191	2025-03-22 05:26:10.870115	2025-03-22 05:26:10.870115
2629	Murmanskaya oblast'	MUR	191	2025-03-22 05:26:10.874501	2025-03-22 05:26:10.874501
2630	Nenetskiy avtonomnyy okrug	NEN	191	2025-03-22 05:26:10.879134	2025-03-22 05:26:10.879134
2631	Novgorodskaya oblast'	NGR	191	2025-03-22 05:26:10.883971	2025-03-22 05:26:10.883971
2632	Nizhegorodskaya oblast'	NIZ	191	2025-03-22 05:26:10.889184	2025-03-22 05:26:10.889184
2633	Novosibirskaya oblast'	NVS	191	2025-03-22 05:26:10.893826	2025-03-22 05:26:10.893826
2634	Omskaya oblast'	OMS	191	2025-03-22 05:26:10.898494	2025-03-22 05:26:10.898494
2635	Orenburgskaya oblast'	ORE	191	2025-03-22 05:26:10.903892	2025-03-22 05:26:10.903892
2636	Orlovskaya oblast'	ORL	191	2025-03-22 05:26:10.908403	2025-03-22 05:26:10.908403
2637	Permskiy kray	PER	191	2025-03-22 05:26:10.912818	2025-03-22 05:26:10.912818
2638	Penzenskaya oblast'	PNZ	191	2025-03-22 05:26:10.917166	2025-03-22 05:26:10.917166
2639	Primorskiy kray	PRI	191	2025-03-22 05:26:10.921753	2025-03-22 05:26:10.921753
2640	Pskovskaya oblast'	PSK	191	2025-03-22 05:26:10.926198	2025-03-22 05:26:10.926198
2641	Rostovskaya oblast'	ROS	191	2025-03-22 05:26:10.930604	2025-03-22 05:26:10.930604
2642	Ryazanskaya oblast'	RYA	191	2025-03-22 05:26:10.935143	2025-03-22 05:26:10.935143
2643	Sakha, Respublika [Yakutiya]	SA	191	2025-03-22 05:26:10.940262	2025-03-22 05:26:10.940262
2644	Sakhalinskaya oblast'	SAK	191	2025-03-22 05:26:10.944992	2025-03-22 05:26:10.944992
2645	Samaraskaya oblast'	SAM	191	2025-03-22 05:26:10.949498	2025-03-22 05:26:10.949498
2646	Saratovskaya oblast'	SAR	191	2025-03-22 05:26:10.954153	2025-03-22 05:26:10.954153
2647	Severnaya Osetiya-Alaniya, Respublika	SE	191	2025-03-22 05:26:10.958406	2025-03-22 05:26:10.958406
2877	Sevnica	110	200	2025-03-22 05:26:12.048847	2025-03-22 05:26:12.048847
2648	Smolenskaya oblast'	SMO	191	2025-03-22 05:26:10.964367	2025-03-22 05:26:10.964367
2649	Sankt-Peterburg	SPE	191	2025-03-22 05:26:10.96925	2025-03-22 05:26:10.96925
2650	Stavropol'skiy kray	STA	191	2025-03-22 05:26:10.97456	2025-03-22 05:26:10.97456
2651	Sverdlovskaya oblast'	SVE	191	2025-03-22 05:26:10.978728	2025-03-22 05:26:10.978728
2652	Tatarstan, Respublika	TA	191	2025-03-22 05:26:10.983579	2025-03-22 05:26:10.983579
2653	Tambovskaya oblast'	TAM	191	2025-03-22 05:26:10.988093	2025-03-22 05:26:10.988093
2654	Tomskaya oblast'	TOM	191	2025-03-22 05:26:10.993193	2025-03-22 05:26:10.993193
2655	Tul'skaya oblast'	TUL	191	2025-03-22 05:26:10.998436	2025-03-22 05:26:10.998436
2656	Tverskaya oblast'	TVE	191	2025-03-22 05:26:11.003534	2025-03-22 05:26:11.003534
2657	Tyva, Respublika [Tuva]	TY	191	2025-03-22 05:26:11.008534	2025-03-22 05:26:11.008534
2658	Tyumenskaya oblast'	TYU	191	2025-03-22 05:26:11.012765	2025-03-22 05:26:11.012765
2659	Udmurtskaya Respublika	UD	191	2025-03-22 05:26:11.017679	2025-03-22 05:26:11.017679
2660	Ul'yanovskaya oblast'	ULY	191	2025-03-22 05:26:11.022099	2025-03-22 05:26:11.022099
2661	Volgogradskaya oblast'	VGG	191	2025-03-22 05:26:11.02662	2025-03-22 05:26:11.02662
2662	Vladimirskaya oblast'	VLA	191	2025-03-22 05:26:11.030985	2025-03-22 05:26:11.030985
2663	Vologodskaya oblast'	VLG	191	2025-03-22 05:26:11.035492	2025-03-22 05:26:11.035492
2664	Voronezhskaya oblast'	VOR	191	2025-03-22 05:26:11.040007	2025-03-22 05:26:11.040007
2665	Yamalo-Nenetskiy avtonomnyy okrug	YAN	191	2025-03-22 05:26:11.046038	2025-03-22 05:26:11.046038
2666	Yaroslavskaya oblast'	YAR	191	2025-03-22 05:26:11.05072	2025-03-22 05:26:11.05072
2667	Yevreyskaya avtonomnaya oblast'	YEV	191	2025-03-22 05:26:11.055259	2025-03-22 05:26:11.055259
2668	Zabajkal'skij kraj	ZAB	191	2025-03-22 05:26:11.059392	2025-03-22 05:26:11.059392
2669	Ville de Kigali	01	192	2025-03-22 05:26:11.064353	2025-03-22 05:26:11.064353
2670	Est	02	192	2025-03-22 05:26:11.070162	2025-03-22 05:26:11.070162
2671	Nord	03	192	2025-03-22 05:26:11.074427	2025-03-22 05:26:11.074427
2672	Ouest	04	192	2025-03-22 05:26:11.078818	2025-03-22 05:26:11.078818
2673	Sud	05	192	2025-03-22 05:26:11.083433	2025-03-22 05:26:11.083433
2674	Ar Riyāḍ	01	193	2025-03-22 05:26:11.087954	2025-03-22 05:26:11.087954
2675	Makkah	02	193	2025-03-22 05:26:11.092993	2025-03-22 05:26:11.092993
2676	Al Madīnah	03	193	2025-03-22 05:26:11.097453	2025-03-22 05:26:11.097453
2677	Ash Sharqīyah	04	193	2025-03-22 05:26:11.102169	2025-03-22 05:26:11.102169
2678	Al Qaşīm	05	193	2025-03-22 05:26:11.106647	2025-03-22 05:26:11.106647
2679	Ḥā'il	06	193	2025-03-22 05:26:11.111179	2025-03-22 05:26:11.111179
2680	Tabūk	07	193	2025-03-22 05:26:11.115532	2025-03-22 05:26:11.115532
2681	Al Ḥudūd ash Shamāliyah	08	193	2025-03-22 05:26:11.120042	2025-03-22 05:26:11.120042
2682	Jīzan	09	193	2025-03-22 05:26:11.126583	2025-03-22 05:26:11.126583
2683	Najrān	10	193	2025-03-22 05:26:11.131159	2025-03-22 05:26:11.131159
2684	Al Bāhah	11	193	2025-03-22 05:26:11.136006	2025-03-22 05:26:11.136006
2685	Al Jawf	12	193	2025-03-22 05:26:11.140733	2025-03-22 05:26:11.140733
2686	`Asīr	14	193	2025-03-22 05:26:11.146076	2025-03-22 05:26:11.146076
2687	Central	CE	194	2025-03-22 05:26:11.150406	2025-03-22 05:26:11.150406
2688	Choiseul	CH	194	2025-03-22 05:26:11.155301	2025-03-22 05:26:11.155301
2689	Capital Territory (Honiara)	CT	194	2025-03-22 05:26:11.159518	2025-03-22 05:26:11.159518
2690	Guadalcanal	GU	194	2025-03-22 05:26:11.164204	2025-03-22 05:26:11.164204
2691	Isabel	IS	194	2025-03-22 05:26:11.169404	2025-03-22 05:26:11.169404
2692	Makira	MK	194	2025-03-22 05:26:11.1743	2025-03-22 05:26:11.1743
2693	Malaita	ML	194	2025-03-22 05:26:11.178416	2025-03-22 05:26:11.178416
2694	Rennell and Bellona	RB	194	2025-03-22 05:26:11.183214	2025-03-22 05:26:11.183214
2695	Temotu	TE	194	2025-03-22 05:26:11.187727	2025-03-22 05:26:11.187727
2696	Western	WE	194	2025-03-22 05:26:11.192459	2025-03-22 05:26:11.192459
2697	Anse aux Pins	01	195	2025-03-22 05:26:11.197595	2025-03-22 05:26:11.197595
2698	Anse Boileau	02	195	2025-03-22 05:26:11.202297	2025-03-22 05:26:11.202297
2699	Anse Etoile	03	195	2025-03-22 05:26:11.206964	2025-03-22 05:26:11.206964
2700	Anse Louis	04	195	2025-03-22 05:26:11.211232	2025-03-22 05:26:11.211232
2701	Anse Royale	05	195	2025-03-22 05:26:11.215733	2025-03-22 05:26:11.215733
2702	Baie Lazare	06	195	2025-03-22 05:26:11.21984	2025-03-22 05:26:11.21984
2703	Baie Sainte Anne	07	195	2025-03-22 05:26:11.224269	2025-03-22 05:26:11.224269
2704	Beau Vallon	08	195	2025-03-22 05:26:11.229232	2025-03-22 05:26:11.229232
2705	Bel Air	09	195	2025-03-22 05:26:11.233914	2025-03-22 05:26:11.233914
2706	Bel Ombre	10	195	2025-03-22 05:26:11.238353	2025-03-22 05:26:11.238353
2707	Cascade	11	195	2025-03-22 05:26:11.242837	2025-03-22 05:26:11.242837
2708	Glacis	12	195	2025-03-22 05:26:11.248368	2025-03-22 05:26:11.248368
2709	Grand Anse Mahe	13	195	2025-03-22 05:26:11.253089	2025-03-22 05:26:11.253089
2710	Grand Anse Praslin	14	195	2025-03-22 05:26:11.257448	2025-03-22 05:26:11.257448
2711	La Digue	15	195	2025-03-22 05:26:11.261975	2025-03-22 05:26:11.261975
2712	English River	16	195	2025-03-22 05:26:11.266411	2025-03-22 05:26:11.266411
2713	Mont Buxton	17	195	2025-03-22 05:26:11.270984	2025-03-22 05:26:11.270984
2714	Mont Fleuri	18	195	2025-03-22 05:26:11.275586	2025-03-22 05:26:11.275586
2715	Plaisance	19	195	2025-03-22 05:26:11.280118	2025-03-22 05:26:11.280118
2716	Pointe Larue	20	195	2025-03-22 05:26:11.28468	2025-03-22 05:26:11.28468
2717	Port Glaud	21	195	2025-03-22 05:26:11.291333	2025-03-22 05:26:11.291333
2718	Saint Louis	22	195	2025-03-22 05:26:11.296624	2025-03-22 05:26:11.296624
2719	Takamaka	23	195	2025-03-22 05:26:11.302479	2025-03-22 05:26:11.302479
2720	Les Mamelles	24	195	2025-03-22 05:26:11.307629	2025-03-22 05:26:11.307629
2721	Roche Caiman	25	195	2025-03-22 05:26:11.312751	2025-03-22 05:26:11.312751
2722	Zalingei	DC	196	2025-03-22 05:26:11.317923	2025-03-22 05:26:11.317923
2723	Sharq Dārfūr	DE	196	2025-03-22 05:26:11.322541	2025-03-22 05:26:11.322541
2724	Shamāl Dārfūr	DN	196	2025-03-22 05:26:11.327625	2025-03-22 05:26:11.327625
2725	Janūb Dārfūr	DS	196	2025-03-22 05:26:11.331921	2025-03-22 05:26:11.331921
2726	Gharb Dārfūr	DW	196	2025-03-22 05:26:11.337099	2025-03-22 05:26:11.337099
2727	Al Qaḑārif	GD	196	2025-03-22 05:26:11.341436	2025-03-22 05:26:11.341436
2728	Al Jazīrah	GZ	196	2025-03-22 05:26:11.346186	2025-03-22 05:26:11.346186
2729	Kassalā	KA	196	2025-03-22 05:26:11.350351	2025-03-22 05:26:11.350351
2730	Al Kharţūm	KH	196	2025-03-22 05:26:11.354982	2025-03-22 05:26:11.354982
2731	Shamāl Kurdufān	KN	196	2025-03-22 05:26:11.359234	2025-03-22 05:26:11.359234
2732	Janūb Kurdufān	KS	196	2025-03-22 05:26:11.363998	2025-03-22 05:26:11.363998
2733	An Nīl al Azraq	NB	196	2025-03-22 05:26:11.368446	2025-03-22 05:26:11.368446
2734	Ash Shamālīyah	NO	196	2025-03-22 05:26:11.372817	2025-03-22 05:26:11.372817
2735	An Nīl	NR	196	2025-03-22 05:26:11.378119	2025-03-22 05:26:11.378119
2736	An Nīl al Abyaḑ	NW	196	2025-03-22 05:26:11.382609	2025-03-22 05:26:11.382609
2737	Al Baḩr al Aḩmar	RS	196	2025-03-22 05:26:11.387024	2025-03-22 05:26:11.387024
2738	Sinnār	SI	196	2025-03-22 05:26:11.391972	2025-03-22 05:26:11.391972
2739	Stockholms län	AB	197	2025-03-22 05:26:11.396292	2025-03-22 05:26:11.396292
2740	Västerbottens län	AC	197	2025-03-22 05:26:11.400411	2025-03-22 05:26:11.400411
2741	Norrbottens län	BD	197	2025-03-22 05:26:11.405259	2025-03-22 05:26:11.405259
2742	Uppsala län	C	197	2025-03-22 05:26:11.409594	2025-03-22 05:26:11.409594
2743	Södermanlands län	D	197	2025-03-22 05:26:11.413799	2025-03-22 05:26:11.413799
2744	Östergötlands län	E	197	2025-03-22 05:26:11.418317	2025-03-22 05:26:11.418317
2745	Jönköpings län	F	197	2025-03-22 05:26:11.422853	2025-03-22 05:26:11.422853
2746	Kronobergs län	G	197	2025-03-22 05:26:11.427241	2025-03-22 05:26:11.427241
2747	Kalmar län	H	197	2025-03-22 05:26:11.431475	2025-03-22 05:26:11.431475
2748	Gotlands län	I	197	2025-03-22 05:26:11.435763	2025-03-22 05:26:11.435763
2749	Blekinge län	K	197	2025-03-22 05:26:11.440352	2025-03-22 05:26:11.440352
2750	Skåne län	M	197	2025-03-22 05:26:11.444793	2025-03-22 05:26:11.444793
2751	Hallands län	N	197	2025-03-22 05:26:11.450524	2025-03-22 05:26:11.450524
2752	Västra Götalands län	O	197	2025-03-22 05:26:11.454989	2025-03-22 05:26:11.454989
2753	Värmlands län	S	197	2025-03-22 05:26:11.460127	2025-03-22 05:26:11.460127
2754	Örebro län	T	197	2025-03-22 05:26:11.464993	2025-03-22 05:26:11.464993
2755	Västmanlands län	U	197	2025-03-22 05:26:11.469532	2025-03-22 05:26:11.469532
2756	Dalarnas län	W	197	2025-03-22 05:26:11.474749	2025-03-22 05:26:11.474749
2757	Gävleborgs län	X	197	2025-03-22 05:26:11.479101	2025-03-22 05:26:11.479101
2758	Västernorrlands län	Y	197	2025-03-22 05:26:11.483956	2025-03-22 05:26:11.483956
2759	Jämtlands län	Z	197	2025-03-22 05:26:11.488283	2025-03-22 05:26:11.488283
2760	Central Singapore	01	198	2025-03-22 05:26:11.493099	2025-03-22 05:26:11.493099
2761	North East	02	198	2025-03-22 05:26:11.497378	2025-03-22 05:26:11.497378
2762	North West	03	198	2025-03-22 05:26:11.502431	2025-03-22 05:26:11.502431
2763	South East	04	198	2025-03-22 05:26:11.506635	2025-03-22 05:26:11.506635
2764	South West	05	198	2025-03-22 05:26:11.51126	2025-03-22 05:26:11.51126
2765	Ascension	AC	199	2025-03-22 05:26:11.515594	2025-03-22 05:26:11.515594
2766	Saint Helena	HL	199	2025-03-22 05:26:11.520284	2025-03-22 05:26:11.520284
2767	Tristan da Cunha	TA	199	2025-03-22 05:26:11.525624	2025-03-22 05:26:11.525624
2768	Ajdovščina	001	200	2025-03-22 05:26:11.530063	2025-03-22 05:26:11.530063
2769	Beltinci	002	200	2025-03-22 05:26:11.534669	2025-03-22 05:26:11.534669
2770	Bled	003	200	2025-03-22 05:26:11.538823	2025-03-22 05:26:11.538823
2771	Bohinj	004	200	2025-03-22 05:26:11.543319	2025-03-22 05:26:11.543319
2772	Borovnica	005	200	2025-03-22 05:26:11.548349	2025-03-22 05:26:11.548349
2773	Bovec	006	200	2025-03-22 05:26:11.55287	2025-03-22 05:26:11.55287
2774	Brda	007	200	2025-03-22 05:26:11.556933	2025-03-22 05:26:11.556933
2775	Brezovica	008	200	2025-03-22 05:26:11.56117	2025-03-22 05:26:11.56117
2776	Brežice	009	200	2025-03-22 05:26:11.565532	2025-03-22 05:26:11.565532
2777	Tišina	010	200	2025-03-22 05:26:11.57	2025-03-22 05:26:11.57
2778	Celje	011	200	2025-03-22 05:26:11.574454	2025-03-22 05:26:11.574454
2779	Cerklje na Gorenjskem	012	200	2025-03-22 05:26:11.579138	2025-03-22 05:26:11.579138
2780	Cerknica	013	200	2025-03-22 05:26:11.583871	2025-03-22 05:26:11.583871
2781	Cerkno	014	200	2025-03-22 05:26:11.588235	2025-03-22 05:26:11.588235
2782	Črenšovci	015	200	2025-03-22 05:26:11.592743	2025-03-22 05:26:11.592743
2783	Črna na Koroškem	016	200	2025-03-22 05:26:11.597155	2025-03-22 05:26:11.597155
2784	Črnomelj	017	200	2025-03-22 05:26:11.601529	2025-03-22 05:26:11.601529
2785	Destrnik	018	200	2025-03-22 05:26:11.60763	2025-03-22 05:26:11.60763
2786	Divača	019	200	2025-03-22 05:26:11.61275	2025-03-22 05:26:11.61275
2787	Dobrepolje	020	200	2025-03-22 05:26:11.617999	2025-03-22 05:26:11.617999
2788	Dobrova-Polhov Gradec	021	200	2025-03-22 05:26:11.622688	2025-03-22 05:26:11.622688
2789	Dol pri Ljubljani	022	200	2025-03-22 05:26:11.627801	2025-03-22 05:26:11.627801
2790	Domžale	023	200	2025-03-22 05:26:11.632237	2025-03-22 05:26:11.632237
2791	Dornava	024	200	2025-03-22 05:26:11.637551	2025-03-22 05:26:11.637551
2792	Dravograd	025	200	2025-03-22 05:26:11.642443	2025-03-22 05:26:11.642443
2793	Duplek	026	200	2025-03-22 05:26:11.647384	2025-03-22 05:26:11.647384
2794	Gorenja vas-Poljane	027	200	2025-03-22 05:26:11.652238	2025-03-22 05:26:11.652238
2795	Gorišnica	028	200	2025-03-22 05:26:11.656706	2025-03-22 05:26:11.656706
2796	Gornja Radgona	029	200	2025-03-22 05:26:11.661779	2025-03-22 05:26:11.661779
2797	Gornji Grad	030	200	2025-03-22 05:26:11.666486	2025-03-22 05:26:11.666486
2798	Gornji Petrovci	031	200	2025-03-22 05:26:11.671573	2025-03-22 05:26:11.671573
2799	Grosuplje	032	200	2025-03-22 05:26:11.676679	2025-03-22 05:26:11.676679
2800	Šalovci	033	200	2025-03-22 05:26:11.682052	2025-03-22 05:26:11.682052
2801	Hrastnik	034	200	2025-03-22 05:26:11.686525	2025-03-22 05:26:11.686525
2802	Hrpelje-Kozina	035	200	2025-03-22 05:26:11.691817	2025-03-22 05:26:11.691817
2803	Idrija	036	200	2025-03-22 05:26:11.696994	2025-03-22 05:26:11.696994
2804	Ig	037	200	2025-03-22 05:26:11.702016	2025-03-22 05:26:11.702016
2805	Ilirska Bistrica	038	200	2025-03-22 05:26:11.706588	2025-03-22 05:26:11.706588
2806	Ivančna Gorica	039	200	2025-03-22 05:26:11.711224	2025-03-22 05:26:11.711224
2807	Izola/Isola	040	200	2025-03-22 05:26:11.716707	2025-03-22 05:26:11.716707
2808	Jesenice	041	200	2025-03-22 05:26:11.721453	2025-03-22 05:26:11.721453
2809	Juršinci	042	200	2025-03-22 05:26:11.726416	2025-03-22 05:26:11.726416
2810	Kamnik	043	200	2025-03-22 05:26:11.73106	2025-03-22 05:26:11.73106
2811	Kanal	044	200	2025-03-22 05:26:11.735797	2025-03-22 05:26:11.735797
2812	Kidričevo	045	200	2025-03-22 05:26:11.741085	2025-03-22 05:26:11.741085
2813	Kobarid	046	200	2025-03-22 05:26:11.746349	2025-03-22 05:26:11.746349
2814	Kobilje	047	200	2025-03-22 05:26:11.751121	2025-03-22 05:26:11.751121
2815	Kočevje	048	200	2025-03-22 05:26:11.755557	2025-03-22 05:26:11.755557
2816	Komen	049	200	2025-03-22 05:26:11.759967	2025-03-22 05:26:11.759967
2817	Koper/Capodistria	050	200	2025-03-22 05:26:11.764417	2025-03-22 05:26:11.764417
2818	Kozje	051	200	2025-03-22 05:26:11.769321	2025-03-22 05:26:11.769321
2819	Kranj	052	200	2025-03-22 05:26:11.773867	2025-03-22 05:26:11.773867
2820	Kranjska Gora	053	200	2025-03-22 05:26:11.780021	2025-03-22 05:26:11.780021
2821	Krško	054	200	2025-03-22 05:26:11.78582	2025-03-22 05:26:11.78582
2822	Kungota	055	200	2025-03-22 05:26:11.79051	2025-03-22 05:26:11.79051
2823	Kuzma	056	200	2025-03-22 05:26:11.795738	2025-03-22 05:26:11.795738
2824	Laško	057	200	2025-03-22 05:26:11.800788	2025-03-22 05:26:11.800788
2825	Lenart	058	200	2025-03-22 05:26:11.805919	2025-03-22 05:26:11.805919
2826	Lendava/Lendva	059	200	2025-03-22 05:26:11.810452	2025-03-22 05:26:11.810452
2827	Litija	060	200	2025-03-22 05:26:11.815377	2025-03-22 05:26:11.815377
2828	Ljubljana	061	200	2025-03-22 05:26:11.819794	2025-03-22 05:26:11.819794
2829	Ljubno	062	200	2025-03-22 05:26:11.824864	2025-03-22 05:26:11.824864
2830	Ljutomer	063	200	2025-03-22 05:26:11.82931	2025-03-22 05:26:11.82931
2831	Logatec	064	200	2025-03-22 05:26:11.834684	2025-03-22 05:26:11.834684
2832	Loška dolina	065	200	2025-03-22 05:26:11.839176	2025-03-22 05:26:11.839176
2833	Loški Potok	066	200	2025-03-22 05:26:11.84452	2025-03-22 05:26:11.84452
2834	Luče	067	200	2025-03-22 05:26:11.849821	2025-03-22 05:26:11.849821
2835	Lukovica	068	200	2025-03-22 05:26:11.854374	2025-03-22 05:26:11.854374
2836	Majšperk	069	200	2025-03-22 05:26:11.859171	2025-03-22 05:26:11.859171
2837	Maribor	070	200	2025-03-22 05:26:11.863745	2025-03-22 05:26:11.863745
2838	Medvode	071	200	2025-03-22 05:26:11.868401	2025-03-22 05:26:11.868401
2839	Mengeš	072	200	2025-03-22 05:26:11.872951	2025-03-22 05:26:11.872951
2840	Metlika	073	200	2025-03-22 05:26:11.877498	2025-03-22 05:26:11.877498
2841	Mežica	074	200	2025-03-22 05:26:11.882947	2025-03-22 05:26:11.882947
2842	Miren-Kostanjevica	075	200	2025-03-22 05:26:11.887161	2025-03-22 05:26:11.887161
2843	Mislinja	076	200	2025-03-22 05:26:11.891433	2025-03-22 05:26:11.891433
2844	Moravče	077	200	2025-03-22 05:26:11.895679	2025-03-22 05:26:11.895679
2845	Moravske Toplice	078	200	2025-03-22 05:26:11.900405	2025-03-22 05:26:11.900405
2846	Mozirje	079	200	2025-03-22 05:26:11.905171	2025-03-22 05:26:11.905171
2847	Murska Sobota	080	200	2025-03-22 05:26:11.909452	2025-03-22 05:26:11.909452
2848	Muta	081	200	2025-03-22 05:26:11.913692	2025-03-22 05:26:11.913692
2849	Naklo	082	200	2025-03-22 05:26:11.917916	2025-03-22 05:26:11.917916
2850	Nazarje	083	200	2025-03-22 05:26:11.922154	2025-03-22 05:26:11.922154
2851	Nova Gorica	084	200	2025-03-22 05:26:11.926434	2025-03-22 05:26:11.926434
2852	Novo mesto	085	200	2025-03-22 05:26:11.930778	2025-03-22 05:26:11.930778
2853	Odranci	086	200	2025-03-22 05:26:11.935152	2025-03-22 05:26:11.935152
2854	Ormož	087	200	2025-03-22 05:26:11.940867	2025-03-22 05:26:11.940867
2855	Osilnica	088	200	2025-03-22 05:26:11.945416	2025-03-22 05:26:11.945416
2856	Pesnica	089	200	2025-03-22 05:26:11.950098	2025-03-22 05:26:11.950098
2857	Piran/Pirano	090	200	2025-03-22 05:26:11.955148	2025-03-22 05:26:11.955148
2858	Pivka	091	200	2025-03-22 05:26:11.959544	2025-03-22 05:26:11.959544
2859	Podčetrtek	092	200	2025-03-22 05:26:11.964615	2025-03-22 05:26:11.964615
2860	Podvelka	093	200	2025-03-22 05:26:11.968859	2025-03-22 05:26:11.968859
2861	Postojna	094	200	2025-03-22 05:26:11.973713	2025-03-22 05:26:11.973713
2862	Preddvor	095	200	2025-03-22 05:26:11.97822	2025-03-22 05:26:11.97822
2863	Ptuj	096	200	2025-03-22 05:26:11.983008	2025-03-22 05:26:11.983008
2864	Puconci	097	200	2025-03-22 05:26:11.987116	2025-03-22 05:26:11.987116
2865	Rače-Fram	098	200	2025-03-22 05:26:11.991987	2025-03-22 05:26:11.991987
2866	Radeče	099	200	2025-03-22 05:26:11.996215	2025-03-22 05:26:11.996215
2867	Radenci	100	200	2025-03-22 05:26:12.00078	2025-03-22 05:26:12.00078
2868	Radlje ob Dravi	101	200	2025-03-22 05:26:12.00547	2025-03-22 05:26:12.00547
2869	Radovljica	102	200	2025-03-22 05:26:12.010458	2025-03-22 05:26:12.010458
2870	Ravne na Koroškem	103	200	2025-03-22 05:26:12.015271	2025-03-22 05:26:12.015271
2871	Ribnica	104	200	2025-03-22 05:26:12.019513	2025-03-22 05:26:12.019513
2872	Rogašovci	105	200	2025-03-22 05:26:12.024361	2025-03-22 05:26:12.024361
2873	Rogaška Slatina	106	200	2025-03-22 05:26:12.028667	2025-03-22 05:26:12.028667
2874	Rogatec	107	200	2025-03-22 05:26:12.03313	2025-03-22 05:26:12.03313
2875	Ruše	108	200	2025-03-22 05:26:12.038626	2025-03-22 05:26:12.038626
2876	Semič	109	200	2025-03-22 05:26:12.044279	2025-03-22 05:26:12.044279
2878	Sežana	111	200	2025-03-22 05:26:12.053791	2025-03-22 05:26:12.053791
2879	Slovenj Gradec	112	200	2025-03-22 05:26:12.058418	2025-03-22 05:26:12.058418
2880	Slovenska Bistrica	113	200	2025-03-22 05:26:12.062903	2025-03-22 05:26:12.062903
2881	Slovenske Konjice	114	200	2025-03-22 05:26:12.067715	2025-03-22 05:26:12.067715
2882	Starče	115	200	2025-03-22 05:26:12.07308	2025-03-22 05:26:12.07308
2883	Sveti Jurij	116	200	2025-03-22 05:26:12.07764	2025-03-22 05:26:12.07764
2884	Šenčur	117	200	2025-03-22 05:26:12.082411	2025-03-22 05:26:12.082411
2885	Šentilj	118	200	2025-03-22 05:26:12.087059	2025-03-22 05:26:12.087059
2886	Šentjernej	119	200	2025-03-22 05:26:12.092102	2025-03-22 05:26:12.092102
2887	Šentjur	120	200	2025-03-22 05:26:12.096666	2025-03-22 05:26:12.096666
2888	Škocjan	121	200	2025-03-22 05:26:12.102815	2025-03-22 05:26:12.102815
2889	Škofja Loka	122	200	2025-03-22 05:26:12.107353	2025-03-22 05:26:12.107353
2890	Škofljica	123	200	2025-03-22 05:26:12.1129	2025-03-22 05:26:12.1129
2891	Šmarje pri Jelšah	124	200	2025-03-22 05:26:12.117695	2025-03-22 05:26:12.117695
2892	Šmartno ob Paki	125	200	2025-03-22 05:26:12.123372	2025-03-22 05:26:12.123372
2893	Šoštanj	126	200	2025-03-22 05:26:12.12842	2025-03-22 05:26:12.12842
2894	Štore	127	200	2025-03-22 05:26:12.13336	2025-03-22 05:26:12.13336
2895	Tolmin	128	200	2025-03-22 05:26:12.138129	2025-03-22 05:26:12.138129
2896	Trbovlje	129	200	2025-03-22 05:26:12.142668	2025-03-22 05:26:12.142668
2897	Trebnje	130	200	2025-03-22 05:26:12.147712	2025-03-22 05:26:12.147712
2898	Tržič	131	200	2025-03-22 05:26:12.151989	2025-03-22 05:26:12.151989
2899	Turnišče	132	200	2025-03-22 05:26:12.156812	2025-03-22 05:26:12.156812
2900	Velenje	133	200	2025-03-22 05:26:12.161049	2025-03-22 05:26:12.161049
2901	Velike Lašče	134	200	2025-03-22 05:26:12.166349	2025-03-22 05:26:12.166349
2902	Videm	135	200	2025-03-22 05:26:12.171508	2025-03-22 05:26:12.171508
2903	Vipava	136	200	2025-03-22 05:26:12.176304	2025-03-22 05:26:12.176304
2904	Vitanje	137	200	2025-03-22 05:26:12.180591	2025-03-22 05:26:12.180591
2905	Vodice	138	200	2025-03-22 05:26:12.185094	2025-03-22 05:26:12.185094
2906	Vojnik	139	200	2025-03-22 05:26:12.18977	2025-03-22 05:26:12.18977
2907	Vrhnika	140	200	2025-03-22 05:26:12.194282	2025-03-22 05:26:12.194282
2908	Vuzenica	141	200	2025-03-22 05:26:12.198891	2025-03-22 05:26:12.198891
2909	Zagorje ob Savi	142	200	2025-03-22 05:26:12.203599	2025-03-22 05:26:12.203599
2910	Zavrč	143	200	2025-03-22 05:26:12.208981	2025-03-22 05:26:12.208981
2911	Zreče	144	200	2025-03-22 05:26:12.214036	2025-03-22 05:26:12.214036
2912	Železniki	146	200	2025-03-22 05:26:12.218563	2025-03-22 05:26:12.218563
2913	Žiri	147	200	2025-03-22 05:26:12.223416	2025-03-22 05:26:12.223416
2914	Benedikt	148	200	2025-03-22 05:26:12.228505	2025-03-22 05:26:12.228505
2915	Bistrica ob Sotli	149	200	2025-03-22 05:26:12.234501	2025-03-22 05:26:12.234501
2916	Bloke	150	200	2025-03-22 05:26:12.238893	2025-03-22 05:26:12.238893
2917	Braslovče	151	200	2025-03-22 05:26:12.243317	2025-03-22 05:26:12.243317
2918	Cankova	152	200	2025-03-22 05:26:12.247654	2025-03-22 05:26:12.247654
2919	Cerkvenjak	153	200	2025-03-22 05:26:12.252211	2025-03-22 05:26:12.252211
2920	Dobje	154	200	2025-03-22 05:26:12.257009	2025-03-22 05:26:12.257009
2921	Dobrna	155	200	2025-03-22 05:26:12.261573	2025-03-22 05:26:12.261573
2922	Dobrovnik/Dobronak	156	200	2025-03-22 05:26:12.267894	2025-03-22 05:26:12.267894
2923	Dolenjske Toplice	157	200	2025-03-22 05:26:12.273113	2025-03-22 05:26:12.273113
2924	Grad	158	200	2025-03-22 05:26:12.278599	2025-03-22 05:26:12.278599
2925	Hajdina	159	200	2025-03-22 05:26:12.283129	2025-03-22 05:26:12.283129
2926	Hoče-Slivnica	160	200	2025-03-22 05:26:12.288376	2025-03-22 05:26:12.288376
2927	Hodoš/Hodos	161	200	2025-03-22 05:26:12.2933	2025-03-22 05:26:12.2933
2928	Horjul	162	200	2025-03-22 05:26:12.297958	2025-03-22 05:26:12.297958
2929	Jezersko	163	200	2025-03-22 05:26:12.302158	2025-03-22 05:26:12.302158
2930	Komenda	164	200	2025-03-22 05:26:12.30674	2025-03-22 05:26:12.30674
2931	Kostel	165	200	2025-03-22 05:26:12.311386	2025-03-22 05:26:12.311386
2932	Križevci	166	200	2025-03-22 05:26:12.31557	2025-03-22 05:26:12.31557
2933	Lovrenc na Pohorju	167	200	2025-03-22 05:26:12.32031	2025-03-22 05:26:12.32031
2934	Markovci	168	200	2025-03-22 05:26:12.324705	2025-03-22 05:26:12.324705
2935	Miklavž na Dravskem polju	169	200	2025-03-22 05:26:12.329489	2025-03-22 05:26:12.329489
2936	Mirna Peč	170	200	2025-03-22 05:26:12.334112	2025-03-22 05:26:12.334112
2937	Oplotnica	171	200	2025-03-22 05:26:12.339274	2025-03-22 05:26:12.339274
2938	Podlehnik	172	200	2025-03-22 05:26:12.343857	2025-03-22 05:26:12.343857
2939	Polzela	173	200	2025-03-22 05:26:12.348523	2025-03-22 05:26:12.348523
2940	Prebold	174	200	2025-03-22 05:26:12.353133	2025-03-22 05:26:12.353133
2941	Prevalje	175	200	2025-03-22 05:26:12.357758	2025-03-22 05:26:12.357758
2942	Razkrižje	176	200	2025-03-22 05:26:12.362243	2025-03-22 05:26:12.362243
2943	Ribnica na Pohorju	177	200	2025-03-22 05:26:12.366971	2025-03-22 05:26:12.366971
2944	Selnica ob Dravi	178	200	2025-03-22 05:26:12.372254	2025-03-22 05:26:12.372254
2945	Sodražica	179	200	2025-03-22 05:26:12.376531	2025-03-22 05:26:12.376531
2946	Solčava	180	200	2025-03-22 05:26:12.381037	2025-03-22 05:26:12.381037
2947	Sveta Ana	181	200	2025-03-22 05:26:12.386014	2025-03-22 05:26:12.386014
2948	Sveta Andraž v Slovenskih Goricah	182	200	2025-03-22 05:26:12.390448	2025-03-22 05:26:12.390448
2949	Šempeter-Vrtojba	183	200	2025-03-22 05:26:12.395227	2025-03-22 05:26:12.395227
2950	Tabor	184	200	2025-03-22 05:26:12.399996	2025-03-22 05:26:12.399996
2951	Trnovska vas	185	200	2025-03-22 05:26:12.40456	2025-03-22 05:26:12.40456
2952	Trzin	186	200	2025-03-22 05:26:12.40899	2025-03-22 05:26:12.40899
2953	Velika Polana	187	200	2025-03-22 05:26:12.413561	2025-03-22 05:26:12.413561
2954	Veržej	188	200	2025-03-22 05:26:12.417933	2025-03-22 05:26:12.417933
2955	Vransko	189	200	2025-03-22 05:26:12.422428	2025-03-22 05:26:12.422428
2956	Žalec	190	200	2025-03-22 05:26:12.426837	2025-03-22 05:26:12.426837
2957	Žetale	191	200	2025-03-22 05:26:12.433159	2025-03-22 05:26:12.433159
2958	Žirovnica	192	200	2025-03-22 05:26:12.438086	2025-03-22 05:26:12.438086
2959	Žužemberk	193	200	2025-03-22 05:26:12.442514	2025-03-22 05:26:12.442514
2960	Šmartno pri Litiji	194	200	2025-03-22 05:26:12.447738	2025-03-22 05:26:12.447738
2961	Apače	195	200	2025-03-22 05:26:12.452458	2025-03-22 05:26:12.452458
2962	Cirkulane	196	200	2025-03-22 05:26:12.457214	2025-03-22 05:26:12.457214
2963	Kosanjevica na Krki	197	200	2025-03-22 05:26:12.461559	2025-03-22 05:26:12.461559
2964	Makole	198	200	2025-03-22 05:26:12.466471	2025-03-22 05:26:12.466471
2965	Mokronog-Trebelno	199	200	2025-03-22 05:26:12.4708	2025-03-22 05:26:12.4708
2966	Poljčane	200	200	2025-03-22 05:26:12.475406	2025-03-22 05:26:12.475406
2967	Renče-Vogrsko	201	200	2025-03-22 05:26:12.479583	2025-03-22 05:26:12.479583
2968	Središče ob Dravi	202	200	2025-03-22 05:26:12.484416	2025-03-22 05:26:12.484416
2969	Straža	203	200	2025-03-22 05:26:12.488576	2025-03-22 05:26:12.488576
2970	Sveta Trojica v Slovenskih Goricah	204	200	2025-03-22 05:26:12.493219	2025-03-22 05:26:12.493219
2971	Sveti Tomaž	205	200	2025-03-22 05:26:12.498144	2025-03-22 05:26:12.498144
2972	Šmarjeske Topliče	206	200	2025-03-22 05:26:12.502816	2025-03-22 05:26:12.502816
2973	Gorje	207	200	2025-03-22 05:26:12.50772	2025-03-22 05:26:12.50772
2974	Log-Dragomer	208	200	2025-03-22 05:26:12.512267	2025-03-22 05:26:12.512267
2975	Rečica ob Savinji	209	200	2025-03-22 05:26:12.516914	2025-03-22 05:26:12.516914
2976	Sveti Jurij v Slovenskih Goricah	210	200	2025-03-22 05:26:12.521226	2025-03-22 05:26:12.521226
2977	Šentrupert	211	200	2025-03-22 05:26:12.525695	2025-03-22 05:26:12.525695
2978	Banskobystrický kraj	BC	202	2025-03-22 05:26:12.530961	2025-03-22 05:26:12.530961
2979	Bratislavský kraj	BL	202	2025-03-22 05:26:12.535166	2025-03-22 05:26:12.535166
2980	Košický kraj	KI	202	2025-03-22 05:26:12.539178	2025-03-22 05:26:12.539178
2981	Nitriansky kraj	NI	202	2025-03-22 05:26:12.543481	2025-03-22 05:26:12.543481
2982	Prešovský kraj	PV	202	2025-03-22 05:26:12.547745	2025-03-22 05:26:12.547745
2983	Trnavský kraj	TA	202	2025-03-22 05:26:12.552021	2025-03-22 05:26:12.552021
2984	Trenčiansky kraj	TC	202	2025-03-22 05:26:12.556235	2025-03-22 05:26:12.556235
2985	Žilinský kraj	ZI	202	2025-03-22 05:26:12.560913	2025-03-22 05:26:12.560913
2986	Eastern	E	203	2025-03-22 05:26:12.565592	2025-03-22 05:26:12.565592
2987	Northern	N	203	2025-03-22 05:26:12.5699	2025-03-22 05:26:12.5699
2988	Southern (Sierra Leone)	S	203	2025-03-22 05:26:12.574239	2025-03-22 05:26:12.574239
2989	Western Area (Freetown)	W	203	2025-03-22 05:26:12.578394	2025-03-22 05:26:12.578394
2990	Acquaviva	01	204	2025-03-22 05:26:12.58282	2025-03-22 05:26:12.58282
2991	Chiesanuova	02	204	2025-03-22 05:26:12.58842	2025-03-22 05:26:12.58842
2992	Domagnano	03	204	2025-03-22 05:26:12.592992	2025-03-22 05:26:12.592992
2993	Faetano	04	204	2025-03-22 05:26:12.597957	2025-03-22 05:26:12.597957
2994	Fiorentino	05	204	2025-03-22 05:26:12.602642	2025-03-22 05:26:12.602642
2995	Borgo Maggiore	06	204	2025-03-22 05:26:12.606783	2025-03-22 05:26:12.606783
2996	San Marino	07	204	2025-03-22 05:26:12.611509	2025-03-22 05:26:12.611509
2997	Montegiardino	08	204	2025-03-22 05:26:12.615523	2025-03-22 05:26:12.615523
2998	Serravalle	09	204	2025-03-22 05:26:12.619864	2025-03-22 05:26:12.619864
2999	Diourbel	DB	205	2025-03-22 05:26:12.624272	2025-03-22 05:26:12.624272
3000	Dakar	DK	205	2025-03-22 05:26:12.628738	2025-03-22 05:26:12.628738
3001	Fatick	FK	205	2025-03-22 05:26:12.632762	2025-03-22 05:26:12.632762
3002	Kaffrine	KA	205	2025-03-22 05:26:12.637748	2025-03-22 05:26:12.637748
3003	Kolda	KD	205	2025-03-22 05:26:12.642049	2025-03-22 05:26:12.642049
3004	Kédougou	KE	205	2025-03-22 05:26:12.647005	2025-03-22 05:26:12.647005
3005	Kaolack	KL	205	2025-03-22 05:26:12.651767	2025-03-22 05:26:12.651767
3006	Louga	LG	205	2025-03-22 05:26:12.656195	2025-03-22 05:26:12.656195
3007	Matam	MT	205	2025-03-22 05:26:12.660756	2025-03-22 05:26:12.660756
3008	Sédhiou	SE	205	2025-03-22 05:26:12.664932	2025-03-22 05:26:12.664932
3009	Saint-Louis	SL	205	2025-03-22 05:26:12.670224	2025-03-22 05:26:12.670224
3010	Tambacounda	TC	205	2025-03-22 05:26:12.674682	2025-03-22 05:26:12.674682
3011	Thiès	TH	205	2025-03-22 05:26:12.678971	2025-03-22 05:26:12.678971
3012	Ziguinchor	ZG	205	2025-03-22 05:26:12.6843	2025-03-22 05:26:12.6843
3013	Awdal	AW	206	2025-03-22 05:26:12.688646	2025-03-22 05:26:12.688646
3014	Bakool	BK	206	2025-03-22 05:26:12.692757	2025-03-22 05:26:12.692757
3015	Banaadir	BN	206	2025-03-22 05:26:12.697125	2025-03-22 05:26:12.697125
3016	Bari	BR	206	2025-03-22 05:26:12.701948	2025-03-22 05:26:12.701948
3017	Bay	BY	206	2025-03-22 05:26:12.706593	2025-03-22 05:26:12.706593
3018	Galguduud	GA	206	2025-03-22 05:26:12.711009	2025-03-22 05:26:12.711009
3019	Gedo	GE	206	2025-03-22 05:26:12.715487	2025-03-22 05:26:12.715487
3020	Hiirsan	HI	206	2025-03-22 05:26:12.719706	2025-03-22 05:26:12.719706
3021	Jubbada Dhexe	JD	206	2025-03-22 05:26:12.723945	2025-03-22 05:26:12.723945
3022	Jubbada Hoose	JH	206	2025-03-22 05:26:12.728053	2025-03-22 05:26:12.728053
3023	Mudug	MU	206	2025-03-22 05:26:12.733086	2025-03-22 05:26:12.733086
3024	Nugaal	NU	206	2025-03-22 05:26:12.737883	2025-03-22 05:26:12.737883
3025	Saneag	SA	206	2025-03-22 05:26:12.744259	2025-03-22 05:26:12.744259
3026	Shabeellaha Dhexe	SD	206	2025-03-22 05:26:12.748894	2025-03-22 05:26:12.748894
3027	Shabeellaha Hoose	SH	206	2025-03-22 05:26:12.754277	2025-03-22 05:26:12.754277
3028	Sool	SO	206	2025-03-22 05:26:12.758884	2025-03-22 05:26:12.758884
3029	Togdheer	TO	206	2025-03-22 05:26:12.76395	2025-03-22 05:26:12.76395
3030	Woqooyi Galbeed	WO	206	2025-03-22 05:26:12.768062	2025-03-22 05:26:12.768062
3031	Brokopondo	BR	207	2025-03-22 05:26:12.773009	2025-03-22 05:26:12.773009
3032	Commewijne	CM	207	2025-03-22 05:26:12.777586	2025-03-22 05:26:12.777586
3033	Coronie	CR	207	2025-03-22 05:26:12.781972	2025-03-22 05:26:12.781972
3034	Marowijne	MA	207	2025-03-22 05:26:12.786957	2025-03-22 05:26:12.786957
3035	Nickerie	NI	207	2025-03-22 05:26:12.791216	2025-03-22 05:26:12.791216
3036	Paramaribo	PM	207	2025-03-22 05:26:12.796436	2025-03-22 05:26:12.796436
3037	Para	PR	207	2025-03-22 05:26:12.801055	2025-03-22 05:26:12.801055
3038	Saramacca	SA	207	2025-03-22 05:26:12.806451	2025-03-22 05:26:12.806451
3039	Sipaliwini	SI	207	2025-03-22 05:26:12.811104	2025-03-22 05:26:12.811104
3040	Wanica	WA	207	2025-03-22 05:26:12.816092	2025-03-22 05:26:12.816092
3041	Northern Bahr el-Ghazal	BN	208	2025-03-22 05:26:12.820723	2025-03-22 05:26:12.820723
3042	Western Bahr el-Ghazal	BW	208	2025-03-22 05:26:12.82531	2025-03-22 05:26:12.82531
3043	Central Equatoria	EC	208	2025-03-22 05:26:12.829814	2025-03-22 05:26:12.829814
3044	Eastern Equatoria	EE8	208	2025-03-22 05:26:12.83455	2025-03-22 05:26:12.83455
3045	Western Equatoria	EW	208	2025-03-22 05:26:12.83918	2025-03-22 05:26:12.83918
3046	Jonglei	JG	208	2025-03-22 05:26:12.844146	2025-03-22 05:26:12.844146
3047	Lakes	LK	208	2025-03-22 05:26:12.849814	2025-03-22 05:26:12.849814
3048	Upper Nile	NU	208	2025-03-22 05:26:12.854757	2025-03-22 05:26:12.854757
3049	Unity	UY	208	2025-03-22 05:26:12.859146	2025-03-22 05:26:12.859146
3050	Warrap	WR	208	2025-03-22 05:26:12.863753	2025-03-22 05:26:12.863753
3051	Príncipe	P	209	2025-03-22 05:26:12.868251	2025-03-22 05:26:12.868251
3052	São Tomé	S	209	2025-03-22 05:26:12.872848	2025-03-22 05:26:12.872848
3053	Ahuachapán	AH	210	2025-03-22 05:26:12.877346	2025-03-22 05:26:12.877346
3054	Cabañas	CA	210	2025-03-22 05:26:12.881982	2025-03-22 05:26:12.881982
3055	Chalatenango	CH	210	2025-03-22 05:26:12.886411	2025-03-22 05:26:12.886411
3056	Cuscatlán	CU	210	2025-03-22 05:26:12.890629	2025-03-22 05:26:12.890629
3057	La Libertad	LI	210	2025-03-22 05:26:12.894875	2025-03-22 05:26:12.894875
3058	Morazán	MO	210	2025-03-22 05:26:12.899001	2025-03-22 05:26:12.899001
3059	La Paz	PA	210	2025-03-22 05:26:12.905357	2025-03-22 05:26:12.905357
3060	Santa Ana	SA	210	2025-03-22 05:26:12.909904	2025-03-22 05:26:12.909904
3061	San Miguel	SM	210	2025-03-22 05:26:12.914881	2025-03-22 05:26:12.914881
3062	Sonsonate	SO	210	2025-03-22 05:26:12.919125	2025-03-22 05:26:12.919125
3063	San Salvador	SS	210	2025-03-22 05:26:12.92405	2025-03-22 05:26:12.92405
3064	San Vicente	SV	210	2025-03-22 05:26:12.928245	2025-03-22 05:26:12.928245
3065	La Unión	UN	210	2025-03-22 05:26:12.933205	2025-03-22 05:26:12.933205
3066	Usulután	US	210	2025-03-22 05:26:12.937642	2025-03-22 05:26:12.937642
3067	Dimashq	DI	212	2025-03-22 05:26:12.942738	2025-03-22 05:26:12.942738
3068	Dar'a	DR	212	2025-03-22 05:26:12.946931	2025-03-22 05:26:12.946931
3069	Dayr az Zawr	DY	212	2025-03-22 05:26:12.952059	2025-03-22 05:26:12.952059
3070	Al Hasakah	HA	212	2025-03-22 05:26:12.956561	2025-03-22 05:26:12.956561
3071	Homs	HI	212	2025-03-22 05:26:12.961134	2025-03-22 05:26:12.961134
3072	Halab	HL	212	2025-03-22 05:26:12.965686	2025-03-22 05:26:12.965686
3073	Hamah	HM	212	2025-03-22 05:26:12.970247	2025-03-22 05:26:12.970247
3074	Idlib	ID	212	2025-03-22 05:26:12.974931	2025-03-22 05:26:12.974931
3075	Al Ladhiqiyah	LA	212	2025-03-22 05:26:12.979148	2025-03-22 05:26:12.979148
3076	Al Qunaytirah	QU	212	2025-03-22 05:26:12.983878	2025-03-22 05:26:12.983878
3077	Ar Raqqah	RA	212	2025-03-22 05:26:12.988448	2025-03-22 05:26:12.988448
3078	Rif Dimashq	RD	212	2025-03-22 05:26:12.992864	2025-03-22 05:26:12.992864
3079	As Suwayda'	SU	212	2025-03-22 05:26:12.996983	2025-03-22 05:26:12.996983
3080	Tartus	TA	212	2025-03-22 05:26:13.001728	2025-03-22 05:26:13.001728
3081	Hhohho	HH	213	2025-03-22 05:26:13.006787	2025-03-22 05:26:13.006787
3082	Lubombo	LU	213	2025-03-22 05:26:13.011603	2025-03-22 05:26:13.011603
3083	Manzini	MA	213	2025-03-22 05:26:13.016235	2025-03-22 05:26:13.016235
3084	Shiselweni	SH	213	2025-03-22 05:26:13.020718	2025-03-22 05:26:13.020718
3085	Al Baṭḩah	BA	215	2025-03-22 05:26:13.025073	2025-03-22 05:26:13.025073
3086	Baḩr al Ghazāl	BG	215	2025-03-22 05:26:13.029204	2025-03-22 05:26:13.029204
3087	Būrkū	BO	215	2025-03-22 05:26:13.033622	2025-03-22 05:26:13.033622
3088	Shārī Bāqirmī	CB	215	2025-03-22 05:26:13.037854	2025-03-22 05:26:13.037854
3089	Innīdī	EN	215	2025-03-22 05:26:13.042017	2025-03-22 05:26:13.042017
3090	Qīrā	GR	215	2025-03-22 05:26:13.047093	2025-03-22 05:26:13.047093
3091	Ḥajjar Lamīs	HL	215	2025-03-22 05:26:13.051858	2025-03-22 05:26:13.051858
3092	Kānim	KA	215	2025-03-22 05:26:13.056253	2025-03-22 05:26:13.056253
3093	Al Buḩayrah	LC	215	2025-03-22 05:26:13.060647	2025-03-22 05:26:13.060647
3094	Lūqūn al Gharbī	LO	215	2025-03-22 05:26:13.066773	2025-03-22 05:26:13.066773
3095	Lūqūn ash Sharqī	LR	215	2025-03-22 05:26:13.071672	2025-03-22 05:26:13.071672
3096	Māndūl	MA	215	2025-03-22 05:26:13.076919	2025-03-22 05:26:13.076919
3097	Shārī al Awsaṭ	MC	215	2025-03-22 05:26:13.082171	2025-03-22 05:26:13.082171
3098	Māyū Kībbī ash Sharqī	ME	215	2025-03-22 05:26:13.086592	2025-03-22 05:26:13.086592
3099	Māyū Kībbī al Gharbī	MO	215	2025-03-22 05:26:13.091225	2025-03-22 05:26:13.091225
3100	Madīnat Injamīnā	ND	215	2025-03-22 05:26:13.095383	2025-03-22 05:26:13.095383
3101	Waddāy	OD	215	2025-03-22 05:26:13.100047	2025-03-22 05:26:13.100047
3102	Salāmāt	SA	215	2025-03-22 05:26:13.104356	2025-03-22 05:26:13.104356
3103	Sīlā	SI	215	2025-03-22 05:26:13.109094	2025-03-22 05:26:13.109094
3104	Tānjilī	TA	215	2025-03-22 05:26:13.113382	2025-03-22 05:26:13.113382
3105	Tibastī	TI	215	2025-03-22 05:26:13.118015	2025-03-22 05:26:13.118015
3106	Wādī Fīrā	WF	215	2025-03-22 05:26:13.122277	2025-03-22 05:26:13.122277
3107	Région du Centre	C	217	2025-03-22 05:26:13.127358	2025-03-22 05:26:13.127358
3108	Région de la Kara	K	217	2025-03-22 05:26:13.131848	2025-03-22 05:26:13.131848
3109	Région Maritime	M	217	2025-03-22 05:26:13.136674	2025-03-22 05:26:13.136674
3110	Région des Plateaux	P	217	2025-03-22 05:26:13.141397	2025-03-22 05:26:13.141397
3111	Région des Savannes	S	217	2025-03-22 05:26:13.146074	2025-03-22 05:26:13.146074
3112	Krung Thep Maha Nakhon Bangkok	10	218	2025-03-22 05:26:13.150931	2025-03-22 05:26:13.150931
3113	Samut Prakan	11	218	2025-03-22 05:26:13.155386	2025-03-22 05:26:13.155386
3114	Nonthaburi	12	218	2025-03-22 05:26:13.160144	2025-03-22 05:26:13.160144
3115	Pathum Thani	13	218	2025-03-22 05:26:13.165735	2025-03-22 05:26:13.165735
3116	Phra Nakhon Si Ayutthaya	14	218	2025-03-22 05:26:13.170512	2025-03-22 05:26:13.170512
3117	Ang Thong	15	218	2025-03-22 05:26:13.175091	2025-03-22 05:26:13.175091
3118	Lop Buri	16	218	2025-03-22 05:26:13.180237	2025-03-22 05:26:13.180237
3119	Sing Buri	17	218	2025-03-22 05:26:13.184871	2025-03-22 05:26:13.184871
3120	Chai Nat	18	218	2025-03-22 05:26:13.189096	2025-03-22 05:26:13.189096
3121	Saraburi	19	218	2025-03-22 05:26:13.193374	2025-03-22 05:26:13.193374
3122	Chon Buri	20	218	2025-03-22 05:26:13.197373	2025-03-22 05:26:13.197373
3123	Rayong	21	218	2025-03-22 05:26:13.20153	2025-03-22 05:26:13.20153
3124	Chanthaburi	22	218	2025-03-22 05:26:13.205719	2025-03-22 05:26:13.205719
3125	Trat	23	218	2025-03-22 05:26:13.210365	2025-03-22 05:26:13.210365
3126	Chachoengsao	24	218	2025-03-22 05:26:13.214568	2025-03-22 05:26:13.214568
3127	Prachin Buri	25	218	2025-03-22 05:26:13.218856	2025-03-22 05:26:13.218856
3128	Nakhon Nayok	26	218	2025-03-22 05:26:13.225271	2025-03-22 05:26:13.225271
3129	Sa Kaeo	27	218	2025-03-22 05:26:13.229565	2025-03-22 05:26:13.229565
3130	Nakhon Ratchasima	30	218	2025-03-22 05:26:13.235028	2025-03-22 05:26:13.235028
3131	Buri Ram	31	218	2025-03-22 05:26:13.240266	2025-03-22 05:26:13.240266
3132	Surin	32	218	2025-03-22 05:26:13.244766	2025-03-22 05:26:13.244766
3133	Si Sa Ket	33	218	2025-03-22 05:26:13.249421	2025-03-22 05:26:13.249421
3134	Ubon Ratchathani	34	218	2025-03-22 05:26:13.254624	2025-03-22 05:26:13.254624
3135	Yasothon	35	218	2025-03-22 05:26:13.260198	2025-03-22 05:26:13.260198
3136	Chaiyaphum	36	218	2025-03-22 05:26:13.265123	2025-03-22 05:26:13.265123
3137	Amnat Charoen	37	218	2025-03-22 05:26:13.270866	2025-03-22 05:26:13.270866
3138	Nong Bua Lam Phu	39	218	2025-03-22 05:26:13.275811	2025-03-22 05:26:13.275811
3139	Khon Kaen	40	218	2025-03-22 05:26:13.2812	2025-03-22 05:26:13.2812
3140	Udon Thani	41	218	2025-03-22 05:26:13.287644	2025-03-22 05:26:13.287644
3141	Loei	42	218	2025-03-22 05:26:13.294724	2025-03-22 05:26:13.294724
3142	Nong Khai	43	218	2025-03-22 05:26:13.300192	2025-03-22 05:26:13.300192
3143	Maha Sarakham	44	218	2025-03-22 05:26:13.305765	2025-03-22 05:26:13.305765
3144	Roi Et	45	218	2025-03-22 05:26:13.311015	2025-03-22 05:26:13.311015
3145	Kalasin	46	218	2025-03-22 05:26:13.315925	2025-03-22 05:26:13.315925
3146	Sakon Nakhon	47	218	2025-03-22 05:26:13.321007	2025-03-22 05:26:13.321007
3147	Nakhon Phanom	48	218	2025-03-22 05:26:13.325779	2025-03-22 05:26:13.325779
3148	Mukdahan	49	218	2025-03-22 05:26:13.330968	2025-03-22 05:26:13.330968
3149	Chiang Mai	50	218	2025-03-22 05:26:13.336764	2025-03-22 05:26:13.336764
3150	Lamphun	51	218	2025-03-22 05:26:13.34153	2025-03-22 05:26:13.34153
3151	Lampang	52	218	2025-03-22 05:26:13.346806	2025-03-22 05:26:13.346806
3152	Uttaradit	53	218	2025-03-22 05:26:13.35168	2025-03-22 05:26:13.35168
3153	Phrae	54	218	2025-03-22 05:26:13.356607	2025-03-22 05:26:13.356607
3154	Nan	55	218	2025-03-22 05:26:13.361269	2025-03-22 05:26:13.361269
3155	Phayao	56	218	2025-03-22 05:26:13.367634	2025-03-22 05:26:13.367634
3156	Chiang Rai	57	218	2025-03-22 05:26:13.373367	2025-03-22 05:26:13.373367
3157	Mae Hong Son	58	218	2025-03-22 05:26:13.378232	2025-03-22 05:26:13.378232
3158	Nakhon Sawan	60	218	2025-03-22 05:26:13.383035	2025-03-22 05:26:13.383035
3159	Uthai Thani	61	218	2025-03-22 05:26:13.387478	2025-03-22 05:26:13.387478
3160	Kamphaeng Phet	62	218	2025-03-22 05:26:13.391861	2025-03-22 05:26:13.391861
3161	Tak	63	218	2025-03-22 05:26:13.396662	2025-03-22 05:26:13.396662
3162	Sukhothai	64	218	2025-03-22 05:26:13.4024	2025-03-22 05:26:13.4024
3163	Phitsanulok	65	218	2025-03-22 05:26:13.407954	2025-03-22 05:26:13.407954
3164	Phichit	66	218	2025-03-22 05:26:13.413208	2025-03-22 05:26:13.413208
3165	Phetchabun	67	218	2025-03-22 05:26:13.417547	2025-03-22 05:26:13.417547
3166	Ratchaburi	70	218	2025-03-22 05:26:13.422179	2025-03-22 05:26:13.422179
3167	Kanchanaburi	71	218	2025-03-22 05:26:13.426692	2025-03-22 05:26:13.426692
3168	Suphan Buri	72	218	2025-03-22 05:26:13.431273	2025-03-22 05:26:13.431273
3169	Nakhon Pathom	73	218	2025-03-22 05:26:13.43563	2025-03-22 05:26:13.43563
3170	Samut Sakhon	74	218	2025-03-22 05:26:13.440256	2025-03-22 05:26:13.440256
3171	Samut Songkhram	75	218	2025-03-22 05:26:13.445601	2025-03-22 05:26:13.445601
3172	Phetchaburi	76	218	2025-03-22 05:26:13.449994	2025-03-22 05:26:13.449994
3173	Prachuap Khiri Khan	77	218	2025-03-22 05:26:13.454806	2025-03-22 05:26:13.454806
3174	Nakhon Si Thammarat	80	218	2025-03-22 05:26:13.459149	2025-03-22 05:26:13.459149
3175	Krabi	81	218	2025-03-22 05:26:13.463852	2025-03-22 05:26:13.463852
3176	Phangnga	82	218	2025-03-22 05:26:13.468032	2025-03-22 05:26:13.468032
3177	Phuket	83	218	2025-03-22 05:26:13.472784	2025-03-22 05:26:13.472784
3178	Surat Thani	84	218	2025-03-22 05:26:13.476959	2025-03-22 05:26:13.476959
3179	Ranong	85	218	2025-03-22 05:26:13.48135	2025-03-22 05:26:13.48135
3180	Chumphon	86	218	2025-03-22 05:26:13.485595	2025-03-22 05:26:13.485595
3181	Songkhla	90	218	2025-03-22 05:26:13.49009	2025-03-22 05:26:13.49009
3182	Satun	91	218	2025-03-22 05:26:13.494806	2025-03-22 05:26:13.494806
3183	Trang	92	218	2025-03-22 05:26:13.499398	2025-03-22 05:26:13.499398
3184	Phatthalung	93	218	2025-03-22 05:26:13.505061	2025-03-22 05:26:13.505061
3185	Pattani	94	218	2025-03-22 05:26:13.509686	2025-03-22 05:26:13.509686
3186	Yala	95	218	2025-03-22 05:26:13.51412	2025-03-22 05:26:13.51412
3187	Narathiwat	96	218	2025-03-22 05:26:13.518181	2025-03-22 05:26:13.518181
3188	Phatthaya	S	218	2025-03-22 05:26:13.52248	2025-03-22 05:26:13.52248
3189	Gorno-Badakhshan	GB	219	2025-03-22 05:26:13.527004	2025-03-22 05:26:13.527004
3190	Khatlon	KT	219	2025-03-22 05:26:13.531158	2025-03-22 05:26:13.531158
3191	Sughd	SU	219	2025-03-22 05:26:13.535495	2025-03-22 05:26:13.535495
3192	Aileu	AL	221	2025-03-22 05:26:13.53989	2025-03-22 05:26:13.53989
3193	Ainaro	AN	221	2025-03-22 05:26:13.544399	2025-03-22 05:26:13.544399
3194	Baucau	BA	221	2025-03-22 05:26:13.548864	2025-03-22 05:26:13.548864
3195	Bobonaro	BO	221	2025-03-22 05:26:13.553339	2025-03-22 05:26:13.553339
3196	Cova Lima	CO	221	2025-03-22 05:26:13.557586	2025-03-22 05:26:13.557586
3197	Díli	DI	221	2025-03-22 05:26:13.563422	2025-03-22 05:26:13.563422
3198	Ermera	ER	221	2025-03-22 05:26:13.568379	2025-03-22 05:26:13.568379
3199	Lautem	LA	221	2025-03-22 05:26:13.572843	2025-03-22 05:26:13.572843
3200	Liquiça	LI	221	2025-03-22 05:26:13.577537	2025-03-22 05:26:13.577537
3201	Manufahi	MF	221	2025-03-22 05:26:13.581772	2025-03-22 05:26:13.581772
3202	Manatuto	MT	221	2025-03-22 05:26:13.586826	2025-03-22 05:26:13.586826
3203	Oecussi	OE	221	2025-03-22 05:26:13.591124	2025-03-22 05:26:13.591124
3204	Viqueque	VI	221	2025-03-22 05:26:13.595769	2025-03-22 05:26:13.595769
3205	Ahal	A	222	2025-03-22 05:26:13.600476	2025-03-22 05:26:13.600476
3206	Balkan	B	222	2025-03-22 05:26:13.60551	2025-03-22 05:26:13.60551
3207	Daşoguz	D	222	2025-03-22 05:26:13.609809	2025-03-22 05:26:13.609809
3208	Lebap	L	222	2025-03-22 05:26:13.614736	2025-03-22 05:26:13.614736
3209	Mary	M	222	2025-03-22 05:26:13.619235	2025-03-22 05:26:13.619235
3210	Aşgabat	S	222	2025-03-22 05:26:13.624151	2025-03-22 05:26:13.624151
3211	Tunis	11	223	2025-03-22 05:26:13.628969	2025-03-22 05:26:13.628969
3212	Ariana	12	223	2025-03-22 05:26:13.633534	2025-03-22 05:26:13.633534
3213	Ben Arous	13	223	2025-03-22 05:26:13.638319	2025-03-22 05:26:13.638319
3214	La Manouba	14	223	2025-03-22 05:26:13.642756	2025-03-22 05:26:13.642756
3215	Nabeul	21	223	2025-03-22 05:26:13.648498	2025-03-22 05:26:13.648498
3216	Zaghouan	22	223	2025-03-22 05:26:13.65325	2025-03-22 05:26:13.65325
3217	Bizerte	23	223	2025-03-22 05:26:13.657852	2025-03-22 05:26:13.657852
3218	Béja	31	223	2025-03-22 05:26:13.66297	2025-03-22 05:26:13.66297
3219	Jendouba	32	223	2025-03-22 05:26:13.667364	2025-03-22 05:26:13.667364
3220	Le Kef	33	223	2025-03-22 05:26:13.671962	2025-03-22 05:26:13.671962
3221	Siliana	34	223	2025-03-22 05:26:13.677092	2025-03-22 05:26:13.677092
3222	Kairouan	41	223	2025-03-22 05:26:13.681535	2025-03-22 05:26:13.681535
3223	Kasserine	42	223	2025-03-22 05:26:13.685808	2025-03-22 05:26:13.685808
3224	Sidi Bouzid	43	223	2025-03-22 05:26:13.690317	2025-03-22 05:26:13.690317
3225	Sousse	51	223	2025-03-22 05:26:13.695049	2025-03-22 05:26:13.695049
3226	Monastir	52	223	2025-03-22 05:26:13.699551	2025-03-22 05:26:13.699551
3227	Mahdia	53	223	2025-03-22 05:26:13.704177	2025-03-22 05:26:13.704177
3228	Sfax	61	223	2025-03-22 05:26:13.709334	2025-03-22 05:26:13.709334
3229	Gafsa	71	223	2025-03-22 05:26:13.714056	2025-03-22 05:26:13.714056
3230	Tozeur	72	223	2025-03-22 05:26:13.719188	2025-03-22 05:26:13.719188
3231	Kebili	73	223	2025-03-22 05:26:13.725578	2025-03-22 05:26:13.725578
3232	Gabès	81	223	2025-03-22 05:26:13.730183	2025-03-22 05:26:13.730183
3233	Medenine	82	223	2025-03-22 05:26:13.735713	2025-03-22 05:26:13.735713
3234	Tataouine	83	223	2025-03-22 05:26:13.740887	2025-03-22 05:26:13.740887
3235	'Eua	01	224	2025-03-22 05:26:13.745272	2025-03-22 05:26:13.745272
3236	Ha'apai	02	224	2025-03-22 05:26:13.749953	2025-03-22 05:26:13.749953
3237	Niuas	03	224	2025-03-22 05:26:13.754838	2025-03-22 05:26:13.754838
3238	Tongatapu	04	224	2025-03-22 05:26:13.759665	2025-03-22 05:26:13.759665
3239	Vava'u	05	224	2025-03-22 05:26:13.764043	2025-03-22 05:26:13.764043
3240	Adana	01	225	2025-03-22 05:26:13.768927	2025-03-22 05:26:13.768927
3241	Adıyaman	02	225	2025-03-22 05:26:13.773716	2025-03-22 05:26:13.773716
3242	Afyonkarahisar	03	225	2025-03-22 05:26:13.778804	2025-03-22 05:26:13.778804
3243	Ağrı	04	225	2025-03-22 05:26:13.783206	2025-03-22 05:26:13.783206
3244	Amasya	05	225	2025-03-22 05:26:13.787991	2025-03-22 05:26:13.787991
3245	Ankara	06	225	2025-03-22 05:26:13.79281	2025-03-22 05:26:13.79281
3246	Antalya	07	225	2025-03-22 05:26:13.7971	2025-03-22 05:26:13.7971
3247	Artvin	08	225	2025-03-22 05:26:13.80206	2025-03-22 05:26:13.80206
3248	Aydın	09	225	2025-03-22 05:26:13.806387	2025-03-22 05:26:13.806387
3249	Balıkesir	10	225	2025-03-22 05:26:13.811037	2025-03-22 05:26:13.811037
3250	Bilecik	11	225	2025-03-22 05:26:13.815674	2025-03-22 05:26:13.815674
3251	Bingöl	12	225	2025-03-22 05:26:13.820445	2025-03-22 05:26:13.820445
3252	Bitlis	13	225	2025-03-22 05:26:13.826197	2025-03-22 05:26:13.826197
3253	Bolu	14	225	2025-03-22 05:26:13.830949	2025-03-22 05:26:13.830949
3254	Burdur	15	225	2025-03-22 05:26:13.835681	2025-03-22 05:26:13.835681
3255	Bursa	16	225	2025-03-22 05:26:13.840188	2025-03-22 05:26:13.840188
3256	Çanakkale	17	225	2025-03-22 05:26:13.84468	2025-03-22 05:26:13.84468
3257	Çankırı	18	225	2025-03-22 05:26:13.849548	2025-03-22 05:26:13.849548
3258	Çorum	19	225	2025-03-22 05:26:13.854137	2025-03-22 05:26:13.854137
3259	Denizli	20	225	2025-03-22 05:26:13.85848	2025-03-22 05:26:13.85848
3260	Diyarbakır	21	225	2025-03-22 05:26:13.862966	2025-03-22 05:26:13.862966
3261	Edirne	22	225	2025-03-22 05:26:13.867284	2025-03-22 05:26:13.867284
3262	Elazığ	23	225	2025-03-22 05:26:13.871598	2025-03-22 05:26:13.871598
3263	Erzincan	24	225	2025-03-22 05:26:13.875788	2025-03-22 05:26:13.875788
3264	Erzurum	25	225	2025-03-22 05:26:13.881234	2025-03-22 05:26:13.881234
3265	Eskişehir	26	225	2025-03-22 05:26:13.888568	2025-03-22 05:26:13.888568
3266	Gaziantep	27	225	2025-03-22 05:26:13.893899	2025-03-22 05:26:13.893899
3267	Giresun	28	225	2025-03-22 05:26:13.899641	2025-03-22 05:26:13.899641
3268	Gümüşhane	29	225	2025-03-22 05:26:13.904026	2025-03-22 05:26:13.904026
3269	Hakkâri	30	225	2025-03-22 05:26:13.90907	2025-03-22 05:26:13.90907
3270	Hatay	31	225	2025-03-22 05:26:13.914028	2025-03-22 05:26:13.914028
3271	Isparta	32	225	2025-03-22 05:26:13.918155	2025-03-22 05:26:13.918155
3272	Mersin	33	225	2025-03-22 05:26:13.922934	2025-03-22 05:26:13.922934
3273	İstanbul	34	225	2025-03-22 05:26:13.927115	2025-03-22 05:26:13.927115
3274	İzmir	35	225	2025-03-22 05:26:13.931843	2025-03-22 05:26:13.931843
3275	Kars	36	225	2025-03-22 05:26:13.936396	2025-03-22 05:26:13.936396
3276	Kastamonu	37	225	2025-03-22 05:26:13.941557	2025-03-22 05:26:13.941557
3277	Kayseri	38	225	2025-03-22 05:26:13.946305	2025-03-22 05:26:13.946305
3278	Kırklareli	39	225	2025-03-22 05:26:13.951078	2025-03-22 05:26:13.951078
3279	Kırşehir	40	225	2025-03-22 05:26:13.95528	2025-03-22 05:26:13.95528
3280	Kocaeli	41	225	2025-03-22 05:26:13.96016	2025-03-22 05:26:13.96016
3281	Konya	42	225	2025-03-22 05:26:13.964421	2025-03-22 05:26:13.964421
3282	Kütahya	43	225	2025-03-22 05:26:13.968926	2025-03-22 05:26:13.968926
3283	Malatya	44	225	2025-03-22 05:26:13.97376	2025-03-22 05:26:13.97376
3284	Manisa	45	225	2025-03-22 05:26:13.97824	2025-03-22 05:26:13.97824
3285	Kahramanmaraş	46	225	2025-03-22 05:26:13.983198	2025-03-22 05:26:13.983198
3286	Mardin	47	225	2025-03-22 05:26:13.987887	2025-03-22 05:26:13.987887
3287	Muğla	48	225	2025-03-22 05:26:13.993623	2025-03-22 05:26:13.993623
3288	Muş	49	225	2025-03-22 05:26:13.998154	2025-03-22 05:26:13.998154
3289	Nevşehir	50	225	2025-03-22 05:26:14.003103	2025-03-22 05:26:14.003103
3290	Niğde	51	225	2025-03-22 05:26:14.007697	2025-03-22 05:26:14.007697
3291	Ordu	52	225	2025-03-22 05:26:14.012405	2025-03-22 05:26:14.012405
3292	Rize	53	225	2025-03-22 05:26:14.016888	2025-03-22 05:26:14.016888
3293	Sakarya	54	225	2025-03-22 05:26:14.021724	2025-03-22 05:26:14.021724
3294	Samsun	55	225	2025-03-22 05:26:14.026348	2025-03-22 05:26:14.026348
3295	Siirt	56	225	2025-03-22 05:26:14.031067	2025-03-22 05:26:14.031067
3296	Sinop	57	225	2025-03-22 05:26:14.036304	2025-03-22 05:26:14.036304
3297	Sivas	58	225	2025-03-22 05:26:14.040959	2025-03-22 05:26:14.040959
3298	Tekirdağ	59	225	2025-03-22 05:26:14.046313	2025-03-22 05:26:14.046313
3299	Tokat	60	225	2025-03-22 05:26:14.053189	2025-03-22 05:26:14.053189
3300	Trabzon	61	225	2025-03-22 05:26:14.057826	2025-03-22 05:26:14.057826
3301	Tunceli	62	225	2025-03-22 05:26:14.062948	2025-03-22 05:26:14.062948
3302	Şanlıurfa	63	225	2025-03-22 05:26:14.067995	2025-03-22 05:26:14.067995
3303	Uşak	64	225	2025-03-22 05:26:14.0731	2025-03-22 05:26:14.0731
3304	Van	65	225	2025-03-22 05:26:14.077255	2025-03-22 05:26:14.077255
3305	Yozgat	66	225	2025-03-22 05:26:14.08249	2025-03-22 05:26:14.08249
3306	Zonguldak	67	225	2025-03-22 05:26:14.088093	2025-03-22 05:26:14.088093
3307	Aksaray	68	225	2025-03-22 05:26:14.09306	2025-03-22 05:26:14.09306
3308	Bayburt	69	225	2025-03-22 05:26:14.097745	2025-03-22 05:26:14.097745
3309	Karaman	70	225	2025-03-22 05:26:14.102049	2025-03-22 05:26:14.102049
3310	Kırıkkale	71	225	2025-03-22 05:26:14.106998	2025-03-22 05:26:14.106998
3311	Batman	72	225	2025-03-22 05:26:14.111381	2025-03-22 05:26:14.111381
3312	Şırnak	73	225	2025-03-22 05:26:14.116013	2025-03-22 05:26:14.116013
3313	Bartın	74	225	2025-03-22 05:26:14.120349	2025-03-22 05:26:14.120349
3314	Ardahan	75	225	2025-03-22 05:26:14.125345	2025-03-22 05:26:14.125345
3315	Iğdır	76	225	2025-03-22 05:26:14.129892	2025-03-22 05:26:14.129892
3316	Yalova	77	225	2025-03-22 05:26:14.134528	2025-03-22 05:26:14.134528
3317	Karabük	78	225	2025-03-22 05:26:14.139037	2025-03-22 05:26:14.139037
3318	Kilis	79	225	2025-03-22 05:26:14.143592	2025-03-22 05:26:14.143592
3319	Osmaniye	80	225	2025-03-22 05:26:14.148004	2025-03-22 05:26:14.148004
3320	Düzce	81	225	2025-03-22 05:26:14.152583	2025-03-22 05:26:14.152583
3321	Arima	ARI	226	2025-03-22 05:26:14.1576	2025-03-22 05:26:14.1576
3322	Chaguanas	CHA	226	2025-03-22 05:26:14.162844	2025-03-22 05:26:14.162844
3323	Couva-Tabaquite-Talparo	CTT	226	2025-03-22 05:26:14.167143	2025-03-22 05:26:14.167143
3324	Diego Martin	DMN	226	2025-03-22 05:26:14.171295	2025-03-22 05:26:14.171295
3325	Eastern Tobago	ETO	226	2025-03-22 05:26:14.175786	2025-03-22 05:26:14.175786
3326	Penal-Debe	PED	226	2025-03-22 05:26:14.18032	2025-03-22 05:26:14.18032
3327	Port of Spain	POS	226	2025-03-22 05:26:14.185102	2025-03-22 05:26:14.185102
3328	Princes Town	PRT	226	2025-03-22 05:26:14.189717	2025-03-22 05:26:14.189717
3329	Point Fortin	PTF	226	2025-03-22 05:26:14.194322	2025-03-22 05:26:14.194322
3330	Rio Claro-Mayaro	RCM	226	2025-03-22 05:26:14.198428	2025-03-22 05:26:14.198428
3331	San Fernando	SFO	226	2025-03-22 05:26:14.202797	2025-03-22 05:26:14.202797
3332	Sangre Grande	SGE	226	2025-03-22 05:26:14.206991	2025-03-22 05:26:14.206991
3333	Siparia	SIP	226	2025-03-22 05:26:14.211616	2025-03-22 05:26:14.211616
3334	San Juan-Laventille	SJL	226	2025-03-22 05:26:14.217564	2025-03-22 05:26:14.217564
3335	Tunapuna-Piarco	TUP	226	2025-03-22 05:26:14.222627	2025-03-22 05:26:14.222627
3336	Western Tobago	WTO	226	2025-03-22 05:26:14.226891	2025-03-22 05:26:14.226891
3337	Funafuti	FUN	227	2025-03-22 05:26:14.231912	2025-03-22 05:26:14.231912
3338	Niutao	NIT	227	2025-03-22 05:26:14.236088	2025-03-22 05:26:14.236088
3339	Nukufetau	NKF	227	2025-03-22 05:26:14.241368	2025-03-22 05:26:14.241368
3340	Nukulaelae	NKL	227	2025-03-22 05:26:14.246018	2025-03-22 05:26:14.246018
3341	Nanumea	NMA	227	2025-03-22 05:26:14.251091	2025-03-22 05:26:14.251091
3342	Nanumanga	NMG	227	2025-03-22 05:26:14.25567	2025-03-22 05:26:14.25567
3343	Nui	NUI	227	2025-03-22 05:26:14.260722	2025-03-22 05:26:14.260722
3344	Vaitupu	VAI	227	2025-03-22 05:26:14.265198	2025-03-22 05:26:14.265198
3345	Changhua	CHA	228	2025-03-22 05:26:14.270604	2025-03-22 05:26:14.270604
3346	Chiay City	CYI	228	2025-03-22 05:26:14.275569	2025-03-22 05:26:14.275569
3347	Chiayi	CYQ	228	2025-03-22 05:26:14.280599	2025-03-22 05:26:14.280599
3348	Hsinchu	HSQ	228	2025-03-22 05:26:14.28547	2025-03-22 05:26:14.28547
3349	Hsinchui City	HSZ	228	2025-03-22 05:26:14.290778	2025-03-22 05:26:14.290778
3350	Hualien	HUA	228	2025-03-22 05:26:14.295506	2025-03-22 05:26:14.295506
3351	Ilan	ILA	228	2025-03-22 05:26:14.299617	2025-03-22 05:26:14.299617
3352	Keelung City	KEE	228	2025-03-22 05:26:14.304402	2025-03-22 05:26:14.304402
3353	Kaohsiung City	KHH	228	2025-03-22 05:26:14.30874	2025-03-22 05:26:14.30874
3354	Kaohsiung	KHQ	228	2025-03-22 05:26:14.313257	2025-03-22 05:26:14.313257
3355	Miaoli	MIA	228	2025-03-22 05:26:14.318227	2025-03-22 05:26:14.318227
3356	Nantou	NAN	228	2025-03-22 05:26:14.32257	2025-03-22 05:26:14.32257
3357	Penghu	PEN	228	2025-03-22 05:26:14.327152	2025-03-22 05:26:14.327152
3358	Pingtung	PIF	228	2025-03-22 05:26:14.331391	2025-03-22 05:26:14.331391
3359	Taoyuan	TAO	228	2025-03-22 05:26:14.335826	2025-03-22 05:26:14.335826
3360	Tainan City	TNN	228	2025-03-22 05:26:14.340152	2025-03-22 05:26:14.340152
3361	Tainan	TNQ	228	2025-03-22 05:26:14.344349	2025-03-22 05:26:14.344349
3362	Taipei City	TPE	228	2025-03-22 05:26:14.348471	2025-03-22 05:26:14.348471
3363	Taipei	TPQ	228	2025-03-22 05:26:14.352709	2025-03-22 05:26:14.352709
3364	Taitung	TTT	228	2025-03-22 05:26:14.356844	2025-03-22 05:26:14.356844
3365	Taichung City	TXG	228	2025-03-22 05:26:14.361045	2025-03-22 05:26:14.361045
3366	Taichung	TXQ	228	2025-03-22 05:26:14.365395	2025-03-22 05:26:14.365395
3367	Yunlin	YUN	228	2025-03-22 05:26:14.36965	2025-03-22 05:26:14.36965
3368	Arusha	01	229	2025-03-22 05:26:14.375754	2025-03-22 05:26:14.375754
3369	Dar-es-Salaam	02	229	2025-03-22 05:26:14.380469	2025-03-22 05:26:14.380469
3370	Dodoma	03	229	2025-03-22 05:26:14.385573	2025-03-22 05:26:14.385573
3371	Iringa	04	229	2025-03-22 05:26:14.390478	2025-03-22 05:26:14.390478
3372	Kagera	05	229	2025-03-22 05:26:14.39475	2025-03-22 05:26:14.39475
3373	Kaskazini Pemba	06	229	2025-03-22 05:26:14.399458	2025-03-22 05:26:14.399458
3374	Kaskazini Unguja	07	229	2025-03-22 05:26:14.403782	2025-03-22 05:26:14.403782
3375	Kigoma	08	229	2025-03-22 05:26:14.408347	2025-03-22 05:26:14.408347
3376	Kilimanjaro	09	229	2025-03-22 05:26:14.41273	2025-03-22 05:26:14.41273
3377	Kusini Pemba	10	229	2025-03-22 05:26:14.417239	2025-03-22 05:26:14.417239
3378	Kusini Unguja	11	229	2025-03-22 05:26:14.421647	2025-03-22 05:26:14.421647
3379	Lindi	12	229	2025-03-22 05:26:14.426636	2025-03-22 05:26:14.426636
3380	Mara	13	229	2025-03-22 05:26:14.431317	2025-03-22 05:26:14.431317
3381	Mbeya	14	229	2025-03-22 05:26:14.436276	2025-03-22 05:26:14.436276
3382	Mjini Magharibi	15	229	2025-03-22 05:26:14.441544	2025-03-22 05:26:14.441544
3383	Morogoro	16	229	2025-03-22 05:26:14.446055	2025-03-22 05:26:14.446055
3384	Mtwara	17	229	2025-03-22 05:26:14.451027	2025-03-22 05:26:14.451027
3385	Mwanza	18	229	2025-03-22 05:26:14.455493	2025-03-22 05:26:14.455493
3386	Pwani	19	229	2025-03-22 05:26:14.460182	2025-03-22 05:26:14.460182
3387	Rukwa	20	229	2025-03-22 05:26:14.464723	2025-03-22 05:26:14.464723
3388	Ruvuma	21	229	2025-03-22 05:26:14.469304	2025-03-22 05:26:14.469304
3389	Shinyanga	22	229	2025-03-22 05:26:14.474958	2025-03-22 05:26:14.474958
3390	Singida	23	229	2025-03-22 05:26:14.47953	2025-03-22 05:26:14.47953
3391	Tabora	24	229	2025-03-22 05:26:14.484436	2025-03-22 05:26:14.484436
3392	Tanga	25	229	2025-03-22 05:26:14.489028	2025-03-22 05:26:14.489028
3393	Manyara	26	229	2025-03-22 05:26:14.493727	2025-03-22 05:26:14.493727
3394	Vinnyts'ka Oblast'	05	230	2025-03-22 05:26:14.498163	2025-03-22 05:26:14.498163
3395	Volyns'ka Oblast'	07	230	2025-03-22 05:26:14.502956	2025-03-22 05:26:14.502956
3396	Luhans'ka Oblast'	09	230	2025-03-22 05:26:14.507395	2025-03-22 05:26:14.507395
3397	Dnipropetrovs'ka Oblast'	12	230	2025-03-22 05:26:14.511674	2025-03-22 05:26:14.511674
3398	Donets'ka Oblast'	14	230	2025-03-22 05:26:14.515794	2025-03-22 05:26:14.515794
3399	Zhytomyrs'ka Oblast'	18	230	2025-03-22 05:26:14.520134	2025-03-22 05:26:14.520134
3400	Zakarpats'ka Oblast'	21	230	2025-03-22 05:26:14.524639	2025-03-22 05:26:14.524639
3401	Zaporiz'ka Oblast'	23	230	2025-03-22 05:26:14.528918	2025-03-22 05:26:14.528918
3402	Ivano-Frankivs'ka Oblast'	26	230	2025-03-22 05:26:14.534823	2025-03-22 05:26:14.534823
3403	Kyïvs'ka mis'ka rada	30	230	2025-03-22 05:26:14.539303	2025-03-22 05:26:14.539303
3404	Kyïvs'ka Oblast'	32	230	2025-03-22 05:26:14.544347	2025-03-22 05:26:14.544347
3405	Kirovohrads'ka Oblast'	35	230	2025-03-22 05:26:14.548799	2025-03-22 05:26:14.548799
3406	Sevastopol	40	230	2025-03-22 05:26:14.553986	2025-03-22 05:26:14.553986
3407	Respublika Krym	43	230	2025-03-22 05:26:14.558458	2025-03-22 05:26:14.558458
3408	L'vivs'ka Oblast'	46	230	2025-03-22 05:26:14.563364	2025-03-22 05:26:14.563364
3409	Mykolaïvs'ka Oblast'	48	230	2025-03-22 05:26:14.56806	2025-03-22 05:26:14.56806
3410	Odes'ka Oblast'	51	230	2025-03-22 05:26:14.572764	2025-03-22 05:26:14.572764
3411	Poltavs'ka Oblast'	53	230	2025-03-22 05:26:14.577759	2025-03-22 05:26:14.577759
3412	Rivnens'ka Oblast'	56	230	2025-03-22 05:26:14.582464	2025-03-22 05:26:14.582464
3413	Sums 'ka Oblast'	59	230	2025-03-22 05:26:14.587525	2025-03-22 05:26:14.587525
3414	Ternopil's'ka Oblast'	61	230	2025-03-22 05:26:14.592096	2025-03-22 05:26:14.592096
3415	Kharkivs'ka Oblast'	63	230	2025-03-22 05:26:14.596894	2025-03-22 05:26:14.596894
3416	Khersons'ka Oblast'	65	230	2025-03-22 05:26:14.601556	2025-03-22 05:26:14.601556
3417	Khmel'nyts'ka Oblast'	68	230	2025-03-22 05:26:14.606283	2025-03-22 05:26:14.606283
3418	Cherkas'ka Oblast'	71	230	2025-03-22 05:26:14.61059	2025-03-22 05:26:14.61059
3419	Chernihivs'ka Oblast'	74	230	2025-03-22 05:26:14.615054	2025-03-22 05:26:14.615054
3420	Chernivets'ka Oblast'	77	230	2025-03-22 05:26:14.619482	2025-03-22 05:26:14.619482
3421	Central	C	231	2025-03-22 05:26:14.624208	2025-03-22 05:26:14.624208
3422	Eastern	E	231	2025-03-22 05:26:14.628282	2025-03-22 05:26:14.628282
3423	Northern	N	231	2025-03-22 05:26:14.632874	2025-03-22 05:26:14.632874
3424	Western	W	231	2025-03-22 05:26:14.638176	2025-03-22 05:26:14.638176
3425	Johnston Atoll	67	232	2025-03-22 05:26:14.642835	2025-03-22 05:26:14.642835
3426	Midway Islands	71	232	2025-03-22 05:26:14.647	2025-03-22 05:26:14.647
3427	Navassa Island	76	232	2025-03-22 05:26:14.651588	2025-03-22 05:26:14.651588
3428	Wake Island	79	232	2025-03-22 05:26:14.655781	2025-03-22 05:26:14.655781
3429	Baker Island	81	232	2025-03-22 05:26:14.65993	2025-03-22 05:26:14.65993
3430	Howland Island	84	232	2025-03-22 05:26:14.664274	2025-03-22 05:26:14.664274
3431	Jarvis Island	86	232	2025-03-22 05:26:14.669356	2025-03-22 05:26:14.669356
3432	Kingman Reef	89	232	2025-03-22 05:26:14.673763	2025-03-22 05:26:14.673763
3433	Palmyra Atoll	95	232	2025-03-22 05:26:14.678013	2025-03-22 05:26:14.678013
3434	Alaska	AK	233	2025-03-22 05:26:14.682499	2025-03-22 05:26:14.682499
3435	Alabama	AL	233	2025-03-22 05:26:14.68701	2025-03-22 05:26:14.68701
3436	Arkansas	AR	233	2025-03-22 05:26:14.692803	2025-03-22 05:26:14.692803
3437	American Samoa	AS	233	2025-03-22 05:26:14.698304	2025-03-22 05:26:14.698304
3438	Arizona	AZ	233	2025-03-22 05:26:14.703935	2025-03-22 05:26:14.703935
3439	California	CA	233	2025-03-22 05:26:14.708199	2025-03-22 05:26:14.708199
3440	Colorado	CO	233	2025-03-22 05:26:14.712989	2025-03-22 05:26:14.712989
3441	Connecticut	CT	233	2025-03-22 05:26:14.717233	2025-03-22 05:26:14.717233
3442	District of Columbia	DC	233	2025-03-22 05:26:14.721862	2025-03-22 05:26:14.721862
3443	Delaware	DE	233	2025-03-22 05:26:14.726535	2025-03-22 05:26:14.726535
3444	Florida	FL	233	2025-03-22 05:26:14.731906	2025-03-22 05:26:14.731906
3445	Georgia	GA	233	2025-03-22 05:26:14.737038	2025-03-22 05:26:14.737038
3446	Guam	GU	233	2025-03-22 05:26:14.742274	2025-03-22 05:26:14.742274
3447	Hawaii	HI	233	2025-03-22 05:26:14.746962	2025-03-22 05:26:14.746962
3448	Iowa	IA	233	2025-03-22 05:26:14.751925	2025-03-22 05:26:14.751925
3449	Idaho	ID	233	2025-03-22 05:26:14.756352	2025-03-22 05:26:14.756352
3450	Illinois	IL	233	2025-03-22 05:26:14.761326	2025-03-22 05:26:14.761326
3451	Indiana	IN	233	2025-03-22 05:26:14.766171	2025-03-22 05:26:14.766171
3452	Kansas	KS	233	2025-03-22 05:26:14.770688	2025-03-22 05:26:14.770688
3453	Kentucky	KY	233	2025-03-22 05:26:14.775634	2025-03-22 05:26:14.775634
3454	Louisiana	LA	233	2025-03-22 05:26:14.780341	2025-03-22 05:26:14.780341
3455	Massachusetts	MA	233	2025-03-22 05:26:14.785798	2025-03-22 05:26:14.785798
3456	Maryland	MD	233	2025-03-22 05:26:14.790395	2025-03-22 05:26:14.790395
3457	Maine	ME	233	2025-03-22 05:26:14.795009	2025-03-22 05:26:14.795009
3458	Michigan	MI	233	2025-03-22 05:26:14.800081	2025-03-22 05:26:14.800081
3459	Minnesota	MN	233	2025-03-22 05:26:14.804392	2025-03-22 05:26:14.804392
3460	Missouri	MO	233	2025-03-22 05:26:14.808904	2025-03-22 05:26:14.808904
3461	Northern Mariana Islands	MP	233	2025-03-22 05:26:14.81357	2025-03-22 05:26:14.81357
3462	Mississippi	MS	233	2025-03-22 05:26:14.81769	2025-03-22 05:26:14.81769
3463	Montana	MT	233	2025-03-22 05:26:14.821999	2025-03-22 05:26:14.821999
3464	North Carolina	NC	233	2025-03-22 05:26:14.826319	2025-03-22 05:26:14.826319
3465	North Dakota	ND	233	2025-03-22 05:26:14.830394	2025-03-22 05:26:14.830394
3466	Nebraska	NE	233	2025-03-22 05:26:14.834474	2025-03-22 05:26:14.834474
3467	New Hampshire	NH	233	2025-03-22 05:26:14.839038	2025-03-22 05:26:14.839038
3468	New Jersey	NJ	233	2025-03-22 05:26:14.844018	2025-03-22 05:26:14.844018
3469	New Mexico	NM	233	2025-03-22 05:26:14.848366	2025-03-22 05:26:14.848366
3470	Nevada	NV	233	2025-03-22 05:26:14.852824	2025-03-22 05:26:14.852824
3471	New York	NY	233	2025-03-22 05:26:14.85909	2025-03-22 05:26:14.85909
3472	Ohio	OH	233	2025-03-22 05:26:14.863831	2025-03-22 05:26:14.863831
3473	Oklahoma	OK	233	2025-03-22 05:26:14.869106	2025-03-22 05:26:14.869106
3474	Oregon	OR	233	2025-03-22 05:26:14.874271	2025-03-22 05:26:14.874271
3475	Pennsylvania	PA	233	2025-03-22 05:26:14.878597	2025-03-22 05:26:14.878597
3476	Puerto Rico	PR	233	2025-03-22 05:26:14.883598	2025-03-22 05:26:14.883598
3477	Rhode Island	RI	233	2025-03-22 05:26:14.88802	2025-03-22 05:26:14.88802
3478	South Carolina	SC	233	2025-03-22 05:26:14.893258	2025-03-22 05:26:14.893258
3479	South Dakota	SD	233	2025-03-22 05:26:14.897908	2025-03-22 05:26:14.897908
3480	Tennessee	TN	233	2025-03-22 05:26:14.903415	2025-03-22 05:26:14.903415
3481	Texas	TX	233	2025-03-22 05:26:14.907846	2025-03-22 05:26:14.907846
3482	United States Minor Outlying Islands	UM	233	2025-03-22 05:26:14.912923	2025-03-22 05:26:14.912923
3483	Utah	UT	233	2025-03-22 05:26:14.917404	2025-03-22 05:26:14.917404
3484	Virginia	VA	233	2025-03-22 05:26:14.922503	2025-03-22 05:26:14.922503
3485	Virgin Islands	VI	233	2025-03-22 05:26:14.92687	2025-03-22 05:26:14.92687
3486	Vermont	VT	233	2025-03-22 05:26:14.931831	2025-03-22 05:26:14.931831
3487	Washington	WA	233	2025-03-22 05:26:14.936238	2025-03-22 05:26:14.936238
3488	Wisconsin	WI	233	2025-03-22 05:26:14.940426	2025-03-22 05:26:14.940426
3489	West Virginia	WV	233	2025-03-22 05:26:14.944897	2025-03-22 05:26:14.944897
3490	Wyoming	WY	233	2025-03-22 05:26:14.949464	2025-03-22 05:26:14.949464
3491	Armed Forces Americas (except Canada)	AA	233	2025-03-22 05:26:14.954259	2025-03-22 05:26:14.954259
3492	Armed Forces Africa, Canada, Europe, Middle East	AE	233	2025-03-22 05:26:14.959247	2025-03-22 05:26:14.959247
3493	Armed Forces Pacific	AP	233	2025-03-22 05:26:14.963822	2025-03-22 05:26:14.963822
3494	Artigas	AR	234	2025-03-22 05:26:14.968184	2025-03-22 05:26:14.968184
3495	Canelones	CA	234	2025-03-22 05:26:14.972435	2025-03-22 05:26:14.972435
3496	Cerro Largo	CL	234	2025-03-22 05:26:14.976614	2025-03-22 05:26:14.976614
3497	Colonia	CO	234	2025-03-22 05:26:14.980898	2025-03-22 05:26:14.980898
3498	Durazno	DU	234	2025-03-22 05:26:14.985172	2025-03-22 05:26:14.985172
3499	Florida	FD	234	2025-03-22 05:26:14.989409	2025-03-22 05:26:14.989409
3500	Flores	FS	234	2025-03-22 05:26:14.993734	2025-03-22 05:26:14.993734
3501	Lavalleja	LA	234	2025-03-22 05:26:14.998225	2025-03-22 05:26:14.998225
3502	Maldonado	MA	234	2025-03-22 05:26:15.002863	2025-03-22 05:26:15.002863
3503	Montevideo	MO	234	2025-03-22 05:26:15.007032	2025-03-22 05:26:15.007032
3504	Paysandú	PA	234	2025-03-22 05:26:15.012384	2025-03-22 05:26:15.012384
3505	Río Negro	RN	234	2025-03-22 05:26:15.018159	2025-03-22 05:26:15.018159
3506	Rocha	RO	234	2025-03-22 05:26:15.022579	2025-03-22 05:26:15.022579
3507	Rivera	RV	234	2025-03-22 05:26:15.027664	2025-03-22 05:26:15.027664
3508	Salto	SA	234	2025-03-22 05:26:15.032571	2025-03-22 05:26:15.032571
3509	San José	SJ	234	2025-03-22 05:26:15.036792	2025-03-22 05:26:15.036792
3510	Soriano	SO	234	2025-03-22 05:26:15.041997	2025-03-22 05:26:15.041997
3511	Tacuarembó	TA	234	2025-03-22 05:26:15.047296	2025-03-22 05:26:15.047296
3512	Treinta y Tres	TT	234	2025-03-22 05:26:15.052294	2025-03-22 05:26:15.052294
3513	Andijon	AN	235	2025-03-22 05:26:15.057016	2025-03-22 05:26:15.057016
3514	Buxoro	BU	235	2025-03-22 05:26:15.061763	2025-03-22 05:26:15.061763
3515	Farg'ona	FA	235	2025-03-22 05:26:15.066181	2025-03-22 05:26:15.066181
3516	Jizzax	JI	235	2025-03-22 05:26:15.071338	2025-03-22 05:26:15.071338
3517	Namangan	NG	235	2025-03-22 05:26:15.075614	2025-03-22 05:26:15.075614
3518	Navoiy	NW	235	2025-03-22 05:26:15.080124	2025-03-22 05:26:15.080124
3519	Qashqadaryo	QA	235	2025-03-22 05:26:15.084667	2025-03-22 05:26:15.084667
3520	Qoraqalpog'iston Respublikasi	QR	235	2025-03-22 05:26:15.089842	2025-03-22 05:26:15.089842
3521	Samarqand	SA	235	2025-03-22 05:26:15.094399	2025-03-22 05:26:15.094399
3522	Sirdaryo	SI	235	2025-03-22 05:26:15.098569	2025-03-22 05:26:15.098569
3523	Surxondaryo	SU	235	2025-03-22 05:26:15.103335	2025-03-22 05:26:15.103335
3524	Toshkent	TK	235	2025-03-22 05:26:15.107575	2025-03-22 05:26:15.107575
3525	Toshkent	TO	235	2025-03-22 05:26:15.112066	2025-03-22 05:26:15.112066
3526	Xorazm	XO	235	2025-03-22 05:26:15.117087	2025-03-22 05:26:15.117087
3527	Charlotte	01	237	2025-03-22 05:26:15.121545	2025-03-22 05:26:15.121545
3528	Saint Andrew	02	237	2025-03-22 05:26:15.125675	2025-03-22 05:26:15.125675
3529	Saint David	03	237	2025-03-22 05:26:15.129681	2025-03-22 05:26:15.129681
3530	Saint George	04	237	2025-03-22 05:26:15.133975	2025-03-22 05:26:15.133975
3531	Saint Patrick	05	237	2025-03-22 05:26:15.138534	2025-03-22 05:26:15.138534
3532	Grenadines	06	237	2025-03-22 05:26:15.143006	2025-03-22 05:26:15.143006
3533	Distrito Federal	A	238	2025-03-22 05:26:15.147588	2025-03-22 05:26:15.147588
3534	Anzoátegui	B	238	2025-03-22 05:26:15.151969	2025-03-22 05:26:15.151969
3535	Apure	C	238	2025-03-22 05:26:15.156248	2025-03-22 05:26:15.156248
3536	Aragua	D	238	2025-03-22 05:26:15.160439	2025-03-22 05:26:15.160439
3537	Barinas	E	238	2025-03-22 05:26:15.164602	2025-03-22 05:26:15.164602
3538	Bolívar	F	238	2025-03-22 05:26:15.168797	2025-03-22 05:26:15.168797
3539	Carabobo	G	238	2025-03-22 05:26:15.17499	2025-03-22 05:26:15.17499
3540	Cojedes	H	238	2025-03-22 05:26:15.179455	2025-03-22 05:26:15.179455
3541	Falcón	I	238	2025-03-22 05:26:15.185046	2025-03-22 05:26:15.185046
3542	Guárico	J	238	2025-03-22 05:26:15.18947	2025-03-22 05:26:15.18947
3543	Lara	K	238	2025-03-22 05:26:15.194297	2025-03-22 05:26:15.194297
3544	Mérida	L	238	2025-03-22 05:26:15.198598	2025-03-22 05:26:15.198598
3545	Miranda	M	238	2025-03-22 05:26:15.203643	2025-03-22 05:26:15.203643
3546	Monagas	N	238	2025-03-22 05:26:15.207871	2025-03-22 05:26:15.207871
3547	Nueva Esparta	O	238	2025-03-22 05:26:15.212558	2025-03-22 05:26:15.212558
3548	Portuguesa	P	238	2025-03-22 05:26:15.217311	2025-03-22 05:26:15.217311
3549	Sucre	R	238	2025-03-22 05:26:15.22152	2025-03-22 05:26:15.22152
3550	Táchira	S	238	2025-03-22 05:26:15.226579	2025-03-22 05:26:15.226579
3551	Trujillo	T	238	2025-03-22 05:26:15.231047	2025-03-22 05:26:15.231047
3552	Yaracuy	U	238	2025-03-22 05:26:15.235646	2025-03-22 05:26:15.235646
3553	Zulia	V	238	2025-03-22 05:26:15.239787	2025-03-22 05:26:15.239787
3554	Dependencias Federales	W	238	2025-03-22 05:26:15.244637	2025-03-22 05:26:15.244637
3555	Vargas	X	238	2025-03-22 05:26:15.248844	2025-03-22 05:26:15.248844
3556	Delta Amacuro	Y	238	2025-03-22 05:26:15.253408	2025-03-22 05:26:15.253408
3557	Amazonas	Z	238	2025-03-22 05:26:15.257487	2025-03-22 05:26:15.257487
3558	Lai Châu	01	241	2025-03-22 05:26:15.262551	2025-03-22 05:26:15.262551
3559	Lào Cai	02	241	2025-03-22 05:26:15.267205	2025-03-22 05:26:15.267205
3560	Hà Giang	03	241	2025-03-22 05:26:15.271665	2025-03-22 05:26:15.271665
3561	Cao Bằng	04	241	2025-03-22 05:26:15.276823	2025-03-22 05:26:15.276823
3562	Sơn La	05	241	2025-03-22 05:26:15.281037	2025-03-22 05:26:15.281037
3563	Yên Bái	06	241	2025-03-22 05:26:15.285219	2025-03-22 05:26:15.285219
3564	Tuyên Quang	07	241	2025-03-22 05:26:15.289403	2025-03-22 05:26:15.289403
3565	Lạng Sơn	09	241	2025-03-22 05:26:15.29485	2025-03-22 05:26:15.29485
3566	Quảng Ninh	13	241	2025-03-22 05:26:15.299408	2025-03-22 05:26:15.299408
3567	Hoà Bình	14	241	2025-03-22 05:26:15.30364	2025-03-22 05:26:15.30364
3568	Hà Tây	15	241	2025-03-22 05:26:15.307804	2025-03-22 05:26:15.307804
3569	Ninh Bình	18	241	2025-03-22 05:26:15.312631	2025-03-22 05:26:15.312631
3570	Thái Bình	20	241	2025-03-22 05:26:15.316776	2025-03-22 05:26:15.316776
3571	Thanh Hóa	21	241	2025-03-22 05:26:15.320868	2025-03-22 05:26:15.320868
3572	Nghệ An	22	241	2025-03-22 05:26:15.32535	2025-03-22 05:26:15.32535
3573	Hà Tỉnh	23	241	2025-03-22 05:26:15.329565	2025-03-22 05:26:15.329565
3574	Quảng Bình	24	241	2025-03-22 05:26:15.335308	2025-03-22 05:26:15.335308
3575	Quảng Trị	25	241	2025-03-22 05:26:15.3405	2025-03-22 05:26:15.3405
3576	Thừa Thiên-Huế	26	241	2025-03-22 05:26:15.345207	2025-03-22 05:26:15.345207
3577	Quảng Nam	27	241	2025-03-22 05:26:15.350489	2025-03-22 05:26:15.350489
3578	Kon Tum	28	241	2025-03-22 05:26:15.355302	2025-03-22 05:26:15.355302
3579	Quảng Ngãi	29	241	2025-03-22 05:26:15.3604	2025-03-22 05:26:15.3604
3580	Gia Lai	30	241	2025-03-22 05:26:15.364878	2025-03-22 05:26:15.364878
3581	Bình Định	31	241	2025-03-22 05:26:15.369756	2025-03-22 05:26:15.369756
3582	Phú Yên	32	241	2025-03-22 05:26:15.374301	2025-03-22 05:26:15.374301
3583	Đắc Lắk	33	241	2025-03-22 05:26:15.379129	2025-03-22 05:26:15.379129
3584	Khánh Hòa	34	241	2025-03-22 05:26:15.383764	2025-03-22 05:26:15.383764
3585	Lâm Đồng	35	241	2025-03-22 05:26:15.388879	2025-03-22 05:26:15.388879
3586	Ninh Thuận	36	241	2025-03-22 05:26:15.39357	2025-03-22 05:26:15.39357
3587	Tây Ninh	37	241	2025-03-22 05:26:15.398861	2025-03-22 05:26:15.398861
3588	Đồng Nai	39	241	2025-03-22 05:26:15.40398	2025-03-22 05:26:15.40398
3589	Bình Thuận	40	241	2025-03-22 05:26:15.408982	2025-03-22 05:26:15.408982
3590	Long An	41	241	2025-03-22 05:26:15.413809	2025-03-22 05:26:15.413809
3591	Bà Rịa-Vũng Tàu	43	241	2025-03-22 05:26:15.418156	2025-03-22 05:26:15.418156
3592	An Giang	44	241	2025-03-22 05:26:15.423144	2025-03-22 05:26:15.423144
3593	Đồng Tháp	45	241	2025-03-22 05:26:15.427473	2025-03-22 05:26:15.427473
3594	Tiền Giang	46	241	2025-03-22 05:26:15.43214	2025-03-22 05:26:15.43214
3595	Kiên Giang	47	241	2025-03-22 05:26:15.437376	2025-03-22 05:26:15.437376
3596	Vĩnh Long	49	241	2025-03-22 05:26:15.441593	2025-03-22 05:26:15.441593
3597	Bến Tre	50	241	2025-03-22 05:26:15.446409	2025-03-22 05:26:15.446409
3598	Trà Vinh	51	241	2025-03-22 05:26:15.450978	2025-03-22 05:26:15.450978
3599	Sóc Trăng	52	241	2025-03-22 05:26:15.45521	2025-03-22 05:26:15.45521
3600	Bắc Kạn	53	241	2025-03-22 05:26:15.45941	2025-03-22 05:26:15.45941
3601	Bắc Giang	54	241	2025-03-22 05:26:15.463715	2025-03-22 05:26:15.463715
3602	Bạc Liêu	55	241	2025-03-22 05:26:15.46791	2025-03-22 05:26:15.46791
3603	Bắc Ninh	56	241	2025-03-22 05:26:15.472227	2025-03-22 05:26:15.472227
3604	Bình Dương	57	241	2025-03-22 05:26:15.476339	2025-03-22 05:26:15.476339
3605	Bình Phước	58	241	2025-03-22 05:26:15.480413	2025-03-22 05:26:15.480413
3606	Cà Mau	59	241	2025-03-22 05:26:15.484719	2025-03-22 05:26:15.484719
3607	Hải Duong	61	241	2025-03-22 05:26:15.489676	2025-03-22 05:26:15.489676
3608	Hà Nam	63	241	2025-03-22 05:26:15.49608	2025-03-22 05:26:15.49608
3609	Hưng Yên	66	241	2025-03-22 05:26:15.500601	2025-03-22 05:26:15.500601
3610	Nam Định	67	241	2025-03-22 05:26:15.506154	2025-03-22 05:26:15.506154
3611	Phú Thọ	68	241	2025-03-22 05:26:15.511129	2025-03-22 05:26:15.511129
3612	Thái Nguyên	69	241	2025-03-22 05:26:15.51554	2025-03-22 05:26:15.51554
3613	Vĩnh Phúc	70	241	2025-03-22 05:26:15.520575	2025-03-22 05:26:15.520575
3614	Điện Biên	71	241	2025-03-22 05:26:15.525288	2025-03-22 05:26:15.525288
3615	Đắk Nông	72	241	2025-03-22 05:26:15.530693	2025-03-22 05:26:15.530693
3616	Hậu Giang	73	241	2025-03-22 05:26:15.535413	2025-03-22 05:26:15.535413
3617	Cần Thơ	CT	241	2025-03-22 05:26:15.540356	2025-03-22 05:26:15.540356
3618	Đà Nẵng	DN	241	2025-03-22 05:26:15.545021	2025-03-22 05:26:15.545021
3619	Hà Nội	HN	241	2025-03-22 05:26:15.549891	2025-03-22 05:26:15.549891
3620	Hải Phòng	HP	241	2025-03-22 05:26:15.554358	2025-03-22 05:26:15.554358
3621	Hồ Chí Minh [Sài Gòn]	SG	241	2025-03-22 05:26:15.55911	2025-03-22 05:26:15.55911
3622	Malampa	MAP	242	2025-03-22 05:26:15.563861	2025-03-22 05:26:15.563861
3623	Pénama	PAM	242	2025-03-22 05:26:15.568606	2025-03-22 05:26:15.568606
3624	Sanma	SAM	242	2025-03-22 05:26:15.574027	2025-03-22 05:26:15.574027
3625	Shéfa	SEE	242	2025-03-22 05:26:15.578592	2025-03-22 05:26:15.578592
3626	Taféa	TAE	242	2025-03-22 05:26:15.583386	2025-03-22 05:26:15.583386
3627	Torba	TOB	242	2025-03-22 05:26:15.5875	2025-03-22 05:26:15.5875
3628	A'ana	AA	244	2025-03-22 05:26:15.592063	2025-03-22 05:26:15.592063
3629	Aiga-i-le-Tai	AL	244	2025-03-22 05:26:15.597135	2025-03-22 05:26:15.597135
3630	Atua	AT	244	2025-03-22 05:26:15.601345	2025-03-22 05:26:15.601345
3631	Fa'asaleleaga	FA	244	2025-03-22 05:26:15.605465	2025-03-22 05:26:15.605465
3632	Gaga'emauga	GE	244	2025-03-22 05:26:15.609662	2025-03-22 05:26:15.609662
3633	Gagaifomauga	GI	244	2025-03-22 05:26:15.613854	2025-03-22 05:26:15.613854
3634	Palauli	PA	244	2025-03-22 05:26:15.618046	2025-03-22 05:26:15.618046
3635	Satupa'itea	SA	244	2025-03-22 05:26:15.62286	2025-03-22 05:26:15.62286
3636	Tuamasaga	TU	244	2025-03-22 05:26:15.627217	2025-03-22 05:26:15.627217
3637	Va'a-o-Fonoti	VF	244	2025-03-22 05:26:15.631392	2025-03-22 05:26:15.631392
3638	Vaisigano	VS	244	2025-03-22 05:26:15.635604	2025-03-22 05:26:15.635604
3639	Abyān	AB	245	2025-03-22 05:26:15.640202	2025-03-22 05:26:15.640202
3640	'Adan	AD	245	2025-03-22 05:26:15.644621	2025-03-22 05:26:15.644621
3641	'Amrān	AM	245	2025-03-22 05:26:15.648911	2025-03-22 05:26:15.648911
3642	Al Bayḑā'	BA	245	2025-03-22 05:26:15.655114	2025-03-22 05:26:15.655114
3643	Aḑ Ḑāli‘	DA	245	2025-03-22 05:26:15.659438	2025-03-22 05:26:15.659438
3644	Dhamār	DH	245	2025-03-22 05:26:15.664845	2025-03-22 05:26:15.664845
3645	Ḩaḑramawt	HD	245	2025-03-22 05:26:15.669083	2025-03-22 05:26:15.669083
3646	Ḩajjah	HJ	245	2025-03-22 05:26:15.674808	2025-03-22 05:26:15.674808
3647	Ibb	IB	245	2025-03-22 05:26:15.679554	2025-03-22 05:26:15.679554
3648	Al Jawf	JA	245	2025-03-22 05:26:15.684075	2025-03-22 05:26:15.684075
3649	Laḩij	LA	245	2025-03-22 05:26:15.689174	2025-03-22 05:26:15.689174
3650	Ma'rib	MA	245	2025-03-22 05:26:15.693738	2025-03-22 05:26:15.693738
3651	Al Mahrah	MR	245	2025-03-22 05:26:15.698668	2025-03-22 05:26:15.698668
3652	Al Ḩudaydah	MU	245	2025-03-22 05:26:15.703938	2025-03-22 05:26:15.703938
3653	Al Maḩwīt	MW	245	2025-03-22 05:26:15.709447	2025-03-22 05:26:15.709447
3654	Raymah	RA	245	2025-03-22 05:26:15.713847	2025-03-22 05:26:15.713847
3655	Şa'dah	SD	245	2025-03-22 05:26:15.718402	2025-03-22 05:26:15.718402
3656	Shabwah	SH	245	2025-03-22 05:26:15.72267	2025-03-22 05:26:15.72267
3657	Şan'ā'	SN	245	2025-03-22 05:26:15.727147	2025-03-22 05:26:15.727147
3658	Tā'izz	TA	245	2025-03-22 05:26:15.731415	2025-03-22 05:26:15.731415
3659	Eastern Cape	EC	247	2025-03-22 05:26:15.736312	2025-03-22 05:26:15.736312
3660	Free State	FS	247	2025-03-22 05:26:15.740641	2025-03-22 05:26:15.740641
3661	Gauteng	GT	247	2025-03-22 05:26:15.744862	2025-03-22 05:26:15.744862
3662	Limpopo	LP	247	2025-03-22 05:26:15.749778	2025-03-22 05:26:15.749778
3663	Mpumalanga	MP	247	2025-03-22 05:26:15.754246	2025-03-22 05:26:15.754246
3664	Northern Cape	NC	247	2025-03-22 05:26:15.759008	2025-03-22 05:26:15.759008
3665	Kwazulu-Natal	NL	247	2025-03-22 05:26:15.763264	2025-03-22 05:26:15.763264
3666	North-West (South Africa)	NW	247	2025-03-22 05:26:15.768319	2025-03-22 05:26:15.768319
3667	Western Cape	WC	247	2025-03-22 05:26:15.773151	2025-03-22 05:26:15.773151
3668	Western	01	248	2025-03-22 05:26:15.777574	2025-03-22 05:26:15.777574
3669	Central	02	248	2025-03-22 05:26:15.781777	2025-03-22 05:26:15.781777
3670	Eastern	03	248	2025-03-22 05:26:15.786406	2025-03-22 05:26:15.786406
3671	Luapula	04	248	2025-03-22 05:26:15.792942	2025-03-22 05:26:15.792942
3672	Northern	05	248	2025-03-22 05:26:15.797314	2025-03-22 05:26:15.797314
3673	North-Western	06	248	2025-03-22 05:26:15.80152	2025-03-22 05:26:15.80152
3674	Southern (Zambia)	07	248	2025-03-22 05:26:15.805919	2025-03-22 05:26:15.805919
3675	Copperbelt	08	248	2025-03-22 05:26:15.810247	2025-03-22 05:26:15.810247
3676	Lusaka	09	248	2025-03-22 05:26:15.815892	2025-03-22 05:26:15.815892
3677	Bulawayo	BU	249	2025-03-22 05:26:15.820546	2025-03-22 05:26:15.820546
3678	Harare	HA	249	2025-03-22 05:26:15.825441	2025-03-22 05:26:15.825441
3679	Manicaland	MA	249	2025-03-22 05:26:15.829743	2025-03-22 05:26:15.829743
3680	Mashonaland Central	MC	249	2025-03-22 05:26:15.834454	2025-03-22 05:26:15.834454
3681	Mashonaland East	ME	249	2025-03-22 05:26:15.838703	2025-03-22 05:26:15.838703
3682	Midlands	MI	249	2025-03-22 05:26:15.843838	2025-03-22 05:26:15.843838
3683	Matabeleland North	MN	249	2025-03-22 05:26:15.848139	2025-03-22 05:26:15.848139
3684	Matabeleland South	MS	249	2025-03-22 05:26:15.852886	2025-03-22 05:26:15.852886
3685	Masvingo	MV	249	2025-03-22 05:26:15.857319	2025-03-22 05:26:15.857319
3686	Mashonaland West	MW	249	2025-03-22 05:26:15.862642	2025-03-22 05:26:15.862642
\.


--
-- TOC entry 6024 (class 0 OID 187430)
-- Dependencies: 354
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) FROM stdin;
2	1	2	10	2025-03-22 05:28:21.22862	2025-03-22 05:28:25.804523	t	\N
3	1	3	10	2025-03-22 05:28:21.29682	2025-03-22 05:28:25.839538	t	\N
4	1	4	10	2025-03-22 05:28:21.356533	2025-03-22 05:28:25.870114	t	\N
5	1	5	10	2025-03-22 05:28:21.4192	2025-03-22 05:28:25.897409	t	\N
6	1	6	10	2025-03-22 05:28:21.477392	2025-03-22 05:28:25.926699	t	\N
7	1	7	10	2025-03-22 05:28:21.538253	2025-03-22 05:28:25.95575	t	\N
8	1	8	10	2025-03-22 05:28:21.596068	2025-03-22 05:28:25.983083	t	\N
9	1	9	10	2025-03-22 05:28:21.656652	2025-03-22 05:28:26.013233	t	\N
10	1	10	10	2025-03-22 05:28:21.715807	2025-03-22 05:28:26.04035	t	\N
11	1	11	10	2025-03-22 05:28:21.774114	2025-03-22 05:28:26.074644	t	\N
13	1	13	10	2025-03-22 05:28:24.098744	2025-03-22 05:28:26.13592	t	\N
14	1	14	10	2025-03-22 05:28:24.150858	2025-03-22 05:28:26.166963	t	\N
15	1	15	10	2025-03-22 05:28:24.184983	2025-03-22 05:28:26.196329	t	\N
16	1	16	10	2025-03-22 05:28:24.220912	2025-03-22 05:28:26.227609	t	\N
17	1	17	10	2025-03-22 05:28:24.254378	2025-03-22 05:28:26.256311	t	\N
18	1	18	10	2025-03-22 05:28:24.289572	2025-03-22 05:28:26.286354	t	\N
19	1	19	10	2025-03-22 05:28:24.325507	2025-03-22 05:28:26.317122	t	\N
20	1	20	10	2025-03-22 05:28:24.360447	2025-03-22 05:28:26.348357	t	\N
21	1	21	10	2025-03-22 05:28:24.397096	2025-03-22 05:28:26.378072	t	\N
22	1	22	10	2025-03-22 05:28:24.43854	2025-03-22 05:28:26.406979	t	\N
23	1	23	10	2025-03-22 05:28:24.471943	2025-03-22 05:28:26.439475	t	\N
24	1	24	10	2025-03-22 05:28:24.512562	2025-03-22 05:28:26.468407	t	\N
25	1	25	10	2025-03-22 05:28:24.550656	2025-03-22 05:28:26.498916	t	\N
26	1	26	10	2025-03-22 05:28:24.583131	2025-03-22 05:28:26.527777	t	\N
27	1	27	10	2025-03-22 05:28:24.623313	2025-03-22 05:28:26.554751	t	\N
28	1	28	10	2025-03-22 05:28:24.662226	2025-03-22 05:28:26.586353	t	\N
29	1	29	10	2025-03-22 05:28:24.696137	2025-03-22 05:28:26.615422	t	\N
30	1	30	10	2025-03-22 05:28:24.731226	2025-03-22 05:28:26.646333	t	\N
31	1	31	10	2025-03-22 05:28:24.76929	2025-03-22 05:28:26.675404	t	\N
32	1	32	10	2025-03-22 05:28:24.809736	2025-03-22 05:28:26.704252	t	\N
33	1	33	10	2025-03-22 05:28:24.84287	2025-03-22 05:28:26.734414	t	\N
34	1	34	10	2025-03-22 05:28:24.876636	2025-03-22 05:28:26.761951	t	\N
35	1	35	10	2025-03-22 05:28:24.909949	2025-03-22 05:28:26.793837	t	\N
36	1	36	10	2025-03-22 05:28:24.942792	2025-03-22 05:28:26.821757	t	\N
37	1	37	10	2025-03-22 05:28:24.977095	2025-03-22 05:28:26.852971	t	\N
38	1	38	10	2025-03-22 05:28:25.010775	2025-03-22 05:28:26.881158	t	\N
39	1	39	10	2025-03-22 05:28:25.043681	2025-03-22 05:28:26.911223	t	\N
40	1	40	10	2025-03-22 05:28:25.079528	2025-03-22 05:28:26.939315	t	\N
41	1	41	10	2025-03-22 05:28:25.113959	2025-03-22 05:28:26.968967	t	\N
42	1	42	10	2025-03-22 05:28:25.152969	2025-03-22 05:28:26.999532	t	\N
43	1	43	10	2025-03-22 05:28:25.187611	2025-03-22 05:28:27.023213	t	\N
44	1	44	10	2025-03-22 05:28:25.217167	2025-03-22 05:28:27.050147	t	\N
45	1	45	10	2025-03-22 05:28:25.24598	2025-03-22 05:28:27.075558	t	\N
46	1	46	10	2025-03-22 05:28:25.276226	2025-03-22 05:28:27.101273	t	\N
47	1	47	10	2025-03-22 05:28:25.306831	2025-03-22 05:28:27.126916	t	\N
48	1	48	10	2025-03-22 05:28:25.335073	2025-03-22 05:28:27.152235	t	\N
49	1	49	10	2025-03-22 05:28:25.365585	2025-03-22 05:28:27.178233	t	\N
50	1	50	10	2025-03-22 05:28:25.393909	2025-03-22 05:28:27.202386	t	\N
51	1	51	10	2025-03-22 05:28:25.423542	2025-03-22 05:28:27.289755	t	\N
1	1	1	9	2025-03-22 05:28:20.928342	2025-03-22 05:28:51.790137	t	\N
12	1	12	10	2025-03-22 05:28:21.831116	2025-03-22 05:28:57.370795	t	\N
\.


--
-- TOC entry 6026 (class 0 OID 187443)
-- Dependencies: 356
-- Data for Name: spree_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_locations (id, name, created_at, updated_at, "default", address1, address2, city, state_id, state_name, country_id, zipcode, phone, active, backorderable_default, propagate_all_variants, admin_name, "position", restock_inventory, fulfillable, code, check_stock_on_transfer) FROM stdin;
1	default	2025-03-22 05:26:15.912481	2025-03-22 05:26:15.912481	f	\N	\N	\N	\N	\N	\N	\N	\N	t	t	t	\N	1	t	t	\N	t
\.


--
-- TOC entry 6028 (class 0 OID 187462)
-- Dependencies: 358
-- Data for Name: spree_stock_movements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_movements (id, stock_item_id, quantity, action, created_at, updated_at, originator_type, originator_id) FROM stdin;
1	1	10	\N	2025-03-22 05:28:25.676828	2025-03-22 05:28:25.676828	\N	\N
2	2	10	\N	2025-03-22 05:28:25.791163	2025-03-22 05:28:25.791163	\N	\N
3	3	10	\N	2025-03-22 05:28:25.825774	2025-03-22 05:28:25.825774	\N	\N
4	4	10	\N	2025-03-22 05:28:25.857339	2025-03-22 05:28:25.857339	\N	\N
5	5	10	\N	2025-03-22 05:28:25.880594	2025-03-22 05:28:25.880594	\N	\N
6	6	10	\N	2025-03-22 05:28:25.914038	2025-03-22 05:28:25.914038	\N	\N
7	7	10	\N	2025-03-22 05:28:25.942903	2025-03-22 05:28:25.942903	\N	\N
8	8	10	\N	2025-03-22 05:28:25.966493	2025-03-22 05:28:25.966493	\N	\N
9	9	10	\N	2025-03-22 05:28:26.000581	2025-03-22 05:28:26.000581	\N	\N
10	10	10	\N	2025-03-22 05:28:26.028203	2025-03-22 05:28:26.028203	\N	\N
11	11	10	\N	2025-03-22 05:28:26.061873	2025-03-22 05:28:26.061873	\N	\N
12	12	10	\N	2025-03-22 05:28:26.091675	2025-03-22 05:28:26.091675	\N	\N
13	13	10	\N	2025-03-22 05:28:26.121015	2025-03-22 05:28:26.121015	\N	\N
14	14	10	\N	2025-03-22 05:28:26.152916	2025-03-22 05:28:26.152916	\N	\N
15	15	10	\N	2025-03-22 05:28:26.184363	2025-03-22 05:28:26.184363	\N	\N
16	16	10	\N	2025-03-22 05:28:26.214765	2025-03-22 05:28:26.214765	\N	\N
17	17	10	\N	2025-03-22 05:28:26.244156	2025-03-22 05:28:26.244156	\N	\N
18	18	10	\N	2025-03-22 05:28:26.27165	2025-03-22 05:28:26.27165	\N	\N
19	19	10	\N	2025-03-22 05:28:26.303473	2025-03-22 05:28:26.303473	\N	\N
20	20	10	\N	2025-03-22 05:28:26.334093	2025-03-22 05:28:26.334093	\N	\N
21	21	10	\N	2025-03-22 05:28:26.365322	2025-03-22 05:28:26.365322	\N	\N
22	22	10	\N	2025-03-22 05:28:26.394612	2025-03-22 05:28:26.394612	\N	\N
23	23	10	\N	2025-03-22 05:28:26.42616	2025-03-22 05:28:26.42616	\N	\N
24	24	10	\N	2025-03-22 05:28:26.455641	2025-03-22 05:28:26.455641	\N	\N
25	25	10	\N	2025-03-22 05:28:26.484202	2025-03-22 05:28:26.484202	\N	\N
26	26	10	\N	2025-03-22 05:28:26.515235	2025-03-22 05:28:26.515235	\N	\N
27	27	10	\N	2025-03-22 05:28:26.543068	2025-03-22 05:28:26.543068	\N	\N
28	28	10	\N	2025-03-22 05:28:26.574158	2025-03-22 05:28:26.574158	\N	\N
29	29	10	\N	2025-03-22 05:28:26.602754	2025-03-22 05:28:26.602754	\N	\N
30	30	10	\N	2025-03-22 05:28:26.633549	2025-03-22 05:28:26.633549	\N	\N
31	31	10	\N	2025-03-22 05:28:26.662276	2025-03-22 05:28:26.662276	\N	\N
32	32	10	\N	2025-03-22 05:28:26.690673	2025-03-22 05:28:26.690673	\N	\N
33	33	10	\N	2025-03-22 05:28:26.720521	2025-03-22 05:28:26.720521	\N	\N
34	34	10	\N	2025-03-22 05:28:26.750561	2025-03-22 05:28:26.750561	\N	\N
35	35	10	\N	2025-03-22 05:28:26.780181	2025-03-22 05:28:26.780181	\N	\N
36	36	10	\N	2025-03-22 05:28:26.809726	2025-03-22 05:28:26.809726	\N	\N
37	37	10	\N	2025-03-22 05:28:26.840113	2025-03-22 05:28:26.840113	\N	\N
38	38	10	\N	2025-03-22 05:28:26.868141	2025-03-22 05:28:26.868141	\N	\N
39	39	10	\N	2025-03-22 05:28:26.897065	2025-03-22 05:28:26.897065	\N	\N
40	40	10	\N	2025-03-22 05:28:26.926865	2025-03-22 05:28:26.926865	\N	\N
41	41	10	\N	2025-03-22 05:28:26.954977	2025-03-22 05:28:26.954977	\N	\N
42	42	10	\N	2025-03-22 05:28:26.987201	2025-03-22 05:28:26.987201	\N	\N
43	43	10	\N	2025-03-22 05:28:27.011192	2025-03-22 05:28:27.011192	\N	\N
44	44	10	\N	2025-03-22 05:28:27.036313	2025-03-22 05:28:27.036313	\N	\N
45	45	10	\N	2025-03-22 05:28:27.063193	2025-03-22 05:28:27.063193	\N	\N
46	46	10	\N	2025-03-22 05:28:27.087355	2025-03-22 05:28:27.087355	\N	\N
47	47	10	\N	2025-03-22 05:28:27.113862	2025-03-22 05:28:27.113862	\N	\N
48	48	10	\N	2025-03-22 05:28:27.139558	2025-03-22 05:28:27.139558	\N	\N
49	49	10	\N	2025-03-22 05:28:27.163303	2025-03-22 05:28:27.163303	\N	\N
50	50	10	\N	2025-03-22 05:28:27.190105	2025-03-22 05:28:27.190105	\N	\N
51	51	10	\N	2025-03-22 05:28:27.255899	2025-03-22 05:28:27.255899	\N	\N
52	1	-1	\N	2025-03-22 05:28:51.762923	2025-03-22 05:28:51.762923	Spree::Shipment	1
53	12	-1	\N	2025-03-22 05:28:53.980714	2025-03-22 05:28:53.980714	Spree::Shipment	2
54	12	1	\N	2025-03-22 05:28:57.355127	2025-03-22 05:28:57.355127	Spree::CustomerReturn	1
\.


--
-- TOC entry 6030 (class 0 OID 187473)
-- Dependencies: 360
-- Data for Name: spree_store_credit_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_categories (id, name, created_at, updated_at) FROM stdin;
1	Gift Card	2025-03-22 05:25:54.981089	2025-03-22 05:25:54.981089
2	Reimbursement	2025-03-22 05:25:54.985741	2025-03-22 05:25:54.985741
\.


--
-- TOC entry 6032 (class 0 OID 187482)
-- Dependencies: 362
-- Data for Name: spree_store_credit_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_events (id, store_credit_id, action, amount, user_total_amount, authorization_code, deleted_at, originator_type, originator_id, created_at, updated_at, amount_remaining, store_credit_reason_id) FROM stdin;
\.


--
-- TOC entry 6078 (class 0 OID 187785)
-- Dependencies: 408
-- Data for Name: spree_store_credit_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_reasons (id, name, active, created_at, updated_at) FROM stdin;
1	Credit Given In Error	t	2025-03-22 05:25:55.018229	2025-03-22 05:25:55.018229
\.


--
-- TOC entry 6034 (class 0 OID 187494)
-- Dependencies: 364
-- Data for Name: spree_store_credit_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_types (id, name, priority, created_at, updated_at) FROM stdin;
1	Expiring	1	2025-03-22 05:25:54.895761	2025-03-22 05:25:54.895761
2	Non-expiring	2	2025-03-22 05:25:54.900622	2025-03-22 05:25:54.900622
\.


--
-- TOC entry 6036 (class 0 OID 187513)
-- Dependencies: 366
-- Data for Name: spree_store_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credits (id, user_id, category_id, created_by_id, amount, amount_used, amount_authorized, currency, memo, deleted_at, created_at, updated_at, type_id, invalidated_at) FROM stdin;
\.


--
-- TOC entry 6038 (class 0 OID 187528)
-- Dependencies: 368
-- Data for Name: spree_store_payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_payment_methods (id, store_id, payment_method_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6076 (class 0 OID 187771)
-- Dependencies: 406
-- Data for Name: spree_store_shipping_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_shipping_methods (id, store_id, shipping_method_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6040 (class 0 OID 187537)
-- Dependencies: 370
-- Data for Name: spree_stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stores (id, name, url, meta_description, meta_keywords, seo_title, mail_from_address, default_currency, code, "default", created_at, updated_at, cart_tax_country_iso, available_locales, bcc_email) FROM stdin;
1	Sample Store	example.com	\N	\N	\N	store@example.com	\N	sample-store	t	2025-03-22 05:25:54.803439	2025-03-22 05:25:54.803439	\N	\N	\N
\.


--
-- TOC entry 6042 (class 0 OID 187549)
-- Dependencies: 372
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_categories (id, name, description, is_default, deleted_at, created_at, updated_at, tax_code) FROM stdin;
1	Default	\N	f	\N	2025-03-22 05:23:18.480896	2025-03-22 05:23:18.480896	\N
\.


--
-- TOC entry 6072 (class 0 OID 187741)
-- Dependencies: 402
-- Data for Name: spree_tax_rate_tax_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_rate_tax_categories (id, tax_category_id, tax_rate_id) FROM stdin;
1	1	1
\.


--
-- TOC entry 6044 (class 0 OID 187559)
-- Dependencies: 374
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_rates (id, amount, zone_id, included_in_price, created_at, updated_at, name, show_rate_in_label, deleted_at, starts_at, expires_at, level) FROM stdin;
1	0.05000	2	f	2025-03-22 05:28:20.273125	2025-03-22 05:28:20.273125	North America	t	\N	\N	\N	0
\.


--
-- TOC entry 6046 (class 0 OID 187573)
-- Dependencies: 376
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxonomies (id, name, created_at, updated_at, "position") FROM stdin;
2	Brand	2025-03-22 05:28:22.214335	2025-03-22 05:28:22.246297	2
1	Categories	2025-03-22 05:28:21.890821	2025-03-22 05:28:57.462079	1
\.


--
-- TOC entry 6048 (class 0 OID 187584)
-- Dependencies: 378
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxons (id, parent_id, name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth) FROM stdin;
2	\N	Brand	brand	2	19	20	\N	\N	\N	\N	\N	2025-03-22 05:28:22.223816	2025-03-22 05:28:22.771416	\N	\N	\N	0
6	3	Caps	categories/clothing/caps	1	3	4	\N	\N	\N	\N	\N	2025-03-22 05:28:22.43192	2025-03-22 05:28:57.459742	\N	\N	\N	2
3	1	Clothing	categories/clothing	1	2	9	\N	\N	\N	\N	\N	2025-03-22 05:28:22.269977	2025-03-22 05:28:57.459742	\N	\N	\N	1
1	\N	Categories	categories	1	1	18	\N	\N	\N	\N	\N	2025-03-22 05:28:22.185667	2025-03-22 05:28:57.459742	\N	\N	\N	0
8	4	Water Bottles	categories/accessories/water-bottles	1	13	14	\N	\N	\N	\N	\N	2025-03-22 05:28:22.590476	2025-03-22 05:28:51.845216	\N	\N	\N	2
10	3	Hoodies	categories/clothing/hoodies	1	7	8	\N	\N	\N	\N	\N	2025-03-22 05:28:22.75783	2025-03-22 05:28:54.067697	\N	\N	\N	2
5	1	Stickers	categories/stickers	1	16	17	\N	\N	\N	\N	\N	2025-03-22 05:28:22.360164	2025-03-22 05:28:54.199518	\N	\N	\N	1
9	3	T-Shirts	categories/clothing/t-shirts	1	5	6	\N	\N	\N	\N	\N	2025-03-22 05:28:22.671856	2025-03-22 05:28:55.206433	\N	\N	\N	2
7	4	Totes	categories/accessories/totes	1	11	12	\N	\N	\N	\N	\N	2025-03-22 05:28:22.517274	2025-03-22 05:28:56.566845	\N	\N	\N	2
4	1	Accessories	categories/accessories	1	10	15	\N	\N	\N	\N	\N	2025-03-22 05:28:22.308551	2025-03-22 05:28:56.566845	\N	\N	\N	1
\.


--
-- TOC entry 6050 (class 0 OID 187598)
-- Dependencies: 380
-- Data for Name: spree_unit_cancels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_unit_cancels (id, inventory_unit_id, reason, created_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6052 (class 0 OID 187608)
-- Dependencies: 382
-- Data for Name: spree_user_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_user_addresses (id, user_id, address_id, "default", archived, created_at, updated_at, default_billing) FROM stdin;
\.


--
-- TOC entry 6054 (class 0 OID 187620)
-- Dependencies: 384
-- Data for Name: spree_user_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_user_stock_locations (id, user_id, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5898 (class 0 OID 186711)
-- Dependencies: 228
-- Data for Name: spree_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_users (id, encrypted_password, password_salt, email, remember_token, persistence_token, reset_password_token, perishable_token, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, login, ship_address_id, bill_address_id, created_at, updated_at, spree_api_key, authentication_token, unlock_token, locked_at, remember_created_at, reset_password_sent_at, deleted_at, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email) FROM stdin;
1	00bfd976eed315473deba987331b2563a53e3e1cfb4b7b4b66e02a281772fb6bd9a4a2a190f49c0da897db360c78ed90f95eabf30c8fed4f3c034e4b5aca12a8	AHxiFs1oJN2XmgA-3xHZ	admin@example.com	LrLuvM_hxx-XLngoSqCG	\N	\N	\N	1	0	\N	2025-03-22 05:40:00.334369	2025-03-22 05:40:00.334369	::1	::1	admin@example.com	\N	\N	2025-03-22 05:26:16.480603	2025-03-22 05:40:00.334512	0bbd7918267538b83ded9b3869b38b487abd17e5c329f4e8	\N	\N	\N	2025-03-22 05:40:00.324375	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 6056 (class 0 OID 187628)
-- Dependencies: 386
-- Data for Name: spree_variant_property_rule_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rule_conditions (id, option_value_id, variant_property_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6058 (class 0 OID 187636)
-- Dependencies: 388
-- Data for Name: spree_variant_property_rule_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rule_values (id, value, "position", property_id, variant_property_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6060 (class 0 OID 187648)
-- Dependencies: 390
-- Data for Name: spree_variant_property_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rules (id, product_id, created_at, updated_at, apply_to_all) FROM stdin;
\.


--
-- TOC entry 6062 (class 0 OID 187656)
-- Dependencies: 392
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, created_at, shipping_category_id) FROM stdin;
46	SOL-HD015	0.00	\N	\N	\N	\N	f	4	27.00	6	USD	t	\N	2025-03-22 05:28:27.10299	2025-03-22 05:28:25.263359	\N
10	RUB-MG01	0.50	20.00	10.00	5.00	\N	t	10	7.00	1	USD	t	\N	2025-03-22 05:28:55.185912	2025-03-22 05:28:21.704553	\N
47	SOL-HD016	0.00	\N	\N	\N	\N	f	4	27.00	7	USD	t	\N	2025-03-22 05:28:27.128518	2025-03-22 05:28:25.293628	\N
40	SOL-HD009	0.00	\N	\N	\N	\N	f	12	27.00	11	USD	t	\N	2025-03-22 05:28:50.310414	2025-03-22 05:28:25.065836	\N
11	SOL-TTE99	0.50	20.00	10.00	5.00	\N	t	11	19.00	1	USD	t	\N	2025-03-22 05:28:56.518271	2025-03-22 05:28:21.761872	\N
48	SOL-HD017	0.00	\N	\N	\N	\N	f	4	27.00	8	USD	t	\N	2025-03-22 05:28:27.153874	2025-03-22 05:28:25.321412	\N
12	SOL-CAP99	0.50	20.00	10.00	5.00	\N	t	12	24.00	1	USD	t	\N	2025-03-22 05:28:57.373251	2025-03-22 05:28:21.820942	\N
49	SOL-HD018	0.00	\N	\N	\N	\N	f	4	27.00	9	USD	t	\N	2025-03-22 05:28:27.180037	2025-03-22 05:28:25.351914	\N
20	SOL-HOODIE-03	0.00	\N	\N	\N	\N	f	3	17.00	9	USD	t	\N	2025-03-22 05:28:35.99443	2025-03-22 05:28:24.347483	\N
50	SOL-HD019	0.00	\N	\N	\N	\N	f	4	27.00	10	USD	t	\N	2025-03-22 05:28:27.20639	2025-03-22 05:28:25.380421	\N
18	SOL-HOODIE-02	0.00	\N	\N	\N	\N	f	3	17.00	7	USD	t	\N	2025-03-22 05:28:33.403776	2025-03-22 05:28:24.275724	\N
51	SOL-HD020	0.00	\N	\N	\N	\N	f	4	27.00	11	USD	t	\N	2025-03-22 05:28:27.29254	2025-03-22 05:28:25.408549	\N
35	SOL-HD005	0.00	\N	\N	\N	\N	f	12	27.00	6	USD	t	\N	2025-03-22 05:28:43.362669	2025-03-22 05:28:24.896584	\N
27	SOL-0011	0.00	\N	\N	\N	\N	f	1	17.00	2	USD	t	\N	2025-03-22 05:28:26.556343	2025-03-22 05:28:24.61029	\N
28	SOL-0012	0.00	\N	\N	\N	\N	f	1	17.00	3	USD	t	\N	2025-03-22 05:28:26.58811	2025-03-22 05:28:24.648909	\N
29	SOL-0013	0.00	\N	\N	\N	\N	f	1	17.00	4	USD	t	\N	2025-03-22 05:28:26.617592	2025-03-22 05:28:24.681266	\N
30	SOL-0014	0.00	\N	\N	\N	\N	f	1	17.00	5	USD	t	\N	2025-03-22 05:28:26.647946	2025-03-22 05:28:24.717474	\N
41	SOL-HD010	0.00	\N	\N	\N	\N	f	12	27.00	12	USD	t	\N	2025-03-22 05:28:50.516261	2025-03-22 05:28:25.100463	\N
32	SOL-HD002	0.00	\N	\N	\N	\N	f	12	27.00	3	USD	t	\N	2025-03-22 05:28:39.69594	2025-03-22 05:28:24.795674	\N
2	RUB-TOT01	0.50	20.00	10.00	5.00	\N	t	2	17.00	1	USD	t	\N	2025-03-22 05:28:51.593124	2025-03-22 05:28:21.216759	\N
31	SOL-HD001	0.00	\N	\N	\N	\N	f	12	27.00	2	USD	t	\N	2025-03-22 05:28:36.994672	2025-03-22 05:28:24.7573	\N
1	SOL-00001	0.50	20.00	10.00	5.00	\N	t	1	17.00	1	USD	t	\N	2025-03-22 05:28:51.798663	2025-03-22 05:28:20.848441	\N
3	SOL-HOODIE-00	1.00	20.00	10.00	5.00	\N	t	3	17.00	1	USD	t	\N	2025-03-22 05:28:53.993646	2025-03-22 05:28:21.276207	\N
36	SOL-HD045	0.00	\N	\N	\N	\N	f	12	27.00	7	USD	t	\N	2025-03-22 05:28:43.708447	2025-03-22 05:28:24.930422	\N
33	SOL-HD003	0.00	\N	\N	\N	\N	f	12	27.00	4	USD	t	\N	2025-03-22 05:28:39.868196	2025-03-22 05:28:24.830291	\N
5	SOL-MNH01	1.00	20.00	10.00	5.00	\N	t	5	27.00	1	USD	t	\N	2025-03-22 05:28:54.103194	2025-03-22 05:28:21.401611	\N
6	RUB-HDH01	0.80	20.00	10.00	5.00	\N	t	6	27.00	1	USD	t	\N	2025-03-22 05:28:54.150096	2025-03-22 05:28:21.466475	\N
4	SOL-LGH01	0.50	20.00	10.00	5.00	\N	t	4	27.00	1	USD	t	\N	2025-03-22 05:28:54.205282	2025-03-22 05:28:21.346408	\N
13	SOL-HOODIE-04	0.00	\N	\N	\N	\N	f	3	17.00	2	USD	t	\N	2025-03-22 05:28:32.181304	2025-03-22 05:28:24.084216	\N
14	SOL-HOODIE-05	0.00	\N	\N	\N	\N	f	3	17.00	3	USD	t	\N	2025-03-22 05:28:32.244658	2025-03-22 05:28:24.136319	\N
15	SOL-HOODIE-07	0.00	\N	\N	\N	\N	f	3	17.00	4	USD	t	\N	2025-03-22 05:28:32.253162	2025-03-22 05:28:24.170979	\N
16	SOL-HOODIE-06	0.00	\N	\N	\N	\N	f	3	17.00	5	USD	t	\N	2025-03-22 05:28:32.257618	2025-03-22 05:28:24.207809	\N
19	SOL-HOODIE-08	0.00	\N	\N	\N	\N	f	3	17.00	8	USD	t	\N	2025-03-22 05:28:35.892349	2025-03-22 05:28:24.312504	\N
37	SOL-HD006	0.00	\N	\N	\N	\N	f	12	27.00	8	USD	t	\N	2025-03-22 05:28:46.573829	2025-03-22 05:28:24.962285	\N
17	SOL-HOODIE-01	0.00	\N	\N	\N	\N	f	3	17.00	6	USD	t	\N	2025-03-22 05:28:32.659001	2025-03-22 05:28:24.241869	\N
34	SOL-HD004	0.00	\N	\N	\N	\N	f	12	27.00	5	USD	t	\N	2025-03-22 05:28:40.899653	2025-03-22 05:28:24.862064	\N
7	SOL-SNC01	0.50	20.00	10.00	5.00	\N	t	7	17.00	1	USD	t	\N	2025-03-22 05:28:54.298147	2025-03-22 05:28:21.52226	\N
8	RUB-SNC02	1.00	5.00	5.00	5.00	\N	t	8	17.00	1	USD	t	\N	2025-03-22 05:28:54.586992	2025-03-22 05:28:21.585944	\N
38	SOL-HD007	0.00	\N	\N	\N	\N	f	12	27.00	9	USD	t	\N	2025-03-22 05:28:46.751478	2025-03-22 05:28:24.997459	\N
9	SOL-MG01	0.50	20.00	10.00	5.00	\N	t	9	7.00	1	USD	t	\N	2025-03-22 05:28:55.102968	2025-03-22 05:28:21.641936	\N
39	SOL-HD008	0.00	\N	\N	\N	\N	f	12	27.00	10	USD	t	\N	2025-03-22 05:28:47.899488	2025-03-22 05:28:25.030372	\N
21	SOL-TEE-01	0.00	\N	\N	\N	\N	f	8	8.90	2	USD	t	\N	2025-03-22 05:28:26.379927	2025-03-22 05:28:24.384228	\N
22	SOL-TEE-02	0.00	\N	\N	\N	\N	f	8	9.90	3	USD	t	\N	2025-03-22 05:28:26.408638	2025-03-22 05:28:24.424988	\N
23	SOL-TEE-03	0.00	\N	\N	\N	\N	f	8	11.90	4	USD	t	\N	2025-03-22 05:28:26.441268	2025-03-22 05:28:24.459693	\N
24	SOL-0000	0.00	\N	\N	\N	\N	f	2	17.00	2	USD	t	\N	2025-03-22 05:28:26.470134	2025-03-22 05:28:24.498486	\N
25	SOL-0001	0.00	\N	\N	\N	\N	f	2	17.00	3	USD	t	\N	2025-03-22 05:28:26.500618	2025-03-22 05:28:24.537337	\N
26	SOL-0002	0.00	\N	\N	\N	\N	f	2	17.00	4	USD	t	\N	2025-03-22 05:28:26.529452	2025-03-22 05:28:24.570812	\N
42	SOL-HD011	0.00	\N	\N	\N	\N	f	4	27.00	2	USD	t	\N	2025-03-22 05:28:27.001197	2025-03-22 05:28:25.138002	\N
43	SOL-HD012	0.00	\N	\N	\N	\N	f	4	27.00	3	USD	t	\N	2025-03-22 05:28:27.02487	2025-03-22 05:28:25.174398	\N
44	SOL-HD013	0.00	\N	\N	\N	\N	f	4	27.00	4	USD	t	\N	2025-03-22 05:28:27.0518	2025-03-22 05:28:25.203375	\N
45	SOL-HD014	0.00	\N	\N	\N	\N	f	4	27.00	5	USD	t	\N	2025-03-22 05:28:27.077263	2025-03-22 05:28:25.231684	\N
\.


--
-- TOC entry 6068 (class 0 OID 187696)
-- Dependencies: 398
-- Data for Name: spree_wallet_payment_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_wallet_payment_sources (id, user_id, payment_source_type, payment_source_id, "default", created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6064 (class 0 OID 187674)
-- Dependencies: 394
-- Data for Name: spree_zone_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zone_members (id, zoneable_type, zoneable_id, zone_id, created_at, updated_at) FROM stdin;
1	Spree::Country	179	1	2025-03-22 05:26:16.085631	2025-03-22 05:26:16.085631
2	Spree::Country	70	1	2025-03-22 05:26:16.095927	2025-03-22 05:26:16.095927
3	Spree::Country	184	1	2025-03-22 05:26:16.103828	2025-03-22 05:26:16.103828
4	Spree::Country	189	1	2025-03-22 05:26:16.111807	2025-03-22 05:26:16.111807
5	Spree::Country	57	1	2025-03-22 05:26:16.119253	2025-03-22 05:26:16.119253
6	Spree::Country	75	1	2025-03-22 05:26:16.131108	2025-03-22 05:26:16.131108
7	Spree::Country	202	1	2025-03-22 05:26:16.139925	2025-03-22 05:26:16.139925
8	Spree::Country	100	1	2025-03-22 05:26:16.148057	2025-03-22 05:26:16.148057
9	Spree::Country	200	1	2025-03-22 05:26:16.156201	2025-03-22 05:26:16.156201
10	Spree::Country	102	1	2025-03-22 05:26:16.164792	2025-03-22 05:26:16.164792
11	Spree::Country	12	1	2025-03-22 05:26:16.172601	2025-03-22 05:26:16.172601
12	Spree::Country	68	1	2025-03-22 05:26:16.185428	2025-03-22 05:26:16.185428
13	Spree::Country	110	1	2025-03-22 05:26:16.193316	2025-03-22 05:26:16.193316
14	Spree::Country	20	1	2025-03-22 05:26:16.201228	2025-03-22 05:26:16.201228
15	Spree::Country	197	1	2025-03-22 05:26:16.209072	2025-03-22 05:26:16.209072
16	Spree::Country	135	1	2025-03-22 05:26:16.21646	2025-03-22 05:26:16.21646
17	Spree::Country	22	1	2025-03-22 05:26:16.224689	2025-03-22 05:26:16.224689
18	Spree::Country	77	1	2025-03-22 05:26:16.233929	2025-03-22 05:26:16.233929
19	Spree::Country	133	1	2025-03-22 05:26:16.243016	2025-03-22 05:26:16.243016
20	Spree::Country	55	1	2025-03-22 05:26:16.250218	2025-03-22 05:26:16.250218
21	Spree::Country	134	1	2025-03-22 05:26:16.257446	2025-03-22 05:26:16.257446
22	Spree::Country	153	1	2025-03-22 05:26:16.264569	2025-03-22 05:26:16.264569
23	Spree::Country	59	1	2025-03-22 05:26:16.271697	2025-03-22 05:26:16.271697
24	Spree::Country	166	1	2025-03-22 05:26:16.278836	2025-03-22 05:26:16.278836
25	Spree::Country	64	1	2025-03-22 05:26:16.290921	2025-03-22 05:26:16.290921
26	Spree::Country	98	1	2025-03-22 05:26:16.29913	2025-03-22 05:26:16.29913
27	Spree::Country	56	1	2025-03-22 05:26:16.306946	2025-03-22 05:26:16.306946
28	Spree::Country	89	1	2025-03-22 05:26:16.314761	2025-03-22 05:26:16.314761
29	Spree::Country	233	2	2025-03-22 05:26:16.322345	2025-03-22 05:26:16.322345
30	Spree::Country	38	2	2025-03-22 05:26:16.329242	2025-03-22 05:26:16.329242
\.


--
-- TOC entry 6066 (class 0 OID 187685)
-- Dependencies: 396
-- Data for Name: spree_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zones (id, name, description, zone_members_count, created_at, updated_at) FROM stdin;
1	EU_VAT	Countries that make up the EU VAT zone.	28	2025-03-22 05:26:16.000972	2025-03-22 05:26:16.000972
2	North America	USA + Canada	2	2025-03-22 05:26:16.059499	2025-03-22 05:26:16.059499
\.


--
-- TOC entry 6192 (class 0 OID 0)
-- Dependencies: 223
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_mailbox_inbound_emails_id_seq', 1, false);


--
-- TOC entry 6193 (class 0 OID 0)
-- Dependencies: 225
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- TOC entry 6194 (class 0 OID 0)
-- Dependencies: 219
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 92, true);


--
-- TOC entry 6195 (class 0 OID 0)
-- Dependencies: 217
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 92, true);


--
-- TOC entry 6196 (class 0 OID 0)
-- Dependencies: 221
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 34, true);


--
-- TOC entry 6197 (class 0 OID 0)
-- Dependencies: 229
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 12, true);


--
-- TOC entry 6198 (class 0 OID 0)
-- Dependencies: 415
-- Name: solidus_stripe_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solidus_stripe_customers_id_seq', 1, false);


--
-- TOC entry 6199 (class 0 OID 0)
-- Dependencies: 411
-- Name: solidus_stripe_payment_intents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solidus_stripe_payment_intents_id_seq', 1, false);


--
-- TOC entry 6200 (class 0 OID 0)
-- Dependencies: 409
-- Name: solidus_stripe_payment_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solidus_stripe_payment_sources_id_seq', 1, false);


--
-- TOC entry 6201 (class 0 OID 0)
-- Dependencies: 413
-- Name: solidus_stripe_slug_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solidus_stripe_slug_entries_id_seq', 1, false);


--
-- TOC entry 6202 (class 0 OID 0)
-- Dependencies: 231
-- Name: spree_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_addresses_id_seq', 2, true);


--
-- TOC entry 6203 (class 0 OID 0)
-- Dependencies: 233
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_adjustment_reasons_id_seq', 1, false);


--
-- TOC entry 6204 (class 0 OID 0)
-- Dependencies: 235
-- Name: spree_adjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_adjustments_id_seq', 4, true);


--
-- TOC entry 6205 (class 0 OID 0)
-- Dependencies: 237
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_assets_id_seq', 58, true);


--
-- TOC entry 6206 (class 0 OID 0)
-- Dependencies: 239
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_calculators_id_seq', 6, true);


--
-- TOC entry 6207 (class 0 OID 0)
-- Dependencies: 241
-- Name: spree_cartons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_cartons_id_seq', 1, true);


--
-- TOC entry 6208 (class 0 OID 0)
-- Dependencies: 243
-- Name: spree_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_countries_id_seq', 249, true);


--
-- TOC entry 6209 (class 0 OID 0)
-- Dependencies: 245
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_credit_cards_id_seq', 1, true);


--
-- TOC entry 6210 (class 0 OID 0)
-- Dependencies: 247
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_customer_returns_id_seq', 1, true);


--
-- TOC entry 6211 (class 0 OID 0)
-- Dependencies: 249
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_inventory_units_id_seq', 2, true);


--
-- TOC entry 6212 (class 0 OID 0)
-- Dependencies: 251
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_line_item_actions_id_seq', 1, false);


--
-- TOC entry 6213 (class 0 OID 0)
-- Dependencies: 253
-- Name: spree_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_line_items_id_seq', 8, true);


--
-- TOC entry 6214 (class 0 OID 0)
-- Dependencies: 255
-- Name: spree_log_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_log_entries_id_seq', 1, true);


--
-- TOC entry 6215 (class 0 OID 0)
-- Dependencies: 257
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_type_prototypes_id_seq', 1, false);


--
-- TOC entry 6216 (class 0 OID 0)
-- Dependencies: 259
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_types_id_seq', 2, true);


--
-- TOC entry 6217 (class 0 OID 0)
-- Dependencies: 261
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_values_id_seq', 8, true);


--
-- TOC entry 6218 (class 0 OID 0)
-- Dependencies: 263
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_values_variants_id_seq', 78, true);


--
-- TOC entry 6219 (class 0 OID 0)
-- Dependencies: 265
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_order_mutexes_id_seq', 1, false);


--
-- TOC entry 6220 (class 0 OID 0)
-- Dependencies: 267
-- Name: spree_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_orders_id_seq', 4, true);


--
-- TOC entry 6221 (class 0 OID 0)
-- Dependencies: 269
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_orders_promotions_id_seq', 1, false);


--
-- TOC entry 6222 (class 0 OID 0)
-- Dependencies: 271
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payment_capture_events_id_seq', 1, false);


--
-- TOC entry 6223 (class 0 OID 0)
-- Dependencies: 273
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payment_methods_id_seq', 5, true);


--
-- TOC entry 6224 (class 0 OID 0)
-- Dependencies: 275
-- Name: spree_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payments_id_seq', 4, true);


--
-- TOC entry 6225 (class 0 OID 0)
-- Dependencies: 277
-- Name: spree_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_preferences_id_seq', 1, false);


--
-- TOC entry 6226 (class 0 OID 0)
-- Dependencies: 279
-- Name: spree_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prices_id_seq', 63, true);


--
-- TOC entry 6227 (class 0 OID 0)
-- Dependencies: 281
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_option_types_id_seq', 4, true);


--
-- TOC entry 6228 (class 0 OID 0)
-- Dependencies: 283
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_promotion_rules_id_seq', 1, false);


--
-- TOC entry 6229 (class 0 OID 0)
-- Dependencies: 285
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_properties_id_seq', 43, true);


--
-- TOC entry 6230 (class 0 OID 0)
-- Dependencies: 287
-- Name: spree_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_products_id_seq', 12, true);


--
-- TOC entry 6231 (class 0 OID 0)
-- Dependencies: 289
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_products_taxons_id_seq', 10, true);


--
-- TOC entry 6232 (class 0 OID 0)
-- Dependencies: 291
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_actions_id_seq', 1, false);


--
-- TOC entry 6233 (class 0 OID 0)
-- Dependencies: 293
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_categories_id_seq', 1, false);


--
-- TOC entry 6234 (class 0 OID 0)
-- Dependencies: 399
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_code_batches_id_seq', 1, false);


--
-- TOC entry 6235 (class 0 OID 0)
-- Dependencies: 295
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_codes_id_seq', 1, false);


--
-- TOC entry 6236 (class 0 OID 0)
-- Dependencies: 297
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rule_taxons_id_seq', 1, false);


--
-- TOC entry 6237 (class 0 OID 0)
-- Dependencies: 299
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_id_seq', 1, false);


--
-- TOC entry 6238 (class 0 OID 0)
-- Dependencies: 403
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_stores_id_seq', 1, false);


--
-- TOC entry 6239 (class 0 OID 0)
-- Dependencies: 301
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_users_id_seq', 1, false);


--
-- TOC entry 6240 (class 0 OID 0)
-- Dependencies: 303
-- Name: spree_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotions_id_seq', 1, false);


--
-- TOC entry 6241 (class 0 OID 0)
-- Dependencies: 305
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_properties_id_seq', 11, true);


--
-- TOC entry 6242 (class 0 OID 0)
-- Dependencies: 307
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_property_prototypes_id_seq', 1, false);


--
-- TOC entry 6243 (class 0 OID 0)
-- Dependencies: 309
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototype_taxons_id_seq', 1, false);


--
-- TOC entry 6244 (class 0 OID 0)
-- Dependencies: 311
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototypes_id_seq', 1, false);


--
-- TOC entry 6245 (class 0 OID 0)
-- Dependencies: 313
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_refund_reasons_id_seq', 1, true);


--
-- TOC entry 6246 (class 0 OID 0)
-- Dependencies: 315
-- Name: spree_refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_refunds_id_seq', 1, true);


--
-- TOC entry 6247 (class 0 OID 0)
-- Dependencies: 317
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_credits_id_seq', 1, false);


--
-- TOC entry 6248 (class 0 OID 0)
-- Dependencies: 319
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_types_id_seq', 2, true);


--
-- TOC entry 6249 (class 0 OID 0)
-- Dependencies: 321
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursements_id_seq', 1, true);


--
-- TOC entry 6250 (class 0 OID 0)
-- Dependencies: 323
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_authorizations_id_seq', 1, true);


--
-- TOC entry 6251 (class 0 OID 0)
-- Dependencies: 325
-- Name: spree_return_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_items_id_seq', 1, true);


--
-- TOC entry 6252 (class 0 OID 0)
-- Dependencies: 327
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_reasons_id_seq', 9, true);


--
-- TOC entry 6253 (class 0 OID 0)
-- Dependencies: 329
-- Name: spree_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_roles_id_seq', 1, true);


--
-- TOC entry 6254 (class 0 OID 0)
-- Dependencies: 331
-- Name: spree_roles_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_roles_users_id_seq', 1, true);


--
-- TOC entry 6255 (class 0 OID 0)
-- Dependencies: 333
-- Name: spree_shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipments_id_seq', 2, true);


--
-- TOC entry 6256 (class 0 OID 0)
-- Dependencies: 335
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_categories_id_seq', 1, true);


--
-- TOC entry 6257 (class 0 OID 0)
-- Dependencies: 337
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_categories_id_seq', 5, true);


--
-- TOC entry 6258 (class 0 OID 0)
-- Dependencies: 339
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_stock_locations_id_seq', 1, false);


--
-- TOC entry 6259 (class 0 OID 0)
-- Dependencies: 341
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_zones_id_seq', 5, true);


--
-- TOC entry 6260 (class 0 OID 0)
-- Dependencies: 343
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_methods_id_seq', 5, true);


--
-- TOC entry 6261 (class 0 OID 0)
-- Dependencies: 345
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_rate_taxes_id_seq', 6, true);


--
-- TOC entry 6262 (class 0 OID 0)
-- Dependencies: 347
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_rates_id_seq', 6, true);


--
-- TOC entry 6263 (class 0 OID 0)
-- Dependencies: 349
-- Name: spree_state_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_state_changes_id_seq', 22, true);


--
-- TOC entry 6264 (class 0 OID 0)
-- Dependencies: 351
-- Name: spree_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_states_id_seq', 3686, true);


--
-- TOC entry 6265 (class 0 OID 0)
-- Dependencies: 353
-- Name: spree_stock_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_items_id_seq', 51, true);


--
-- TOC entry 6266 (class 0 OID 0)
-- Dependencies: 355
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_locations_id_seq', 1, true);


--
-- TOC entry 6267 (class 0 OID 0)
-- Dependencies: 357
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_movements_id_seq', 54, true);


--
-- TOC entry 6268 (class 0 OID 0)
-- Dependencies: 359
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_categories_id_seq', 2, true);


--
-- TOC entry 6269 (class 0 OID 0)
-- Dependencies: 361
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_events_id_seq', 1, false);


--
-- TOC entry 6270 (class 0 OID 0)
-- Dependencies: 407
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_reasons_id_seq', 1, true);


--
-- TOC entry 6271 (class 0 OID 0)
-- Dependencies: 363
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_types_id_seq', 2, true);


--
-- TOC entry 6272 (class 0 OID 0)
-- Dependencies: 365
-- Name: spree_store_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credits_id_seq', 1, false);


--
-- TOC entry 6273 (class 0 OID 0)
-- Dependencies: 367
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_payment_methods_id_seq', 1, false);


--
-- TOC entry 6274 (class 0 OID 0)
-- Dependencies: 405
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_shipping_methods_id_seq', 1, false);


--
-- TOC entry 6275 (class 0 OID 0)
-- Dependencies: 369
-- Name: spree_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stores_id_seq', 1, true);


--
-- TOC entry 6276 (class 0 OID 0)
-- Dependencies: 371
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_categories_id_seq', 1, true);


--
-- TOC entry 6277 (class 0 OID 0)
-- Dependencies: 401
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_rate_tax_categories_id_seq', 1, true);


--
-- TOC entry 6278 (class 0 OID 0)
-- Dependencies: 373
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_rates_id_seq', 1, true);


--
-- TOC entry 6279 (class 0 OID 0)
-- Dependencies: 375
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taxonomies_id_seq', 2, true);


--
-- TOC entry 6280 (class 0 OID 0)
-- Dependencies: 377
-- Name: spree_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taxons_id_seq', 10, true);


--
-- TOC entry 6281 (class 0 OID 0)
-- Dependencies: 379
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_unit_cancels_id_seq', 1, false);


--
-- TOC entry 6282 (class 0 OID 0)
-- Dependencies: 381
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_user_addresses_id_seq', 1, false);


--
-- TOC entry 6283 (class 0 OID 0)
-- Dependencies: 383
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_user_stock_locations_id_seq', 1, false);


--
-- TOC entry 6284 (class 0 OID 0)
-- Dependencies: 227
-- Name: spree_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_users_id_seq', 1, true);


--
-- TOC entry 6285 (class 0 OID 0)
-- Dependencies: 385
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rule_conditions_id_seq', 1, false);


--
-- TOC entry 6286 (class 0 OID 0)
-- Dependencies: 387
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rule_values_id_seq', 1, false);


--
-- TOC entry 6287 (class 0 OID 0)
-- Dependencies: 389
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rules_id_seq', 1, false);


--
-- TOC entry 6288 (class 0 OID 0)
-- Dependencies: 391
-- Name: spree_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variants_id_seq', 51, true);


--
-- TOC entry 6289 (class 0 OID 0)
-- Dependencies: 397
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_wallet_payment_sources_id_seq', 1, false);


--
-- TOC entry 6290 (class 0 OID 0)
-- Dependencies: 393
-- Name: spree_zone_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zone_members_id_seq', 30, true);


--
-- TOC entry 6291 (class 0 OID 0)
-- Dependencies: 395
-- Name: spree_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zones_id_seq', 2, true);


--
-- TOC entry 5349 (class 2606 OID 186698)
-- Name: action_mailbox_inbound_emails action_mailbox_inbound_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails
    ADD CONSTRAINT action_mailbox_inbound_emails_pkey PRIMARY KEY (id);


--
-- TOC entry 5352 (class 2606 OID 186708)
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- TOC entry 5342 (class 2606 OID 186666)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 5339 (class 2606 OID 186656)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5346 (class 2606 OID 186682)
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- TOC entry 5337 (class 2606 OID 186647)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 5361 (class 2606 OID 186729)
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- TOC entry 5335 (class 2606 OID 186640)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 5728 (class 2606 OID 187868)
-- Name: solidus_stripe_customers solidus_stripe_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_customers
    ADD CONSTRAINT solidus_stripe_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 5720 (class 2606 OID 187831)
-- Name: solidus_stripe_payment_intents solidus_stripe_payment_intents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_intents
    ADD CONSTRAINT solidus_stripe_payment_intents_pkey PRIMARY KEY (id);


--
-- TOC entry 5716 (class 2606 OID 187822)
-- Name: solidus_stripe_payment_sources solidus_stripe_payment_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_sources
    ADD CONSTRAINT solidus_stripe_payment_sources_pkey PRIMARY KEY (id);


--
-- TOC entry 5724 (class 2606 OID 187852)
-- Name: solidus_stripe_slug_entries solidus_stripe_slug_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_slug_entries
    ADD CONSTRAINT solidus_stripe_slug_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 5372 (class 2606 OID 186742)
-- Name: spree_addresses spree_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses
    ADD CONSTRAINT spree_addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 5376 (class 2606 OID 186756)
-- Name: spree_adjustment_reasons spree_adjustment_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustment_reasons
    ADD CONSTRAINT spree_adjustment_reasons_pkey PRIMARY KEY (id);


--
-- TOC entry 5384 (class 2606 OID 186770)
-- Name: spree_adjustments spree_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustments
    ADD CONSTRAINT spree_adjustments_pkey PRIMARY KEY (id);


--
-- TOC entry 5388 (class 2606 OID 186785)
-- Name: spree_assets spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets
    ADD CONSTRAINT spree_assets_pkey PRIMARY KEY (id);


--
-- TOC entry 5392 (class 2606 OID 186796)
-- Name: spree_calculators spree_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators
    ADD CONSTRAINT spree_calculators_pkey PRIMARY KEY (id);


--
-- TOC entry 5398 (class 2606 OID 186807)
-- Name: spree_cartons spree_cartons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_cartons
    ADD CONSTRAINT spree_cartons_pkey PRIMARY KEY (id);


--
-- TOC entry 5401 (class 2606 OID 186821)
-- Name: spree_countries spree_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_countries
    ADD CONSTRAINT spree_countries_pkey PRIMARY KEY (id);


--
-- TOC entry 5405 (class 2606 OID 186832)
-- Name: spree_credit_cards spree_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_credit_cards
    ADD CONSTRAINT spree_credit_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 5407 (class 2606 OID 186843)
-- Name: spree_customer_returns spree_customer_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns
    ADD CONSTRAINT spree_customer_returns_pkey PRIMARY KEY (id);


--
-- TOC entry 5413 (class 2606 OID 186853)
-- Name: spree_inventory_units spree_inventory_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_inventory_units
    ADD CONSTRAINT spree_inventory_units_pkey PRIMARY KEY (id);


--
-- TOC entry 5417 (class 2606 OID 186866)
-- Name: spree_line_item_actions spree_line_item_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_item_actions
    ADD CONSTRAINT spree_line_item_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5421 (class 2606 OID 186881)
-- Name: spree_line_items spree_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_items
    ADD CONSTRAINT spree_line_items_pkey PRIMARY KEY (id);


--
-- TOC entry 5424 (class 2606 OID 186892)
-- Name: spree_log_entries spree_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries
    ADD CONSTRAINT spree_log_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 5426 (class 2606 OID 186900)
-- Name: spree_option_type_prototypes spree_option_type_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes
    ADD CONSTRAINT spree_option_type_prototypes_pkey PRIMARY KEY (id);


--
-- TOC entry 5429 (class 2606 OID 186908)
-- Name: spree_option_types spree_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types
    ADD CONSTRAINT spree_option_types_pkey PRIMARY KEY (id);


--
-- TOC entry 5433 (class 2606 OID 186918)
-- Name: spree_option_values spree_option_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values
    ADD CONSTRAINT spree_option_values_pkey PRIMARY KEY (id);


--
-- TOC entry 5437 (class 2606 OID 186927)
-- Name: spree_option_values_variants spree_option_values_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values_variants
    ADD CONSTRAINT spree_option_values_variants_pkey PRIMARY KEY (id);


--
-- TOC entry 5440 (class 2606 OID 186936)
-- Name: spree_order_mutexes spree_order_mutexes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_mutexes
    ADD CONSTRAINT spree_order_mutexes_pkey PRIMARY KEY (id);


--
-- TOC entry 5451 (class 2606 OID 186958)
-- Name: spree_orders spree_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders
    ADD CONSTRAINT spree_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 5455 (class 2606 OID 186974)
-- Name: spree_orders_promotions spree_orders_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions
    ADD CONSTRAINT spree_orders_promotions_pkey PRIMARY KEY (id);


--
-- TOC entry 5458 (class 2606 OID 186984)
-- Name: spree_payment_capture_events spree_payment_capture_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events
    ADD CONSTRAINT spree_payment_capture_events_pkey PRIMARY KEY (id);


--
-- TOC entry 5461 (class 2606 OID 186996)
-- Name: spree_payment_methods spree_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_methods
    ADD CONSTRAINT spree_payment_methods_pkey PRIMARY KEY (id);


--
-- TOC entry 5467 (class 2606 OID 187007)
-- Name: spree_payments spree_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payments
    ADD CONSTRAINT spree_payments_pkey PRIMARY KEY (id);


--
-- TOC entry 5470 (class 2606 OID 187019)
-- Name: spree_preferences spree_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_preferences
    ADD CONSTRAINT spree_preferences_pkey PRIMARY KEY (id);


--
-- TOC entry 5474 (class 2606 OID 187030)
-- Name: spree_prices spree_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prices
    ADD CONSTRAINT spree_prices_pkey PRIMARY KEY (id);


--
-- TOC entry 5479 (class 2606 OID 187039)
-- Name: spree_product_option_types spree_product_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types
    ADD CONSTRAINT spree_product_option_types_pkey PRIMARY KEY (id);


--
-- TOC entry 5483 (class 2606 OID 187049)
-- Name: spree_product_promotion_rules spree_product_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules
    ADD CONSTRAINT spree_product_promotion_rules_pkey PRIMARY KEY (id);


--
-- TOC entry 5488 (class 2606 OID 187061)
-- Name: spree_product_properties spree_product_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties
    ADD CONSTRAINT spree_product_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 5494 (class 2606 OID 187075)
-- Name: spree_products spree_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products
    ADD CONSTRAINT spree_products_pkey PRIMARY KEY (id);


--
-- TOC entry 5499 (class 2606 OID 187086)
-- Name: spree_products_taxons spree_products_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons
    ADD CONSTRAINT spree_products_taxons_pkey PRIMARY KEY (id);


--
-- TOC entry 5504 (class 2606 OID 187108)
-- Name: spree_promotion_actions spree_promotion_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_actions
    ADD CONSTRAINT spree_promotion_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5506 (class 2606 OID 187120)
-- Name: spree_promotion_categories spree_promotion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories
    ADD CONSTRAINT spree_promotion_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5700 (class 2606 OID 187723)
-- Name: spree_promotion_code_batches spree_promotion_code_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches
    ADD CONSTRAINT spree_promotion_code_batches_pkey PRIMARY KEY (id);


--
-- TOC entry 5511 (class 2606 OID 187129)
-- Name: spree_promotion_codes spree_promotion_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes
    ADD CONSTRAINT spree_promotion_codes_pkey PRIMARY KEY (id);


--
-- TOC entry 5515 (class 2606 OID 187138)
-- Name: spree_promotion_rule_taxons spree_promotion_rule_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons
    ADD CONSTRAINT spree_promotion_rule_taxons_pkey PRIMARY KEY (id);


--
-- TOC entry 5518 (class 2606 OID 187149)
-- Name: spree_promotion_rules spree_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules
    ADD CONSTRAINT spree_promotion_rules_pkey PRIMARY KEY (id);


--
-- TOC entry 5708 (class 2606 OID 187767)
-- Name: spree_promotion_rules_stores spree_promotion_rules_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_stores
    ADD CONSTRAINT spree_promotion_rules_stores_pkey PRIMARY KEY (id);


--
-- TOC entry 5522 (class 2606 OID 187158)
-- Name: spree_promotion_rules_users spree_promotion_rules_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_users
    ADD CONSTRAINT spree_promotion_rules_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5530 (class 2606 OID 187172)
-- Name: spree_promotions spree_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotions
    ADD CONSTRAINT spree_promotions_pkey PRIMARY KEY (id);


--
-- TOC entry 5532 (class 2606 OID 187188)
-- Name: spree_properties spree_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties
    ADD CONSTRAINT spree_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 5534 (class 2606 OID 187195)
-- Name: spree_property_prototypes spree_property_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes
    ADD CONSTRAINT spree_property_prototypes_pkey PRIMARY KEY (id);


--
-- TOC entry 5538 (class 2606 OID 187202)
-- Name: spree_prototype_taxons spree_prototype_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons
    ADD CONSTRAINT spree_prototype_taxons_pkey PRIMARY KEY (id);


--
-- TOC entry 5540 (class 2606 OID 187213)
-- Name: spree_prototypes spree_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes
    ADD CONSTRAINT spree_prototypes_pkey PRIMARY KEY (id);


--
-- TOC entry 5542 (class 2606 OID 187224)
-- Name: spree_refund_reasons spree_refund_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons
    ADD CONSTRAINT spree_refund_reasons_pkey PRIMARY KEY (id);


--
-- TOC entry 5547 (class 2606 OID 187234)
-- Name: spree_refunds spree_refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refunds
    ADD CONSTRAINT spree_refunds_pkey PRIMARY KEY (id);


--
-- TOC entry 5549 (class 2606 OID 187247)
-- Name: spree_reimbursement_credits spree_reimbursement_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits
    ADD CONSTRAINT spree_reimbursement_credits_pkey PRIMARY KEY (id);


--
-- TOC entry 5552 (class 2606 OID 187258)
-- Name: spree_reimbursement_types spree_reimbursement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types
    ADD CONSTRAINT spree_reimbursement_types_pkey PRIMARY KEY (id);


--
-- TOC entry 5556 (class 2606 OID 187268)
-- Name: spree_reimbursements spree_reimbursements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements
    ADD CONSTRAINT spree_reimbursements_pkey PRIMARY KEY (id);


--
-- TOC entry 5559 (class 2606 OID 187279)
-- Name: spree_return_authorizations spree_return_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorizations
    ADD CONSTRAINT spree_return_authorizations_pkey PRIMARY KEY (id);


--
-- TOC entry 5563 (class 2606 OID 187293)
-- Name: spree_return_items spree_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_items
    ADD CONSTRAINT spree_return_items_pkey PRIMARY KEY (id);


--
-- TOC entry 5565 (class 2606 OID 187306)
-- Name: spree_return_reasons spree_return_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_reasons
    ADD CONSTRAINT spree_return_reasons_pkey PRIMARY KEY (id);


--
-- TOC entry 5568 (class 2606 OID 187315)
-- Name: spree_roles spree_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles
    ADD CONSTRAINT spree_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5573 (class 2606 OID 187322)
-- Name: spree_roles_users spree_roles_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles_users
    ADD CONSTRAINT spree_roles_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5578 (class 2606 OID 187338)
-- Name: spree_shipments spree_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipments
    ADD CONSTRAINT spree_shipments_pkey PRIMARY KEY (id);


--
-- TOC entry 5580 (class 2606 OID 187351)
-- Name: spree_shipping_categories spree_shipping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories
    ADD CONSTRAINT spree_shipping_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5583 (class 2606 OID 187358)
-- Name: spree_shipping_method_categories spree_shipping_method_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories
    ADD CONSTRAINT spree_shipping_method_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5587 (class 2606 OID 187367)
-- Name: spree_shipping_method_stock_locations spree_shipping_method_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_stock_locations
    ADD CONSTRAINT spree_shipping_method_stock_locations_pkey PRIMARY KEY (id);


--
-- TOC entry 5590 (class 2606 OID 187376)
-- Name: spree_shipping_method_zones spree_shipping_method_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones
    ADD CONSTRAINT spree_shipping_method_zones_pkey PRIMARY KEY (id);


--
-- TOC entry 5593 (class 2606 OID 187386)
-- Name: spree_shipping_methods spree_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_methods
    ADD CONSTRAINT spree_shipping_methods_pkey PRIMARY KEY (id);


--
-- TOC entry 5597 (class 2606 OID 187395)
-- Name: spree_shipping_rate_taxes spree_shipping_rate_taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rate_taxes
    ADD CONSTRAINT spree_shipping_rate_taxes_pkey PRIMARY KEY (id);


--
-- TOC entry 5600 (class 2606 OID 187406)
-- Name: spree_shipping_rates spree_shipping_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rates
    ADD CONSTRAINT spree_shipping_rates_pkey PRIMARY KEY (id);


--
-- TOC entry 5604 (class 2606 OID 187416)
-- Name: spree_state_changes spree_state_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes
    ADD CONSTRAINT spree_state_changes_pkey PRIMARY KEY (id);


--
-- TOC entry 5607 (class 2606 OID 187427)
-- Name: spree_states spree_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states
    ADD CONSTRAINT spree_states_pkey PRIMARY KEY (id);


--
-- TOC entry 5612 (class 2606 OID 187437)
-- Name: spree_stock_items spree_stock_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_items
    ADD CONSTRAINT spree_stock_items_pkey PRIMARY KEY (id);


--
-- TOC entry 5617 (class 2606 OID 187458)
-- Name: spree_stock_locations spree_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_locations
    ADD CONSTRAINT spree_stock_locations_pkey PRIMARY KEY (id);


--
-- TOC entry 5620 (class 2606 OID 187470)
-- Name: spree_stock_movements spree_stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_movements
    ADD CONSTRAINT spree_stock_movements_pkey PRIMARY KEY (id);


--
-- TOC entry 5622 (class 2606 OID 187480)
-- Name: spree_store_credit_categories spree_store_credit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories
    ADD CONSTRAINT spree_store_credit_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5626 (class 2606 OID 187490)
-- Name: spree_store_credit_events spree_store_credit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events
    ADD CONSTRAINT spree_store_credit_events_pkey PRIMARY KEY (id);


--
-- TOC entry 5714 (class 2606 OID 187793)
-- Name: spree_store_credit_reasons spree_store_credit_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_reasons
    ADD CONSTRAINT spree_store_credit_reasons_pkey PRIMARY KEY (id);


--
-- TOC entry 5629 (class 2606 OID 187501)
-- Name: spree_store_credit_types spree_store_credit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types
    ADD CONSTRAINT spree_store_credit_types_pkey PRIMARY KEY (id);


--
-- TOC entry 5634 (class 2606 OID 187523)
-- Name: spree_store_credits spree_store_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits
    ADD CONSTRAINT spree_store_credits_pkey PRIMARY KEY (id);


--
-- TOC entry 5638 (class 2606 OID 187533)
-- Name: spree_store_payment_methods spree_store_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_payment_methods
    ADD CONSTRAINT spree_store_payment_methods_pkey PRIMARY KEY (id);


--
-- TOC entry 5712 (class 2606 OID 187776)
-- Name: spree_store_shipping_methods spree_store_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_shipping_methods
    ADD CONSTRAINT spree_store_shipping_methods_pkey PRIMARY KEY (id);


--
-- TOC entry 5642 (class 2606 OID 187545)
-- Name: spree_stores spree_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores
    ADD CONSTRAINT spree_stores_pkey PRIMARY KEY (id);


--
-- TOC entry 5644 (class 2606 OID 187557)
-- Name: spree_tax_categories spree_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories
    ADD CONSTRAINT spree_tax_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5704 (class 2606 OID 187746)
-- Name: spree_tax_rate_tax_categories spree_tax_rate_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT spree_tax_rate_tax_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5648 (class 2606 OID 187568)
-- Name: spree_tax_rates spree_tax_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates
    ADD CONSTRAINT spree_tax_rates_pkey PRIMARY KEY (id);


--
-- TOC entry 5651 (class 2606 OID 187581)
-- Name: spree_taxonomies spree_taxonomies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies
    ADD CONSTRAINT spree_taxonomies_pkey PRIMARY KEY (id);


--
-- TOC entry 5658 (class 2606 OID 187592)
-- Name: spree_taxons spree_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxons
    ADD CONSTRAINT spree_taxons_pkey PRIMARY KEY (id);


--
-- TOC entry 5661 (class 2606 OID 187605)
-- Name: spree_unit_cancels spree_unit_cancels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_unit_cancels
    ADD CONSTRAINT spree_unit_cancels_pkey PRIMARY KEY (id);


--
-- TOC entry 5666 (class 2606 OID 187615)
-- Name: spree_user_addresses spree_user_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_addresses
    ADD CONSTRAINT spree_user_addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 5669 (class 2606 OID 187625)
-- Name: spree_user_stock_locations spree_user_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_stock_locations
    ADD CONSTRAINT spree_user_stock_locations_pkey PRIMARY KEY (id);


--
-- TOC entry 5359 (class 2606 OID 186720)
-- Name: spree_users spree_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_users
    ADD CONSTRAINT spree_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5672 (class 2606 OID 187633)
-- Name: spree_variant_property_rule_conditions spree_variant_property_rule_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_conditions
    ADD CONSTRAINT spree_variant_property_rule_conditions_pkey PRIMARY KEY (id);


--
-- TOC entry 5676 (class 2606 OID 187644)
-- Name: spree_variant_property_rule_values spree_variant_property_rule_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_values
    ADD CONSTRAINT spree_variant_property_rule_values_pkey PRIMARY KEY (id);


--
-- TOC entry 5679 (class 2606 OID 187653)
-- Name: spree_variant_property_rules spree_variant_property_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rules
    ADD CONSTRAINT spree_variant_property_rules_pkey PRIMARY KEY (id);


--
-- TOC entry 5687 (class 2606 OID 187667)
-- Name: spree_variants spree_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variants
    ADD CONSTRAINT spree_variants_pkey PRIMARY KEY (id);


--
-- TOC entry 5697 (class 2606 OID 187704)
-- Name: spree_wallet_payment_sources spree_wallet_payment_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources
    ADD CONSTRAINT spree_wallet_payment_sources_pkey PRIMARY KEY (id);


--
-- TOC entry 5691 (class 2606 OID 187681)
-- Name: spree_zone_members spree_zone_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members
    ADD CONSTRAINT spree_zone_members_pkey PRIMARY KEY (id);


--
-- TOC entry 5693 (class 2606 OID 187694)
-- Name: spree_zones spree_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones
    ADD CONSTRAINT spree_zones_pkey PRIMARY KEY (id);


--
-- TOC entry 5354 (class 1259 OID 187810)
-- Name: email_idx_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX email_idx_unique ON public.spree_users USING btree (email);


--
-- TOC entry 5350 (class 1259 OID 186699)
-- Name: index_action_mailbox_inbound_emails_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_action_mailbox_inbound_emails_uniqueness ON public.action_mailbox_inbound_emails USING btree (message_id, message_checksum);


--
-- TOC entry 5353 (class 1259 OID 186709)
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- TOC entry 5343 (class 1259 OID 186672)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 5344 (class 1259 OID 186673)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 5340 (class 1259 OID 186657)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 5347 (class 1259 OID 186688)
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- TOC entry 5366 (class 1259 OID 186744)
-- Name: index_addresses_on_firstname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_addresses_on_firstname ON public.spree_addresses USING btree (firstname);


--
-- TOC entry 5367 (class 1259 OID 186745)
-- Name: index_addresses_on_lastname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_addresses_on_lastname ON public.spree_addresses USING btree (lastname);


--
-- TOC entry 5377 (class 1259 OID 186772)
-- Name: index_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_adjustments_on_order_id ON public.spree_adjustments USING btree (adjustable_id);


--
-- TOC entry 5385 (class 1259 OID 186786)
-- Name: index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_assets_on_viewable_id ON public.spree_assets USING btree (viewable_id);


--
-- TOC entry 5386 (class 1259 OID 186787)
-- Name: index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_assets_on_viewable_type_and_type ON public.spree_assets USING btree (viewable_type, type);


--
-- TOC entry 5362 (class 1259 OID 186731)
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- TOC entry 5363 (class 1259 OID 186730)
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- TOC entry 5364 (class 1259 OID 186732)
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- TOC entry 5365 (class 1259 OID 186733)
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- TOC entry 5408 (class 1259 OID 186857)
-- Name: index_inventory_units_on_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_units_on_shipment_id ON public.spree_inventory_units USING btree (shipment_id);


--
-- TOC entry 5409 (class 1259 OID 186858)
-- Name: index_inventory_units_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_units_on_variant_id ON public.spree_inventory_units USING btree (variant_id);


--
-- TOC entry 5434 (class 1259 OID 187796)
-- Name: index_option_values_variants_on_variant_id_and_option_value_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_option_values_variants_on_variant_id_and_option_value_id ON public.spree_option_values_variants USING btree (variant_id, option_value_id);


--
-- TOC entry 5484 (class 1259 OID 187063)
-- Name: index_product_properties_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_properties_on_product_id ON public.spree_product_properties USING btree (product_id);


--
-- TOC entry 5480 (class 1259 OID 187050)
-- Name: index_products_promotion_rules_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_promotion_rules_on_product_id ON public.spree_product_promotion_rules USING btree (product_id);


--
-- TOC entry 5481 (class 1259 OID 187051)
-- Name: index_products_promotion_rules_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_promotion_rules_on_promotion_rule_id ON public.spree_product_promotion_rules USING btree (promotion_rule_id);


--
-- TOC entry 5519 (class 1259 OID 187159)
-- Name: index_promotion_rules_users_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_promotion_rules_users_on_promotion_rule_id ON public.spree_promotion_rules_users USING btree (promotion_rule_id);


--
-- TOC entry 5520 (class 1259 OID 187160)
-- Name: index_promotion_rules_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_promotion_rules_users_on_user_id ON public.spree_promotion_rules_users USING btree (user_id);


--
-- TOC entry 5543 (class 1259 OID 187236)
-- Name: index_refunds_on_refund_reason_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_refunds_on_refund_reason_id ON public.spree_refunds USING btree (refund_reason_id);


--
-- TOC entry 5557 (class 1259 OID 187280)
-- Name: index_return_authorizations_on_return_authorization_reason_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_return_authorizations_on_return_authorization_reason_id ON public.spree_return_authorizations USING btree (return_reason_id);


--
-- TOC entry 5560 (class 1259 OID 187294)
-- Name: index_return_items_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_return_items_on_customer_return_id ON public.spree_return_items USING btree (customer_return_id);


--
-- TOC entry 5574 (class 1259 OID 187340)
-- Name: index_shipments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_shipments_on_number ON public.spree_shipments USING btree (number);


--
-- TOC entry 5725 (class 1259 OID 187874)
-- Name: index_solidus_stripe_customers_on_stripe_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_solidus_stripe_customers_on_stripe_id ON public.solidus_stripe_customers USING btree (stripe_id);


--
-- TOC entry 5717 (class 1259 OID 187842)
-- Name: index_solidus_stripe_payment_intents_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_solidus_stripe_payment_intents_on_order_id ON public.solidus_stripe_payment_intents USING btree (order_id);


--
-- TOC entry 5718 (class 1259 OID 187843)
-- Name: index_solidus_stripe_payment_intents_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_solidus_stripe_payment_intents_on_payment_method_id ON public.solidus_stripe_payment_intents USING btree (payment_method_id);


--
-- TOC entry 5721 (class 1259 OID 187858)
-- Name: index_solidus_stripe_slug_entries_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_solidus_stripe_slug_entries_on_payment_method_id ON public.solidus_stripe_slug_entries USING btree (payment_method_id);


--
-- TOC entry 5722 (class 1259 OID 187859)
-- Name: index_solidus_stripe_slug_entries_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_solidus_stripe_slug_entries_on_slug ON public.solidus_stripe_slug_entries USING btree (slug);


--
-- TOC entry 5368 (class 1259 OID 186743)
-- Name: index_spree_addresses_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_country_id ON public.spree_addresses USING btree (country_id);


--
-- TOC entry 5369 (class 1259 OID 187795)
-- Name: index_spree_addresses_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_name ON public.spree_addresses USING btree (name);


--
-- TOC entry 5370 (class 1259 OID 186746)
-- Name: index_spree_addresses_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_state_id ON public.spree_addresses USING btree (state_id);


--
-- TOC entry 5373 (class 1259 OID 186757)
-- Name: index_spree_adjustment_reasons_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustment_reasons_on_active ON public.spree_adjustment_reasons USING btree (active);


--
-- TOC entry 5374 (class 1259 OID 186758)
-- Name: index_spree_adjustment_reasons_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustment_reasons_on_code ON public.spree_adjustment_reasons USING btree (code);


--
-- TOC entry 5378 (class 1259 OID 186771)
-- Name: index_spree_adjustments_on_adjustable_id_and_adjustable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_adjustable_id_and_adjustable_type ON public.spree_adjustments USING btree (adjustable_id, adjustable_type);


--
-- TOC entry 5379 (class 1259 OID 186773)
-- Name: index_spree_adjustments_on_eligible; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_eligible ON public.spree_adjustments USING btree (eligible);


--
-- TOC entry 5380 (class 1259 OID 186774)
-- Name: index_spree_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_order_id ON public.spree_adjustments USING btree (order_id);


--
-- TOC entry 5381 (class 1259 OID 186775)
-- Name: index_spree_adjustments_on_promotion_code_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_promotion_code_id ON public.spree_adjustments USING btree (promotion_code_id);


--
-- TOC entry 5382 (class 1259 OID 186776)
-- Name: index_spree_adjustments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_source_id_and_source_type ON public.spree_adjustments USING btree (source_id, source_type);


--
-- TOC entry 5389 (class 1259 OID 186797)
-- Name: index_spree_calculators_on_calculable_id_and_calculable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_calculators_on_calculable_id_and_calculable_type ON public.spree_calculators USING btree (calculable_id, calculable_type);


--
-- TOC entry 5390 (class 1259 OID 186798)
-- Name: index_spree_calculators_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_calculators_on_id_and_type ON public.spree_calculators USING btree (id, type);


--
-- TOC entry 5393 (class 1259 OID 186808)
-- Name: index_spree_cartons_on_external_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_cartons_on_external_number ON public.spree_cartons USING btree (external_number);


--
-- TOC entry 5394 (class 1259 OID 186809)
-- Name: index_spree_cartons_on_imported_from_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_cartons_on_imported_from_shipment_id ON public.spree_cartons USING btree (imported_from_shipment_id);


--
-- TOC entry 5395 (class 1259 OID 186810)
-- Name: index_spree_cartons_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_cartons_on_number ON public.spree_cartons USING btree (number);


--
-- TOC entry 5396 (class 1259 OID 186811)
-- Name: index_spree_cartons_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_cartons_on_stock_location_id ON public.spree_cartons USING btree (stock_location_id);


--
-- TOC entry 5399 (class 1259 OID 186822)
-- Name: index_spree_countries_on_iso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_countries_on_iso ON public.spree_countries USING btree (iso);


--
-- TOC entry 5402 (class 1259 OID 186833)
-- Name: index_spree_credit_cards_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_credit_cards_on_payment_method_id ON public.spree_credit_cards USING btree (payment_method_id);


--
-- TOC entry 5403 (class 1259 OID 186834)
-- Name: index_spree_credit_cards_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_credit_cards_on_user_id ON public.spree_credit_cards USING btree (user_id);


--
-- TOC entry 5410 (class 1259 OID 186854)
-- Name: index_spree_inventory_units_on_carton_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_inventory_units_on_carton_id ON public.spree_inventory_units USING btree (carton_id);


--
-- TOC entry 5411 (class 1259 OID 186855)
-- Name: index_spree_inventory_units_on_line_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_inventory_units_on_line_item_id ON public.spree_inventory_units USING btree (line_item_id);


--
-- TOC entry 5414 (class 1259 OID 186867)
-- Name: index_spree_line_item_actions_on_action_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_item_actions_on_action_id ON public.spree_line_item_actions USING btree (action_id);


--
-- TOC entry 5415 (class 1259 OID 186868)
-- Name: index_spree_line_item_actions_on_line_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_item_actions_on_line_item_id ON public.spree_line_item_actions USING btree (line_item_id);


--
-- TOC entry 5418 (class 1259 OID 186882)
-- Name: index_spree_line_items_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_items_on_order_id ON public.spree_line_items USING btree (order_id);


--
-- TOC entry 5419 (class 1259 OID 186883)
-- Name: index_spree_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_items_on_variant_id ON public.spree_line_items USING btree (variant_id);


--
-- TOC entry 5422 (class 1259 OID 186893)
-- Name: index_spree_log_entries_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_log_entries_on_source_id_and_source_type ON public.spree_log_entries USING btree (source_id, source_type);


--
-- TOC entry 5427 (class 1259 OID 186909)
-- Name: index_spree_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_types_on_position ON public.spree_option_types USING btree ("position");


--
-- TOC entry 5430 (class 1259 OID 186919)
-- Name: index_spree_option_values_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_on_option_type_id ON public.spree_option_values USING btree (option_type_id);


--
-- TOC entry 5431 (class 1259 OID 186920)
-- Name: index_spree_option_values_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_on_position ON public.spree_option_values USING btree ("position");


--
-- TOC entry 5435 (class 1259 OID 186929)
-- Name: index_spree_option_values_variants_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_variants_on_variant_id ON public.spree_option_values_variants USING btree (variant_id);


--
-- TOC entry 5438 (class 1259 OID 186937)
-- Name: index_spree_order_mutexes_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_order_mutexes_on_order_id ON public.spree_order_mutexes USING btree (order_id);


--
-- TOC entry 5441 (class 1259 OID 186959)
-- Name: index_spree_orders_on_approver_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_approver_id ON public.spree_orders USING btree (approver_id);


--
-- TOC entry 5442 (class 1259 OID 186960)
-- Name: index_spree_orders_on_bill_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_bill_address_id ON public.spree_orders USING btree (bill_address_id);


--
-- TOC entry 5443 (class 1259 OID 186961)
-- Name: index_spree_orders_on_completed_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_completed_at ON public.spree_orders USING btree (completed_at);


--
-- TOC entry 5444 (class 1259 OID 186962)
-- Name: index_spree_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_created_by_id ON public.spree_orders USING btree (created_by_id);


--
-- TOC entry 5445 (class 1259 OID 186963)
-- Name: index_spree_orders_on_guest_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_guest_token ON public.spree_orders USING btree (guest_token);


--
-- TOC entry 5446 (class 1259 OID 186964)
-- Name: index_spree_orders_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_number ON public.spree_orders USING btree (number);


--
-- TOC entry 5447 (class 1259 OID 186965)
-- Name: index_spree_orders_on_ship_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_ship_address_id ON public.spree_orders USING btree (ship_address_id);


--
-- TOC entry 5448 (class 1259 OID 186967)
-- Name: index_spree_orders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_user_id ON public.spree_orders USING btree (user_id);


--
-- TOC entry 5449 (class 1259 OID 186966)
-- Name: index_spree_orders_on_user_id_and_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_user_id_and_created_by_id ON public.spree_orders USING btree (user_id, created_by_id);


--
-- TOC entry 5452 (class 1259 OID 186975)
-- Name: index_spree_orders_promotions_on_order_id_and_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_promotions_on_order_id_and_promotion_id ON public.spree_orders_promotions USING btree (order_id, promotion_id);


--
-- TOC entry 5453 (class 1259 OID 186976)
-- Name: index_spree_orders_promotions_on_promotion_code_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_promotions_on_promotion_code_id ON public.spree_orders_promotions USING btree (promotion_code_id);


--
-- TOC entry 5456 (class 1259 OID 186985)
-- Name: index_spree_payment_capture_events_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payment_capture_events_on_payment_id ON public.spree_payment_capture_events USING btree (payment_id);


--
-- TOC entry 5459 (class 1259 OID 186997)
-- Name: index_spree_payment_methods_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payment_methods_on_id_and_type ON public.spree_payment_methods USING btree (id, type);


--
-- TOC entry 5462 (class 1259 OID 187737)
-- Name: index_spree_payments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_payments_on_number ON public.spree_payments USING btree (number);


--
-- TOC entry 5463 (class 1259 OID 187008)
-- Name: index_spree_payments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_order_id ON public.spree_payments USING btree (order_id);


--
-- TOC entry 5464 (class 1259 OID 187009)
-- Name: index_spree_payments_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_payment_method_id ON public.spree_payments USING btree (payment_method_id);


--
-- TOC entry 5465 (class 1259 OID 187010)
-- Name: index_spree_payments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_source_id_and_source_type ON public.spree_payments USING btree (source_id, source_type);


--
-- TOC entry 5468 (class 1259 OID 187020)
-- Name: index_spree_preferences_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_preferences_on_key ON public.spree_preferences USING btree (key);


--
-- TOC entry 5471 (class 1259 OID 187031)
-- Name: index_spree_prices_on_country_iso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prices_on_country_iso ON public.spree_prices USING btree (country_iso);


--
-- TOC entry 5472 (class 1259 OID 187032)
-- Name: index_spree_prices_on_variant_id_and_currency; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prices_on_variant_id_and_currency ON public.spree_prices USING btree (variant_id, currency);


--
-- TOC entry 5475 (class 1259 OID 187040)
-- Name: index_spree_product_option_types_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_option_type_id ON public.spree_product_option_types USING btree (option_type_id);


--
-- TOC entry 5476 (class 1259 OID 187041)
-- Name: index_spree_product_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_position ON public.spree_product_option_types USING btree ("position");


--
-- TOC entry 5477 (class 1259 OID 187042)
-- Name: index_spree_product_option_types_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_product_id ON public.spree_product_option_types USING btree (product_id);


--
-- TOC entry 5485 (class 1259 OID 187062)
-- Name: index_spree_product_properties_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_properties_on_position ON public.spree_product_properties USING btree ("position");


--
-- TOC entry 5486 (class 1259 OID 187064)
-- Name: index_spree_product_properties_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_properties_on_property_id ON public.spree_product_properties USING btree (property_id);


--
-- TOC entry 5489 (class 1259 OID 187076)
-- Name: index_spree_products_on_available_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_available_on ON public.spree_products USING btree (available_on);


--
-- TOC entry 5490 (class 1259 OID 187077)
-- Name: index_spree_products_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_deleted_at ON public.spree_products USING btree (deleted_at);


--
-- TOC entry 5491 (class 1259 OID 187078)
-- Name: index_spree_products_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_name ON public.spree_products USING btree (name);


--
-- TOC entry 5492 (class 1259 OID 187079)
-- Name: index_spree_products_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_products_on_slug ON public.spree_products USING btree (slug);


--
-- TOC entry 5495 (class 1259 OID 187087)
-- Name: index_spree_products_taxons_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_position ON public.spree_products_taxons USING btree ("position");


--
-- TOC entry 5496 (class 1259 OID 187088)
-- Name: index_spree_products_taxons_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_product_id ON public.spree_products_taxons USING btree (product_id);


--
-- TOC entry 5497 (class 1259 OID 187089)
-- Name: index_spree_products_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_taxon_id ON public.spree_products_taxons USING btree (taxon_id);


--
-- TOC entry 5500 (class 1259 OID 187109)
-- Name: index_spree_promotion_actions_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_deleted_at ON public.spree_promotion_actions USING btree (deleted_at);


--
-- TOC entry 5501 (class 1259 OID 187110)
-- Name: index_spree_promotion_actions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_id_and_type ON public.spree_promotion_actions USING btree (id, type);


--
-- TOC entry 5502 (class 1259 OID 187111)
-- Name: index_spree_promotion_actions_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_promotion_id ON public.spree_promotion_actions USING btree (promotion_id);


--
-- TOC entry 5698 (class 1259 OID 187724)
-- Name: index_spree_promotion_code_batches_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_code_batches_on_promotion_id ON public.spree_promotion_code_batches USING btree (promotion_id);


--
-- TOC entry 5507 (class 1259 OID 187735)
-- Name: index_spree_promotion_codes_on_promotion_code_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_codes_on_promotion_code_batch_id ON public.spree_promotion_codes USING btree (promotion_code_batch_id);


--
-- TOC entry 5508 (class 1259 OID 187130)
-- Name: index_spree_promotion_codes_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_codes_on_promotion_id ON public.spree_promotion_codes USING btree (promotion_id);


--
-- TOC entry 5509 (class 1259 OID 187131)
-- Name: index_spree_promotion_codes_on_value; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_promotion_codes_on_value ON public.spree_promotion_codes USING btree (value);


--
-- TOC entry 5512 (class 1259 OID 187139)
-- Name: index_spree_promotion_rule_taxons_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rule_taxons_on_promotion_rule_id ON public.spree_promotion_rule_taxons USING btree (promotion_rule_id);


--
-- TOC entry 5513 (class 1259 OID 187140)
-- Name: index_spree_promotion_rule_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rule_taxons_on_taxon_id ON public.spree_promotion_rule_taxons USING btree (taxon_id);


--
-- TOC entry 5516 (class 1259 OID 187151)
-- Name: index_spree_promotion_rules_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_on_promotion_id ON public.spree_promotion_rules USING btree (promotion_id);


--
-- TOC entry 5705 (class 1259 OID 187769)
-- Name: index_spree_promotion_rules_stores_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_stores_on_promotion_rule_id ON public.spree_promotion_rules_stores USING btree (promotion_rule_id);


--
-- TOC entry 5706 (class 1259 OID 187768)
-- Name: index_spree_promotion_rules_stores_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_stores_on_store_id ON public.spree_promotion_rules_stores USING btree (store_id);


--
-- TOC entry 5523 (class 1259 OID 187173)
-- Name: index_spree_promotions_on_advertise; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_advertise ON public.spree_promotions USING btree (advertise);


--
-- TOC entry 5524 (class 1259 OID 187174)
-- Name: index_spree_promotions_on_apply_automatically; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_apply_automatically ON public.spree_promotions USING btree (apply_automatically);


--
-- TOC entry 5525 (class 1259 OID 187176)
-- Name: index_spree_promotions_on_expires_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_expires_at ON public.spree_promotions USING btree (expires_at);


--
-- TOC entry 5526 (class 1259 OID 187177)
-- Name: index_spree_promotions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_id_and_type ON public.spree_promotions USING btree (id, type);


--
-- TOC entry 5527 (class 1259 OID 187178)
-- Name: index_spree_promotions_on_promotion_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_promotion_category_id ON public.spree_promotions USING btree (promotion_category_id);


--
-- TOC entry 5528 (class 1259 OID 187179)
-- Name: index_spree_promotions_on_starts_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_starts_at ON public.spree_promotions USING btree (starts_at);


--
-- TOC entry 5535 (class 1259 OID 187203)
-- Name: index_spree_prototype_taxons_on_prototype_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id ON public.spree_prototype_taxons USING btree (prototype_id);


--
-- TOC entry 5536 (class 1259 OID 187204)
-- Name: index_spree_prototype_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prototype_taxons_on_taxon_id ON public.spree_prototype_taxons USING btree (taxon_id);


--
-- TOC entry 5544 (class 1259 OID 187235)
-- Name: index_spree_refunds_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_refunds_on_payment_id ON public.spree_refunds USING btree (payment_id);


--
-- TOC entry 5545 (class 1259 OID 187237)
-- Name: index_spree_refunds_on_reimbursement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_refunds_on_reimbursement_id ON public.spree_refunds USING btree (reimbursement_id);


--
-- TOC entry 5550 (class 1259 OID 187259)
-- Name: index_spree_reimbursement_types_on_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursement_types_on_type ON public.spree_reimbursement_types USING btree (type);


--
-- TOC entry 5553 (class 1259 OID 187269)
-- Name: index_spree_reimbursements_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursements_on_customer_return_id ON public.spree_reimbursements USING btree (customer_return_id);


--
-- TOC entry 5554 (class 1259 OID 187270)
-- Name: index_spree_reimbursements_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursements_on_order_id ON public.spree_reimbursements USING btree (order_id);


--
-- TOC entry 5561 (class 1259 OID 187295)
-- Name: index_spree_return_items_on_exchange_inventory_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_return_items_on_exchange_inventory_unit_id ON public.spree_return_items USING btree (exchange_inventory_unit_id);


--
-- TOC entry 5566 (class 1259 OID 187759)
-- Name: index_spree_roles_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_roles_on_name ON public.spree_roles USING btree (name);


--
-- TOC entry 5569 (class 1259 OID 187323)
-- Name: index_spree_roles_users_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_roles_users_on_role_id ON public.spree_roles_users USING btree (role_id);


--
-- TOC entry 5570 (class 1259 OID 187324)
-- Name: index_spree_roles_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_roles_users_on_user_id ON public.spree_roles_users USING btree (user_id);


--
-- TOC entry 5571 (class 1259 OID 187760)
-- Name: index_spree_roles_users_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_roles_users_on_user_id_and_role_id ON public.spree_roles_users USING btree (user_id, role_id);


--
-- TOC entry 5575 (class 1259 OID 187341)
-- Name: index_spree_shipments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipments_on_order_id ON public.spree_shipments USING btree (order_id);


--
-- TOC entry 5576 (class 1259 OID 187342)
-- Name: index_spree_shipments_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipments_on_stock_location_id ON public.spree_shipments USING btree (stock_location_id);


--
-- TOC entry 5581 (class 1259 OID 187360)
-- Name: index_spree_shipping_method_categories_on_shipping_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_method_id ON public.spree_shipping_method_categories USING btree (shipping_method_id);


--
-- TOC entry 5591 (class 1259 OID 187387)
-- Name: index_spree_shipping_methods_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_methods_on_tax_category_id ON public.spree_shipping_methods USING btree (tax_category_id);


--
-- TOC entry 5594 (class 1259 OID 187396)
-- Name: index_spree_shipping_rate_taxes_on_shipping_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_rate_taxes_on_shipping_rate_id ON public.spree_shipping_rate_taxes USING btree (shipping_rate_id);


--
-- TOC entry 5595 (class 1259 OID 187397)
-- Name: index_spree_shipping_rate_taxes_on_tax_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_rate_taxes_on_tax_rate_id ON public.spree_shipping_rate_taxes USING btree (tax_rate_id);


--
-- TOC entry 5601 (class 1259 OID 187417)
-- Name: index_spree_state_changes_on_stateful_id_and_stateful_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_state_changes_on_stateful_id_and_stateful_type ON public.spree_state_changes USING btree (stateful_id, stateful_type);


--
-- TOC entry 5602 (class 1259 OID 187418)
-- Name: index_spree_state_changes_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_state_changes_on_user_id ON public.spree_state_changes USING btree (user_id);


--
-- TOC entry 5605 (class 1259 OID 187428)
-- Name: index_spree_states_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_states_on_country_id ON public.spree_states USING btree (country_id);


--
-- TOC entry 5608 (class 1259 OID 187438)
-- Name: index_spree_stock_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_items_on_deleted_at ON public.spree_stock_items USING btree (deleted_at);


--
-- TOC entry 5609 (class 1259 OID 187440)
-- Name: index_spree_stock_items_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_items_on_stock_location_id ON public.spree_stock_items USING btree (stock_location_id);


--
-- TOC entry 5610 (class 1259 OID 187441)
-- Name: index_spree_stock_items_on_variant_id_and_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_stock_items_on_variant_id_and_stock_location_id ON public.spree_stock_items USING btree (variant_id, stock_location_id) WHERE (deleted_at IS NULL);


--
-- TOC entry 5614 (class 1259 OID 187459)
-- Name: index_spree_stock_locations_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_locations_on_country_id ON public.spree_stock_locations USING btree (country_id);


--
-- TOC entry 5615 (class 1259 OID 187460)
-- Name: index_spree_stock_locations_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_locations_on_state_id ON public.spree_stock_locations USING btree (state_id);


--
-- TOC entry 5618 (class 1259 OID 187471)
-- Name: index_spree_stock_movements_on_stock_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_movements_on_stock_item_id ON public.spree_stock_movements USING btree (stock_item_id);


--
-- TOC entry 5623 (class 1259 OID 187491)
-- Name: index_spree_store_credit_events_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_events_on_deleted_at ON public.spree_store_credit_events USING btree (deleted_at);


--
-- TOC entry 5624 (class 1259 OID 187492)
-- Name: index_spree_store_credit_events_on_store_credit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_events_on_store_credit_id ON public.spree_store_credit_events USING btree (store_credit_id);


--
-- TOC entry 5627 (class 1259 OID 187502)
-- Name: index_spree_store_credit_types_on_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_types_on_priority ON public.spree_store_credit_types USING btree (priority);


--
-- TOC entry 5630 (class 1259 OID 187524)
-- Name: index_spree_store_credits_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_deleted_at ON public.spree_store_credits USING btree (deleted_at);


--
-- TOC entry 5631 (class 1259 OID 187525)
-- Name: index_spree_store_credits_on_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_type_id ON public.spree_store_credits USING btree (type_id);


--
-- TOC entry 5632 (class 1259 OID 187526)
-- Name: index_spree_store_credits_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_user_id ON public.spree_store_credits USING btree (user_id);


--
-- TOC entry 5635 (class 1259 OID 187534)
-- Name: index_spree_store_payment_methods_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_payment_methods_on_payment_method_id ON public.spree_store_payment_methods USING btree (payment_method_id);


--
-- TOC entry 5636 (class 1259 OID 187535)
-- Name: index_spree_store_payment_methods_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_payment_methods_on_store_id ON public.spree_store_payment_methods USING btree (store_id);


--
-- TOC entry 5709 (class 1259 OID 187778)
-- Name: index_spree_store_shipping_methods_on_shipping_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_shipping_methods_on_shipping_method_id ON public.spree_store_shipping_methods USING btree (shipping_method_id);


--
-- TOC entry 5710 (class 1259 OID 187777)
-- Name: index_spree_store_shipping_methods_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_shipping_methods_on_store_id ON public.spree_store_shipping_methods USING btree (store_id);


--
-- TOC entry 5639 (class 1259 OID 187546)
-- Name: index_spree_stores_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stores_on_code ON public.spree_stores USING btree (code);


--
-- TOC entry 5640 (class 1259 OID 187547)
-- Name: index_spree_stores_on_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stores_on_default ON public.spree_stores USING btree ("default");


--
-- TOC entry 5701 (class 1259 OID 187747)
-- Name: index_spree_tax_rate_tax_categories_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rate_tax_categories_on_tax_category_id ON public.spree_tax_rate_tax_categories USING btree (tax_category_id);


--
-- TOC entry 5702 (class 1259 OID 187748)
-- Name: index_spree_tax_rate_tax_categories_on_tax_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rate_tax_categories_on_tax_rate_id ON public.spree_tax_rate_tax_categories USING btree (tax_rate_id);


--
-- TOC entry 5645 (class 1259 OID 187569)
-- Name: index_spree_tax_rates_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rates_on_deleted_at ON public.spree_tax_rates USING btree (deleted_at);


--
-- TOC entry 5646 (class 1259 OID 187571)
-- Name: index_spree_tax_rates_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rates_on_zone_id ON public.spree_tax_rates USING btree (zone_id);


--
-- TOC entry 5649 (class 1259 OID 187582)
-- Name: index_spree_taxonomies_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxonomies_on_position ON public.spree_taxonomies USING btree ("position");


--
-- TOC entry 5652 (class 1259 OID 187738)
-- Name: index_spree_taxons_on_lft; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxons_on_lft ON public.spree_taxons USING btree (lft);


--
-- TOC entry 5653 (class 1259 OID 187739)
-- Name: index_spree_taxons_on_rgt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxons_on_rgt ON public.spree_taxons USING btree (rgt);


--
-- TOC entry 5659 (class 1259 OID 187606)
-- Name: index_spree_unit_cancels_on_inventory_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_unit_cancels_on_inventory_unit_id ON public.spree_unit_cancels USING btree (inventory_unit_id);


--
-- TOC entry 5662 (class 1259 OID 187616)
-- Name: index_spree_user_addresses_on_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_addresses_on_address_id ON public.spree_user_addresses USING btree (address_id);


--
-- TOC entry 5663 (class 1259 OID 187618)
-- Name: index_spree_user_addresses_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_addresses_on_user_id ON public.spree_user_addresses USING btree (user_id);


--
-- TOC entry 5664 (class 1259 OID 187617)
-- Name: index_spree_user_addresses_on_user_id_and_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_user_addresses_on_user_id_and_address_id ON public.spree_user_addresses USING btree (user_id, address_id);


--
-- TOC entry 5667 (class 1259 OID 187626)
-- Name: index_spree_user_stock_locations_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_stock_locations_on_user_id ON public.spree_user_stock_locations USING btree (user_id);


--
-- TOC entry 5355 (class 1259 OID 187811)
-- Name: index_spree_users_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_users_on_deleted_at ON public.spree_users USING btree (deleted_at);


--
-- TOC entry 5356 (class 1259 OID 187812)
-- Name: index_spree_users_on_reset_password_token_solidus_auth_devise; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_users_on_reset_password_token_solidus_auth_devise ON public.spree_users USING btree (reset_password_token);


--
-- TOC entry 5357 (class 1259 OID 187809)
-- Name: index_spree_users_on_spree_api_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_users_on_spree_api_key ON public.spree_users USING btree (spree_api_key);


--
-- TOC entry 5670 (class 1259 OID 187634)
-- Name: index_spree_variant_prop_rule_conditions_on_rule_and_optval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_prop_rule_conditions_on_rule_and_optval ON public.spree_variant_property_rule_conditions USING btree (variant_property_rule_id, option_value_id);


--
-- TOC entry 5673 (class 1259 OID 187645)
-- Name: index_spree_variant_property_rule_values_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rule_values_on_property_id ON public.spree_variant_property_rule_values USING btree (property_id);


--
-- TOC entry 5674 (class 1259 OID 187646)
-- Name: index_spree_variant_property_rule_values_on_rule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rule_values_on_rule ON public.spree_variant_property_rule_values USING btree (variant_property_rule_id);


--
-- TOC entry 5677 (class 1259 OID 187654)
-- Name: index_spree_variant_property_rules_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rules_on_product_id ON public.spree_variant_property_rules USING btree (product_id);


--
-- TOC entry 5680 (class 1259 OID 187668)
-- Name: index_spree_variants_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_position ON public.spree_variants USING btree ("position");


--
-- TOC entry 5681 (class 1259 OID 187669)
-- Name: index_spree_variants_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_product_id ON public.spree_variants USING btree (product_id);


--
-- TOC entry 5682 (class 1259 OID 187798)
-- Name: index_spree_variants_on_shipping_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_shipping_category_id ON public.spree_variants USING btree (shipping_category_id);


--
-- TOC entry 5683 (class 1259 OID 187670)
-- Name: index_spree_variants_on_sku; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_sku ON public.spree_variants USING btree (sku);


--
-- TOC entry 5684 (class 1259 OID 187671)
-- Name: index_spree_variants_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_tax_category_id ON public.spree_variants USING btree (tax_category_id);


--
-- TOC entry 5685 (class 1259 OID 187672)
-- Name: index_spree_variants_on_track_inventory; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_track_inventory ON public.spree_variants USING btree (track_inventory);


--
-- TOC entry 5694 (class 1259 OID 187711)
-- Name: index_spree_wallet_payment_sources_on_source_and_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_wallet_payment_sources_on_source_and_user ON public.spree_wallet_payment_sources USING btree (user_id, payment_source_id, payment_source_type);


--
-- TOC entry 5695 (class 1259 OID 187710)
-- Name: index_spree_wallet_payment_sources_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_wallet_payment_sources_on_user_id ON public.spree_wallet_payment_sources USING btree (user_id);


--
-- TOC entry 5688 (class 1259 OID 187682)
-- Name: index_spree_zone_members_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_zone_members_on_zone_id ON public.spree_zone_members USING btree (zone_id);


--
-- TOC entry 5689 (class 1259 OID 187683)
-- Name: index_spree_zone_members_on_zoneable_id_and_zoneable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_zone_members_on_zoneable_id_and_zoneable_type ON public.spree_zone_members USING btree (zoneable_id, zoneable_type);


--
-- TOC entry 5654 (class 1259 OID 187593)
-- Name: index_taxons_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_parent_id ON public.spree_taxons USING btree (parent_id);


--
-- TOC entry 5655 (class 1259 OID 187594)
-- Name: index_taxons_on_permalink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_permalink ON public.spree_taxons USING btree (permalink);


--
-- TOC entry 5656 (class 1259 OID 187596)
-- Name: index_taxons_on_taxonomy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_taxonomy_id ON public.spree_taxons USING btree (taxonomy_id);


--
-- TOC entry 5726 (class 1259 OID 187875)
-- Name: payment_method_and_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payment_method_and_source ON public.solidus_stripe_customers USING btree (payment_method_id, source_type, source_id);


--
-- TOC entry 5585 (class 1259 OID 187368)
-- Name: shipping_method_id_spree_sm_sl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shipping_method_id_spree_sm_sl ON public.spree_shipping_method_stock_locations USING btree (shipping_method_id);


--
-- TOC entry 5598 (class 1259 OID 187407)
-- Name: spree_shipping_rates_join_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spree_shipping_rates_join_index ON public.spree_shipping_rates USING btree (shipment_id, shipping_method_id);


--
-- TOC entry 5588 (class 1259 OID 187369)
-- Name: sstock_location_id_spree_sm_sl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sstock_location_id_spree_sm_sl ON public.spree_shipping_method_stock_locations USING btree (stock_location_id);


--
-- TOC entry 5613 (class 1259 OID 187439)
-- Name: stock_item_by_loc_and_var_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stock_item_by_loc_and_var_id ON public.spree_stock_items USING btree (stock_location_id, variant_id);


--
-- TOC entry 5584 (class 1259 OID 187359)
-- Name: unique_spree_shipping_method_categories; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_spree_shipping_method_categories ON public.spree_shipping_method_categories USING btree (shipping_category_id, shipping_method_id);


--
-- TOC entry 5740 (class 2606 OID 187853)
-- Name: solidus_stripe_slug_entries fk_rails_32ae6ea4fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_slug_entries
    ADD CONSTRAINT fk_rails_32ae6ea4fd FOREIGN KEY (payment_method_id) REFERENCES public.spree_payment_methods(id);


--
-- TOC entry 5736 (class 2606 OID 187754)
-- Name: spree_tax_rate_tax_categories fk_rails_3e6fe87e12; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT fk_rails_3e6fe87e12 FOREIGN KEY (tax_rate_id) REFERENCES public.spree_tax_rates(id);


--
-- TOC entry 5737 (class 2606 OID 187749)
-- Name: spree_tax_rate_tax_categories fk_rails_499313ce8e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT fk_rails_499313ce8e FOREIGN KEY (tax_category_id) REFERENCES public.spree_tax_categories(id);


--
-- TOC entry 5738 (class 2606 OID 187832)
-- Name: solidus_stripe_payment_intents fk_rails_5305cc8ccd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_intents
    ADD CONSTRAINT fk_rails_5305cc8ccd FOREIGN KEY (order_id) REFERENCES public.spree_orders(id);


--
-- TOC entry 5739 (class 2606 OID 187837)
-- Name: solidus_stripe_payment_intents fk_rails_5c8dd2b9ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_payment_intents
    ADD CONSTRAINT fk_rails_5c8dd2b9ff FOREIGN KEY (payment_method_id) REFERENCES public.spree_payment_methods(id);


--
-- TOC entry 5734 (class 2606 OID 187705)
-- Name: spree_wallet_payment_sources fk_rails_5dd6e027c5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources
    ADD CONSTRAINT fk_rails_5dd6e027c5 FOREIGN KEY (user_id) REFERENCES public.spree_users(id);


--
-- TOC entry 5741 (class 2606 OID 187869)
-- Name: solidus_stripe_customers fk_rails_716e8d4322; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solidus_stripe_customers
    ADD CONSTRAINT fk_rails_716e8d4322 FOREIGN KEY (payment_method_id) REFERENCES public.spree_payment_methods(id);


--
-- TOC entry 5730 (class 2606 OID 186683)
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 5735 (class 2606 OID 187725)
-- Name: spree_promotion_code_batches fk_rails_c217102f50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches
    ADD CONSTRAINT fk_rails_c217102f50 FOREIGN KEY (promotion_id) REFERENCES public.spree_promotions(id);


--
-- TOC entry 5729 (class 2606 OID 186667)
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 5731 (class 2606 OID 187799)
-- Name: spree_orders_promotions fk_rails_d79b345745; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions
    ADD CONSTRAINT fk_rails_d79b345745 FOREIGN KEY (order_id) REFERENCES public.spree_orders(id) ON DELETE CASCADE NOT VALID;


--
-- TOC entry 5732 (class 2606 OID 187804)
-- Name: spree_orders_promotions fk_rails_d919cacf25; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions
    ADD CONSTRAINT fk_rails_d919cacf25 FOREIGN KEY (promotion_id) REFERENCES public.spree_promotions(id) ON DELETE CASCADE;


--
-- TOC entry 5733 (class 2606 OID 187730)
-- Name: spree_promotion_codes fk_rails_e306e312d9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes
    ADD CONSTRAINT fk_rails_e306e312d9 FOREIGN KEY (promotion_code_batch_id) REFERENCES public.spree_promotion_code_batches(id);


-- Completed on 2025-03-23 19:47:55

--
-- PostgreSQL database dump complete
--

