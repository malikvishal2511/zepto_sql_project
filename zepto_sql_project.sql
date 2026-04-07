--
-- PostgreSQL database dump
--

\restrict zVmSLcj0kff21grcOrsqSVLHrKLq4OrhwMYyyfPNzngyonpn2MIARtsSfFjXmBV

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-07 13:56:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16390)
-- Name: zepto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zepto (
    sku_id integer NOT NULL,
    category character varying(120),
    name character varying(150) NOT NULL,
    mrp numeric(8,2),
    discountpercent numeric(5,2),
    availablequantity integer,
    discountedsellingprice numeric(8,2),
    weightingms integer,
    outofstock boolean,
    quantity integer
);


ALTER TABLE public.zepto OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: zepto_sku_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zepto_sku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zepto_sku_id_seq OWNER TO postgres;

--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 219
-- Name: zepto_sku_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zepto_sku_id_seq OWNED BY public.zepto.sku_id;


--
-- TOC entry 4856 (class 2604 OID 16393)
-- Name: zepto sku_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zepto ALTER COLUMN sku_id SET DEFAULT nextval('public.zepto_sku_id_seq'::regclass);


--
-- TOC entry 5007 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: zepto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zepto (sku_id, category, name, mrp, discountpercent, availablequantity, discountedsellingprice, weightingms, outofstock, quantity) FROM stdin;
447	Fruits & Vegetables	Onion	25.00	16.00	3	21.00	1000	f	1
448	Fruits & Vegetables	Tomato Hybrid	42.00	16.00	3	35.00	1000	f	1
1214	Munchies	Everest Sabji Masala	30.00	3.00	6	29.00	50	f	50
1288	Munchies	Popular Essentials Ajwain Whole	50.00	12.00	2	44.00	100	f	100
1718	Beverages	iD Curd Cup	60.00	0.00	6	60.00	400	f	400
1989	Packaged Food	Kellogg's Corn Flakes	425.00	9.00	1	383.00	1000	f	1
2578	Ice Cream & Desserts	Top Ramen Masala	91.00	9.00	0	82.00	560	t	560
2990	Meats, Fish & Eggs	Arden Eggs White	97.00	0.00	4	97.00	696	f	12
3101	Biscuits	Parle Rusk Elaichi	48.00	2.00	6	47.00	300	f	300
3234	Personal Care	Gillette Sensitive Shaving Foam	225.00	6.00	4	210.00	418	f	418
3434	Personal Care	Johnson's Baby Oil	115.00	0.00	4	115.00	100	f	100
3561	Paan Corner	Livon Anti-Frizz Serum	250.00	10.00	3	225.00	100	f	100
3627	Paan Corner	Godrej Protekt	99.00	0.00	3	99.00	750	f	750
3825	Paan Corner	Set Wet Deodrant Charm Avatar	199.00	0.00	1	199.00	150	f	150
3888	Home & Cleaning	Surf Excel Stain Eraser	18.00	0.00	1	18.00	150	f	150
4014	Home & Cleaning	Om Bhakti Gangajal Packed At Gangotri	30.00	3.00	6	29.00	220	f	220
449	Fruits & Vegetables	Tender Coconut	51.00	15.00	3	43.00	58	f	1
450	Fruits & Vegetables	Coriander Leaves	20.00	15.00	3	17.00	100	f	100
451	Fruits & Vegetables	Ladies Finger 	14.00	14.00	3	12.00	250	f	250
452	Fruits & Vegetables	Potato	35.00	17.00	3	29.00	1000	f	1
453	Fruits & Vegetables	Lemon	75.00	16.00	3	63.00	200	f	200
454	Fruits & Vegetables	Watermelon 	58.00	15.00	3	49.00	58	f	1
455	Fruits & Vegetables	Capsicum Green 	23.00	17.00	3	19.00	250	f	250
456	Fruits & Vegetables	Chilli Green 	19.00	15.00	3	16.00	100	f	100
457	Fruits & Vegetables	Banana Robusta	29.00	17.00	3	24.00	348	f	6
458	Fruits & Vegetables	Garlic Indian 	11.00	18.00	3	9.00	100	f	100
459	Fruits & Vegetables	Cauliflower	26.00	15.00	3	22.00	58	f	1
460	Fruits & Vegetables	Ginger	14.00	14.00	3	12.00	200	f	200
461	Fruits & Vegetables	Spinach	19.00	15.00	3	16.00	250	f	250
462	Fruits & Vegetables	Muskmelon	42.00	16.00	3	35.00	58	f	1
463	Fruits & Vegetables	Cabbage 	15.00	13.00	3	13.00	58	f	1
464	Fruits & Vegetables	Methi	30.00	16.00	3	25.00	250	f	250
465	Fruits & Vegetables	Broccoli	36.00	16.00	3	30.00	500	f	500
466	Fruits & Vegetables	Sapota	30.00	16.00	3	25.00	348	f	6
467	Fruits & Vegetables	Onion	68.00	16.00	3	57.00	3000	f	3
468	Fruits & Vegetables	Potato	100.00	16.00	3	84.00	3000	f	3
469	Fruits & Vegetables	Orange Nagpur	82.00	15.00	3	69.00	232	f	4
470	Fruits & Vegetables	Mint Leaves 	11.00	18.00	3	9.00	100	f	100
471	Fruits & Vegetables	Beans French	33.00	15.00	3	28.00	250	f	250
472	Fruits & Vegetables	Bottle Gourd 	26.00	15.00	3	22.00	58	f	1
473	Fruits & Vegetables	Banana Elaichi 	58.00	15.00	3	49.00	348	f	6
474	Fruits & Vegetables	Coconut Big	36.00	16.00	3	30.00	58	f	1
475	Fruits & Vegetables	Curry Leaves	13.00	15.00	3	11.00	50	f	50
476	Fruits & Vegetables	Brinjal Bharta	19.00	15.00	3	16.00	58	f	1
477	Fruits & Vegetables	Lettuce Iceberg	25.00	16.00	3	21.00	250	f	250
478	Fruits & Vegetables	Papaya	54.00	16.00	3	45.00	58	f	1
479	Fruits & Vegetables	Apple Shimla	142.00	16.00	3	119.00	232	f	4
480	Fruits & Vegetables	Bitter Gourd	18.00	16.00	3	15.00	250	f	250
481	Fruits & Vegetables	Brinjal Small	18.00	16.00	3	15.00	250	f	250
482	Fruits & Vegetables	Sweet Corn	36.00	16.00	3	30.00	116	f	2
483	Fruits & Vegetables	Spring Onion 	18.00	16.00	3	15.00	250	f	250
484	Fruits & Vegetables	Bell Peppers Red & Yellow 	118.00	16.00	3	99.00	116	f	2
485	Fruits & Vegetables	Pomegranate 	106.00	16.00	3	89.00	116	f	2
486	Fruits & Vegetables	Sweet Lime	30.00	16.00	3	25.00	116	f	2
487	Fruits & Vegetables	Baby Potato	19.00	15.00	3	16.00	500	f	500
488	Fruits & Vegetables	Coccinia	32.00	15.00	3	27.00	250	f	250
489	Fruits & Vegetables	Guava	54.00	16.00	3	45.00	232	f	4
490	Fruits & Vegetables	Apple Washington	177.00	15.00	3	149.00	232	f	4
491	Fruits & Vegetables	Amla	32.00	15.00	3	27.00	250	f	250
492	Fruits & Vegetables	Beans Cluster	30.00	16.00	3	25.00	250	f	250
493	Fruits & Vegetables	Apple Royal Gala	189.00	15.00	3	159.00	232	f	4
494	Fruits & Vegetables	Chilli Bhaji	30.00	16.00	3	25.00	250	f	250
495	Fruits & Vegetables	Lettuce Green	23.00	17.00	3	19.00	100	f	100
496	Fruits & Vegetables	Baby Corn Peeled	35.00	17.00	3	29.00	250	f	250
497	Fruits & Vegetables	Mixed Sprouts	35.00	17.00	3	29.00	200	f	200
498	Fruits & Vegetables	Zucchini Green	35.00	17.00	3	29.00	250	f	250
499	Fruits & Vegetables	Beans Broad	42.00	16.00	3	35.00	250	f	250
500	Fruits & Vegetables	Raw Banana	20.00	15.00	6	17.00	500	f	500
501	Fruits & Vegetables	Colocasia 	29.00	17.00	6	24.00	500	f	500
502	Fruits & Vegetables	Tomato Cherry 	35.00	17.00	3	29.00	200	f	200
503	Fruits & Vegetables	Sweet Potato 	38.00	15.00	3	32.00	500	f	500
504	Fruits & Vegetables	Pineapple Slice	89.00	15.00	3	75.00	200	f	200
505	Fruits & Vegetables	Orange	54.00	16.00	3	45.00	116	f	2
506	Fruits & Vegetables	Dragon Fruit Imported	70.00	15.00	3	59.00	58	f	1
507	Fruits & Vegetables	Zucchini Yellow	42.00	16.00	3	35.00	250	f	500
508	Fruits & Vegetables	Apple Kinnaur	142.00	16.00	6	119.00	232	f	4
509	Fruits & Vegetables	Pineapple	94.00	15.00	3	79.00	58	f	1
510	Fruits & Vegetables	Basil	20.00	15.00	3	17.00	100	f	100
511	Fruits & Vegetables	Parsley	17.00	17.00	3	14.00	100	f	100
512	Fruits & Vegetables	Ridge Gourd	30.00	16.00	3	25.00	500	f	500
513	Fruits & Vegetables	Papaya Cut	46.00	15.00	3	39.00	200	f	200
514	Fruits & Vegetables	Pomegranate Peeled	58.00	15.00	2	49.00	100	f	100
515	Fruits & Vegetables	Pear Green Imported	82.00	15.00	3	69.00	116	f	2
516	Fruits & Vegetables	Guava Thai	70.00	15.00	3	59.00	116	f	2
517	Fruits & Vegetables	Lettuce Red	20.00	15.00	3	17.00	100	f	100
518	Fruits & Vegetables	Mango Raw	60.00	16.00	3	50.00	500	f	500
519	Fruits & Vegetables	Biryani /Pulav Mix	58.00	15.00	3	49.00	250	f	250
520	Fruits & Vegetables	Banana Nendran	54.00	16.00	6	45.00	500	f	500
521	Fruits & Vegetables	Pumpkin Cut	30.00	16.00	3	25.00	200	f	200
522	Fruits & Vegetables	Banana Red	54.00	16.00	6	45.00	500	f	500
523	Fruits & Vegetables	Radish White	23.00	17.00	6	19.00	500	f	500
524	Fruits & Vegetables	Avocado Indian Premium	177.00	15.00	3	149.00	58	f	1
525	Fruits & Vegetables	Banana Leaf	12.00	16.00	2	10.00	58	f	1
526	Fruits & Vegetables	Sponge Gourd	25.00	16.00	2	21.00	300	f	300
527	Fruits & Vegetables	Zama Organics Carrot	20.00	15.00	3	17.00	250	f	250
528	Fruits & Vegetables	Safal Frozen - Mixed Vegetables	110.00	4.00	2	105.00	1000	f	1
529	Fruits & Vegetables	Zama Organics Sweet Potato	37.00	16.00	3	31.00	250	f	250
530	Fruits & Vegetables	Beetroot	16.00	18.00	3	13.00	500	f	500
531	Fruits & Vegetables	Capsicum	26.00	19.00	3	21.00	500	f	500
532	Fruits & Vegetables	Carrot	19.00	21.00	3	15.00	500	f	500
533	Fruits & Vegetables	Garlic	17.00	23.00	3	13.00	200	f	200
534	Fruits & Vegetables	Carrot	13.00	15.00	0	11.00	250	t	200
535	Fruits & Vegetables	Beetroot	11.00	18.00	0	9.00	250	t	250
536	Fruits & Vegetables	Moong Sprouts	35.00	17.00	0	29.00	200	t	200
537	Fruits & Vegetables	Safal Frozen Mixed Vegetables	60.00	5.00	0	57.00	500	t	500
538	Fruits & Vegetables	Safal Frozen Corn	41.00	4.00	0	39.00	200	t	200
539	Fruits & Vegetables	Safal Frozen - Sweet Corn	160.00	5.00	0	152.00	1000	t	1
540	Cooking Essentials	Maggi 2 Minute Masala Noodles	12.00	0.00	6	12.00	70	f	70
541	Cooking Essentials	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
542	Cooking Essentials	Tata Salt	24.00	0.00	6	24.00	1000	f	1
543	Cooking Essentials	Arden Eggs White	97.00	0.00	4	97.00	696	f	12
544	Cooking Essentials	Arden Eggs White	65.00	15.00	4	55.00	348	f	6
545	Cooking Essentials	Fortune Sunlite Refined Sunflower (Pouch)	230.00	4.00	6	219.00	1000	f	1
546	Cooking Essentials	Aashirvaad Superior MP Atta	250.00	2.00	6	245.00	5000	f	5
547	Cooking Essentials	Amul Pure Ghee (Pouch)	255.00	2.00	6	249.00	500	f	500
548	Cooking Essentials	Arden Eggs Brown	85.00	7.00	4	79.00	348	f	6
549	Cooking Essentials	Tata Salt Lite	40.00	10.00	6	36.00	1000	f	1
550	Cooking Essentials	Saffola Gold Oil (Pouch)	215.00	0.00	6	215.00	1000	f	1
551	Cooking Essentials	Fortune Sunlite Refined Sunflower (Jar)	925.00	0.00	6	925.00	5000	f	5
552	Cooking Essentials	Fortune Rice Bran (Pouch)	225.00	11.00	6	199.00	1000	f	1
553	Cooking Essentials	Saffola Active Oil	210.00	0.00	6	210.00	1000	f	1
554	Cooking Essentials	Amul Pure Ghee (Pouch)	505.00	1.00	2	499.00	1000	f	1
555	Cooking Essentials	Aashirvaad Atta	460.00	13.00	6	399.00	10000	f	10
556	Cooking Essentials	Popular Essentials Toor Dal (Un-Polished)	160.00	6.00	4	149.00	1000	f	1
557	Cooking Essentials	Amul Ghee (Tin)	520.00	2.00	6	509.00	1000	f	1
558	Cooking Essentials	Amul Fresh Cream	197.00	3.00	3	191.00	1000	f	1
559	Cooking Essentials	Popular Essentials Pure Jaggery	50.00	2.00	6	49.00	450	f	450
560	Cooking Essentials	Aashirvaad Multigrain Atta	64.00	3.00	2	62.00	1000	f	1
561	Cooking Essentials	Fortune Soyabean Oil	1005.00	0.00	6	999.00	5000	f	5
562	Cooking Essentials	Popular Essentials Sunflower Seeds	25.00	0.00	6	25.00	50	f	50
563	Cooking Essentials	Tata Sampann kabuli chana	185.00	1.00	4	183.00	1000	f	500
564	Cooking Essentials	Dhara Groundnut Oil (Pouch)	230.00	11.00	6	203.00	1000	f	1
565	Cooking Essentials	Dhara Health Refined Sun Flower Oil Jar	1200.00	18.00	6	984.00	5000	f	5
566	Cooking Essentials	24 Mantra Organic Jaggery Powder	80.00	15.00	6	68.00	500	f	500
567	Cooking Essentials	Tata Sampann High Protien Kabuli Chana	94.00	0.00	1	94.00	500	f	500
568	Cooking Essentials	Dhara Kachi Ghani Mustard Oil Jar	1250.00	8.00	6	1143.00	5000	f	5
569	Cooking Essentials	D'lecta Dairy Cream	54.00	5.00	6	51.00	200	f	200
570	Cooking Essentials	Ching's Secret Instant Hot Garlic Noodles	15.00	0.00	3	15.00	60	f	60
571	Cooking Essentials	Dabur Ginger Garlic Paste	25.00	8.00	3	23.00	100	f	100
572	Cooking Essentials	Ching's Secret Instant Schezwan Noodles	15.00	0.00	6	15.00	60	f	60
573	Cooking Essentials	Gowardhan Ghee/Tuppa Jar	315.00	1.00	6	309.00	500	f	500
574	Cooking Essentials	Tata Sampann Unpolished Moong Dal 	92.00	4.00	4	88.00	500	f	500
575	Cooking Essentials	Aashirvaad Select Atta	64.00	0.00	6	64.00	1000	f	1
576	Cooking Essentials	Popular Essentials Misri Dana (Diamond Sugar) 	15.00	0.00	4	15.00	100	f	100
577	Cooking Essentials	Gowardhan Ghee Jar	598.00	3.00	6	579.00	1000	f	1
578	Cooking Essentials	Top Ramen  Noodles Curry Veg Pouch	20.00	0.00	1	20.00	70	f	70
579	Cooking Essentials	Popular Essentials Refined Sugar	60.00	0.00	6	60.00	1000	f	1
580	Cooking Essentials	Fortune Kachi Ghani Mustard Oil Bottle	216.00	7.00	6	199.00	1000	f	1
581	Cooking Essentials	Saffola Veggie Twist Masala Oats	15.00	0.00	6	15.00	38	f	38
582	Cooking Essentials	Satyam Puffed Rice Kurmura (R)	23.00	0.00	6	23.00	200	f	200
583	Cooking Essentials	Quaker Oats	79.00	0.00	2	79.00	400	f	400
584	Cooking Essentials	Aashirvaad Select Sharbati Atta	315.00	10.00	6	283.00	5000	f	5
585	Cooking Essentials	Popular Essentials Refined Sugar	295.00	10.00	6	265.00	5000	f	5
586	Cooking Essentials	Gowardhan Cow Ghee Pouch	579.00	10.00	6	521.00	1000	f	1
587	Cooking Essentials	Dhara Nourish Refined Sunflower Oil Pouch	210.00	5.00	6	199.00	1000	f	1
588	Cooking Essentials	Parachute Oil 	40.00	7.00	3	37.00	100	f	100
589	Cooking Essentials	Popular Essentials Plain Puffed Rice (Murmura/Muri)	18.00	0.00	6	18.00	100	f	100
590	Cooking Essentials	Amul Mithai Mate Condensed Sweetened Milk	56.00	3.00	4	54.00	200	f	200
591	Cooking Essentials	Saffola Gold (Jar)	1240.00	0.00	6	1240.00	5000	f	5
592	Cooking Essentials	McCain New Mini Samosa with Cheese Pizza Style Filling	120.00	1.00	3	118.00	240	f	240
593	Cooking Essentials	Fortune Rice Bran Health Oil (Jar)	1050.00	1.00	6	1039.00	5000	f	5
594	Cooking Essentials	Arden Desi Eggs	110.00	13.00	4	95.00	348	f	6
595	Cooking Essentials	Fortune Rozana Basmati Rice	585.00	21.00	6	462.00	5000	f	5
596	Cooking Essentials	Fortune Biriyani Special Basmati Rice	175.00	0.00	5	175.00	1000	f	1
597	Cooking Essentials	Everest Garam Masala	78.00	7.00	5	72.00	100	f	100
598	Cooking Essentials	Popular Essentials Pumpkin Seeds	90.00	16.00	6	75.00	100	f	100
599	Cooking Essentials	Fortune Soya Health Refined Soybean Oil	210.00	1.00	2	206.00	1000	f	1
600	Cooking Essentials	Gowardhan Pure Ghee Pouch	295.00	4.00	6	281.00	500	f	500
601	Cooking Essentials	Popular Essentials Jeera/Cumin Seeds	40.00	5.00	3	38.00	100	f	100
602	Cooking Essentials	Weikfield Baking Soda	30.00	3.00	6	29.00	100	f	100
603	Cooking Essentials	Everest Pav Bhaji Masala	37.00	10.00	4	33.00	50	f	50
604	Cooking Essentials	Tata Sampann Unpolished Chana Dal	95.00	6.00	2	89.00	1000	f	500
605	Cooking Essentials	Amul Mithai Mate EOE Tin	112.00	2.00	6	109.00	400	f	400
606	Cooking Essentials	Pillsbury Chakki Fresh Atta	450.00	16.00	6	375.00	10000	f	10
607	Cooking Essentials	Everest Chicken Masala	39.00	2.00	1	38.00	50	f	50
608	Cooking Essentials	Dhara Life Refined Ricebran Oil (Pouch)	205.00	7.00	6	190.00	1000	f	1
609	Cooking Essentials	Borges Extra Virgin Olive Oil	400.00	25.00	1	299.00	250	f	250
610	Cooking Essentials	Everest Shahi Biryani Masala	70.00	14.00	6	60.00	50	f	50
611	Cooking Essentials	Popular Essentials Californian Almond	350.00	28.00	6	251.00	250	f	250
612	Cooking Essentials	Popular Essentials Ajwain Whole	25.00	0.00	4	25.00	50	f	50
613	Cooking Essentials	Everest Tikhalal Chilli Powder	235.00	9.00	6	212.00	500	f	500
614	Cooking Essentials	Popular Essentials Kabuli Chana Regular	85.00	9.00	6	77.00	500	f	500
615	Cooking Essentials	Pillsbury Chakki Fresh Atta	52.00	0.00	4	52.00	1000	f	1
616	Cooking Essentials	Popular Essentials Saunf/Fennel Seeds	45.00	2.00	6	44.00	100	f	100
617	Cooking Essentials	Popular Essentials Bansi Sooji	35.00	2.00	3	34.00	500	f	500
618	Cooking Essentials	Happilo Premium International Queen Kalmi Dates	245.00	29.00	6	172.00	200	f	200
619	Cooking Essentials	Tata Sampann Unpolished Urad Whole	101.00	6.00	4	94.00	500	f	500
620	Cooking Essentials	Popular Essentials Cashew Split	325.00	12.00	6	283.00	250	f	250
621	Cooking Essentials	Popular Essentials Chana Dal (Un-Polished)	60.00	10.00	6	54.00	500	f	500
622	Cooking Essentials	Tata Sampann Unpolished Rajma (Chitra)	134.00	6.00	6	125.00	500	f	500
623	Cooking Essentials	Everest Garam Masala	42.00	2.00	2	41.00	50	f	50
624	Cooking Essentials	Everest Kitchen King Masala	70.00	14.00	2	60.00	100	f	100
625	Cooking Essentials	24 Mantra Organic Cumin	70.00	7.00	2	65.00	100	f	100
626	Cooking Essentials	Nestle Milkmaid	132.00	3.00	6	128.00	400	f	400
627	Cooking Essentials	Popular Essentials Sona Masouri Steam Rice	65.00	9.00	6	59.00	1000	f	1
628	Cooking Essentials	24 Mantra Organic Tur Dal	260.00	20.00	6	208.00	1000	f	1
629	Cooking Essentials	Gits Gulab Jamun Instant Dessert Mix	99.00	10.00	6	89.00	200	f	200
630	Cooking Essentials	Popular Essentials Black Masoor Whole (Un-Polished)	65.00	10.00	3	58.00	500	f	500
631	Cooking Essentials	24 Mantra Organic Peanuts	135.00	7.00	1	125.00	500	f	500
632	Cooking Essentials	Everest Hingraj Powder	90.00	10.00	2	81.00	50	f	50
633	Cooking Essentials	Everest Black Pepper Powder	135.00	14.00	6	115.00	100	f	100
634	Cooking Essentials	Tata Sampann Masoor Dal Stand	150.00	10.00	4	134.00	1000	f	1
635	Cooking Essentials	24 Mantra Organic Besan	95.00	7.00	5	88.00	500	f	500
636	Cooking Essentials	Quaker Oats	199.00	7.00	6	184.00	1000	f	1
637	Cooking Essentials	Saffola Gold Refined Cooking Oil (Jar)	485.00	7.00	6	449.00	2000	f	2
638	Cooking Essentials	Nestle Everyday Dairy Whitener	210.00	0.00	4	210.00	400	f	400
639	Cooking Essentials	24 Mantra Organic Red Poha	75.00	8.00	1	69.00	500	f	500
640	Cooking Essentials	Everest Powder - Tea Masala	98.00	9.00	5	89.00	100	f	100
641	Cooking Essentials	Tata Sampann Urad Dal Split	94.00	4.00	6	90.00	500	f	500
642	Cooking Essentials	Popular Essentials Idli Sooji 	30.00	6.00	6	28.00	500	f	500
643	Cooking Essentials	Popular Essentials Dessicated Coconut	95.00	9.00	6	86.00	200	f	200
644	Cooking Essentials	Sunfeast Yippee! Mood Masala Noodles	60.00	28.00	3	43.00	260	f	260
645	Cooking Essentials	Chef's Basket Durum Wheat Elbow Pasta	160.00	50.00	6	80.00	500	f	500
646	Cooking Essentials	MTR Breakfast Khatta Meetha Poha Mix	25.00	20.00	6	20.00	60	f	60
647	Cooking Essentials	Satyam Khobra	113.00	10.00	5	101.00	200	f	200
648	Cooking Essentials	Betty Crocker Complete Pancake Mix Original	110.00	4.00	6	105.00	250	f	500
649	Cooking Essentials	Borges Durum Wheat Fusilli Pasta 	250.00	0.00	3	250.00	500	f	500
650	Cooking Essentials	24 Mantra Organic Green Moong Dal - Split	135.00	0.00	2	135.00	500	f	500
651	Cooking Essentials	Weikfield Vanilla Flavoured Custard Powder	37.00	0.00	6	37.00	100	f	100
652	Cooking Essentials	Tata Sampann Moong Dal Split	180.00	1.00	5	178.00	1000	f	200
653	Cooking Essentials	Tata Sampann Kala Chana	64.00	0.00	5	64.00	500	f	500
654	Cooking Essentials	Saffola Soya Chunks Mealmaker	50.00	0.00	2	50.00	200	f	200
655	Cooking Essentials	24 Mantra Bura Sugar (Demerara)	80.00	10.00	6	72.00	500	f	500
656	Cooking Essentials	Popular Essentials Green Cardamom (Elaichi)	200.00	1.00	6	198.00	50	f	50
657	Cooking Essentials	Hershey's Syrup Delicious Strawberry	95.00	0.00	1	95.00	200	f	200
658	Cooking Essentials	Popular Essentials Anjeer	190.00	11.00	4	169.00	100	f	100
659	Cooking Essentials	Popular Essentials Mustard Seeds Rai Small	20.00	0.00	2	20.00	100	f	100
660	Cooking Essentials	Weikfield Baking Powder	33.00	3.00	6	32.00	100	f	100
661	Cooking Essentials	Dabur Honey Squeezy	185.00	9.00	6	167.00	225	f	225
662	Cooking Essentials	Tata Sampann High Protein Kali Urad	91.00	14.00	6	78.00	500	f	500
663	Cooking Essentials	Everest Kitchen King Masala	37.00	2.00	6	36.00	50	f	50
664	Cooking Essentials	Chef's Basket Durum Wheat Fusilli Pasta	160.00	50.00	6	80.00	500	f	500
665	Cooking Essentials	TilSona Til Oil	180.00	10.00	2	162.00	500	f	500
666	Cooking Essentials	Top Ramen Chicken Noodles	60.00	10.00	1	54.00	280	f	280
667	Cooking Essentials	Everest Chaat Masala	35.00	2.00	1	34.00	50	f	50
668	Cooking Essentials	Keya Wonder Red Hot Chilli Flakes	89.00	10.00	2	80.00	40	f	40
669	Cooking Essentials	Popular Essentials White Peas (Un-Polished)	80.00	10.00	5	72.00	500	f	500
670	Cooking Essentials	Ching’s Secret Chowmein Hakka Noodles Masala 	44.00	0.00	2	44.00	60	f	60
671	Cooking Essentials	Dhara Filtered Groundnut Oil (Jar)	1050.00	1.00	6	1035.00	5000	f	5
672	Cooking Essentials	Pillsbury Choco Chip Pancake Mix	99.00	5.00	6	94.00	165	f	165
673	Cooking Essentials	Hershey's Caramel Syrup	230.00	0.00	1	230.00	623	f	623
674	Cooking Essentials	Pillsbury Multi Grain Atta	60.00	6.00	3	56.00	1000	f	1
675	Cooking Essentials	McCain New Mini Samosa with Cheese Corn Style Filling	120.00	1.00	2	118.00	240	f	240
676	Cooking Essentials	Satyam Puffed Rice Kurmura (A)	43.00	0.00	6	43.00	200	f	200
677	Cooking Essentials	MTR 3 Min Poha	25.00	0.00	6	25.00	60	f	60
678	Cooking Essentials	Ching's Manchurian Instant Noodles	15.00	0.00	5	15.00	60	f	60
679	Cooking Essentials	Everest Pav Bhaji Masala	70.00	0.00	2	70.00	100	f	100
680	Cooking Essentials	Hershey's Chocolate Flavour Syrup	220.00	6.00	6	205.00	623	f	680
681	Cooking Essentials	Popular Essentials Dhania (Coriander Seeds)	55.00	16.00	4	46.00	200	f	200
682	Cooking Essentials	24 Mantra Red Chilly Whole	70.00	7.00	1	65.00	100	f	100
683	Cooking Essentials	Dabur Honey - World's No.1	120.00	0.00	6	120.00	250	f	250
684	Cooking Essentials	24 Mantra Organic Puffed Rice	40.00	2.00	6	39.00	200	f	200
685	Cooking Essentials	24 Mantra Organic Wheat Daliya 	48.00	2.00	2	47.00	500	f	500
686	Cooking Essentials	24 Mantra Organic Ragi Flour	65.00	20.00	4	52.00	500	f	500
687	Cooking Essentials	Popular Essentials Cinnamon Whole (Dalchini)	35.00	5.00	6	33.00	25	f	25
688	Cooking Essentials	Sundrop Super Lite Advanced - Sunflower Oil	215.00	0.00	4	215.00	1000	f	1
689	Cooking Essentials	Pillsbury Atta/Godihittu - Chakki Fresh	102.00	7.00	4	94.00	2000	f	2
690	Cooking Essentials	Popular Essentials Green Moong Chilka/Chilka (Un-Polished)	85.00	7.00	5	79.00	500	f	500
691	Cooking Essentials	Popular Essentials HMT Kolam Steam	75.00	0.00	3	75.00	1000	f	1
692	Cooking Essentials	Popular Essentials Black Urad Split	80.00	10.00	4	72.00	500	f	500
693	Cooking Essentials	Keya Oregano	109.00	10.00	5	98.00	9	f	9
694	Cooking Essentials	Popular Essentials Pink Rajma	100.00	10.00	6	90.00	500	f	500
695	Cooking Essentials	Everest Chicken Masala	74.00	2.00	6	72.00	100	f	100
696	Cooking Essentials	Popular Essentials HMT Kolam Steam	370.00	10.00	6	333.00	5000	f	5
697	Cooking Essentials	Everest Shahi Paneer Masala	42.00	4.00	5	40.00	50	f	50
698	Cooking Essentials	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
699	Cooking Essentials	Flying Bird Vanilla Essence	35.00	2.00	6	34.00	20	f	20
700	Cooking Essentials	Everest Sabji Masala	30.00	3.00	6	29.00	50	f	50
701	Cooking Essentials	Popular Essentials Californian Almond	695.00	32.00	6	470.00	500	f	500
702	Cooking Essentials	Cornitos Cornitos Taco Shells - 4 Inches	110.00	20.00	6	88.00	80	f	80
703	Cooking Essentials	Everest Rajma Masala	33.00	3.00	5	32.00	50	f	50
704	Cooking Essentials	Popular Essentials White Til	40.00	5.00	1	38.00	100	f	100
705	Cooking Essentials	Amul Dark Compound Chocolate Slab	125.00	2.00	6	122.00	500	f	500
706	Cooking Essentials	Mothers Recipe Papad Chana Masala	79.00	10.00	6	71.00	200	f	200
707	Cooking Essentials	Ching's Schezwan Masala Instant Noodles	60.00	0.00	1	60.00	240	f	240
708	Cooking Essentials	Amul Milk Compound Chocolate Slab	110.00	2.00	6	107.00	500	f	500
709	Cooking Essentials	Eastern Chicken Masala	70.00	7.00	3	65.00	100	f	100
710	Cooking Essentials	Popular Essentials Methi Seeds	25.00	0.00	5	25.00	100	f	100
711	Cooking Essentials	Saffola Yummy Masala Noodles 	20.00	0.00	2	20.00	46	f	46
712	Cooking Essentials	Cadbury Hot Chocolate	175.00	5.00	6	166.00	200	f	200
713	Cooking Essentials	Ching's Chicken Chilli Masala	10.00	0.00	6	10.00	20	f	20
714	Cooking Essentials	Dabur Keora water - Authentic flavour for Biryani's and Desserts	62.00	6.00	6	58.00	250	f	250
715	Cooking Essentials	Popular Essentials Black Cardamom/Elaichi 	100.00	10.00	6	90.00	50	f	50
716	Cooking Essentials	Popular Essentials Idli Rice	60.00	10.00	4	54.00	1000	f	1
717	Cooking Essentials	Everest Chole Masala	33.00	3.00	1	32.00	50	f	50
718	Cooking Essentials	Dabur Hommade Tamarind Paste	48.00	6.00	6	45.00	200	f	200
719	Cooking Essentials	Maggi Magic Cubes, Vegetarian Masala (Free 2 Cubes Inside)	35.00	2.00	6	34.00	48	f	48
720	Cooking Essentials	Popular Essentials Cooking Soda	30.00	10.00	6	27.00	200	f	200
721	Cooking Essentials	RRO Primio Refined Groundnut Oil Pet Bottle	255.00	6.00	2	239.00	1000	f	1
722	Cooking Essentials	Everest Pani Puri Masala	31.00	3.00	6	30.00	50	f	50
723	Cooking Essentials	Nissin Cup Noodles Tangy Tomato	50.00	10.00	2	45.00	70	f	70
724	Cooking Essentials	Ching's Veg Manchurian Masala	10.00	0.00	2	10.00	20	f	20
725	Cooking Essentials	Ceres Foods Fish Mustard Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
726	Cooking Essentials	Everest Garam Masala	158.00	10.00	6	142.00	200	f	200
727	Cooking Essentials	24 Mantra Organic Jowar Flour	70.00	7.00	6	65.00	500	f	500
728	Cooking Essentials	Maggi Coconut Milkpowder	100.00	0.00	6	100.00	100	f	100
729	Cooking Essentials	On1y Pepper Grinder	159.00	9.00	1	144.00	50	f	50
730	Cooking Essentials	Popular Essentials Rice Flour	60.00	0.00	3	60.00	1000	f	1
731	Cooking Essentials	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	10.00	1	25.00	65	f	65
732	Cooking Essentials	24 Mantra Organic Brown Sona Masoori Rice	95.00	0.00	6	95.00	1000	f	1
733	Cooking Essentials	Happilo Premium Afghani Anjeer	365.00	29.00	2	256.00	200	f	200
734	Cooking Essentials	Popular Essentials Chiroti Sooji	35.00	2.00	6	34.00	500	f	500
735	Cooking Essentials	RRO Til Dil Premium Til Oil Bottle	330.00	10.00	5	294.00	1000	f	1
736	Cooking Essentials	Popular Essentials Red Rajma	90.00	10.00	6	81.00	500	f	500
737	Cooking Essentials	Cornitos Peanut - Premium Salted 	120.00	10.00	6	108.00	150	f	150
738	Cooking Essentials	Popular Essentials Black Pepper	100.00	10.00	5	90.00	100	f	100
739	Cooking Essentials	24 Mantra Organic Tur Dal - Split	130.00	7.00	6	120.00	500	f	500
740	Cooking Essentials	Sugarfree Gold Low Calorie Sweetner	65.00	6.00	3	61.00	110	f	100
741	Cooking Essentials	Ching's Secret Paneer Chilli Masala	10.00	0.00	2	10.00	20	f	20
742	Cooking Essentials	Dabur Honey 	220.00	7.00	3	204.00	500	f	500
743	Cooking Essentials	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	17.00	3	23.00	65	f	65
744	Cooking Essentials	Everest Tea Masala	55.00	9.00	2	50.00	50	f	50
745	Cooking Essentials	Ching's Paneer Chilli Masala	44.00	0.00	4	44.00	60	f	60
746	Cooking Essentials	Sunfeast YiPPee! Magic Masala Noodles	70.00	10.00	3	63.00	405	f	405
747	Cooking Essentials	Everest Meat Masala Powder	74.00	9.00	3	67.00	100	f	100
748	Cooking Essentials	Pillsbury Atta With Multigrains Wheat Grains	295.00	16.00	6	245.00	5000	f	5
749	Cooking Essentials	Mother's Recipe Tamarind Paste	50.00	2.00	6	49.00	200	f	200
750	Cooking Essentials	Quaker Oats Breakfast Cereals - With Flavour Mix Nutritious Rich Source Of Energy	49.00	8.00	6	45.00	200	f	200
751	Cooking Essentials	Popular Essentials Cloves (Lavang)	75.00	17.00	6	62.00	50	f	50
752	Cooking Essentials	Sunfeast Yippee! Power Up Atta Noodles	96.00	15.00	6	81.00	280	f	280
753	Cooking Essentials	Suhana Paneer Tikka Masala Mix	40.00	5.00	6	38.00	50	f	50
754	Cooking Essentials	24 Mantra Turmeric Powder	35.00	2.00	6	34.00	100	f	100
755	Cooking Essentials	24 Mantra Super Grain Quinoa	190.00	0.00	4	190.00	500	f	500
756	Cooking Essentials	Everest Powder - Egg Curry Masala	40.00	2.00	6	39.00	50	f	50
757	Cooking Essentials	Popular Essentials Pe Shah Jeera 	60.00	15.00	6	51.00	50	f	50
758	Cooking Essentials	24 Mantra Organic Sattu Atta	95.00	0.00	6	95.00	500	f	500
759	Cooking Essentials	Smith & Jones Pasta Masala	46.00	0.00	6	46.00	54	f	54
760	Cooking Essentials	Weikfield Vanilla Custard Powder	142.00	9.00	3	128.00	500	f	500
761	Cooking Essentials	Sugarfree Natura Low Calorie Sweetner 	300.00	10.00	3	270.00	42	f	42
762	Cooking Essentials	Pillsbury Vanilla Custard Powder	37.00	2.00	6	36.00	100	f	100
763	Cooking Essentials	24 Mantra Organic Rajma	145.00	0.00	6	145.00	500	f	500
764	Cooking Essentials	Popular Essentials Broken Wheat/Daliya	35.00	2.00	6	34.00	500	f	500
765	Cooking Essentials	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
766	Cooking Essentials	Smith & Jones Peri Peri Masala	99.00	0.00	6	99.00	75	f	75
767	Cooking Essentials	Saffola Veggie Twist Masala Oats	195.00	12.00	2	171.00	500	f	500
768	Cooking Essentials	Popular Essentials Urad Dal Split (Un-Polished)	85.00	9.00	5	77.00	500	f	500
769	Cooking Essentials	Weikfield Baking Powder	22.00	0.00	6	22.00	50	f	50
770	Cooking Essentials	Popular Essentials Bajra Whole	65.00	13.00	6	56.00	1000	f	1
771	Cooking Essentials	Weikfield Veg Jelly Crystals - Strawberry	45.00	2.00	6	44.00	90	f	90
772	Cooking Essentials	Weikfield Veg Jelly Crystals - Raspberry	45.00	2.00	6	44.00	90	f	90
773	Cooking Essentials	Popular Essentials Masoor Dal Split (Un-Polished)	70.00	10.00	4	63.00	500	f	500
774	Cooking Essentials	Popular Essentials Ajwain Whole	50.00	12.00	2	44.00	100	f	100
775	Cooking Essentials	Popular Essentials Pista Salted (With Shell)	470.00	21.00	5	371.00	250	f	250
776	Cooking Essentials	The Bake Shop Bread Crumbs	50.00	6.00	3	47.00	400	f	400
777	Cooking Essentials	Popular Essentials Horse Gram	40.00	10.00	4	36.00	500	f	500
778	Cooking Essentials	Hershey's Chocolate Syrup	95.00	0.00	4	95.00	200	f	200
779	Cooking Essentials	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
780	Cooking Essentials	Everest Kasuri Methi	25.00	0.00	6	25.00	25	f	25
781	Cooking Essentials	Satyam Makhana	208.00	0.00	6	208.00	100	f	100
782	Cooking Essentials	Everest Tandoori Chicken Masala	39.00	2.00	5	38.00	50	f	50
783	Cooking Essentials	Weikfield Falooda Mix - Kesar Pista	49.00	2.00	3	48.00	200	f	200
784	Cooking Essentials	Weikfield Cocoa Powder	70.00	7.00	6	65.00	50	f	50
785	Cooking Essentials	Pantai Coconut Cream	150.00	4.00	4	143.00	400	f	400
786	Cooking Essentials	Popular Essentials Coriander Seeds	15.00	0.00	5	15.00	50	f	50
787	Cooking Essentials	Ching's Singapore Curry Instant Noodles	60.00	0.00	4	60.00	240	f	240
788	Cooking Essentials	Eastern Fish Masala	48.00	2.00	5	47.00	100	f	100
789	Cooking Essentials	Pillsbury Atta/Godihittu - Chakki Fresh	275.00	0.00	6	275.00	5000	f	5
790	Cooking Essentials	Oleev Smart Oil Fortified with VIT A, D, E & K (Pouch)	215.00	9.00	4	194.00	1000	f	1
791	Cooking Essentials	Everest Dry Ginger Powder	75.00	9.00	4	68.00	100	f	100
792	Cooking Essentials	Pillsbury Cooker Cake Mix - Choco	100.00	11.00	6	89.00	159	f	159
793	Cooking Essentials	Hersheys Chocolate Almond Syrup	200.00	0.00	2	200.00	450	f	450
794	Cooking Essentials	Satyam Nighties Spices  Chilli Pandi	56.00	7.00	5	52.00	100	f	100
795	Cooking Essentials	Popular Essentials Popular Essential Pista Salted (With Shell)	190.00	10.00	6	171.00	100	f	100
796	Cooking Essentials	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
797	Cooking Essentials	Popular Essentials Rozana Sona Masuri Raw Rice	350.00	10.00	5	312.00	5000	f	5
798	Cooking Essentials	24 Mantra Mustard Oil (Cold Pressed) 	350.00	10.00	6	312.00	1000	f	1
799	Cooking Essentials	24 Mantra Organic Black Pepper	170.00	7.00	6	157.00	100	f	100
800	Cooking Essentials	Popular Essentials Green Moong Whole	90.00	16.00	3	75.00	500	f	500
801	Cooking Essentials	24 Mantra Organic Masoor Dal - Split	95.00	7.00	6	88.00	500	f	500
802	Cooking Essentials	Praakritik Organic Natural Rock Salt	60.00	6.00	3	56.00	500	f	500
803	Cooking Essentials	24 Mantra Sunflower Oil (Cold Pressed) Pet Bottle	390.00	11.00	5	347.00	1000	f	1
804	Cooking Essentials	Ching's Secret Instant Noodles, Hot Garlic	60.00	0.00	4	60.00	240	f	240
805	Cooking Essentials	Saffola Everyday Peppy Tomato Masala Oats	195.00	12.00	6	171.00	500	f	500
806	Cooking Essentials	Dabur 100% Pure Honey - Worlds No.1	430.00	10.00	6	387.00	1000	f	1
807	Cooking Essentials	Popular Essentials Star Anise	70.00	10.00	5	63.00	25	f	25
808	Cooking Essentials	Ching's Secret Chicken 65 Masala - Chicken	10.00	0.00	5	10.00	20	f	20
809	Cooking Essentials	Cadbury Cocoa Powder	223.00	5.00	6	211.00	150	f	150
810	Cooking Essentials	Praakritik Natural Desi Gir Cow A2 Ghee	1450.00	10.00	6	1305.00	540	f	540
811	Cooking Essentials	Praakritik Organic Poha	120.00	6.00	5	112.00	500	f	500
812	Cooking Essentials	Praakritik Organic Natural Wild Forest Honey	160.00	6.00	4	150.00	200	f	200
813	Cooking Essentials	Popular Essentials Dry Dates (Kharak)	140.00	15.00	6	118.00	250	f	250
814	Cooking Essentials	Popular Essentials Kashmiri Red Rajma	95.00	6.00	4	89.00	500	f	500
815	Cooking Essentials	Dabur Hommade - Garlic Paste	50.00	6.00	6	47.00	200	f	200
816	Cooking Essentials	Dabur 100% Pure Honey	330.00	10.00	1	297.00	400	f	400
817	Cooking Essentials	Ching's Schezwan Fried Rice(Miracle Masala)	44.00	0.00	5	44.00	60	f	60
818	Cooking Essentials	Maggi Magic Cubes, Vegetarian Masala	35.00	2.00	1	34.00	40	f	40
819	Cooking Essentials	Everest Tandoori Chicken Masala	74.00	9.00	3	67.00	100	f	100
820	Cooking Essentials	Popular Essentials Red Poha	45.00	4.00	6	43.00	500	f	500
821	Cooking Essentials	Everest Kitchen King Masala	142.00	9.00	6	128.00	200	f	200
822	Cooking Essentials	Pillsbury Oven Cake Mix - Rich Chocolate	165.00	10.00	5	147.00	285	f	285
823	Cooking Essentials	Eastern Super Garam Masala	74.00	6.00	2	69.00	200	f	200
824	Cooking Essentials	Maggi Magic Cubes Extra Chicken	40.00	2.00	6	39.00	48	f	48
825	Cooking Essentials	Satyam Nighties Spices  Chilli Kashmiri	102.00	6.00	6	95.00	100	f	100
826	Cooking Essentials	Eastern Cumin Powder	49.00	2.00	6	48.00	100	f	100
827	Cooking Essentials	Popular Essentials Urad Gola White(Un-Polished)	90.00	10.00	6	81.00	500	f	500
828	Cooking Essentials	24 Mantra Organic Chana Dal	95.00	6.00	5	89.00	500	f	500
829	Cooking Essentials	Delight Nuts Cashew Roasted & Salted	425.00	20.00	6	340.00	200	f	200
830	Cooking Essentials	Popular Essentials Mace/Javitri	90.00	10.00	3	81.00	20	f	20
831	Cooking Essentials	Dlicia Whip Topping Bottle	235.00	27.00	5	171.00	1000	f	1
832	Cooking Essentials	Mother's Recipe Paste Ginger & Garlic	76.00	10.00	4	68.00	300	f	300
833	Cooking Essentials	24 Mantra Groundnut Oil (Cold Pressed) Pet Bottle	410.00	10.00	6	369.00	1000	f	1
834	Cooking Essentials	Satyam Pulses Masur Dal	87.00	6.00	6	81.00	500	f	500
835	Cooking Essentials	Delight Nuts Pista Roasted & Salted	425.00	20.00	6	340.00	200	f	200
836	Cooking Essentials	Top Ramen Noodles, Atta	80.00	0.00	1	80.00	280	f	280
837	Cooking Essentials	Hershey's Cocoa Powder	95.00	0.00	5	95.00	70	f	70
838	Cooking Essentials	Praakritik Organic Singhara Atta	240.00	6.00	4	225.00	500	f	500
839	Cooking Essentials	Gits Veg Biryani Ready to Eat	110.00	10.00	6	99.00	265	f	265
840	Cooking Essentials	Delight Nuts Cranberries Sliced 	299.00	20.00	6	239.00	200	f	200
841	Cooking Essentials	Borges Durum Wheat Pasta Superior Quality	250.00	40.00	6	149.00	500	f	500
842	Cooking Essentials	Ceres Foods Laal Maas Instant Liquid Masala	220.00	50.00	5	110.00	200	f	200
843	Cooking Essentials	Popular Essentials Sattu Atta	90.00	12.00	3	79.00	500	f	500
844	Cooking Essentials	Popular Essentials Mustard Seeds Rai Yellow	25.00	0.00	5	25.00	100	f	100
845	Cooking Essentials	Praakritik Organic Extra Virgin Coconut Oil	150.00	10.00	5	134.00	100	f	100
846	Cooking Essentials	Praakritik Organic Garlic Powder	110.00	1.00	5	108.00	100	f	100
847	Cooking Essentials	Sugarfree Gold Low Calorie Sweetner 	125.00	5.00	6	118.00	100	f	100
848	Cooking Essentials	Aashirvaad Breakfast Instant Mix - Rice Idli	75.00	30.00	6	52.00	200	f	200
849	Cooking Essentials	Kitchens Of India Mutter Paneer	130.00	4.00	6	124.00	285	f	285
850	Cooking Essentials	Ching's Secret Veg Manchurian Masala	44.00	0.00	6	44.00	60	f	60
851	Cooking Essentials	Popular Essentials Jowa Flour	50.00	2.00	5	49.00	500	f	500
852	Cooking Essentials	Everest Shahi Biryani Masala	245.00	0.00	6	245.00	200	f	200
853	Cooking Essentials	Popular Essentials Black Til	50.00	6.00	4	47.00	100	f	100
854	Cooking Essentials	Popular Essentials Pancharatna Dal	80.00	10.00	6	72.00	500	f	500
855	Cooking Essentials	Saffola 100% Pure Honey	475.00	8.00	2	437.00	1000	f	750
856	Cooking Essentials	Popular Essentials Tamarind	150.00	14.00	6	128.00	500	f	500
857	Cooking Essentials	Gits Rice Dosa Instant Breakfast Mix	60.00	5.00	5	57.00	200	f	200
858	Cooking Essentials	Popular Essentials Poppy Seeds (Gasagase)	280.00	7.00	6	260.00	100	f	100
859	Cooking Essentials	Hershey's Hot Chocolate Powder	210.00	0.00	4	210.00	250	f	250
860	Cooking Essentials	Borges Farfalle Durum Wheat Pasta 	250.00	0.00	5	250.00	500	f	500
861	Cooking Essentials	Satyam Chilli  Bedgi	82.00	10.00	5	73.00	100	f	100
862	Cooking Essentials	Aashirvaad Instant Mix - Rice Dosa	75.00	30.00	6	52.00	200	f	200
863	Cooking Essentials	Hershey's Cocoa - Natural Unsweetened	270.00	10.00	4	243.00	225	f	225
864	Cooking Essentials	Weikfield Veg Jelly Crystals - Mango	45.00	2.00	6	44.00	90	f	90
865	Cooking Essentials	Praakritik Orrganic Cold Pressed Sesame Oil	130.00	10.00	5	117.00	100	f	100
866	Cooking Essentials	Amulya Dairy Whitener 	380.00	2.00	4	372.00	1000	f	1
867	Cooking Essentials	ITC Master Chef Hyderabadi Biryani	75.00	30.00	5	52.00	80	f	80
868	Cooking Essentials	Flying Bird Butter Scotch Essence	50.00	2.00	6	49.00	20	f	20
869	Cooking Essentials	Dabur Hommade - Ginger Paste	50.00	6.00	6	47.00	200	f	200
870	Cooking Essentials	Popular Essentials Green Peas (Un-Polished)	120.00	10.00	5	108.00	500	f	500
871	Cooking Essentials	Quaker Oats Pouch	276.00	10.00	6	248.00	1500	f	1
872	Cooking Essentials	24 Mantra Organic Urad White Whole	145.00	15.00	4	122.00	500	f	500
873	Cooking Essentials	Popular Essentials Guntur Chilli Stemless	40.00	2.00	2	39.00	100	f	100
874	Cooking Essentials	Popular Essentials Moth Whole	90.00	10.00	6	81.00	500	f	500
875	Cooking Essentials	Keya Pizza Seasoning	109.00	17.00	6	90.00	45	f	45
876	Cooking Essentials	Keya Piri Piri | Exotic Spices Mix	109.00	20.00	6	87.00	80	f	80
877	Cooking Essentials	24 Mantra Organic Moong Dal	135.00	7.00	6	125.00	500	f	500
878	Cooking Essentials	Betty Crocker French Vanilla Cake Mix	310.00	10.00	6	276.00	520	f	520
879	Cooking Essentials	Delight Nuts Dried Cranberries 	340.00	20.00	6	272.00	200	f	200
880	Cooking Essentials	Everest Kesari Milk Masala	205.00	0.00	2	205.00	50	f	50
881	Cooking Essentials	Tong Garden Salted Cocktail Nuts	295.00	9.00	5	266.00	160	f	160
882	Cooking Essentials	MTR Uttapam Mix	165.00	5.00	6	156.00	500	f	500
883	Cooking Essentials	Gits Khaman Dhokla Instant Snack Mix	65.00	6.00	6	61.00	180	f	180
884	Cooking Essentials	Happilo Premium 100% Natural Whole Cashews	335.00	29.00	6	235.00	200	f	200
885	Cooking Essentials	Everest Dry Mango Powder	80.00	0.00	5	80.00	100	f	100
886	Cooking Essentials	Dabur Hommade - Ginger Garlic Past Tub	110.00	5.00	6	104.00	400	f	400
887	Cooking Essentials	Everest Chicken Masala	147.00	10.00	6	132.00	200	f	200
888	Cooking Essentials	Gits Medu Vada Instant Snack Mix	90.00	4.00	6	86.00	200	f	200
889	Cooking Essentials	Weikfield Drinking Chocolate Powder	65.00	10.00	6	58.00	100	f	100
890	Cooking Essentials	Popular Essentials Regular White Lobia	70.00	10.00	6	63.00	500	f	500
891	Cooking Essentials	Puro Healthy Salt Crystal	135.00	7.00	6	125.00	1000	f	1
892	Cooking Essentials	Popular Essentials Premium Jeera Rice	140.00	0.00	5	140.00	1000	f	1
893	Cooking Essentials	Smith & Jones Shahi Paneer Masala Mix	44.00	0.00	6	44.00	60	f	60
894	Cooking Essentials	Betty Crocker Mug Treats - Chocolate Mix - Pack of 4	200.00	11.00	6	178.00	264	f	264
895	Cooking Essentials	Smith & Jones Pasta Masala	60.00	10.00	5	54.00	108	f	108
896	Cooking Essentials	Catch Black Pepper Sprinkler	100.00	0.00	1	100.00	50	f	50
897	Cooking Essentials	Weikfield Cooker Cake Mix - Chocolate	95.00	6.00	6	89.00	150	f	150
898	Cooking Essentials	ITC Master Chef Butter Chicken	75.00	30.00	6	52.00	80	f	80
899	Cooking Essentials	Masala Oats Masala & Coriander 	195.00	9.00	5	176.00	500	f	500
900	Cooking Essentials	Smith & Jones Mutter Paneer Masala	42.00	0.00	6	42.00	60	f	60
901	Cooking Essentials	Kitchens of India Dal Bukhara Gravy Mix	110.00	30.00	6	77.00	285	f	285
902	Cooking Essentials	Popular Essentials Fried Gram (Bengal Gram)	70.00	10.00	6	63.00	500	f	500
903	Cooking Essentials	Gits Jalebi with Maker Dessert Mix	75.00	16.00	6	63.00	100	f	100
904	Cooking Essentials	Popular Essentials Soya Beans 	80.00	6.00	6	75.00	500	f	500
905	Cooking Essentials	24 Mantra Organic Roasted Bengal Gram Dal	105.00	7.00	6	97.00	500	f	500
906	Cooking Essentials	Keya Italian Seasoning	109.00	10.00	6	98.00	35	f	35
907	Cooking Essentials	MTR Idli/Dosa/Chilly Chutney Powder	115.00	0.00	3	115.00	200	f	200
908	Cooking Essentials	Delight Nuts Trail Mix 	399.00	25.00	6	299.00	200	f	200
909	Cooking Essentials	Praakritik Organic Chilka Moong Dal	120.00	10.00	6	108.00	500	f	500
910	Cooking Essentials	Smith & Jones Garlic & Herbs Masala Mix	99.00	0.00	6	99.00	75	f	75
911	Cooking Essentials	Eastern Tamarind	63.00	0.00	6	63.00	200	f	200
912	Cooking Essentials	Tong Garden Wasabi Coated Greenpeas Tin	200.00	11.00	6	178.00	180	f	180
913	Cooking Essentials	Flying Bird Pineapple Artifical Food Essence	50.00	2.00	6	49.00	20	f	20
914	Cooking Essentials	Mother's Recipe Tamarind Paste	50.00	2.00	2	49.00	200	f	200
915	Cooking Essentials	Japanese Choice Udon Noodles	295.00	9.00	6	266.00	250	f	250
916	Cooking Essentials	Pantai Coconut Milk	150.00	0.00	4	150.00	400	f	400
917	Cooking Essentials	Praakritik Organic Masoor Dal	130.00	10.00	6	116.00	500	f	500
918	Cooking Essentials	Popular Essentials Classic Sona Masuri Rice	430.00	10.00	6	387.00	5000	f	5
919	Cooking Essentials	Popular Essentials Salted Murmure 	70.00	18.00	6	57.00	400	f	400
920	Cooking Essentials	Oleev Active Oil (Pouch)	265.00	9.00	6	239.00	1000	f	1
921	Cooking Essentials	Delight Nuts Dried Blueberries 	540.00	20.00	6	432.00	150	f	150
922	Cooking Essentials	Popular Essentials Double Beans White	60.00	10.00	6	54.00	250	f	250
923	Cooking Essentials	Delight Nuts Almond Natural 	349.00	20.00	6	279.00	200	f	200
924	Cooking Essentials	Praakritik Organic Jaggery	160.00	6.00	6	150.00	900	f	900
925	Cooking Essentials	Praakritik Organic Raw Sugar	90.00	6.00	6	84.00	500	f	500
926	Cooking Essentials	MTR Masala - Sambar Powder	115.00	0.00	4	115.00	200	f	200
927	Cooking Essentials	RRO Til Dil Premium Til Oil Bottle	173.00	6.00	6	162.00	500	f	500
928	Cooking Essentials	ITC Master Chef Vegetable Biryani Cooking Paste	75.00	30.00	5	52.00	80	f	80
929	Cooking Essentials	Jivana Jaggery	100.00	0.00	2	100.00	950	f	950
930	Cooking Essentials	Praakritik Organic Besan	170.00	6.00	6	159.00	500	f	500
931	Cooking Essentials	MTR Instant Gulab Jamun Mix	195.00	9.00	6	176.00	500	f	500
932	Cooking Essentials	Maggi Magic Cubes Extra Chicken	199.00	0.00	2	199.00	240	f	240
933	Cooking Essentials	On1y Mixed Herbs	99.00	0.00	6	99.00	14	f	14
934	Cooking Essentials	Popular Essentials Urad Gola Black (Un-Polished)	80.00	10.00	6	72.00	500	f	500
935	Cooking Essentials	Gits Dessert Mix China Grass Bombay Halwa	55.00	0.00	4	55.00	80	f	80
936	Cooking Essentials	Praakritik Organic Basmati Rice	170.00	0.00	5	170.00	500	f	500
937	Cooking Essentials	Ceres Foods Nalli Nihari Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
938	Cooking Essentials	Borges Canola Oil Pet Bottle	399.00	0.00	6	399.00	1000	f	1
939	Cooking Essentials	Suhana Biryani Masala	66.00	0.00	6	66.00	50	f	50
940	Cooking Essentials	On1y Black Salt Grinder	99.00	0.00	6	99.00	100	f	100
941	Cooking Essentials	Popular Essentials Nylon Til	40.00	2.00	6	39.00	100	f	100
942	Cooking Essentials	Pillsbury Rich Choco Oven Cake Mix - Egg Free	170.00	6.00	6	159.00	270	f	270
943	Cooking Essentials	Weikfield Tomato Salsa Instant Pasta	25.00	0.00	1	25.00	77	f	77
944	Cooking Essentials	Praakritik Organic Jowar Atta	110.00	6.00	6	103.00	500	f	500
945	Cooking Essentials	Sugarfree Gold Low Calorie Sweetner 	270.00	7.00	6	251.00	50	f	50
946	Cooking Essentials	Epicurea Thai Jasmine Rice	295.00	0.00	4	295.00	500	f	500
947	Cooking Essentials	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
948	Cooking Essentials	RRO Primio Refined Groundnut (Jar)	490.00	11.00	6	436.00	2000	f	2
949	Cooking Essentials	Praakritik Organic Tuvar Dal	140.00	0.00	6	140.00	500	f	500
950	Cooking Essentials	Sugarfree Gold Low Calorie Sweetner	185.00	5.00	3	175.00	300	f	300
951	Cooking Essentials	Cantina Beans Mexican Beans	250.00	14.00	6	213.00	410	f	410
952	Cooking Essentials	Pillsbury Oven Cake Mix - Vanilla	175.00	10.00	6	156.00	225	f	225
953	Cooking Essentials	Hershey's Chocolate Milk Booster	200.00	0.00	6	200.00	450	f	450
954	Cooking Essentials	Popular Essentials Byadagi Chilli Stemless	80.00	0.00	6	80.00	100	f	100
955	Cooking Essentials	Suhana Spice Mix - Chicken Biryani	66.00	0.00	6	66.00	50	f	50
956	Cooking Essentials	Praakritik Organic Yellow Moon Dal	135.00	0.00	6	135.00	500	f	500
957	Cooking Essentials	Maggi Magic Cubes Extra Chicken	199.00	10.00	6	179.00	240	f	240
958	Cooking Essentials	Dhara Filtered Groundnut Oil (Jar)	1050.00	0.00	2	1050.00	5000	f	5
959	Cooking Essentials	24 Mantra Sona Masuri Brown Rice	475.00	10.00	6	423.00	5000	f	5
960	Cooking Essentials	24 Mantra Organic Pancharatna Dal - Split	130.00	7.00	6	120.00	500	f	500
961	Cooking Essentials	24 Mantra Organic Cumin Powder	70.00	0.00	6	70.00	100	f	100
962	Cooking Essentials	Popular Essentials Samba Broken Wheat	100.00	11.00	6	89.00	500	f	500
963	Cooking Essentials	Betty Crocker Chocolate Fudge Cake Mix	295.00	0.00	6	295.00	475	f	475
964	Cooking Essentials	Borges Extra Light Olive Oil Bottle 	2600.00	46.00	6	1399.00	2000	f	2
965	Cooking Essentials	Flying Bird Premium Orange Artificial Food Essence	60.00	0.00	6	60.00	20	f	20
966	Cooking Essentials	Popular Essentials Red Cherry/Gundu Chilli	95.00	0.00	6	95.00	100	f	100
967	Cooking Essentials	Super Saver Kolam Rice Sortex Clean 	700.00	10.00	3	630.00	5000	f	5
968	Cooking Essentials	Flying Bird Food Essence - Kewra	50.00	0.00	6	50.00	20	f	20
969	Cooking Essentials	MTR Vada Breakfast	200.00	0.00	1	200.00	500	f	500
970	Cooking Essentials	On1y Pasta Seasoning	99.00	0.00	6	99.00	30	f	30
971	Cooking Essentials	Praakritik Organic Indrayani Rice	70.00	0.00	6	70.00	500	f	500
972	Cooking Essentials	On1y Pizza Seasoning	99.00	0.00	6	99.00	28	f	28
973	Cooking Essentials	Kitchens of India Mutter Paneer Mix	120.00	30.00	4	84.00	285	f	285
974	Cooking Essentials	Aashirvaad Svasti Cow Ghee Tetra Pack	295.00	0.00	6	295.00	500	f	500
975	Cooking Essentials	Weikfield Cooker Cake Mix - Vanilla	95.00	0.00	6	95.00	150	f	150
976	Cooking Essentials	Praakritik Organic Kapli Wheat Atta	165.00	10.00	6	147.00	1000	f	1
977	Cooking Essentials	Epicurea Sushi Rice	295.00	0.00	6	295.00	500	f	500
978	Cooking Essentials	Sugarfree Natural Green Stevia Leaves Zero Calorie	75.00	0.00	2	75.00	100	f	100
979	Cooking Essentials	Smith & Jones Italian Spices Masala Mix	99.00	0.00	6	99.00	75	f	75
980	Cooking Essentials	Satyam Nighties Spices  Chilli Bore	89.00	10.00	6	80.00	100	f	100
981	Cooking Essentials	Weikfield Veg Jelly Crystals - Orange	45.00	2.00	6	44.00	90	f	90
982	Cooking Essentials	Praakritik Organic Jumbo Rolled Oats	190.00	11.00	6	169.00	500	f	500
983	Cooking Essentials	On1y Sea Salt Grinder	89.00	0.00	6	89.00	100	f	100
984	Cooking Essentials	Delight Nuts Berries Mix 	399.00	20.00	6	319.00	200	f	200
985	Cooking Essentials	Everest Kesari Milk Masala	205.00	0.00	6	205.00	50	f	20
986	Cooking Essentials	Praakritik Organic Ginger Powder	139.00	10.00	6	125.00	100	f	100
987	Cooking Essentials	Suhana Mutton Gravy Mix	45.00	0.00	4	45.00	80	f	80
988	Cooking Essentials	On1y Salad Seasoning Grinder	139.00	0.00	6	139.00	45	f	45
989	Cooking Essentials	Figaro Pure Olive Oil	325.00	8.00	1	299.00	200	f	200
990	Cooking Essentials	Madhur Sugar	60.00	6.00	0	56.00	1000	t	1
991	Cooking Essentials	Amul Fresh Cream	63.00	0.00	0	63.00	250	t	250
992	Cooking Essentials	Madhur Pure And Hygienic Sugar	295.00	9.00	0	266.00	5000	t	5
993	Cooking Essentials	Satyam Poha Jada	35.00	8.00	0	32.00	500	t	500
994	Cooking Essentials	Aashirvaad Superior MP Whole Wheat Atta	53.00	1.00	0	52.00	1000	t	1
995	Cooking Essentials	Fortune Soyabean Oil	210.00	13.00	0	181.00	1000	t	1
996	Cooking Essentials	Maggi Masala Ae Magic	58.00	6.00	0	54.00	72	t	72
997	Cooking Essentials	Aashirvaad Iodised Salt 	22.00	13.00	0	19.00	1000	t	1
998	Cooking Essentials	Maggi 2-Minute Instant Noodles - Masala	44.00	0.00	0	44.00	280	t	280
999	Cooking Essentials	Popular Essentials Phool Makhana (Jumbo Size)	150.00	14.00	0	128.00	100	t	100
1000	Cooking Essentials	Aashirvaad Atta With Mutigrains	315.00	8.00	0	287.00	5000	t	5
1001	Cooking Essentials	Tata Sampann Poha	44.00	6.00	0	41.00	500	t	500
1002	Cooking Essentials	Fortune Besan Flour	120.00	0.00	0	120.00	1000	t	1
1003	Cooking Essentials	Popular Essentials Toor Dal (Un-Polished)	80.00	7.00	0	74.00	500	t	500
1004	Cooking Essentials	Everest Tikhalal Hot & Red Chilly Powder	47.00	2.00	0	46.00	100	t	100
1005	Cooking Essentials	Popular Essentials Chia Seeds	50.00	2.00	0	49.00	100	t	100
1006	Cooking Essentials	Tata Sampann Unpolished Toor Dal/Arhar Dal	179.00	1.00	0	177.00	1000	t	200
1007	Cooking Essentials	Everest Coriander Powder	32.00	3.00	0	31.00	100	t	100
1008	Cooking Essentials	Satyam Thin Poha Patla	38.00	7.00	0	35.00	500	t	500
1009	Cooking Essentials	Popular Essentials Sona Masouri Raw Rice	75.00	0.00	0	75.00	1000	t	1
1010	Cooking Essentials	Tata Sampann High Protien Chana Dal - Split	64.00	0.00	0	64.00	500	t	500
1011	Cooking Essentials	Satyam Singdana 	119.00	6.00	0	111.00	500	t	500
1012	Cooking Essentials	Tata Sampann Moong Chilka 	88.00	6.00	0	82.00	500	t	500
1013	Cooking Essentials	Tata Sampann High Protien Toor Dal - Split	91.00	2.00	0	89.00	500	t	500
1014	Cooking Essentials	Ching's Chow Mein Hakka Noodles Masala	10.00	0.00	0	10.00	20	t	20
1015	Cooking Essentials	Everest Chat Masala	65.00	9.00	0	59.00	100	t	100
1016	Cooking Essentials	Popular Essentials Black Brown Chana (Un-Polished)	55.00	9.00	0	50.00	500	t	500
1017	Cooking Essentials	Dabur Ginger Garlic Paste	50.00	6.00	0	47.00	200	t	200
1018	Cooking Essentials	Ching's Secret Veg Hakka Noodles	107.00	0.00	0	107.00	600	t	600
1019	Cooking Essentials	Saffola Oats 100 % Natural	15.00	0.00	0	15.00	38	t	38
1020	Cooking Essentials	Everest Kashmiri Lal Chilli Powder	310.00	10.00	0	279.00	500	t	500
1021	Cooking Essentials	Popular Essentials Black Raisins Seedless	60.00	10.00	0	54.00	100	t	100
1022	Cooking Essentials	Daawat Rozana Super Basmati Rice	79.00	0.00	0	79.00	1000	t	1
1023	Cooking Essentials	Everest Cumin Powder (Jeera)	30.00	3.00	0	29.00	50	t	50
1024	Cooking Essentials	Everest Sambhar Masala	34.00	2.00	0	33.00	50	t	50
1025	Cooking Essentials	Maggi Chilly Chow Cuppa Noodles	50.00	0.00	0	50.00	70	t	70
1026	Cooking Essentials	Popular Essentials Mustard Seeds Rai Big	20.00	0.00	0	20.00	100	t	100
1027	Cooking Essentials	Patanjali Cow's Ghee	565.00	0.00	0	565.00	1000	t	1
1028	Cooking Essentials	Everest Amchur Powder	42.00	2.00	0	41.00	50	t	50
1029	Cooking Essentials	Daawat Super Basmati Rice	185.00	8.00	0	169.00	1000	t	1
1030	Cooking Essentials	Popular Essentials Sabudana	60.00	10.00	0	54.00	500	t	500
1031	Cooking Essentials	Popular Essentials Brown Sugar	40.00	0.00	0	40.00	500	t	500
1032	Cooking Essentials	Everest Coriander Powder	70.00	10.00	0	63.00	200	t	200
1033	Cooking Essentials	Sunfeast Yippee! Magic Masala Noodles	48.00	6.00	0	45.00	240	t	240
1034	Cooking Essentials	Tata Tea Gold	35.00	0.00	0	35.00	100	t	200
1035	Cooking Essentials	Daawat Rozana Gold Basmati Rice	90.00	1.00	0	89.00	1000	t	1
1036	Cooking Essentials	Top Ramen Masala	91.00	9.00	0	82.00	560	t	560
1037	Cooking Essentials	Everest Turmeric Powder	67.00	10.00	0	60.00	200	t	200
1038	Cooking Essentials	Popular Essentials Buckwheat Flour (Kuttu Atta)	125.00	9.00	0	113.00	500	t	500
1039	Cooking Essentials	Keya Italian Pizza Oregano	109.00	11.00	0	97.00	80	t	80
1040	Cooking Essentials	Chef's Basket Durum Wheat Penne Pasta	160.00	50.00	0	80.00	500	t	500
1041	Cooking Essentials	Tata Sampann Kala Chana	125.00	0.00	0	125.00	1000	t	1
1042	Cooking Essentials	India Gate Basmati Rice	210.00	0.00	0	210.00	1000	t	1
1043	Cooking Essentials	24 Mantra Organic Whole Wheat Atta	64.00	7.00	0	59.00	1000	t	1
1044	Cooking Essentials	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
1045	Cooking Essentials	Sunfeast Pasta Treat Pack of Tomato Cheese	28.00	17.00	0	23.00	65	t	65
1046	Cooking Essentials	Sugarlite 50% Less Calories Sugar Pouch	99.00	40.00	0	59.00	500	t	500
1047	Cooking Essentials	Popular Essentials Sabja/Basil Seeds	60.00	15.00	0	51.00	100	t	100
1048	Cooking Essentials	Patanjali Pure Honey	95.00	0.00	0	95.00	250	t	250
1049	Cooking Essentials	Weikfield Falooda Mix - Mango	49.00	2.00	0	48.00	200	t	200
1050	Cooking Essentials	Pro Nature Organic Sonamasoori Brown Rice	102.00	7.00	0	94.00	1000	t	1
1051	Cooking Essentials	Maggi Special Masala Spicy Yummy Noodles	72.00	0.00	0	72.00	280	t	280
1052	Cooking Essentials	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
1053	Cooking Essentials	Everest Saffron Kesar	120.00	0.00	0	120.00	1	t	0
1054	Munchies	Maggi 2 Minute Masala Noodles	12.00	0.00	6	12.00	70	f	70
1055	Munchies	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
1056	Munchies	Tata Salt	24.00	0.00	6	24.00	1000	f	1
1057	Munchies	Arden Eggs White	97.00	0.00	4	97.00	696	f	12
1058	Munchies	Arden Eggs White	65.00	15.00	4	55.00	348	f	6
1059	Munchies	Fortune Sunlite Refined Sunflower (Pouch)	230.00	4.00	6	219.00	1000	f	1
1060	Munchies	Aashirvaad Superior MP Atta	250.00	2.00	6	245.00	5000	f	5
1061	Munchies	Amul Pure Ghee (Pouch)	255.00	2.00	6	249.00	500	f	500
1062	Munchies	Arden Eggs Brown	85.00	7.00	4	79.00	348	f	6
1063	Munchies	Tata Salt Lite	40.00	10.00	6	36.00	1000	f	1
1064	Munchies	Saffola Gold Oil (Pouch)	215.00	0.00	6	215.00	1000	f	1
1065	Munchies	Fortune Sunlite Refined Sunflower (Jar)	925.00	0.00	6	925.00	5000	f	5
1066	Munchies	Fortune Rice Bran (Pouch)	225.00	11.00	6	199.00	1000	f	1
1067	Munchies	Saffola Active Oil	210.00	0.00	6	210.00	1000	f	1
1068	Munchies	Amul Pure Ghee (Pouch)	505.00	1.00	2	499.00	1000	f	1
1069	Munchies	Aashirvaad Atta	460.00	13.00	6	399.00	10000	f	10
1070	Munchies	Popular Essentials Toor Dal (Un-Polished)	160.00	6.00	4	149.00	1000	f	1
1071	Munchies	Amul Ghee (Tin)	520.00	2.00	6	509.00	1000	f	1
1072	Munchies	Amul Fresh Cream	197.00	3.00	3	191.00	1000	f	1
1073	Munchies	Popular Essentials Pure Jaggery	50.00	2.00	6	49.00	450	f	450
1074	Munchies	Aashirvaad Multigrain Atta	64.00	3.00	2	62.00	1000	f	1
1075	Munchies	Fortune Soyabean Oil	1005.00	0.00	6	999.00	5000	f	5
1076	Munchies	Popular Essentials Sunflower Seeds	25.00	0.00	6	25.00	50	f	50
1077	Munchies	Tata Sampann kabuli chana	185.00	1.00	4	183.00	1000	f	500
1078	Munchies	Dhara Groundnut Oil (Pouch)	230.00	11.00	6	203.00	1000	f	1
1079	Munchies	Dhara Health Refined Sun Flower Oil Jar	1200.00	18.00	6	984.00	5000	f	5
1080	Munchies	24 Mantra Organic Jaggery Powder	80.00	15.00	6	68.00	500	f	500
1081	Munchies	Tata Sampann High Protien Kabuli Chana	94.00	0.00	1	94.00	500	f	500
1082	Munchies	Dhara Kachi Ghani Mustard Oil Jar	1250.00	8.00	6	1143.00	5000	f	5
1083	Munchies	D'lecta Dairy Cream	54.00	5.00	6	51.00	200	f	200
1084	Munchies	Ching's Secret Instant Hot Garlic Noodles	15.00	0.00	3	15.00	60	f	60
1085	Munchies	Dabur Ginger Garlic Paste	25.00	8.00	3	23.00	100	f	100
1086	Munchies	Ching's Secret Instant Schezwan Noodles	15.00	0.00	6	15.00	60	f	60
1087	Munchies	Gowardhan Ghee/Tuppa Jar	315.00	1.00	6	309.00	500	f	500
1088	Munchies	Tata Sampann Unpolished Moong Dal 	92.00	4.00	4	88.00	500	f	500
1089	Munchies	Aashirvaad Select Atta	64.00	0.00	6	64.00	1000	f	1
1090	Munchies	Popular Essentials Misri Dana (Diamond Sugar) 	15.00	0.00	4	15.00	100	f	100
1091	Munchies	Gowardhan Ghee Jar	598.00	3.00	6	579.00	1000	f	1
1092	Munchies	Top Ramen  Noodles Curry Veg Pouch	20.00	0.00	1	20.00	70	f	70
1093	Munchies	Popular Essentials Refined Sugar	60.00	0.00	6	60.00	1000	f	1
1094	Munchies	Fortune Kachi Ghani Mustard Oil Bottle	216.00	7.00	6	199.00	1000	f	1
1095	Munchies	Saffola Veggie Twist Masala Oats	15.00	0.00	6	15.00	38	f	38
1096	Munchies	Satyam Puffed Rice Kurmura (R)	23.00	0.00	6	23.00	200	f	200
1097	Munchies	Quaker Oats	79.00	0.00	2	79.00	400	f	400
1098	Munchies	Aashirvaad Select Sharbati Atta	315.00	10.00	6	283.00	5000	f	5
1099	Munchies	Popular Essentials Refined Sugar	295.00	10.00	6	265.00	5000	f	5
1100	Munchies	Gowardhan Cow Ghee Pouch	579.00	10.00	6	521.00	1000	f	1
1101	Munchies	Dhara Nourish Refined Sunflower Oil Pouch	210.00	5.00	6	199.00	1000	f	1
1102	Munchies	Parachute Oil 	40.00	7.00	3	37.00	100	f	100
1103	Munchies	Popular Essentials Plain Puffed Rice (Murmura/Muri)	18.00	0.00	6	18.00	100	f	100
1104	Munchies	Amul Mithai Mate Condensed Sweetened Milk	56.00	3.00	4	54.00	200	f	200
1105	Munchies	Saffola Gold (Jar)	1240.00	0.00	6	1240.00	5000	f	5
1106	Munchies	McCain New Mini Samosa with Cheese Pizza Style Filling	120.00	1.00	3	118.00	240	f	240
1107	Munchies	Fortune Rice Bran Health Oil (Jar)	1050.00	1.00	6	1039.00	5000	f	5
1108	Munchies	Arden Desi Eggs	110.00	13.00	4	95.00	348	f	6
1109	Munchies	Fortune Rozana Basmati Rice	585.00	21.00	6	462.00	5000	f	5
1110	Munchies	Fortune Biriyani Special Basmati Rice	175.00	0.00	5	175.00	1000	f	1
1111	Munchies	Everest Garam Masala	78.00	7.00	5	72.00	100	f	100
1112	Munchies	Popular Essentials Pumpkin Seeds	90.00	16.00	6	75.00	100	f	100
1113	Munchies	Fortune Soya Health Refined Soybean Oil	210.00	1.00	2	206.00	1000	f	1
1114	Munchies	Gowardhan Pure Ghee Pouch	295.00	4.00	6	281.00	500	f	500
1115	Munchies	Popular Essentials Jeera/Cumin Seeds	40.00	5.00	3	38.00	100	f	100
1116	Munchies	Weikfield Baking Soda	30.00	3.00	6	29.00	100	f	100
1117	Munchies	Everest Pav Bhaji Masala	37.00	10.00	4	33.00	50	f	50
1118	Munchies	Tata Sampann Unpolished Chana Dal	95.00	6.00	2	89.00	1000	f	500
1119	Munchies	Amul Mithai Mate EOE Tin	112.00	2.00	6	109.00	400	f	400
1120	Munchies	Pillsbury Chakki Fresh Atta	450.00	16.00	6	375.00	10000	f	10
1121	Munchies	Everest Chicken Masala	39.00	2.00	1	38.00	50	f	50
1122	Munchies	Dhara Life Refined Ricebran Oil (Pouch)	205.00	7.00	6	190.00	1000	f	1
1123	Munchies	Borges Extra Virgin Olive Oil	400.00	25.00	1	299.00	250	f	250
1124	Munchies	Everest Shahi Biryani Masala	70.00	14.00	6	60.00	50	f	50
1125	Munchies	Popular Essentials Californian Almond	350.00	28.00	6	251.00	250	f	250
1126	Munchies	Popular Essentials Ajwain Whole	25.00	0.00	4	25.00	50	f	50
1127	Munchies	Everest Tikhalal Chilli Powder	235.00	9.00	6	212.00	500	f	500
1128	Munchies	Popular Essentials Kabuli Chana Regular	85.00	9.00	6	77.00	500	f	500
1129	Munchies	Pillsbury Chakki Fresh Atta	52.00	0.00	4	52.00	1000	f	1
1130	Munchies	Popular Essentials Saunf/Fennel Seeds	45.00	2.00	6	44.00	100	f	100
1131	Munchies	Popular Essentials Bansi Sooji	35.00	2.00	3	34.00	500	f	500
1132	Munchies	Happilo Premium International Queen Kalmi Dates	245.00	29.00	6	172.00	200	f	200
1133	Munchies	Tata Sampann Unpolished Urad Whole	101.00	6.00	4	94.00	500	f	500
1134	Munchies	Popular Essentials Cashew Split	325.00	12.00	6	283.00	250	f	250
1135	Munchies	Popular Essentials Chana Dal (Un-Polished)	60.00	10.00	6	54.00	500	f	500
1136	Munchies	Tata Sampann Unpolished Rajma (Chitra)	134.00	6.00	6	125.00	500	f	500
1137	Munchies	Everest Garam Masala	42.00	2.00	2	41.00	50	f	50
1138	Munchies	Everest Kitchen King Masala	70.00	14.00	2	60.00	100	f	100
1139	Munchies	24 Mantra Organic Cumin	70.00	7.00	2	65.00	100	f	100
1140	Munchies	Nestle Milkmaid	132.00	3.00	6	128.00	400	f	400
1141	Munchies	Popular Essentials Sona Masouri Steam Rice	65.00	9.00	6	59.00	1000	f	1
1142	Munchies	24 Mantra Organic Tur Dal	260.00	20.00	6	208.00	1000	f	1
1143	Munchies	Gits Gulab Jamun Instant Dessert Mix	99.00	10.00	6	89.00	200	f	200
1144	Munchies	Popular Essentials Black Masoor Whole (Un-Polished)	65.00	10.00	3	58.00	500	f	500
1145	Munchies	24 Mantra Organic Peanuts	135.00	7.00	1	125.00	500	f	500
1146	Munchies	Everest Hingraj Powder	90.00	10.00	2	81.00	50	f	50
1147	Munchies	Everest Black Pepper Powder	135.00	14.00	6	115.00	100	f	100
1148	Munchies	Tata Sampann Masoor Dal Stand	150.00	10.00	4	134.00	1000	f	1
1149	Munchies	24 Mantra Organic Besan	95.00	7.00	5	88.00	500	f	500
1150	Munchies	Quaker Oats	199.00	7.00	6	184.00	1000	f	1
1151	Munchies	Saffola Gold Refined Cooking Oil (Jar)	485.00	7.00	6	449.00	2000	f	2
1152	Munchies	Nestle Everyday Dairy Whitener	210.00	0.00	4	210.00	400	f	400
1153	Munchies	24 Mantra Organic Red Poha	75.00	8.00	1	69.00	500	f	500
1154	Munchies	Everest Powder - Tea Masala	98.00	9.00	5	89.00	100	f	100
1155	Munchies	Tata Sampann Urad Dal Split	94.00	4.00	6	90.00	500	f	500
1156	Munchies	Popular Essentials Idli Sooji 	30.00	6.00	6	28.00	500	f	500
1157	Munchies	Popular Essentials Dessicated Coconut	95.00	9.00	6	86.00	200	f	200
1158	Munchies	Sunfeast Yippee! Mood Masala Noodles	60.00	28.00	3	43.00	260	f	260
1159	Munchies	Chef's Basket Durum Wheat Elbow Pasta	160.00	50.00	6	80.00	500	f	500
1160	Munchies	MTR Breakfast Khatta Meetha Poha Mix	25.00	20.00	6	20.00	60	f	60
1161	Munchies	Satyam Khobra	113.00	10.00	5	101.00	200	f	200
1162	Munchies	Betty Crocker Complete Pancake Mix Original	110.00	4.00	6	105.00	250	f	500
1163	Munchies	Borges Durum Wheat Fusilli Pasta 	250.00	0.00	3	250.00	500	f	500
1164	Munchies	24 Mantra Organic Green Moong Dal - Split	135.00	0.00	2	135.00	500	f	500
1165	Munchies	Weikfield Vanilla Flavoured Custard Powder	37.00	0.00	6	37.00	100	f	100
1166	Munchies	Tata Sampann Moong Dal Split	180.00	1.00	5	178.00	1000	f	200
1167	Munchies	Tata Sampann Kala Chana	64.00	0.00	5	64.00	500	f	500
1168	Munchies	Saffola Soya Chunks Mealmaker	50.00	0.00	2	50.00	200	f	200
1169	Munchies	24 Mantra Bura Sugar (Demerara)	80.00	10.00	6	72.00	500	f	500
1170	Munchies	Popular Essentials Green Cardamom (Elaichi)	200.00	1.00	6	198.00	50	f	50
1171	Munchies	Hershey's Syrup Delicious Strawberry	95.00	0.00	1	95.00	200	f	200
1172	Munchies	Popular Essentials Anjeer	190.00	11.00	4	169.00	100	f	100
1173	Munchies	Popular Essentials Mustard Seeds Rai Small	20.00	0.00	2	20.00	100	f	100
1174	Munchies	Weikfield Baking Powder	33.00	3.00	6	32.00	100	f	100
1175	Munchies	Dabur Honey Squeezy	185.00	9.00	6	167.00	225	f	225
1176	Munchies	Tata Sampann High Protein Kali Urad	91.00	14.00	6	78.00	500	f	500
1177	Munchies	Everest Kitchen King Masala	37.00	2.00	6	36.00	50	f	50
1178	Munchies	Chef's Basket Durum Wheat Fusilli Pasta	160.00	50.00	6	80.00	500	f	500
1179	Munchies	TilSona Til Oil	180.00	10.00	2	162.00	500	f	500
1180	Munchies	Top Ramen Chicken Noodles	60.00	10.00	1	54.00	280	f	280
1181	Munchies	Everest Chaat Masala	35.00	2.00	1	34.00	50	f	50
1182	Munchies	Keya Wonder Red Hot Chilli Flakes	89.00	10.00	2	80.00	40	f	40
1183	Munchies	Popular Essentials White Peas (Un-Polished)	80.00	10.00	5	72.00	500	f	500
1184	Munchies	Ching’s Secret Chowmein Hakka Noodles Masala 	44.00	0.00	2	44.00	60	f	60
1185	Munchies	Dhara Filtered Groundnut Oil (Jar)	1050.00	1.00	6	1035.00	5000	f	5
1186	Munchies	Pillsbury Choco Chip Pancake Mix	99.00	5.00	6	94.00	165	f	165
1187	Munchies	Hershey's Caramel Syrup	230.00	0.00	1	230.00	623	f	623
1188	Munchies	Pillsbury Multi Grain Atta	60.00	6.00	3	56.00	1000	f	1
1189	Munchies	McCain New Mini Samosa with Cheese Corn Style Filling	120.00	1.00	2	118.00	240	f	240
1190	Munchies	Satyam Puffed Rice Kurmura (A)	43.00	0.00	6	43.00	200	f	200
1191	Munchies	MTR 3 Min Poha	25.00	0.00	6	25.00	60	f	60
1192	Munchies	Ching's Manchurian Instant Noodles	15.00	0.00	5	15.00	60	f	60
1193	Munchies	Everest Pav Bhaji Masala	70.00	0.00	2	70.00	100	f	100
1194	Munchies	Hershey's Chocolate Flavour Syrup	220.00	6.00	6	205.00	623	f	680
1195	Munchies	Popular Essentials Dhania (Coriander Seeds)	55.00	16.00	4	46.00	200	f	200
1196	Munchies	24 Mantra Red Chilly Whole	70.00	7.00	1	65.00	100	f	100
1197	Munchies	Dabur Honey - World's No.1	120.00	0.00	6	120.00	250	f	250
1198	Munchies	24 Mantra Organic Puffed Rice	40.00	2.00	6	39.00	200	f	200
1199	Munchies	24 Mantra Organic Wheat Daliya 	48.00	2.00	2	47.00	500	f	500
1200	Munchies	24 Mantra Organic Ragi Flour	65.00	20.00	4	52.00	500	f	500
1201	Munchies	Popular Essentials Cinnamon Whole (Dalchini)	35.00	5.00	6	33.00	25	f	25
1202	Munchies	Sundrop Super Lite Advanced - Sunflower Oil	215.00	0.00	4	215.00	1000	f	1
1203	Munchies	Pillsbury Atta/Godihittu - Chakki Fresh	102.00	7.00	4	94.00	2000	f	2
1204	Munchies	Popular Essentials Green Moong Chilka/Chilka (Un-Polished)	85.00	7.00	5	79.00	500	f	500
1205	Munchies	Popular Essentials HMT Kolam Steam	75.00	0.00	3	75.00	1000	f	1
1206	Munchies	Popular Essentials Black Urad Split	80.00	10.00	4	72.00	500	f	500
1207	Munchies	Keya Oregano	109.00	10.00	5	98.00	9	f	9
1208	Munchies	Popular Essentials Pink Rajma	100.00	10.00	6	90.00	500	f	500
1209	Munchies	Everest Chicken Masala	74.00	2.00	6	72.00	100	f	100
1210	Munchies	Popular Essentials HMT Kolam Steam	370.00	10.00	6	333.00	5000	f	5
1211	Munchies	Everest Shahi Paneer Masala	42.00	4.00	5	40.00	50	f	50
1212	Munchies	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
1213	Munchies	Flying Bird Vanilla Essence	35.00	2.00	6	34.00	20	f	20
1215	Munchies	Popular Essentials Californian Almond	695.00	32.00	6	470.00	500	f	500
1216	Munchies	Cornitos Cornitos Taco Shells - 4 Inches	110.00	20.00	6	88.00	80	f	80
1217	Munchies	Everest Rajma Masala	33.00	3.00	5	32.00	50	f	50
1218	Munchies	Popular Essentials White Til	40.00	5.00	1	38.00	100	f	100
1219	Munchies	Amul Dark Compound Chocolate Slab	125.00	2.00	6	122.00	500	f	500
1220	Munchies	Mothers Recipe Papad Chana Masala	79.00	10.00	6	71.00	200	f	200
1221	Munchies	Ching's Schezwan Masala Instant Noodles	60.00	0.00	1	60.00	240	f	240
1222	Munchies	Amul Milk Compound Chocolate Slab	110.00	2.00	6	107.00	500	f	500
1223	Munchies	Eastern Chicken Masala	70.00	7.00	3	65.00	100	f	100
1224	Munchies	Popular Essentials Methi Seeds	25.00	0.00	5	25.00	100	f	100
1225	Munchies	Saffola Yummy Masala Noodles 	20.00	0.00	2	20.00	46	f	46
1226	Munchies	Cadbury Hot Chocolate	175.00	5.00	6	166.00	200	f	200
1227	Munchies	Ching's Chicken Chilli Masala	10.00	0.00	6	10.00	20	f	20
1228	Munchies	Dabur Keora water - Authentic flavour for Biryani's and Desserts	62.00	6.00	6	58.00	250	f	250
1229	Munchies	Popular Essentials Black Cardamom/Elaichi 	100.00	10.00	6	90.00	50	f	50
1230	Munchies	Popular Essentials Idli Rice	60.00	10.00	4	54.00	1000	f	1
1231	Munchies	Everest Chole Masala	33.00	3.00	1	32.00	50	f	50
1232	Munchies	Dabur Hommade Tamarind Paste	48.00	6.00	6	45.00	200	f	200
1233	Munchies	Maggi Magic Cubes, Vegetarian Masala (Free 2 Cubes Inside)	35.00	2.00	6	34.00	48	f	48
1234	Munchies	Popular Essentials Cooking Soda	30.00	10.00	6	27.00	200	f	200
1235	Munchies	RRO Primio Refined Groundnut Oil Pet Bottle	255.00	6.00	2	239.00	1000	f	1
1236	Munchies	Everest Pani Puri Masala	31.00	3.00	6	30.00	50	f	50
1237	Munchies	Nissin Cup Noodles Tangy Tomato	50.00	10.00	2	45.00	70	f	70
1238	Munchies	Ching's Veg Manchurian Masala	10.00	0.00	2	10.00	20	f	20
1239	Munchies	Ceres Foods Fish Mustard Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
1240	Munchies	Everest Garam Masala	158.00	10.00	6	142.00	200	f	200
1241	Munchies	24 Mantra Organic Jowar Flour	70.00	7.00	6	65.00	500	f	500
1242	Munchies	Maggi Coconut Milkpowder	100.00	0.00	6	100.00	100	f	100
1243	Munchies	On1y Pepper Grinder	159.00	9.00	1	144.00	50	f	50
1244	Munchies	Popular Essentials Rice Flour	60.00	0.00	3	60.00	1000	f	1
1245	Munchies	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	10.00	1	25.00	65	f	65
1246	Munchies	24 Mantra Organic Brown Sona Masoori Rice	95.00	0.00	6	95.00	1000	f	1
1247	Munchies	Happilo Premium Afghani Anjeer	365.00	29.00	2	256.00	200	f	200
1248	Munchies	Popular Essentials Chiroti Sooji	35.00	2.00	6	34.00	500	f	500
1249	Munchies	RRO Til Dil Premium Til Oil Bottle	330.00	10.00	5	294.00	1000	f	1
1250	Munchies	Popular Essentials Red Rajma	90.00	10.00	6	81.00	500	f	500
1251	Munchies	Cornitos Peanut - Premium Salted 	120.00	10.00	6	108.00	150	f	150
1252	Munchies	Popular Essentials Black Pepper	100.00	10.00	5	90.00	100	f	100
1253	Munchies	24 Mantra Organic Tur Dal - Split	130.00	7.00	6	120.00	500	f	500
1254	Munchies	Sugarfree Gold Low Calorie Sweetner	65.00	6.00	3	61.00	110	f	100
1255	Munchies	Ching's Secret Paneer Chilli Masala	10.00	0.00	2	10.00	20	f	20
1256	Munchies	Dabur Honey 	220.00	7.00	3	204.00	500	f	500
1257	Munchies	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	17.00	3	23.00	65	f	65
1258	Munchies	Everest Tea Masala	55.00	9.00	2	50.00	50	f	50
1259	Munchies	Ching's Paneer Chilli Masala	44.00	0.00	4	44.00	60	f	60
1260	Munchies	Sunfeast YiPPee! Magic Masala Noodles	70.00	10.00	3	63.00	405	f	405
1261	Munchies	Everest Meat Masala Powder	74.00	9.00	3	67.00	100	f	100
1262	Munchies	Pillsbury Atta With Multigrains Wheat Grains	295.00	16.00	6	245.00	5000	f	5
1263	Munchies	Mother's Recipe Tamarind Paste	50.00	2.00	6	49.00	200	f	200
1264	Munchies	Quaker Oats Breakfast Cereals - With Flavour Mix Nutritious Rich Source Of Energy	49.00	8.00	6	45.00	200	f	200
1265	Munchies	Popular Essentials Cloves (Lavang)	75.00	17.00	6	62.00	50	f	50
1266	Munchies	Sunfeast Yippee! Power Up Atta Noodles	96.00	15.00	6	81.00	280	f	280
1267	Munchies	Suhana Paneer Tikka Masala Mix	40.00	5.00	6	38.00	50	f	50
1268	Munchies	24 Mantra Turmeric Powder	35.00	2.00	6	34.00	100	f	100
1269	Munchies	24 Mantra Super Grain Quinoa	190.00	0.00	4	190.00	500	f	500
1270	Munchies	Everest Powder - Egg Curry Masala	40.00	2.00	6	39.00	50	f	50
1271	Munchies	Popular Essentials Pe Shah Jeera 	60.00	15.00	6	51.00	50	f	50
1272	Munchies	24 Mantra Organic Sattu Atta	95.00	0.00	6	95.00	500	f	500
1273	Munchies	Smith & Jones Pasta Masala	46.00	0.00	6	46.00	54	f	54
1274	Munchies	Weikfield Vanilla Custard Powder	142.00	9.00	3	128.00	500	f	500
1275	Munchies	Sugarfree Natura Low Calorie Sweetner 	300.00	10.00	3	270.00	42	f	42
1276	Munchies	Pillsbury Vanilla Custard Powder	37.00	2.00	6	36.00	100	f	100
1277	Munchies	24 Mantra Organic Rajma	145.00	0.00	6	145.00	500	f	500
1278	Munchies	Popular Essentials Broken Wheat/Daliya	35.00	2.00	6	34.00	500	f	500
1279	Munchies	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
1280	Munchies	Smith & Jones Peri Peri Masala	99.00	0.00	6	99.00	75	f	75
1281	Munchies	Saffola Veggie Twist Masala Oats	195.00	12.00	2	171.00	500	f	500
1282	Munchies	Popular Essentials Urad Dal Split (Un-Polished)	85.00	9.00	5	77.00	500	f	500
1283	Munchies	Weikfield Baking Powder	22.00	0.00	6	22.00	50	f	50
1284	Munchies	Popular Essentials Bajra Whole	65.00	13.00	6	56.00	1000	f	1
1285	Munchies	Weikfield Veg Jelly Crystals - Strawberry	45.00	2.00	6	44.00	90	f	90
1286	Munchies	Weikfield Veg Jelly Crystals - Raspberry	45.00	2.00	6	44.00	90	f	90
1287	Munchies	Popular Essentials Masoor Dal Split (Un-Polished)	70.00	10.00	4	63.00	500	f	500
1289	Munchies	Popular Essentials Pista Salted (With Shell)	470.00	21.00	5	371.00	250	f	250
1290	Munchies	The Bake Shop Bread Crumbs	50.00	6.00	3	47.00	400	f	400
1291	Munchies	Popular Essentials Horse Gram	40.00	10.00	4	36.00	500	f	500
1292	Munchies	Hershey's Chocolate Syrup	95.00	0.00	4	95.00	200	f	200
1293	Munchies	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
1294	Munchies	Everest Kasuri Methi	25.00	0.00	6	25.00	25	f	25
1295	Munchies	Satyam Makhana	208.00	0.00	6	208.00	100	f	100
1296	Munchies	Everest Tandoori Chicken Masala	39.00	2.00	5	38.00	50	f	50
1297	Munchies	Weikfield Falooda Mix - Kesar Pista	49.00	2.00	3	48.00	200	f	200
1298	Munchies	Weikfield Cocoa Powder	70.00	7.00	6	65.00	50	f	50
1299	Munchies	Pantai Coconut Cream	150.00	4.00	4	143.00	400	f	400
1300	Munchies	Popular Essentials Coriander Seeds	15.00	0.00	5	15.00	50	f	50
1301	Munchies	Ching's Singapore Curry Instant Noodles	60.00	0.00	4	60.00	240	f	240
1302	Munchies	Eastern Fish Masala	48.00	2.00	5	47.00	100	f	100
1303	Munchies	Pillsbury Atta/Godihittu - Chakki Fresh	275.00	0.00	6	275.00	5000	f	5
1304	Munchies	Oleev Smart Oil Fortified with VIT A, D, E & K (Pouch)	215.00	9.00	4	194.00	1000	f	1
1305	Munchies	Everest Dry Ginger Powder	75.00	9.00	4	68.00	100	f	100
1306	Munchies	Pillsbury Cooker Cake Mix - Choco	100.00	11.00	6	89.00	159	f	159
1307	Munchies	Hersheys Chocolate Almond Syrup	200.00	0.00	2	200.00	450	f	450
1308	Munchies	Satyam Nighties Spices  Chilli Pandi	56.00	7.00	5	52.00	100	f	100
1309	Munchies	Popular Essentials Popular Essential Pista Salted (With Shell)	190.00	10.00	6	171.00	100	f	100
1310	Munchies	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
1311	Munchies	Popular Essentials Rozana Sona Masuri Raw Rice	350.00	10.00	5	312.00	5000	f	5
1312	Munchies	24 Mantra Mustard Oil (Cold Pressed) 	350.00	10.00	6	312.00	1000	f	1
1313	Munchies	24 Mantra Organic Black Pepper	170.00	7.00	6	157.00	100	f	100
1314	Munchies	Popular Essentials Green Moong Whole	90.00	16.00	3	75.00	500	f	500
1315	Munchies	24 Mantra Organic Masoor Dal - Split	95.00	7.00	6	88.00	500	f	500
1316	Munchies	Praakritik Organic Natural Rock Salt	60.00	6.00	3	56.00	500	f	500
1317	Munchies	24 Mantra Sunflower Oil (Cold Pressed) Pet Bottle	390.00	11.00	5	347.00	1000	f	1
1318	Munchies	Ching's Secret Instant Noodles, Hot Garlic	60.00	0.00	4	60.00	240	f	240
1319	Munchies	Saffola Everyday Peppy Tomato Masala Oats	195.00	12.00	6	171.00	500	f	500
1320	Munchies	Dabur 100% Pure Honey - Worlds No.1	430.00	10.00	6	387.00	1000	f	1
1321	Munchies	Popular Essentials Star Anise	70.00	10.00	5	63.00	25	f	25
1322	Munchies	Ching's Secret Chicken 65 Masala - Chicken	10.00	0.00	5	10.00	20	f	20
1323	Munchies	Cadbury Cocoa Powder	223.00	5.00	6	211.00	150	f	150
1324	Munchies	Praakritik Natural Desi Gir Cow A2 Ghee	1450.00	10.00	6	1305.00	540	f	540
1325	Munchies	Praakritik Organic Poha	120.00	6.00	5	112.00	500	f	500
1326	Munchies	Praakritik Organic Natural Wild Forest Honey	160.00	6.00	4	150.00	200	f	200
1327	Munchies	Popular Essentials Dry Dates (Kharak)	140.00	15.00	6	118.00	250	f	250
1328	Munchies	Popular Essentials Kashmiri Red Rajma	95.00	6.00	4	89.00	500	f	500
1329	Munchies	Dabur Hommade - Garlic Paste	50.00	6.00	6	47.00	200	f	200
1330	Munchies	Dabur 100% Pure Honey	330.00	10.00	1	297.00	400	f	400
1331	Munchies	Ching's Schezwan Fried Rice(Miracle Masala)	44.00	0.00	5	44.00	60	f	60
1332	Munchies	Maggi Magic Cubes, Vegetarian Masala	35.00	2.00	1	34.00	40	f	40
1333	Munchies	Everest Tandoori Chicken Masala	74.00	9.00	3	67.00	100	f	100
1334	Munchies	Popular Essentials Red Poha	45.00	4.00	6	43.00	500	f	500
1335	Munchies	Everest Kitchen King Masala	142.00	9.00	6	128.00	200	f	200
1336	Munchies	Pillsbury Oven Cake Mix - Rich Chocolate	165.00	10.00	5	147.00	285	f	285
1337	Munchies	Eastern Super Garam Masala	74.00	6.00	2	69.00	200	f	200
1338	Munchies	Maggi Magic Cubes Extra Chicken	40.00	2.00	6	39.00	48	f	48
1339	Munchies	Satyam Nighties Spices  Chilli Kashmiri	102.00	6.00	6	95.00	100	f	100
1340	Munchies	Eastern Cumin Powder	49.00	2.00	6	48.00	100	f	100
1341	Munchies	Popular Essentials Urad Gola White(Un-Polished)	90.00	10.00	6	81.00	500	f	500
1342	Munchies	24 Mantra Organic Chana Dal	95.00	6.00	5	89.00	500	f	500
1343	Munchies	Delight Nuts Cashew Roasted & Salted	425.00	20.00	6	340.00	200	f	200
1344	Munchies	Popular Essentials Mace/Javitri	90.00	10.00	3	81.00	20	f	20
1345	Munchies	Dlicia Whip Topping Bottle	235.00	27.00	5	171.00	1000	f	1
1346	Munchies	Mother's Recipe Paste Ginger & Garlic	76.00	10.00	4	68.00	300	f	300
1347	Munchies	24 Mantra Groundnut Oil (Cold Pressed) Pet Bottle	410.00	10.00	6	369.00	1000	f	1
1348	Munchies	Satyam Pulses Masur Dal	87.00	6.00	6	81.00	500	f	500
1349	Munchies	Delight Nuts Pista Roasted & Salted	425.00	20.00	6	340.00	200	f	200
1350	Munchies	Top Ramen Noodles, Atta	80.00	0.00	1	80.00	280	f	280
1351	Munchies	Hershey's Cocoa Powder	95.00	0.00	5	95.00	70	f	70
1352	Munchies	Praakritik Organic Singhara Atta	240.00	6.00	4	225.00	500	f	500
1353	Munchies	Gits Veg Biryani Ready to Eat	110.00	10.00	6	99.00	265	f	265
1354	Munchies	Delight Nuts Cranberries Sliced 	299.00	20.00	6	239.00	200	f	200
1355	Munchies	Borges Durum Wheat Pasta Superior Quality	250.00	40.00	6	149.00	500	f	500
1356	Munchies	Ceres Foods Laal Maas Instant Liquid Masala	220.00	50.00	5	110.00	200	f	200
1357	Munchies	Popular Essentials Sattu Atta	90.00	12.00	3	79.00	500	f	500
1358	Munchies	Popular Essentials Mustard Seeds Rai Yellow	25.00	0.00	5	25.00	100	f	100
1359	Munchies	Praakritik Organic Extra Virgin Coconut Oil	150.00	10.00	5	134.00	100	f	100
1360	Munchies	Praakritik Organic Garlic Powder	110.00	1.00	5	108.00	100	f	100
1361	Munchies	Sugarfree Gold Low Calorie Sweetner 	125.00	5.00	6	118.00	100	f	100
1362	Munchies	Aashirvaad Breakfast Instant Mix - Rice Idli	75.00	30.00	6	52.00	200	f	200
1363	Munchies	Kitchens Of India Mutter Paneer	130.00	4.00	6	124.00	285	f	285
1364	Munchies	Ching's Secret Veg Manchurian Masala	44.00	0.00	6	44.00	60	f	60
1365	Munchies	Popular Essentials Jowa Flour	50.00	2.00	5	49.00	500	f	500
1366	Munchies	Everest Shahi Biryani Masala	245.00	0.00	6	245.00	200	f	200
1367	Munchies	Popular Essentials Black Til	50.00	6.00	4	47.00	100	f	100
1368	Munchies	Popular Essentials Pancharatna Dal	80.00	10.00	6	72.00	500	f	500
1369	Munchies	Saffola 100% Pure Honey	475.00	8.00	2	437.00	1000	f	750
1370	Munchies	Popular Essentials Tamarind	150.00	14.00	6	128.00	500	f	500
1371	Munchies	Gits Rice Dosa Instant Breakfast Mix	60.00	5.00	5	57.00	200	f	200
1372	Munchies	Popular Essentials Poppy Seeds (Gasagase)	280.00	7.00	6	260.00	100	f	100
1373	Munchies	Hershey's Hot Chocolate Powder	210.00	0.00	4	210.00	250	f	250
1374	Munchies	Borges Farfalle Durum Wheat Pasta 	250.00	0.00	5	250.00	500	f	500
1375	Munchies	Satyam Chilli  Bedgi	82.00	10.00	5	73.00	100	f	100
1376	Munchies	Aashirvaad Instant Mix - Rice Dosa	75.00	30.00	6	52.00	200	f	200
1377	Munchies	Hershey's Cocoa - Natural Unsweetened	270.00	10.00	4	243.00	225	f	225
1378	Munchies	Weikfield Veg Jelly Crystals - Mango	45.00	2.00	6	44.00	90	f	90
1379	Munchies	Praakritik Orrganic Cold Pressed Sesame Oil	130.00	10.00	5	117.00	100	f	100
1380	Munchies	Amulya Dairy Whitener 	380.00	2.00	4	372.00	1000	f	1
1381	Munchies	ITC Master Chef Hyderabadi Biryani	75.00	30.00	5	52.00	80	f	80
1382	Munchies	Flying Bird Butter Scotch Essence	50.00	2.00	6	49.00	20	f	20
1383	Munchies	Dabur Hommade - Ginger Paste	50.00	6.00	6	47.00	200	f	200
1384	Munchies	Popular Essentials Green Peas (Un-Polished)	120.00	10.00	5	108.00	500	f	500
1385	Munchies	Quaker Oats Pouch	276.00	10.00	6	248.00	1500	f	1
1386	Munchies	24 Mantra Organic Urad White Whole	145.00	15.00	4	122.00	500	f	500
1387	Munchies	Popular Essentials Guntur Chilli Stemless	40.00	2.00	2	39.00	100	f	100
1388	Munchies	Popular Essentials Moth Whole	90.00	10.00	6	81.00	500	f	500
1389	Munchies	Keya Pizza Seasoning	109.00	17.00	6	90.00	45	f	45
1390	Munchies	Keya Piri Piri | Exotic Spices Mix	109.00	20.00	6	87.00	80	f	80
1391	Munchies	24 Mantra Organic Moong Dal	135.00	7.00	6	125.00	500	f	500
1392	Munchies	Betty Crocker French Vanilla Cake Mix	310.00	10.00	6	276.00	520	f	520
1393	Munchies	Delight Nuts Dried Cranberries 	340.00	20.00	6	272.00	200	f	200
1394	Munchies	Everest Kesari Milk Masala	205.00	0.00	2	205.00	50	f	50
1395	Munchies	Tong Garden Salted Cocktail Nuts	295.00	9.00	5	266.00	160	f	160
1396	Munchies	MTR Uttapam Mix	165.00	5.00	6	156.00	500	f	500
1397	Munchies	Gits Khaman Dhokla Instant Snack Mix	65.00	6.00	6	61.00	180	f	180
1398	Munchies	Happilo Premium 100% Natural Whole Cashews	335.00	29.00	6	235.00	200	f	200
1399	Munchies	Everest Dry Mango Powder	80.00	0.00	5	80.00	100	f	100
1400	Munchies	Dabur Hommade - Ginger Garlic Past Tub	110.00	5.00	6	104.00	400	f	400
1401	Munchies	Everest Chicken Masala	147.00	10.00	6	132.00	200	f	200
1402	Munchies	Gits Medu Vada Instant Snack Mix	90.00	4.00	6	86.00	200	f	200
1403	Munchies	Weikfield Drinking Chocolate Powder	65.00	10.00	6	58.00	100	f	100
1404	Munchies	Popular Essentials Regular White Lobia	70.00	10.00	6	63.00	500	f	500
1405	Munchies	Puro Healthy Salt Crystal	135.00	7.00	6	125.00	1000	f	1
1406	Munchies	Popular Essentials Premium Jeera Rice	140.00	0.00	5	140.00	1000	f	1
1407	Munchies	Smith & Jones Shahi Paneer Masala Mix	44.00	0.00	6	44.00	60	f	60
1408	Munchies	Betty Crocker Mug Treats - Chocolate Mix - Pack of 4	200.00	11.00	6	178.00	264	f	264
1409	Munchies	Smith & Jones Pasta Masala	60.00	10.00	5	54.00	108	f	108
1410	Munchies	Catch Black Pepper Sprinkler	100.00	0.00	1	100.00	50	f	50
1411	Munchies	Weikfield Cooker Cake Mix - Chocolate	95.00	6.00	6	89.00	150	f	150
1412	Munchies	ITC Master Chef Butter Chicken	75.00	30.00	6	52.00	80	f	80
1413	Munchies	Masala Oats Masala & Coriander 	195.00	9.00	5	176.00	500	f	500
1414	Munchies	Smith & Jones Mutter Paneer Masala	42.00	0.00	6	42.00	60	f	60
1415	Munchies	Kitchens of India Dal Bukhara Gravy Mix	110.00	30.00	6	77.00	285	f	285
1416	Munchies	Popular Essentials Fried Gram (Bengal Gram)	70.00	10.00	6	63.00	500	f	500
1417	Munchies	Gits Jalebi with Maker Dessert Mix	75.00	16.00	6	63.00	100	f	100
1418	Munchies	Popular Essentials Soya Beans 	80.00	6.00	6	75.00	500	f	500
1419	Munchies	24 Mantra Organic Roasted Bengal Gram Dal	105.00	7.00	6	97.00	500	f	500
1420	Munchies	Keya Italian Seasoning	109.00	10.00	6	98.00	35	f	35
1421	Munchies	MTR Idli/Dosa/Chilly Chutney Powder	115.00	0.00	3	115.00	200	f	200
1422	Munchies	Delight Nuts Trail Mix 	399.00	25.00	6	299.00	200	f	200
1423	Munchies	Praakritik Organic Chilka Moong Dal	120.00	10.00	6	108.00	500	f	500
1424	Munchies	Smith & Jones Garlic & Herbs Masala Mix	99.00	0.00	6	99.00	75	f	75
1425	Munchies	Eastern Tamarind	63.00	0.00	6	63.00	200	f	200
1426	Munchies	Tong Garden Wasabi Coated Greenpeas Tin	200.00	11.00	6	178.00	180	f	180
1427	Munchies	Flying Bird Pineapple Artifical Food Essence	50.00	2.00	6	49.00	20	f	20
1428	Munchies	Mother's Recipe Tamarind Paste	50.00	2.00	2	49.00	200	f	200
1429	Munchies	Japanese Choice Udon Noodles	295.00	9.00	6	266.00	250	f	250
1430	Munchies	Pantai Coconut Milk	150.00	0.00	4	150.00	400	f	400
1431	Munchies	Praakritik Organic Masoor Dal	130.00	10.00	6	116.00	500	f	500
1432	Munchies	Popular Essentials Classic Sona Masuri Rice	430.00	10.00	6	387.00	5000	f	5
1433	Munchies	Popular Essentials Salted Murmure 	70.00	18.00	6	57.00	400	f	400
1434	Munchies	Oleev Active Oil (Pouch)	265.00	9.00	6	239.00	1000	f	1
1435	Munchies	Delight Nuts Dried Blueberries 	540.00	20.00	6	432.00	150	f	150
1436	Munchies	Popular Essentials Double Beans White	60.00	10.00	6	54.00	250	f	250
1437	Munchies	Delight Nuts Almond Natural 	349.00	20.00	6	279.00	200	f	200
1438	Munchies	Praakritik Organic Jaggery	160.00	6.00	6	150.00	900	f	900
1439	Munchies	Praakritik Organic Raw Sugar	90.00	6.00	6	84.00	500	f	500
1440	Munchies	MTR Masala - Sambar Powder	115.00	0.00	4	115.00	200	f	200
1441	Munchies	RRO Til Dil Premium Til Oil Bottle	173.00	6.00	6	162.00	500	f	500
1442	Munchies	ITC Master Chef Vegetable Biryani Cooking Paste	75.00	30.00	5	52.00	80	f	80
1443	Munchies	Jivana Jaggery	100.00	0.00	2	100.00	950	f	950
1444	Munchies	Praakritik Organic Besan	170.00	6.00	6	159.00	500	f	500
1445	Munchies	MTR Instant Gulab Jamun Mix	195.00	9.00	6	176.00	500	f	500
1446	Munchies	Maggi Magic Cubes Extra Chicken	199.00	0.00	2	199.00	240	f	240
1447	Munchies	On1y Mixed Herbs	99.00	0.00	6	99.00	14	f	14
1448	Munchies	Popular Essentials Urad Gola Black (Un-Polished)	80.00	10.00	6	72.00	500	f	500
1449	Munchies	Gits Dessert Mix China Grass Bombay Halwa	55.00	0.00	4	55.00	80	f	80
1450	Munchies	Praakritik Organic Basmati Rice	170.00	0.00	5	170.00	500	f	500
1451	Munchies	Ceres Foods Nalli Nihari Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
1452	Munchies	Borges Canola Oil Pet Bottle	399.00	0.00	6	399.00	1000	f	1
1453	Munchies	Suhana Biryani Masala	66.00	0.00	6	66.00	50	f	50
1454	Munchies	On1y Black Salt Grinder	99.00	0.00	6	99.00	100	f	100
1455	Munchies	Popular Essentials Nylon Til	40.00	2.00	6	39.00	100	f	100
1456	Munchies	Pillsbury Rich Choco Oven Cake Mix - Egg Free	170.00	6.00	6	159.00	270	f	270
1457	Munchies	Weikfield Tomato Salsa Instant Pasta	25.00	0.00	1	25.00	77	f	77
1458	Munchies	Praakritik Organic Jowar Atta	110.00	6.00	6	103.00	500	f	500
1459	Munchies	Sugarfree Gold Low Calorie Sweetner 	270.00	7.00	6	251.00	50	f	50
1460	Munchies	Epicurea Thai Jasmine Rice	295.00	0.00	4	295.00	500	f	500
1461	Munchies	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
1462	Munchies	RRO Primio Refined Groundnut (Jar)	490.00	11.00	6	436.00	2000	f	2
1463	Munchies	Praakritik Organic Tuvar Dal	140.00	0.00	6	140.00	500	f	500
1464	Munchies	Sugarfree Gold Low Calorie Sweetner	185.00	5.00	3	175.00	300	f	300
1465	Munchies	Cantina Beans Mexican Beans	250.00	14.00	6	213.00	410	f	410
1466	Munchies	Pillsbury Oven Cake Mix - Vanilla	175.00	10.00	6	156.00	225	f	225
1467	Munchies	Hershey's Chocolate Milk Booster	200.00	0.00	6	200.00	450	f	450
1468	Munchies	Popular Essentials Byadagi Chilli Stemless	80.00	0.00	6	80.00	100	f	100
1469	Munchies	Suhana Spice Mix - Chicken Biryani	66.00	0.00	6	66.00	50	f	50
1470	Munchies	Praakritik Organic Yellow Moon Dal	135.00	0.00	6	135.00	500	f	500
1471	Munchies	Maggi Magic Cubes Extra Chicken	199.00	10.00	6	179.00	240	f	240
1472	Munchies	Dhara Filtered Groundnut Oil (Jar)	1050.00	0.00	2	1050.00	5000	f	5
1473	Munchies	24 Mantra Sona Masuri Brown Rice	475.00	10.00	6	423.00	5000	f	5
1474	Munchies	24 Mantra Organic Pancharatna Dal - Split	130.00	7.00	6	120.00	500	f	500
1475	Munchies	24 Mantra Organic Cumin Powder	70.00	0.00	6	70.00	100	f	100
1476	Munchies	Popular Essentials Samba Broken Wheat	100.00	11.00	6	89.00	500	f	500
1477	Munchies	Betty Crocker Chocolate Fudge Cake Mix	295.00	0.00	6	295.00	475	f	475
1478	Munchies	Borges Extra Light Olive Oil Bottle 	2600.00	46.00	6	1399.00	2000	f	2
1479	Munchies	Flying Bird Premium Orange Artificial Food Essence	60.00	0.00	6	60.00	20	f	20
1480	Munchies	Popular Essentials Red Cherry/Gundu Chilli	95.00	0.00	6	95.00	100	f	100
1481	Munchies	Super Saver Kolam Rice Sortex Clean 	700.00	10.00	3	630.00	5000	f	5
1482	Munchies	Flying Bird Food Essence - Kewra	50.00	0.00	6	50.00	20	f	20
1483	Munchies	MTR Vada Breakfast	200.00	0.00	1	200.00	500	f	500
1484	Munchies	On1y Pasta Seasoning	99.00	0.00	6	99.00	30	f	30
1485	Munchies	Praakritik Organic Indrayani Rice	70.00	0.00	6	70.00	500	f	500
1486	Munchies	On1y Pizza Seasoning	99.00	0.00	6	99.00	28	f	28
1487	Munchies	Kitchens of India Mutter Paneer Mix	120.00	30.00	4	84.00	285	f	285
1488	Munchies	Aashirvaad Svasti Cow Ghee Tetra Pack	295.00	0.00	6	295.00	500	f	500
1489	Munchies	Weikfield Cooker Cake Mix - Vanilla	95.00	0.00	6	95.00	150	f	150
1490	Munchies	Praakritik Organic Kapli Wheat Atta	165.00	10.00	6	147.00	1000	f	1
1491	Munchies	Epicurea Sushi Rice	295.00	0.00	6	295.00	500	f	500
1492	Munchies	Sugarfree Natural Green Stevia Leaves Zero Calorie	75.00	0.00	2	75.00	100	f	100
1493	Munchies	Smith & Jones Italian Spices Masala Mix	99.00	0.00	6	99.00	75	f	75
1494	Munchies	Satyam Nighties Spices  Chilli Bore	89.00	10.00	6	80.00	100	f	100
1495	Munchies	Weikfield Veg Jelly Crystals - Orange	45.00	2.00	6	44.00	90	f	90
1496	Munchies	Praakritik Organic Jumbo Rolled Oats	190.00	11.00	6	169.00	500	f	500
1497	Munchies	On1y Sea Salt Grinder	89.00	0.00	6	89.00	100	f	100
1498	Munchies	Delight Nuts Berries Mix 	399.00	20.00	6	319.00	200	f	200
1499	Munchies	Everest Kesari Milk Masala	205.00	0.00	6	205.00	50	f	20
1500	Munchies	Praakritik Organic Ginger Powder	139.00	10.00	6	125.00	100	f	100
1501	Munchies	Suhana Mutton Gravy Mix	45.00	0.00	4	45.00	80	f	80
1502	Munchies	On1y Salad Seasoning Grinder	139.00	0.00	6	139.00	45	f	45
1503	Munchies	Figaro Pure Olive Oil	325.00	8.00	1	299.00	200	f	200
1504	Munchies	Madhur Sugar	60.00	6.00	0	56.00	1000	t	1
1505	Munchies	Amul Fresh Cream	63.00	0.00	0	63.00	250	t	250
1506	Munchies	Madhur Pure And Hygienic Sugar	295.00	9.00	0	266.00	5000	t	5
1507	Munchies	Satyam Poha Jada	35.00	8.00	0	32.00	500	t	500
1508	Munchies	Aashirvaad Superior MP Whole Wheat Atta	53.00	1.00	0	52.00	1000	t	1
1509	Munchies	Fortune Soyabean Oil	210.00	13.00	0	181.00	1000	t	1
1510	Munchies	Maggi Masala Ae Magic	58.00	6.00	0	54.00	72	t	72
1511	Munchies	Aashirvaad Iodised Salt 	22.00	13.00	0	19.00	1000	t	1
1512	Munchies	Maggi 2-Minute Instant Noodles - Masala	44.00	0.00	0	44.00	280	t	280
1513	Munchies	Popular Essentials Phool Makhana (Jumbo Size)	150.00	14.00	0	128.00	100	t	100
1514	Munchies	Aashirvaad Atta With Mutigrains	315.00	8.00	0	287.00	5000	t	5
1515	Munchies	Tata Sampann Poha	44.00	6.00	0	41.00	500	t	500
1516	Munchies	Fortune Besan Flour	120.00	0.00	0	120.00	1000	t	1
1517	Munchies	Popular Essentials Toor Dal (Un-Polished)	80.00	7.00	0	74.00	500	t	500
1518	Munchies	Everest Tikhalal Hot & Red Chilly Powder	47.00	2.00	0	46.00	100	t	100
1519	Munchies	Popular Essentials Chia Seeds	50.00	2.00	0	49.00	100	t	100
1520	Munchies	Tata Sampann Unpolished Toor Dal/Arhar Dal	179.00	1.00	0	177.00	1000	t	200
1521	Munchies	Everest Coriander Powder	32.00	3.00	0	31.00	100	t	100
1522	Munchies	Satyam Thin Poha Patla	38.00	7.00	0	35.00	500	t	500
1523	Munchies	Popular Essentials Sona Masouri Raw Rice	75.00	0.00	0	75.00	1000	t	1
1524	Munchies	Tata Sampann High Protien Chana Dal - Split	64.00	0.00	0	64.00	500	t	500
1525	Munchies	Satyam Singdana 	119.00	6.00	0	111.00	500	t	500
1526	Munchies	Tata Sampann Moong Chilka 	88.00	6.00	0	82.00	500	t	500
1527	Munchies	Tata Sampann High Protien Toor Dal - Split	91.00	2.00	0	89.00	500	t	500
1528	Munchies	Ching's Chow Mein Hakka Noodles Masala	10.00	0.00	0	10.00	20	t	20
1529	Munchies	Everest Chat Masala	65.00	9.00	0	59.00	100	t	100
1530	Munchies	Popular Essentials Black Brown Chana (Un-Polished)	55.00	9.00	0	50.00	500	t	500
1531	Munchies	Dabur Ginger Garlic Paste	50.00	6.00	0	47.00	200	t	200
1532	Munchies	Ching's Secret Veg Hakka Noodles	107.00	0.00	0	107.00	600	t	600
1533	Munchies	Saffola Oats 100 % Natural	15.00	0.00	0	15.00	38	t	38
1534	Munchies	Everest Kashmiri Lal Chilli Powder	310.00	10.00	0	279.00	500	t	500
1535	Munchies	Popular Essentials Black Raisins Seedless	60.00	10.00	0	54.00	100	t	100
1536	Munchies	Daawat Rozana Super Basmati Rice	79.00	0.00	0	79.00	1000	t	1
1537	Munchies	Everest Cumin Powder (Jeera)	30.00	3.00	0	29.00	50	t	50
1538	Munchies	Everest Sambhar Masala	34.00	2.00	0	33.00	50	t	50
1539	Munchies	Maggi Chilly Chow Cuppa Noodles	50.00	0.00	0	50.00	70	t	70
1540	Munchies	Popular Essentials Mustard Seeds Rai Big	20.00	0.00	0	20.00	100	t	100
1541	Munchies	Patanjali Cow's Ghee	565.00	0.00	0	565.00	1000	t	1
1542	Munchies	Everest Amchur Powder	42.00	2.00	0	41.00	50	t	50
1543	Munchies	Daawat Super Basmati Rice	185.00	8.00	0	169.00	1000	t	1
1544	Munchies	Popular Essentials Sabudana	60.00	10.00	0	54.00	500	t	500
1545	Munchies	Popular Essentials Brown Sugar	40.00	0.00	0	40.00	500	t	500
1546	Munchies	Everest Coriander Powder	70.00	10.00	0	63.00	200	t	200
1547	Munchies	Sunfeast Yippee! Magic Masala Noodles	48.00	6.00	0	45.00	240	t	240
1548	Munchies	Tata Tea Gold	35.00	0.00	0	35.00	100	t	200
1549	Munchies	Daawat Rozana Gold Basmati Rice	90.00	1.00	0	89.00	1000	t	1
1550	Munchies	Top Ramen Masala	91.00	9.00	0	82.00	560	t	560
1551	Munchies	Everest Turmeric Powder	67.00	10.00	0	60.00	200	t	200
1552	Munchies	Popular Essentials Buckwheat Flour (Kuttu Atta)	125.00	9.00	0	113.00	500	t	500
1553	Munchies	Keya Italian Pizza Oregano	109.00	11.00	0	97.00	80	t	80
1554	Munchies	Chef's Basket Durum Wheat Penne Pasta	160.00	50.00	0	80.00	500	t	500
1555	Munchies	Tata Sampann Kala Chana	125.00	0.00	0	125.00	1000	t	1
1556	Munchies	India Gate Basmati Rice	210.00	0.00	0	210.00	1000	t	1
1557	Munchies	24 Mantra Organic Whole Wheat Atta	64.00	7.00	0	59.00	1000	t	1
1558	Munchies	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
1559	Munchies	Sunfeast Pasta Treat Pack of Tomato Cheese	28.00	17.00	0	23.00	65	t	65
1560	Munchies	Sugarlite 50% Less Calories Sugar Pouch	99.00	40.00	0	59.00	500	t	500
1561	Munchies	Popular Essentials Sabja/Basil Seeds	60.00	15.00	0	51.00	100	t	100
1562	Munchies	Patanjali Pure Honey	95.00	0.00	0	95.00	250	t	250
1563	Munchies	Weikfield Falooda Mix - Mango	49.00	2.00	0	48.00	200	t	200
1564	Munchies	Pro Nature Organic Sonamasoori Brown Rice	102.00	7.00	0	94.00	1000	t	1
1565	Munchies	Maggi Special Masala Spicy Yummy Noodles	72.00	0.00	0	72.00	280	t	280
1566	Munchies	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
1567	Munchies	Everest Saffron Kesar	120.00	0.00	0	120.00	1	t	0
1568	Dairy, Bread & Batter	Mother Dairy Toned Milk Pouch	25.00	0.00	4	25.00	500	f	500
1569	Dairy, Bread & Batter	Mother Dairy Classic Curd	30.00	3.00	6	29.00	400	f	400
1570	Dairy, Bread & Batter	Mother Dairy Ultra Full Cream Milk	31.00	0.00	4	31.00	500	f	500
1571	Dairy, Bread & Batter	Amul Butter - Pasteurised	50.00	2.00	6	49.00	100	f	100
1572	Dairy, Bread & Batter	Britannia Sandwich White Bread	33.00	0.00	4	33.00	350	f	350
1573	Dairy, Bread & Batter	iD Curd Pouch	35.00	2.00	6	34.00	400	f	400
1574	Dairy, Bread & Batter	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
1575	Dairy, Bread & Batter	Britannia 100% Whole Wheat Bread	45.00	0.00	4	45.00	450	f	450
1576	Dairy, Bread & Batter	Britannia Healthy Slice Sandwich Bread	40.00	0.00	4	40.00	450	f	450
1577	Dairy, Bread & Batter	Gowardhan Classic Block Fresh Paneer	89.00	8.00	6	81.00	200	f	200
1578	Dairy, Bread & Batter	Amul Processed Cheese Cubes	106.00	4.00	6	101.00	200	f	200
1579	Dairy, Bread & Batter	Britannia Pav	22.00	0.00	4	22.00	250	f	250
1580	Dairy, Bread & Batter	Amul Butter - Pasteurised	245.00	2.00	6	240.00	500	f	500
1581	Dairy, Bread & Batter	Arden Eggs White	97.00	0.00	4	97.00	696	f	12
1582	Dairy, Bread & Batter	Arden Eggs White	65.00	15.00	4	55.00	348	f	6
1583	Dairy, Bread & Batter	Nestle A+ Nourish Dahi	35.00	2.00	6	34.00	200	f	200
1584	Dairy, Bread & Batter	Britannia Burger Bun with Sesame Seed	15.00	0.00	4	15.00	100	f	100
1585	Dairy, Bread & Batter	Amul Frozen Malai Paneer	75.00	2.00	6	73.00	200	f	200
1586	Dairy, Bread & Batter	iD Natural Paneer	105.00	5.00	6	99.00	200	f	200
1587	Dairy, Bread & Batter	Britannia Fruit Bun	17.00	0.00	3	17.00	100	f	100
1588	Dairy, Bread & Batter	Amul Cheese - Processed Slices	122.00	1.00	6	120.00	200	f	200
1589	Dairy, Bread & Batter	iD Curd Cup	60.00	0.00	6	60.00	400	f	400
1590	Dairy, Bread & Batter	The Bake Shop Premium White Sandwich Bread	30.00	0.00	1	30.00	400	f	400
1591	Dairy, Bread & Batter	Britannia Multigrain Bread 	55.00	0.00	4	55.00	400	f	400
1592	Dairy, Bread & Batter	Amul Processed Cheese Block	106.00	0.00	6	106.00	200	f	200
1593	Dairy, Bread & Batter	Nestle A+ Nourish Dahi	70.00	2.00	6	68.00	400	f	400
1594	Dairy, Bread & Batter	Arden Eggs Brown	85.00	7.00	4	79.00	348	f	6
1595	Dairy, Bread & Batter	Epigamia Misti Doi	30.00	0.00	6	30.00	85	f	85
1596	Dairy, Bread & Batter	Amul Cheese - Block	245.00	2.00	6	240.00	500	f	500
1597	Dairy, Bread & Batter	Amul Butter - Pasteurised (School Pack)	59.00	3.00	6	57.00	100	f	100
1598	Dairy, Bread & Batter	Britannia Brown Bread 	42.00	0.00	4	42.00	400	f	400
1599	Dairy, Bread & Batter	Amul Fresh Cream	197.00	3.00	3	191.00	1000	f	1
1600	Dairy, Bread & Batter	Epigamia Natural Greek Yogurt	45.00	0.00	6	45.00	90	f	90
1601	Dairy, Bread & Batter	The Bake Shop Pizza Base	30.00	0.00	1	30.00	150	f	150
1602	Dairy, Bread & Batter	Amul Delicious Fat Spread - Cholesterol Free	18.00	5.00	6	17.00	100	f	100
1603	Dairy, Bread & Batter	D'lecta Dairy Cream	54.00	5.00	6	51.00	200	f	200
1604	Dairy, Bread & Batter	Nestle A+ Actiplus Probiotic Dahi Plain Curd	78.00	3.00	5	75.00	400	f	400
1605	Dairy, Bread & Batter	Bio Nutrients Pure Diet Tofu Gold 	60.00	5.00	5	57.00	200	f	200
1606	Dairy, Bread & Batter	Amul Delicious Fat Spread - Cholesterol Free	88.00	2.00	2	86.00	500	f	500
1607	Dairy, Bread & Batter	Amul Mithai Mate Condensed Sweetened Milk	56.00	3.00	4	54.00	200	f	200
1608	Dairy, Bread & Batter	Arden Desi Eggs	110.00	13.00	4	95.00	348	f	6
1609	Dairy, Bread & Batter	Amul Cheese - Pepper	85.00	3.00	6	82.00	200	f	200
1610	Dairy, Bread & Batter	Amul Cheese Spread Creamy	85.00	5.00	6	80.00	180	f	180
1611	Dairy, Bread & Batter	The Bake Shop Foot Long	40.00	0.00	1	40.00	200	f	200
1612	Dairy, Bread & Batter	Amul Cheese Slices	360.00	0.00	1	359.00	750	f	750
1613	Dairy, Bread & Batter	Suguna Sharp Egg 	72.00	13.00	3	62.00	348	f	6
1614	Dairy, Bread & Batter	Amul Cheese Sauce Mexican Salsa	75.00	4.00	1	72.00	200	f	200
1615	Dairy, Bread & Batter	Nestle Everyday Dairy Whitener	210.00	0.00	4	210.00	400	f	400
1616	Dairy, Bread & Batter	Amul Pizza Cheese Processed	109.00	4.00	6	104.00	200	f	200
1617	Dairy, Bread & Batter	Betty Crocker Complete Pancake Mix Original	110.00	4.00	6	105.00	250	f	500
1618	Dairy, Bread & Batter	Amul Lite Spread	40.00	2.00	5	39.00	100	f	100
1619	Dairy, Bread & Batter	Go Cheese Slice - Plain	140.00	5.00	6	133.00	200	f	200
1620	Dairy, Bread & Batter	Pillsbury Choco Chip Pancake Mix	99.00	5.00	6	94.00	165	f	165
1621	Dairy, Bread & Batter	RRO Sour Cream	275.00	50.00	4	137.00	200	f	200
1622	Dairy, Bread & Batter	D'lecta Natural Feta Cheese Block	100.00	5.00	4	95.00	100	f	100
1623	Dairy, Bread & Batter	Suguna Active - DHA	72.00	13.00	4	62.00	348	f	6
1624	Dairy, Bread & Batter	Go Cheese Processed Angles Plain	100.00	5.00	6	95.00	160	f	160
1625	Dairy, Bread & Batter	Epigamia Greek Yogurt - Natural	200.00	0.00	1	200.00	400	f	400
1626	Dairy, Bread & Batter	Amul Unsalted Cooking Butter	245.00	2.00	6	238.00	500	f	500
1627	Dairy, Bread & Batter	The Whole Truth Dark Chocolate Peanut Butter - Creamy	235.00	25.00	6	174.00	325	f	325
1628	Dairy, Bread & Batter	The Laughing Cow Cheese Slices	155.00	0.00	2	155.00	200	f	200
1629	Dairy, Bread & Batter	Epigamia Almond Milk Unsweetened Dairy Free	300.00	33.00	4	199.00	1000	f	1
1630	Dairy, Bread & Batter	Go Cheese  Spread Plain	99.00	5.00	6	94.00	200	f	200
1631	Dairy, Bread & Batter	So Good Almond Milk - Natural Unsweetened	70.00	0.00	4	70.00	200	f	200
1632	Dairy, Bread & Batter	Amul Cheese Sauce Jalapeno	75.00	0.00	5	75.00	200	f	200
1633	Dairy, Bread & Batter	D'lecta Cream Cheese	169.00	4.00	4	161.00	150	f	150
1634	Dairy, Bread & Batter	Dlecta Natural Cheddar Slices	199.00	5.00	6	189.00	200	f	200
1635	Dairy, Bread & Batter	Suguna Heart- Omega3	72.00	13.00	4	62.00	348	f	6
1636	Dairy, Bread & Batter	Go Cheese Spread - Garlic	99.00	5.00	6	94.00	200	f	200
1637	Dairy, Bread & Batter	Go Pizza Cheese	140.00	5.00	6	133.00	200	f	200
1638	Dairy, Bread & Batter	RRO Cheddar Block Cheese	295.00	50.00	6	147.00	200	f	200
1639	Dairy, Bread & Batter	The Whole Truth Peanut Butter With Dates - Creamy No Sugar	215.00	9.00	6	194.00	325	f	325
1640	Dairy, Bread & Batter	Suguna Fit Egg	120.00	43.00	4	68.00	348	f	6
1641	Dairy, Bread & Batter	Pantai Coconut Cream	150.00	4.00	4	143.00	400	f	400
1642	Dairy, Bread & Batter	RRO Fresh Ricotta	275.00	50.00	6	137.00	200	f	200
1643	Dairy, Bread & Batter	Dlecta Cheese Cubes 2	145.00	5.00	6	137.00	200	f	200
1644	Dairy, Bread & Batter	RRO Mozzarella Pizza Cheese	275.00	50.00	6	137.00	200	f	200
1645	Dairy, Bread & Batter	The Laughing Cow Cheese Cubes	150.00	0.00	4	150.00	200	f	200
1646	Dairy, Bread & Batter	Yogabar 100% Pure Peanut Butter Creamy & Yummy Unsweetened	229.00	10.00	6	206.00	400	f	400
1647	Dairy, Bread & Batter	RRO Burrata Cheese	250.00	50.00	4	125.00	200	f	200
1648	Dairy, Bread & Batter	The Whole Truth Dark Chocolate Peanut Butter - Crunchy	235.00	20.00	5	188.00	325	f	325
1649	Dairy, Bread & Batter	Go Cheese Processed Squares	125.00	5.00	6	118.00	200	f	200
1650	Dairy, Bread & Batter	Funfoods Peanut Butter Crunchy	169.00	7.00	1	156.00	400	f	400
1651	Dairy, Bread & Batter	Amul Safed Makkhan	235.00	1.00	6	232.00	500	f	500
1652	Dairy, Bread & Batter	Go Cheese Spread - Four Pepper (Soft & Creamy)	99.00	5.00	6	94.00	200	f	200
1653	Dairy, Bread & Batter	Dlicia Whip Topping Bottle	235.00	27.00	5	171.00	1000	f	1
1654	Dairy, Bread & Batter	Amulya Dairy Whitener 	380.00	2.00	4	372.00	1000	f	1
1655	Dairy, Bread & Batter	Laughing Cow Cheese 8 Portion 120Gm Imported	110.00	0.00	6	110.00	120	f	120
1656	Dairy, Bread & Batter	The Whole Truth Peanut Butter - Sweetened & Crunchy	215.00	20.00	6	172.00	325	f	325
1657	Dairy, Bread & Batter	Go Processed Cheese Block	125.00	4.00	6	119.00	200	f	200
1658	Dairy, Bread & Batter	Go Cheese Processed Block	249.00	4.00	6	237.00	400	f	400
1659	Dairy, Bread & Batter	RRO Goat Milk Fetta Cheee	345.00	31.00	6	237.00	100	f	100
1660	Dairy, Bread & Batter	RRO Mascarpone Cheese	355.00	50.00	6	177.00	200	f	200
1661	Dairy, Bread & Batter	D'lecta Cheddar Cheese	199.00	5.00	6	189.00	200	f	200
1662	Dairy, Bread & Batter	Funfoods Peanut Butter Creamy	169.00	0.00	1	169.00	400	f	400
1663	Dairy, Bread & Batter	Pantai Coconut Milk	150.00	0.00	4	150.00	400	f	400
1664	Dairy, Bread & Batter	Dlecta Cheese Block	145.00	0.00	6	145.00	200	f	200
1665	Dairy, Bread & Batter	President Butter - Salted	54.00	0.00	6	54.00	100	f	100
1666	Dairy, Bread & Batter	The Laughing Cow Plain Processed Cheese Block	150.00	0.00	6	150.00	200	f	200
1667	Dairy, Bread & Batter	Yoga Bar Peanut Butter Dark Chocolate Jar	249.00	0.00	4	249.00	400	f	400
1668	Dairy, Bread & Batter	The Laughing Cow Cheese Spread Plain	110.00	0.00	6	110.00	180	f	180
1669	Dairy, Bread & Batter	Amul Malai Paneer Fresh 	76.00	3.00	0	73.00	200	t	200
1670	Dairy, Bread & Batter	Amul Taaza Toned Homogenised Milk	66.00	3.00	0	64.00	1000	t	1
1671	Dairy, Bread & Batter	Amul Fresh Cream	63.00	0.00	0	63.00	250	t	250
1672	Dairy, Bread & Batter	Amul Lactose Free Milk	25.00	4.00	0	24.00	250	t	250
1673	Dairy, Bread & Batter	The Bake Shop Whole Wheat Bread	40.00	0.00	0	40.00	400	t	400
1674	Dairy, Bread & Batter	Amul Slim Trim Skimmed Milk	75.00	0.00	0	75.00	1000	t	1
1675	Dairy, Bread & Batter	Amul Cheese Slices	71.00	1.00	0	70.00	100	t	100
1676	Dairy, Bread & Batter	Amul Pizza Cheese - Mozzarella	100.00	1.00	0	99.00	200	t	200
1677	Dairy, Bread & Batter	The Bake Shop Pizza Base Whole Wheat	30.00	0.00	0	30.00	150	t	150
1678	Dairy, Bread & Batter	Nestle A+ Slim Dahi - Low Fat	78.00	3.00	0	75.00	400	t	400
1679	Dairy, Bread & Batter	Britannia Cheese Garlic Bread	35.00	0.00	0	35.00	300	t	300
1680	Dairy, Bread & Batter	The Bake Shop Whole Wheat Ladi Pav	40.00	0.00	0	40.00	200	t	200
1681	Dairy, Bread & Batter	Amul Cheese Spread Yummy Plain	85.00	0.00	0	85.00	200	t	200
1682	Dairy, Bread & Batter	Britannia Atta Kulcha	30.00	0.00	0	30.00	250	t	250
1683	Dairy, Bread & Batter	Suguna Nourish Egg	62.00	0.00	0	62.00	696	t	12
1684	Dairy, Bread & Batter	The Bake Shop Multi Grain Bread	65.00	0.00	0	65.00	400	t	400
1685	Dairy, Bread & Batter	Nestle A+ Slim Milk	89.00	0.00	0	89.00	1000	t	1
1686	Dairy, Bread & Batter	Go Cheese Pizza Blend Mozzarella + Cheddar	125.00	5.00	0	118.00	200	t	200
1687	Dairy, Bread & Batter	The Whole Truth Peanut Butter - Unsweetened & Crunchy	185.00	20.00	0	148.00	325	t	325
1688	Dairy, Bread & Batter	Amul Cheese Spread Spicy Garlic	85.00	3.00	0	82.00	200	t	200
1689	Dairy, Bread & Batter	The Bake Shop Burger Buns	20.00	0.00	0	20.00	100	t	100
1690	Dairy, Bread & Batter	D'lecta Shredded Mozzarella Cheese	100.00	5.00	0	95.00	140	t	140
1691	Dairy, Bread & Batter	Britannia Burger Bun with Sesame Seed	30.00	0.00	0	30.00	200	t	200
1692	Dairy, Bread & Batter	Suguna Vitamin D Egg	75.00	17.00	0	62.00	348	t	6
1693	Dairy, Bread & Batter	Pillsbury Pancake Mix - Funfetti	99.00	11.00	0	88.00	162	t	162
1694	Dairy, Bread & Batter	Prabhat Malai Paneer Pouch	80.00	0.00	0	80.00	200	t	200
1695	Dairy, Bread & Batter	Suguna Nourish Egg 	72.00	16.00	0	60.00	348	t	6
1696	Dairy, Bread & Batter	RRO Mozzarella Block Cheese	295.00	50.00	0	147.00	200	t	200
1697	Beverages	Mother Dairy Toned Milk Pouch	25.00	0.00	4	25.00	500	f	500
1698	Beverages	Mother Dairy Classic Curd	30.00	3.00	6	29.00	400	f	400
1699	Beverages	Mother Dairy Ultra Full Cream Milk	31.00	0.00	4	31.00	500	f	500
1700	Beverages	Amul Butter - Pasteurised	50.00	2.00	6	49.00	100	f	100
1701	Beverages	Britannia Sandwich White Bread	33.00	0.00	4	33.00	350	f	350
1702	Beverages	iD Curd Pouch	35.00	2.00	6	34.00	400	f	400
1703	Beverages	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
1704	Beverages	Britannia 100% Whole Wheat Bread	45.00	0.00	4	45.00	450	f	450
1705	Beverages	Britannia Healthy Slice Sandwich Bread	40.00	0.00	4	40.00	450	f	450
1706	Beverages	Gowardhan Classic Block Fresh Paneer	89.00	8.00	6	81.00	200	f	200
1707	Beverages	Amul Processed Cheese Cubes	106.00	4.00	6	101.00	200	f	200
1708	Beverages	Britannia Pav	22.00	0.00	4	22.00	250	f	250
1709	Beverages	Amul Butter - Pasteurised	245.00	2.00	6	240.00	500	f	500
1710	Beverages	Arden Eggs White	97.00	0.00	4	97.00	696	f	12
1711	Beverages	Arden Eggs White	65.00	15.00	4	55.00	348	f	6
1712	Beverages	Nestle A+ Nourish Dahi	35.00	2.00	6	34.00	200	f	200
1713	Beverages	Britannia Burger Bun with Sesame Seed	15.00	0.00	4	15.00	100	f	100
1714	Beverages	Amul Frozen Malai Paneer	75.00	2.00	6	73.00	200	f	200
1715	Beverages	iD Natural Paneer	105.00	5.00	6	99.00	200	f	200
1716	Beverages	Britannia Fruit Bun	17.00	0.00	3	17.00	100	f	100
1717	Beverages	Amul Cheese - Processed Slices	122.00	1.00	6	120.00	200	f	200
1719	Beverages	The Bake Shop Premium White Sandwich Bread	30.00	0.00	1	30.00	400	f	400
1720	Beverages	Britannia Multigrain Bread 	55.00	0.00	4	55.00	400	f	400
1721	Beverages	Amul Processed Cheese Block	106.00	0.00	6	106.00	200	f	200
1722	Beverages	Nestle A+ Nourish Dahi	70.00	2.00	6	68.00	400	f	400
1723	Beverages	Arden Eggs Brown	85.00	7.00	4	79.00	348	f	6
1724	Beverages	Epigamia Misti Doi	30.00	0.00	6	30.00	85	f	85
1725	Beverages	Amul Cheese - Block	245.00	2.00	6	240.00	500	f	500
1726	Beverages	Amul Butter - Pasteurised (School Pack)	59.00	3.00	6	57.00	100	f	100
1727	Beverages	Britannia Brown Bread 	42.00	0.00	4	42.00	400	f	400
1728	Beverages	Amul Fresh Cream	197.00	3.00	3	191.00	1000	f	1
1729	Beverages	Epigamia Natural Greek Yogurt	45.00	0.00	6	45.00	90	f	90
1730	Beverages	The Bake Shop Pizza Base	30.00	0.00	1	30.00	150	f	150
1731	Beverages	Amul Delicious Fat Spread - Cholesterol Free	18.00	5.00	6	17.00	100	f	100
1732	Beverages	D'lecta Dairy Cream	54.00	5.00	6	51.00	200	f	200
1733	Beverages	Nestle A+ Actiplus Probiotic Dahi Plain Curd	78.00	3.00	5	75.00	400	f	400
1734	Beverages	Bio Nutrients Pure Diet Tofu Gold 	60.00	5.00	5	57.00	200	f	200
1735	Beverages	Amul Delicious Fat Spread - Cholesterol Free	88.00	2.00	2	86.00	500	f	500
1736	Beverages	Amul Mithai Mate Condensed Sweetened Milk	56.00	3.00	4	54.00	200	f	200
1737	Beverages	Arden Desi Eggs	110.00	13.00	4	95.00	348	f	6
1738	Beverages	Amul Cheese - Pepper	85.00	3.00	6	82.00	200	f	200
1739	Beverages	Amul Cheese Spread Creamy	85.00	5.00	6	80.00	180	f	180
1740	Beverages	The Bake Shop Foot Long	40.00	0.00	1	40.00	200	f	200
1741	Beverages	Amul Cheese Slices	360.00	0.00	1	359.00	750	f	750
1742	Beverages	Suguna Sharp Egg 	72.00	13.00	3	62.00	348	f	6
1743	Beverages	Amul Cheese Sauce Mexican Salsa	75.00	4.00	1	72.00	200	f	200
1744	Beverages	Nestle Everyday Dairy Whitener	210.00	0.00	4	210.00	400	f	400
1745	Beverages	Amul Pizza Cheese Processed	109.00	4.00	6	104.00	200	f	200
1746	Beverages	Betty Crocker Complete Pancake Mix Original	110.00	4.00	6	105.00	250	f	500
1747	Beverages	Amul Lite Spread	40.00	2.00	5	39.00	100	f	100
1748	Beverages	Go Cheese Slice - Plain	140.00	5.00	6	133.00	200	f	200
1749	Beverages	Pillsbury Choco Chip Pancake Mix	99.00	5.00	6	94.00	165	f	165
1750	Beverages	RRO Sour Cream	275.00	50.00	4	137.00	200	f	200
1751	Beverages	D'lecta Natural Feta Cheese Block	100.00	5.00	4	95.00	100	f	100
1752	Beverages	Suguna Active - DHA	72.00	13.00	4	62.00	348	f	6
1753	Beverages	Go Cheese Processed Angles Plain	100.00	5.00	6	95.00	160	f	160
1754	Beverages	Epigamia Greek Yogurt - Natural	200.00	0.00	1	200.00	400	f	400
1755	Beverages	Amul Unsalted Cooking Butter	245.00	2.00	6	238.00	500	f	500
1756	Beverages	The Whole Truth Dark Chocolate Peanut Butter - Creamy	235.00	25.00	6	174.00	325	f	325
1757	Beverages	The Laughing Cow Cheese Slices	155.00	0.00	2	155.00	200	f	200
1758	Beverages	Epigamia Almond Milk Unsweetened Dairy Free	300.00	33.00	4	199.00	1000	f	1
1759	Beverages	Go Cheese  Spread Plain	99.00	5.00	6	94.00	200	f	200
1760	Beverages	So Good Almond Milk - Natural Unsweetened	70.00	0.00	4	70.00	200	f	200
1761	Beverages	Amul Cheese Sauce Jalapeno	75.00	0.00	5	75.00	200	f	200
1762	Beverages	D'lecta Cream Cheese	169.00	4.00	4	161.00	150	f	150
1763	Beverages	Dlecta Natural Cheddar Slices	199.00	5.00	6	189.00	200	f	200
1764	Beverages	Suguna Heart- Omega3	72.00	13.00	4	62.00	348	f	6
1765	Beverages	Go Cheese Spread - Garlic	99.00	5.00	6	94.00	200	f	200
1766	Beverages	Go Pizza Cheese	140.00	5.00	6	133.00	200	f	200
1767	Beverages	RRO Cheddar Block Cheese	295.00	50.00	6	147.00	200	f	200
1768	Beverages	The Whole Truth Peanut Butter With Dates - Creamy No Sugar	215.00	9.00	6	194.00	325	f	325
1769	Beverages	Suguna Fit Egg	120.00	43.00	4	68.00	348	f	6
1770	Beverages	Pantai Coconut Cream	150.00	4.00	4	143.00	400	f	400
1771	Beverages	RRO Fresh Ricotta	275.00	50.00	6	137.00	200	f	200
1772	Beverages	Dlecta Cheese Cubes 2	145.00	5.00	6	137.00	200	f	200
1773	Beverages	RRO Mozzarella Pizza Cheese	275.00	50.00	6	137.00	200	f	200
1774	Beverages	The Laughing Cow Cheese Cubes	150.00	0.00	4	150.00	200	f	200
1775	Beverages	Yogabar 100% Pure Peanut Butter Creamy & Yummy Unsweetened	229.00	10.00	6	206.00	400	f	400
1776	Beverages	RRO Burrata Cheese	250.00	50.00	4	125.00	200	f	200
1777	Beverages	The Whole Truth Dark Chocolate Peanut Butter - Crunchy	235.00	20.00	5	188.00	325	f	325
1778	Beverages	Go Cheese Processed Squares	125.00	5.00	6	118.00	200	f	200
1779	Beverages	Funfoods Peanut Butter Crunchy	169.00	7.00	1	156.00	400	f	400
1780	Beverages	Amul Safed Makkhan	235.00	1.00	6	232.00	500	f	500
1781	Beverages	Go Cheese Spread - Four Pepper (Soft & Creamy)	99.00	5.00	6	94.00	200	f	200
1782	Beverages	Dlicia Whip Topping Bottle	235.00	27.00	5	171.00	1000	f	1
1783	Beverages	Amulya Dairy Whitener 	380.00	2.00	4	372.00	1000	f	1
1784	Beverages	Laughing Cow Cheese 8 Portion 120Gm Imported	110.00	0.00	6	110.00	120	f	120
1785	Beverages	The Whole Truth Peanut Butter - Sweetened & Crunchy	215.00	20.00	6	172.00	325	f	325
1786	Beverages	Go Processed Cheese Block	125.00	4.00	6	119.00	200	f	200
1787	Beverages	Go Cheese Processed Block	249.00	4.00	6	237.00	400	f	400
1788	Beverages	RRO Goat Milk Fetta Cheee	345.00	31.00	6	237.00	100	f	100
1789	Beverages	RRO Mascarpone Cheese	355.00	50.00	6	177.00	200	f	200
1790	Beverages	D'lecta Cheddar Cheese	199.00	5.00	6	189.00	200	f	200
1791	Beverages	Funfoods Peanut Butter Creamy	169.00	0.00	1	169.00	400	f	400
1792	Beverages	Pantai Coconut Milk	150.00	0.00	4	150.00	400	f	400
1793	Beverages	Dlecta Cheese Block	145.00	0.00	6	145.00	200	f	200
1794	Beverages	President Butter - Salted	54.00	0.00	6	54.00	100	f	100
1795	Beverages	The Laughing Cow Plain Processed Cheese Block	150.00	0.00	6	150.00	200	f	200
1796	Beverages	Yoga Bar Peanut Butter Dark Chocolate Jar	249.00	0.00	4	249.00	400	f	400
1797	Beverages	The Laughing Cow Cheese Spread Plain	110.00	0.00	6	110.00	180	f	180
1798	Beverages	Amul Malai Paneer Fresh 	76.00	3.00	0	73.00	200	t	200
1799	Beverages	Amul Taaza Toned Homogenised Milk	66.00	3.00	0	64.00	1000	t	1
1800	Beverages	Amul Fresh Cream	63.00	0.00	0	63.00	250	t	250
1801	Beverages	Amul Lactose Free Milk	25.00	4.00	0	24.00	250	t	250
1802	Beverages	The Bake Shop Whole Wheat Bread	40.00	0.00	0	40.00	400	t	400
1803	Beverages	Amul Slim Trim Skimmed Milk	75.00	0.00	0	75.00	1000	t	1
1804	Beverages	Amul Cheese Slices	71.00	1.00	0	70.00	100	t	100
1805	Beverages	Amul Pizza Cheese - Mozzarella	100.00	1.00	0	99.00	200	t	200
1806	Beverages	The Bake Shop Pizza Base Whole Wheat	30.00	0.00	0	30.00	150	t	150
1807	Beverages	Nestle A+ Slim Dahi - Low Fat	78.00	3.00	0	75.00	400	t	400
1808	Beverages	Britannia Cheese Garlic Bread	35.00	0.00	0	35.00	300	t	300
1809	Beverages	The Bake Shop Whole Wheat Ladi Pav	40.00	0.00	0	40.00	200	t	200
1810	Beverages	Amul Cheese Spread Yummy Plain	85.00	0.00	0	85.00	200	t	200
1811	Beverages	Britannia Atta Kulcha	30.00	0.00	0	30.00	250	t	250
1812	Beverages	Suguna Nourish Egg	62.00	0.00	0	62.00	696	t	12
1813	Beverages	The Bake Shop Multi Grain Bread	65.00	0.00	0	65.00	400	t	400
1814	Beverages	Nestle A+ Slim Milk	89.00	0.00	0	89.00	1000	t	1
1815	Beverages	Go Cheese Pizza Blend Mozzarella + Cheddar	125.00	5.00	0	118.00	200	t	200
1816	Beverages	The Whole Truth Peanut Butter - Unsweetened & Crunchy	185.00	20.00	0	148.00	325	t	325
1817	Beverages	Amul Cheese Spread Spicy Garlic	85.00	3.00	0	82.00	200	t	200
1818	Beverages	The Bake Shop Burger Buns	20.00	0.00	0	20.00	100	t	100
1819	Beverages	D'lecta Shredded Mozzarella Cheese	100.00	5.00	0	95.00	140	t	140
1820	Beverages	Britannia Burger Bun with Sesame Seed	30.00	0.00	0	30.00	200	t	200
1821	Beverages	Suguna Vitamin D Egg	75.00	17.00	0	62.00	348	t	6
1822	Beverages	Pillsbury Pancake Mix - Funfetti	99.00	11.00	0	88.00	162	t	162
1823	Beverages	Prabhat Malai Paneer Pouch	80.00	0.00	0	80.00	200	t	200
1824	Beverages	Suguna Nourish Egg 	72.00	16.00	0	60.00	348	t	6
1825	Beverages	RRO Mozzarella Block Cheese	295.00	50.00	0	147.00	200	t	200
1826	Packaged Food	Maggi 2 Minute Masala Noodles	12.00	0.00	6	12.00	70	f	70
1827	Packaged Food	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
1828	Packaged Food	iD Malabar Parota 	80.00	10.00	4	72.00	400	f	400
1829	Packaged Food	iD Wheat Lachha Paratha	80.00	12.00	6	70.00	400	f	400
1830	Packaged Food	McCain Aloo Tikki	110.00	4.00	6	105.00	400	f	400
1831	Packaged Food	McCain Smiles Cripsy Happy Potatoes	120.00	5.00	6	114.00	415	f	415
1832	Packaged Food	McCain Veggie Burger Patty	115.00	3.00	6	111.00	360	f	360
1833	Packaged Food	McCain Veggie Fingers	117.00	5.00	6	111.00	400	f	400
1834	Packaged Food	Amul Delicious Fat Spread - Cholesterol Free	18.00	5.00	6	17.00	100	f	100
1835	Packaged Food	Whiskas Wet  Meal (Adult - Cat Food)  Chicken in Gravy	35.00	2.00	2	34.00	85	f	85
1836	Packaged Food	McCain Chilli Garlic Potato Bites Crunchy Potato Nuggets	125.00	5.00	1	118.00	420	f	420
1837	Packaged Food	Ching's Secret Instant Hot Garlic Noodles	15.00	0.00	3	15.00	60	f	60
1838	Packaged Food	Veeba Eggless Mayonnaise	79.00	11.00	5	70.00	250	f	250
1839	Packaged Food	Ching's Secret Instant Schezwan Noodles	15.00	0.00	6	15.00	60	f	60
1840	Packaged Food	Veeba Pasta And Pizza Sauce	75.00	13.00	5	65.00	280	f	280
1841	Packaged Food	Top Ramen  Noodles Curry Veg Pouch	20.00	0.00	1	20.00	70	f	70
1842	Packaged Food	Saffola Veggie Twist Masala Oats	15.00	0.00	6	15.00	38	f	38
1843	Packaged Food	Unibic Almond & Oats Protein Bar	40.00	17.00	4	33.00	30	f	30
1844	Packaged Food	Quaker Oats	79.00	0.00	2	79.00	400	f	400
1845	Packaged Food	Amul Delicious Fat Spread - Cholesterol Free	88.00	2.00	2	86.00	500	f	500
1846	Packaged Food	McCain French Fries	120.00	5.00	1	114.00	420	f	420
1847	Packaged Food	Ching's Secret Manchow Instant Soup	10.00	0.00	1	10.00	15	f	15
1848	Packaged Food	McCain Potato Cheese Shotz	130.00	4.00	6	124.00	250	f	250
1849	Packaged Food	McCain Masala - Fries	120.00	5.00	3	114.00	375	f	375
1850	Packaged Food	Ching's Secret Schezwan Fried Rice Masala	15.00	0.00	6	15.00	20	f	20
1851	Packaged Food	McCain New Mini Samosa with Cheese Pizza Style Filling	120.00	1.00	3	118.00	240	f	240
1852	Packaged Food	McCain Chilli Cheesy Nuggets	130.00	4.00	1	124.00	250	f	250
1853	Packaged Food	Whiskas Adult (+1 Year) Dry Cat Food, Ocean Fish Flavour	430.00	10.00	6	387.00	1200	f	1
1854	Packaged Food	Chings Instant Soup - Hot & Sour	10.00	0.00	1	10.00	15	f	15
1855	Packaged Food	Amul Spray Infant Milk Food	197.00	2.00	6	193.00	500	f	500
1856	Packaged Food	McCain Smiles - Pudina Chatka	120.00	5.00	3	114.00	375	f	375
1857	Packaged Food	McCain French Fries Crisp & Delicious	175.00	4.00	3	167.00	750	f	750
1858	Packaged Food	Ferrero Nutella Hazelnut Spread	220.00	5.00	2	207.00	180	f	180
1859	Packaged Food	Lijjat Garlic Papad	60.00	5.00	5	57.00	200	f	200
1860	Packaged Food	Switz Samosa Dough Sheets	90.00	4.00	6	86.00	50	f	50
1861	Packaged Food	Amul Cheese Spread Creamy	85.00	5.00	6	80.00	180	f	180
1862	Packaged Food	Maggi Imli Sauce Pichkoo	22.00	0.00	6	22.00	90	f	90
1863	Packaged Food	Whiskas Kitten (2-12 months) Dry Cat Food Food Ocean Fish	385.00	9.00	5	347.00	1100	f	1100
1864	Packaged Food	Chings Instant Soup - Sweet Corn Veg	10.00	0.00	2	10.00	15	f	15
1865	Packaged Food	Whiskas Wet  Meal (Kitten - Cat Food)  Chicken in Gravy	35.00	5.00	2	33.00	85	f	85
1866	Packaged Food	McCain Crazy Fries Masala MixHot 'n' Tangy	120.00	5.00	6	114.00	400	f	400
1867	Packaged Food	The Whole Truth Double Cocoa Protein Bar No Sugar	100.00	10.00	6	90.00	52	f	52
1868	Packaged Food	Amul Happy Treats French Fries	68.00	4.00	1	65.00	425	f	425
1869	Packaged Food	Ferrero Nutella Hazeulnut Spread	380.00	6.00	5	357.00	350	f	350
1870	Packaged Food	Veeba Chipolte Southwest Dressing	161.00	7.00	4	149.00	300	f	300
1871	Packaged Food	Ching's Secret Manchow Noodles Instant Soup	15.00	0.00	6	15.00	20	f	20
1872	Packaged Food	Yoga Bar Breakfast Protein Bar - Blueberry Pie	50.00	12.00	1	44.00	50	f	50
1873	Packaged Food	Quaker Oats	199.00	7.00	6	184.00	1000	f	1
1874	Packaged Food	The Whole Truth Mini Protein Bar - Coconut Cocoa No Added Sugar	55.00	25.00	6	41.00	27	f	27
1875	Packaged Food	Switz Spring Roll Dough Sheets	90.00	4.00	6	86.00	1160	f	20
1876	Packaged Food	Unibic Fruit & Nut Real Cranberries & Almonds Protein Bar	40.00	17.00	6	33.00	30	f	30
1877	Packaged Food	Ching's Secret Tomato Instant Soup	10.00	0.00	1	10.00	16	f	15
1878	Packaged Food	Chef's Basket Durum Wheat Elbow Pasta	160.00	50.00	6	80.00	500	f	500
1879	Packaged Food	Sunfeast Yippee! Mood Masala Noodles	60.00	28.00	3	43.00	260	f	260
1880	Packaged Food	MTR Breakfast Khatta Meetha Poha Mix	25.00	20.00	6	20.00	60	f	60
1881	Packaged Food	Kellogg's Crunchy Fruit & Nut Breakfast Cereals Muesli	445.00	9.00	6	401.00	750	f	750
1882	Packaged Food	Ching's Secret Chilli Vinegar	50.00	0.00	4	50.00	170	f	170
1883	Packaged Food	Ching's Red Chilli Sauce	55.00	0.00	6	55.00	200	f	200
1884	Packaged Food	Amul Lite Spread	40.00	2.00	5	39.00	100	f	100
1885	Packaged Food	Borges Durum Wheat Fusilli Pasta 	250.00	0.00	3	250.00	500	f	500
1886	Packaged Food	The Whole Truth Cranberry Mini Protein Bar No Sugar	55.00	20.00	6	44.00	27	f	27
1887	Packaged Food	The Whole Truth Mini Protein Bar - Coffee Cocoa No Added Sugar	55.00	20.00	6	44.00	27	f	27
1888	Packaged Food	Maggi Hot & Sweet Tomato Chilli Sauce	115.00	0.00	1	115.00	500	f	500
1889	Packaged Food	Sunfeast YiPPee! Noodles - Magic Masala	96.00	5.00	4	91.00	540	f	540
1890	Packaged Food	Chef's Basket Durum Wheat Fusilli Pasta	160.00	50.00	6	80.00	500	f	500
1891	Packaged Food	Top Ramen Chicken Noodles	60.00	10.00	1	54.00	280	f	280
1892	Packaged Food	Veeba Cheese and Chilli Sandwich Spread	89.00	11.00	6	79.00	275	f	275
1893	Packaged Food	Ching’s Secret Chowmein Hakka Noodles Masala 	44.00	0.00	2	44.00	60	f	60
1894	Packaged Food	Safal Frozen - Mixed Vegetables	110.00	4.00	2	105.00	1000	f	1
1895	Packaged Food	MTR 3 Min Poha	25.00	0.00	6	25.00	60	f	60
1896	Packaged Food	Ching's Manchurian Instant Noodles	15.00	0.00	5	15.00	60	f	60
1897	Packaged Food	The Whole Truth Peanut Cocoa Mini Protein Bar No Sugar 	55.00	25.00	6	41.00	27	f	27
1898	Packaged Food	Gits Pav Bhaji Ready to Eat	110.00	22.00	6	85.00	300	f	300
1899	Packaged Food	McCain New Mini Samosa with Cheese Corn Style Filling	120.00	1.00	2	118.00	240	f	240
1900	Packaged Food	Lijjat Udad Mini Papad	60.00	6.00	6	56.00	200	f	200
1901	Packaged Food	McCain Herb & Garlic Crazy Fries Masala Mix 	120.00	5.00	5	114.00	400	f	400
1902	Packaged Food	Yoga Bar Multigrain Energy Bar Nuts And Seeds	40.00	12.00	4	35.00	38	f	38
1903	Packaged Food	Ching's Secret Sauce, Green Chilli	55.00	0.00	5	55.00	190	f	190
1904	Packaged Food	Veeba Pizza Topping	75.00	6.00	4	70.00	280	f	280
1905	Packaged Food	Switz Paratha Puff	110.00	4.00	6	105.00	400	f	400
1906	Packaged Food	New Kellogg's Muesli with 21% Fruit, Nut & Seeds	325.00	6.00	6	305.00	500	f	500
1907	Packaged Food	The Whole Truth Double Cocoa Mini Protein Bar No Sugar	55.00	20.00	5	44.00	27	f	27
1908	Packaged Food	Sunfeast Yippee Tricolor Pasta Seasoning	28.00	17.00	1	23.00	65	f	65
1909	Packaged Food	Wingreens Cheesy Chipotle Sauce	99.00	49.00	1	50.00	130	f	130
1910	Packaged Food	Maggi Rich Tomato Ketchup	105.00	4.00	2	100.00	500	f	500
1911	Packaged Food	The Whole Truth Dark Chocolate Peanut Butter - Creamy	235.00	25.00	6	174.00	325	f	325
1912	Packaged Food	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
1913	Packaged Food	Go Cheese  Spread Plain	99.00	5.00	6	94.00	200	f	200
1914	Packaged Food	Kellogg's Real Almond & Honey Corn Flakes	175.00	9.00	6	158.00	300	f	300
1915	Packaged Food	The Whole Truth Vegan Almond Choco Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
1916	Packaged Food	Prasuma Vegetable Momos	270.00	0.00	5	270.00	24	f	24
1917	Packaged Food	MTR Upma	50.00	10.00	6	45.00	160	f	160
1918	Packaged Food	Ching's Schezwan Masala Instant Noodles	60.00	0.00	1	60.00	240	f	240
1919	Packaged Food	The Whole Truth Cranberry Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
1920	Packaged Food	Saffola Yummy Masala Noodles 	20.00	0.00	2	20.00	46	f	46
1921	Packaged Food	Veeba English Mustard	74.00	6.00	2	69.00	300	f	300
1922	Packaged Food	Dabur Hommade Tamarind Paste	48.00	6.00	6	45.00	200	f	200
1923	Packaged Food	Yoga Bar Breakfast Muesli - Almond Caramel (No Added Sugar)	325.00	4.00	6	309.00	400	f	400
1924	Packaged Food	The Whole Truth Mini Protein Bar - Peanut Butter No Added Sugar	55.00	25.00	6	41.00	27	f	27
1925	Packaged Food	ITC Master Chef Crispy Chicken Fries 	170.00	4.00	3	162.00	280	f	280
1926	Packaged Food	Kelloggs Corn Flakes	99.00	13.00	6	86.00	250	f	250
1927	Packaged Food	Nissin Cup Noodles Tangy Tomato	50.00	10.00	2	45.00	70	f	70
1928	Packaged Food	Smith & Jones White Pasta Sauce Mix	40.00	0.00	3	40.00	46	f	46
1929	Packaged Food	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	10.00	1	25.00	65	f	65
1930	Packaged Food	Mothers Recipe Tamrind Date Chutney 	55.00	9.00	2	50.00	200	f	200
1931	Packaged Food	Veeba Mint Mayonnaise	169.00	8.00	4	155.00	300	f	300
1932	Packaged Food	Mccain Emotibites - Crispy Happy Potato Snack	130.00	0.00	6	129.00	415	f	415
1933	Packaged Food	The Whole Truth Energy Bar Choco Cranberry Fudge	60.00	26.00	6	44.00	40	f	40
1934	Packaged Food	Godrej Yummiez Chicken Lucknowi Seekh Kebab	260.00	10.00	4	234.00	400	f	400
1935	Packaged Food	Prasuma Vegetable Momos	150.00	0.00	5	150.00	580	f	10
1936	Packaged Food	Mother's Recipe Mixed Pickle	85.00	9.00	2	77.00	300	f	300
1937	Packaged Food	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	17.00	3	23.00	65	f	65
1938	Packaged Food	The Whole Truth Peanut Cocoa Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
1939	Packaged Food	Yoga Bar Breakfast Muesli - Chocolate & Cranberry 	325.00	4.00	6	309.00	400	f	400
1940	Packaged Food	Sunfeast YiPPee! Magic Masala Noodles	70.00	10.00	3	63.00	405	f	405
1941	Packaged Food	Veeba Sweet Onion Sauce	141.00	14.00	4	121.00	350	f	350
1942	Packaged Food	Quaker Oats Breakfast Cereals - With Flavour Mix Nutritious Rich Source Of Energy	49.00	8.00	6	45.00	200	f	200
1943	Packaged Food	Mother's Recipe Tamarind Paste	50.00	2.00	6	49.00	200	f	200
1944	Packaged Food	Yogabar No Added Sugar Protein Bar Brownie	125.00	15.00	4	106.00	60	f	60
1945	Packaged Food	Bambino Popular Vermicelli 	40.00	2.00	3	39.00	400	f	400
1946	Packaged Food	Ching's Secret Mix Veg Instant Soup	10.00	0.00	3	10.00	15	f	15
1947	Packaged Food	Mother's Recipe Pickle - Red Stuffed Chilli	145.00	11.00	3	129.00	400	f	400
1948	Packaged Food	Kellogg's No Added Sugar Muesli	335.00	11.00	6	298.00	500	f	500
1949	Packaged Food	Veeba Salsa Dip	119.00	6.00	6	111.00	360	f	360
1950	Packaged Food	Veeba Thousand Island Dressing	149.00	8.00	6	137.00	300	f	300
1951	Packaged Food	Baggry's Crunchy Muesli Almond Raisins & Honey	130.00	0.00	5	130.00	200	f	200
1952	Packaged Food	Knorr Chinese Hot And Sour Veg Soup	55.00	3.00	1	53.00	43	f	43
1953	Packaged Food	Go Cheese Spread - Garlic	99.00	5.00	6	94.00	200	f	200
1954	Packaged Food	The Whole Truth Peanut Butter With Dates - Creamy No Sugar	215.00	9.00	6	194.00	325	f	325
1955	Packaged Food	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
1956	Packaged Food	Kissan Pineapple Jam	165.00	9.00	1	149.00	500	f	500
1957	Packaged Food	Smith & Jones Masala Noodles	89.00	0.00	5	89.00	480	f	480
1958	Packaged Food	Nestle Nestle Nan Pro Follow-Up Formula	650.00	0.00	6	650.00	400	f	400
1959	Packaged Food	Sunfeast Yippee! Power Up Atta Noodles	96.00	15.00	6	81.00	280	f	280
1960	Packaged Food	McCain Super Wedges	120.00	7.00	6	111.00	400	f	400
1961	Packaged Food	Kellogg's Crunchy Granola Honey, Almonds, Strawberries & Pumpkin Seeds	330.00	10.00	1	294.00	450	f	450
1962	Packaged Food	Kellogg's Chocos	130.00	10.00	6	117.00	250	f	250
1963	Packaged Food	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodle	32.00	0.00	3	32.00	150	f	150
1964	Packaged Food	The Whole Truth Vegan Fig Apricot & Orange Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
1965	Packaged Food	Saffola Veggie Twist Masala Oats	195.00	12.00	2	171.00	500	f	500
1966	Packaged Food	ITC Master Chef Classic Aloo Tikki	80.00	10.00	3	72.00	320	f	320
1967	Packaged Food	Smith & Jones Pink Pasta Sauce Mix	40.00	0.00	4	40.00	46	f	46
1968	Packaged Food	Wingreens Farms Chipotle Dip	200.00	25.00	1	150.00	180	f	180
1969	Packaged Food	Kellogg's Real Almond & Honey Corn Flakes	550.00	5.00	3	520.00	1000	f	1
1970	Packaged Food	Kellogg's Crunchy Granola Chocolate & Almonds	330.00	10.00	3	294.00	450	f	450
1971	Packaged Food	Cornitos Cornitos Taco Shells - 6 Inches	160.00	20.00	4	128.00	180	f	180
1972	Packaged Food	Ching's Secret Singapore Curry Instant Noodles	15.00	0.00	3	15.00	60	f	60
1973	Packaged Food	Mother's Recipe Pickle - Mango	125.00	9.00	6	113.00	400	f	500
1974	Packaged Food	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
1975	Packaged Food	Pedigree Dentastix  Dog Treat Oral Care for Adult Medium Breed 	175.00	20.00	6	140.00	180	f	180
1976	Packaged Food	Maggi Hot & Sweet - Tomato Chilli Sauce	170.00	10.00	1	153.00	1000	f	1
1977	Packaged Food	Ching's Secret Asian Hot Instant Soup	15.00	0.00	3	15.00	15	f	15
1978	Packaged Food	Kellogg’s Chocos Protein And Fibre Of 1 Roti	499.00	11.00	6	444.00	1200	f	1
1979	Packaged Food	Mother's Recipe Pickle - Mango	149.00	26.00	4	109.00	500	f	500
1980	Packaged Food	Chings Secret Manchurian Instant Noodle	60.00	0.00	6	60.00	240	f	240
1981	Packaged Food	Kellogg's Original Corn Flakes	310.00	6.00	6	290.00	875	f	875
1982	Packaged Food	Ching's Singapore Curry Instant Noodles	60.00	0.00	4	60.00	240	f	240
1983	Packaged Food	Kellogg's Almonds And Cranberries Granola	330.00	6.00	6	310.00	460	f	460
1984	Packaged Food	Nestle Ceregrow Multigrain Cereal with Milk and Fruits - 3 to 6 years	292.00	0.00	6	292.00	300	f	300
1985	Packaged Food	MTR 3 Minute Breakfast - Magic Masala Upma	25.00	0.00	6	25.00	60	f	60
1986	Packaged Food	Smith & Jones Masala Noodles	68.00	10.00	5	61.00	360	f	360
1987	Packaged Food	Knorr Classic Tomato Soup With 100% Real Vegetabls, No Added Preservatives	55.00	0.00	6	55.00	53	f	53
1988	Packaged Food	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
1990	Packaged Food	Kelloggs Chocos	170.00	5.00	4	160.00	385	f	385
1991	Packaged Food	Pedigree Puppy Dry Dog Food Food Chicken & Milk	290.00	20.00	6	232.00	1200	f	1200
1992	Packaged Food	Ching's Secret Lemon Coriander Instant Soup	15.00	0.00	5	15.00	15	f	15
1993	Packaged Food	Nestle Cerelac Baby Cereal With Milk Wheat-Rice Mixed Fruit	261.00	0.00	6	261.00	300	f	300
1994	Packaged Food	Kelloggs Chocos - Moons & Stars	660.00	40.00	4	396.00	1200	f	1
1995	Packaged Food	ITC Master Chef Chicken Galouti Kebab	170.00	4.00	2	162.00	210	f	210
1996	Packaged Food	Yogabar 100% Pure Peanut Butter Creamy & Yummy Unsweetened	229.00	10.00	6	206.00	400	f	400
1997	Packaged Food	Kitchens Of India Palak Paneer	130.00	30.00	6	91.00	285	f	285
1998	Packaged Food	Kelloggs Chocos Fills Double Chocolat	99.00	11.00	6	88.00	175	f	175
1999	Packaged Food	Soulfull Ragi Bites Choco Fills	169.00	5.00	4	160.00	250	f	250
2000	Packaged Food	Figaro Sliced Black Olive 	179.00	0.00	6	179.00	450	f	450
2001	Packaged Food	Veeba Barbeque Sauce	149.00	8.00	6	137.00	330	f	330
2002	Packaged Food	The Whole Truth Vegan Mocha Almond Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2003	Packaged Food	The Whole Truth - Nuts, Fruits & Seeds Muesli	325.00	20.00	6	260.00	350	f	350
2004	Packaged Food	Pantai Green Curry Paste	150.00	14.00	5	128.00	114	f	114
2005	Packaged Food	Kelloggs Special K	210.00	8.00	5	192.00	435	f	435
2006	Packaged Food	Moi Soi Sichuan Chilli Oil- For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2007	Packaged Food	Mother's Recipe Madras Appalam	50.00	10.00	6	45.00	100	f	100
2008	Packaged Food	Top Ramen Masala Oat Masala	80.00	10.00	6	72.00	280	f	280
2009	Packaged Food	Saffola Everyday Peppy Tomato Masala Oats	195.00	12.00	6	171.00	500	f	500
2010	Packaged Food	Ching's Secret Instant Noodles, Hot Garlic	60.00	0.00	4	60.00	240	f	240
2011	Packaged Food	Kitchens Of India Chicken Chettinad	200.00	30.00	1	140.00	285	f	285
2012	Packaged Food	Nestle Cerelac Wheat - Stage 1	190.00	0.00	6	190.00	300	f	300
2013	Packaged Food	Sumeru Aloo Paratha	119.00	5.00	6	113.00	400	f	400
2014	Packaged Food	ITC Master Chef Veggie Pizza Pocket	170.00	4.00	4	162.00	340	f	340
2015	Packaged Food	Wingreens Farms Tangy Cheese Pita Chips & Mexican Salsa Dip	60.00	15.00	1	51.00	70	f	70
2016	Packaged Food	Ching's Secret Manchow Soup	55.00	0.00	3	55.00	55	f	55
2017	Packaged Food	Veeba Carrot & Cucumber Sandwich Spread	85.00	10.00	6	76.00	250	f	250
2018	Packaged Food	Kellogg's Real Almond & Honey Corn Flakes	370.00	12.00	3	324.00	650	f	650
2019	Packaged Food	Kitchens Of India Mughlai Paneer	160.00	30.00	4	112.00	285	f	285
2020	Packaged Food	Ching's Secret Just Soak - Veg Hakka Noodles	30.00	0.00	5	30.00	150	f	150
2021	Packaged Food	Ching's Secret Chowmein Hakka Noodles Masala	60.00	10.00	2	54.00	100	f	100
2022	Packaged Food	The Whole Truth Dark Chocolate Peanut Butter - Crunchy	235.00	20.00	5	188.00	325	f	325
2023	Packaged Food	Mother's Recipe Bhel Puri Chutney	55.00	9.00	4	50.00	200	f	200
2024	Packaged Food	Kelloggs Chocos Moon & Stars	330.00	10.00	6	294.00	680	f	680
2025	Packaged Food	Mother's Recipe Lime Pickle 	120.00	5.00	1	114.00	400	f	400
2026	Packaged Food	Kitchens of India Dal Makhani	110.00	30.00	2	77.00	285	f	285
2027	Packaged Food	Pantai Light Soy Sauce	275.00	14.00	5	234.00	200	f	200
2028	Packaged Food	Ching's Secret Sweet Corn Soup	55.00	0.00	6	55.00	55	f	55
2029	Packaged Food	Top Ramen Noodles, Atta	80.00	0.00	1	80.00	280	f	280
2030	Packaged Food	Cantina Tortilla Dip Sauce Sour Creamy Tex Mex	225.00	15.00	5	191.00	190	f	190
2031	Packaged Food	Dabur Hommade - Rajasthan Ki Garlic Chutne	65.00	6.00	6	61.00	200	f	200
2032	Packaged Food	MTR Seviyan Vermicelli 	42.00	0.00	2	42.00	400	f	400
2033	Packaged Food	Pantai Oyster Sauce	275.00	14.00	4	234.00	200	f	200
2034	Packaged Food	Go Cheese Spread - Four Pepper (Soft & Creamy)	99.00	5.00	6	94.00	200	f	200
2035	Packaged Food	MTR Ready To Eat Paneer Butter Masala	135.00	9.00	2	122.00	300	f	300
2036	Packaged Food	Nestle Lactogen Stage 2 Follow-up Formula Powder	340.00	0.00	2	340.00	400	f	400
2037	Packaged Food	Kellogg's Crunchy Bites Chocos	190.00	10.00	6	171.00	375	f	375
2038	Packaged Food	Veeba Hot Sweet Tomato Chilli Sauce	104.00	20.00	3	83.00	500	f	500
2039	Packaged Food	Borges Durum Wheat Pasta Superior Quality	250.00	40.00	6	149.00	500	f	500
2040	Packaged Food	Funfoods Peanut Butter Crunchy	169.00	7.00	1	156.00	400	f	400
2041	Packaged Food	Pantai Red Curry Paste	60.00	0.00	4	60.00	50	f	50
2042	Packaged Food	ITC Master Chef Chicken Seekh Kabab	325.00	0.00	6	325.00	500	f	500
2043	Packaged Food	Del Monte Pizza & Pasta Sauce Spout Pack	99.00	0.00	3	99.00	400	f	400
2044	Packaged Food	Pantai Sriracha Red Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2045	Packaged Food	Hershey's Cocoa Spread	295.00	0.00	3	295.00	350	f	350
2046	Packaged Food	Maggi Ghee Tadka Upma Express Pouch	25.00	0.00	6	25.00	65	f	65
2047	Packaged Food	Ching's Secret Manchurian Noodles	91.00	0.00	5	91.00	360	f	360
2048	Packaged Food	Kellogg's All Bran Wheat Flakes	220.00	6.00	5	205.00	425	f	425
2049	Packaged Food	Yummiez Chicken Breakfast Sausages	150.00	0.00	3	150.00	250	f	250
2050	Packaged Food	Pantai Red Curry Paste	150.00	14.00	3	128.00	114	f	114
2051	Packaged Food	Bagrrys Muesli Crunchy Fruit & Nut With Cranberries	330.00	10.00	6	297.00	400	f	400
2052	Packaged Food	Quaker Oats Pouch	276.00	10.00	6	248.00	1500	f	1
2053	Packaged Food	Prasuma Momos -  Cheesy Spicy Veg	295.00	0.00	6	295.00	24	f	24
2054	Packaged Food	Veeba Sriracha Chilli Garlic Sauce	149.00	8.00	5	137.00	320	f	320
2055	Packaged Food	Ching's Secret Just Soak - Veg Hakka Noodles	115.00	0.00	6	115.00	600	f	600
2056	Packaged Food	Moi Soi Kung Pao Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2057	Packaged Food	Figaro Plain Green Olive 	179.00	0.00	6	179.00	450	f	450
2058	Packaged Food	Mother's Recipe Gujrati Gorkeri Pickle	140.00	10.00	3	126.00	500	f	500
2059	Packaged Food	Kellogg's Muesli 20% Nuts Delight	320.00	0.00	6	320.00	500	f	500
2060	Packaged Food	Borges Farfalle Durum Wheat Pasta 	250.00	0.00	5	250.00	500	f	500
2061	Packaged Food	Kellogg's Chocos	299.00	10.00	4	269.00	700	f	700
2062	Packaged Food	Nestle Nan Pro 4 Follow Up Formula Powder For Older Infants 	620.00	0.00	1	620.00	400	f	400
2063	Packaged Food	Veeba Truly Tomato Ketchup	99.00	20.00	6	79.00	500	f	500
2064	Packaged Food	Ching's Secret Green Chilli Sauce	85.00	4.00	1	81.00	680	f	680
2065	Packaged Food	MTR Roasted Vermicelli 	55.00	0.00	1	55.00	400	f	400
2066	Packaged Food	Mother's Recipe Punjabi Teekha Mang Pickle	120.00	10.00	4	108.00	400	f	400
2067	Packaged Food	Ching's Secret Hot Garlic Instant Noodles	114.00	0.00	6	114.00	480	f	480
2068	Packaged Food	Kellogg's Real Honey Corn Flakes	290.00	7.00	5	267.00	630	f	630
2069	Packaged Food	ITC Master Chef Lebanese Falafel Kebab	130.00	4.00	4	124.00	230	f	230
2070	Packaged Food	Kelloggs Chocos Fills Double Chocolaty	185.00	10.00	5	165.00	250	f	250
2071	Packaged Food	Organic India Apple Cider Vinegar	595.00	9.00	2	536.00	500	f	500
2072	Packaged Food	Masala Oats Masala & Coriander 	195.00	9.00	5	176.00	500	f	500
2073	Packaged Food	Ching's Secret  Noodles - Pad Thai Lemongras	200.00	0.00	5	200.00	130	f	130
2074	Packaged Food	Bagrrys Fruit and Nut Muesli with Cranberries	499.00	0.00	5	499.00	750	f	750
2075	Packaged Food	Kitchens Of India Yellow Dal Tadka	110.00	30.00	6	77.00	285	f	285
2076	Packaged Food	Soulfull Vanilla Fills - Ragi Bites	169.00	5.00	6	160.00	250	f	250
2077	Packaged Food	Pantai Teriyaki Sauce with Garlic	325.00	15.00	6	276.00	200	f	200
2078	Packaged Food	Whiskas Adult Pocket Tuna Cat Food	410.00	0.00	1	410.00	1200	f	1
2079	Packaged Food	Kitchens Of India Chicken Darbari 	200.00	30.00	4	140.00	285	f	285
2080	Packaged Food	Soulfull Millet Muesli Fruit & Nut Almonds & Real Fruits	299.00	10.00	6	269.00	400	f	400
2081	Packaged Food	Smith & Jones Red Pasta Sauce Mix	40.00	0.00	6	40.00	46	f	46
2082	Packaged Food	Kellogg's Muesli Nuts Delight	425.00	9.00	3	383.00	750	f	750
2083	Packaged Food	Kitchens of India Dal Bukhara Gravy Mix	110.00	30.00	6	77.00	285	f	285
2084	Packaged Food	The Whole Truth Peanut Butter - Sweetened & Crunchy	215.00	20.00	6	172.00	325	f	325
2085	Packaged Food	Remia Mayonnaise	230.00	0.00	6	230.00	241	f	241
2086	Packaged Food	Ching's Secret Green Chilli Sauce	105.00	0.00	6	105.00	425	f	425
2087	Packaged Food	Bagrrys Fruit N Fibre Muesli - Strawberry	595.00	0.00	1	595.00	1000	f	1
2088	Packaged Food	Ching's Secret Tomato Oats Instant Soup	15.00	0.00	3	15.00	20	f	20
2089	Packaged Food	Kellogg's Special K Original Corn Flakes	140.00	5.00	1	133.00	290	f	290
2090	Packaged Food	Moi Soi  Black Bean Sauce - Dip Spread Stir Fry & Marinade	280.00	50.00	5	140.00	175	f	175
2091	Packaged Food	Tong Garden Wasabi Green Peas	175.00	4.00	6	167.00	150	f	150
2092	Packaged Food	Ching's Secret Red Chilli Sauce	105.00	0.00	4	105.00	440	f	440
2093	Packaged Food	Ching's Instant Hot and Sour Soup	55.00	0.00	5	55.00	55	f	55
2094	Packaged Food	Ching's Secret Noodles - Pad Thai Original	200.00	0.00	6	200.00	130	f	130
2095	Packaged Food	Aashirvaad Instant Meals - Khatta Meetha Pohaa With Millets	55.00	30.00	5	38.00	80	f	80
2096	Packaged Food	Del Monte Black Sliced Olives	250.00	0.00	1	250.00	450	f	450
2097	Packaged Food	Kitchens Of India Murgh Methi	220.00	30.00	5	154.00	285	f	285
2098	Packaged Food	Nestle Cerelac 5 Grains & Fruits Cereal	288.00	0.00	6	288.00	300	f	300
2099	Packaged Food	The Whole Truth - 5 Grain Muesli No Added Sugar	325.00	20.00	6	260.00	350	f	350
2100	Packaged Food	Ching's Secret  Pad Thai Noodles Green Curry	200.00	0.00	6	200.00	130	f	130
2101	Packaged Food	Aashirvaad Suji Halwa With Jaggery	75.00	0.00	6	75.00	70	f	70
2102	Packaged Food	Mother's Recipe Mango Pickle 	120.00	0.00	1	120.00	400	f	400
2103	Packaged Food	Ching's Secret Pad Thai Noodles - Extra Hot Thai Chilli	200.00	0.00	6	200.00	130	f	130
2104	Packaged Food	Kellogg's Special K Original Corn Flakes	399.00	11.00	6	355.00	900	f	900
2105	Packaged Food	Knorr Sweet Corn Chicken Soup	55.00	0.00	2	55.00	42	f	42
2106	Packaged Food	Ching's Secret Tomato Soup	55.00	0.00	6	55.00	55	f	55
2107	Packaged Food	Funfoods Peanut Butter Creamy	169.00	0.00	1	169.00	400	f	400
2108	Packaged Food	Japanese Choice Udon Noodles	295.00	9.00	6	266.00	250	f	250
2109	Packaged Food	Kelloggs Muesli - With 22% Fruit Magic	320.00	10.00	5	288.00	500	f	500
2110	Packaged Food	Dabur Hommade - Kalonji Tamatar Ki Chutney	65.00	6.00	6	61.00	200	f	200
2111	Packaged Food	Kitchens Of India Dal Makhani	110.00	30.00	1	77.00	285	f	285
2112	Packaged Food	Aashirvaad Suji Halwa With Jaggery	55.00	30.00	6	38.00	80	f	80
2113	Packaged Food	Del Monte Green Chili Sauce	55.00	0.00	3	55.00	190	f	190
2114	Packaged Food	Pedigree Dog Food Adult Chicken & Veg	660.00	10.00	1	594.00	3000	f	3
2115	Packaged Food	Kellogg's Original Corn Flakes	185.00	5.00	6	175.00	475	f	475
2116	Packaged Food	Pedigree Puppy Dry Dog Food Food Chicken & Milk	690.00	6.00	2	648.00	3000	f	3
2117	Packaged Food	Kitchens Of India Rajma Masala	110.00	30.00	5	77.00	285	f	285
2118	Packaged Food	Kitchen Of India Ready-To-Eat Pindi Channa	110.00	30.00	2	77.00	285	f	285
2119	Packaged Food	Figaro Pitted Black Olive 	179.00	0.00	6	179.00	450	f	450
2120	Packaged Food	Cantina Tabasco Red Sauce	140.00	15.00	6	119.00	60	f	60
2121	Packaged Food	Mother's Recipe Pickle - Mixed	149.00	26.00	6	109.00	500	f	500
2122	Packaged Food	Nestle Cerelac Baby Cereal with Milk 5 Grains & Vegetables from 18 to 24 Month	279.00	0.00	5	279.00	300	f	300
2123	Packaged Food	Mother's Recipe Tamarind Paste	50.00	2.00	2	49.00	200	f	200
2124	Packaged Food	Pedigree Meat Jerky Adult Dog Treat Barbecued Chicken	140.00	20.00	6	112.00	80	f	80
2125	Packaged Food	Veeba Peri Peri Sauce	161.00	0.00	6	161.00	300	f	300
2126	Packaged Food	Pantai Sriracha Yellow Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2127	Packaged Food	Praakritik Organic Jumbo Rolled Oats	190.00	11.00	6	169.00	500	f	500
2128	Packaged Food	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodles	123.00	0.00	6	123.00	600	f	600
2129	Packaged Food	Pantai Spring Roll Sauce	275.00	10.00	6	245.00	200	f	200
2130	Packaged Food	MTR Vermicelli Payasam	75.00	0.00	6	75.00	180	f	180
2131	Packaged Food	Bagrrys Corn Flakes	350.00	0.00	6	350.00	880	f	800
2132	Packaged Food	MTR Ready To Eat Palak Paneer 	135.00	11.00	6	120.00	300	f	300
2133	Packaged Food	Del Monte Red Chili Sauce	55.00	0.00	5	55.00	190	f	190
2134	Packaged Food	Kitchens of India Mutter Paneer Mix	120.00	30.00	4	84.00	285	f	285
2135	Packaged Food	Pantai Green Curry Paste	60.00	6.00	6	56.00	50	f	50
2136	Packaged Food	The Laughing Cow Cheese Spread Plain	110.00	0.00	6	110.00	180	f	180
2137	Packaged Food	MTR Dal Fry	110.00	0.00	5	110.00	300	f	300
2138	Packaged Food	Pantai Fish Sauce	275.00	14.00	6	234.00	200	f	200
2139	Packaged Food	Cantina Beans Mexican Beans	250.00	14.00	6	213.00	410	f	410
2140	Packaged Food	Ching's Secret Manchurian Instant Noodle	114.00	0.00	6	114.00	480	f	480
2141	Packaged Food	Remia Salad Italian Dressing 	230.00	0.00	6	230.00	250	f	250
2142	Packaged Food	Yummiez Veg Cheese Fingers Pouch	230.00	0.00	4	230.00	400	f	400
2143	Packaged Food	MTR Dal Makhani	110.00	0.00	4	110.00	300	f	300
2144	Packaged Food	MTR Ready to Eat Pav Bhaji	110.00	0.00	6	110.00	300	f	300
2145	Packaged Food	Weikfield Tomato Salsa Instant Pasta	25.00	0.00	1	25.00	77	f	77
2146	Packaged Food	Nestlé CERELAC Baby Cereal with Milk	272.00	0.00	1	272.00	300	f	300
2147	Packaged Food	Remia Salad Caesar Dressing	250.00	0.00	6	250.00	250	f	250
2148	Packaged Food	Bagrrys Fruit N Fibre Muesli Mixed Fruit	330.00	0.00	6	330.00	500	f	500
2149	Packaged Food	MTR Paneer Butter Masala & Veg Pulao	175.00	9.00	4	158.00	375	f	375
2150	Packaged Food	Sundrop Cocoa Nut Hazelnut Chocolatey Spread	120.00	0.00	6	120.00	160	f	160
2151	Packaged Food	Moi Soi Manchurian Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	6	140.00	175	f	175
2152	Packaged Food	Pedigree Dog Food Adult Meat & Rice	660.00	7.00	2	608.00	3000	f	3
2153	Packaged Food	Pantai Sriracha Green Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2154	Packaged Food	Pantai Chilli Garlic Sauce	275.00	14.00	6	234.00	200	f	200
2155	Packaged Food	Pantai Dark Soy Sauce	275.00	14.00	6	234.00	200	f	200
2156	Packaged Food	Yoga Bar Peanut Butter Dark Chocolate Jar	249.00	0.00	4	249.00	400	f	400
2157	Packaged Food	Cantina Tabasco Green Sauce	140.00	15.00	6	119.00	60	f	60
2158	Packaged Food	Pantai Pad Thai Sauce (Non-Veg)	325.00	9.00	5	293.00	200	f	200
2159	Packaged Food	Pantai Sweet Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2160	Packaged Food	Ching's Secret Schezwan Instant Noodle	114.00	0.00	6	114.00	480	f	480
2161	Packaged Food	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
2162	Packaged Food	Pediasure Premium Chocolate Powdered Health Drink	610.00	0.00	2	610.00	400	f	400
2163	Packaged Food	Chings Secret Hot Garlic Instant Noodles	91.00	0.00	6	91.00	60	f	60
2164	Packaged Food	Godrej Yummiez Cheese Corn Nuggets 	230.00	0.00	4	230.00	400	f	400
2165	Packaged Food	Pantai Hot Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2166	Packaged Food	Knorr International Mexican Tomato Corn Soup 	65.00	6.00	3	61.00	52	f	52
2167	Packaged Food	Bagrry's Fruit Fibre Muesli Mixed Fruit 	595.00	0.00	5	595.00	1000	f	1
2168	Packaged Food	MTR Roasted Vermicelli 	105.00	0.00	4	105.00	850	f	850
2169	Packaged Food	Maggi 2-Minute Instant Noodles - Masala	44.00	0.00	0	44.00	280	t	280
2170	Packaged Food	Kurkure Green Chutney, Rajasthani Style	20.00	0.00	0	20.00	90	t	90
2171	Packaged Food	Kellogg's Chocos Combo Pack	60.00	6.00	0	56.00	156	t	156
2172	Packaged Food	Kissan Mixed Fruit Jam 	155.00	0.00	0	155.00	500	t	500
2173	Packaged Food	Lijjat Urad Papad	60.00	5.00	0	57.00	200	t	200
2174	Packaged Food	Amul Cheese Spread Yummy Plain	85.00	0.00	0	85.00	200	t	200
2175	Packaged Food	Mother's Recipe Ginger And Garlic Paste	50.00	24.00	0	38.00	200	t	200
2176	Packaged Food	Maggi Magic Cubes Chicken	40.00	2.00	0	39.00	40	t	40
2177	Packaged Food	Pedigree Puppy Chicken Chunks in Gravy 	35.00	2.00	0	34.00	70	t	70
2178	Packaged Food	The Whole Truth Peanut Butter - Unsweetened & Crunchy	185.00	20.00	0	148.00	325	t	325
2179	Packaged Food	Ching's Chow Mein Hakka Noodles Masala	10.00	0.00	0	10.00	20	t	20
2180	Packaged Food	Safal Frozen Mixed Vegetables	60.00	5.00	0	57.00	500	t	500
2181	Packaged Food	Safal Frozen Corn	41.00	4.00	0	39.00	200	t	200
2182	Packaged Food	Amul Cheese Spread Spicy Garlic	85.00	3.00	0	82.00	200	t	200
2183	Packaged Food	Ching's Secret Veg Hakka Noodles	107.00	0.00	0	107.00	600	t	600
2184	Packaged Food	Saffola Oats 100 % Natural	15.00	0.00	0	15.00	38	t	38
2185	Packaged Food	Lijjat Moong Papad	60.00	5.00	0	57.00	200	t	200
2186	Packaged Food	Mothers Recipe Papad - Sabudana With Rock Salt	31.00	9.00	0	28.00	70	t	70
2187	Packaged Food	Maggi Chilly Chow Cuppa Noodles	50.00	0.00	0	50.00	70	t	70
2188	Packaged Food	Veeba Favourites Eggless Burger Mayonnaise	69.00	8.00	0	63.00	250	t	250
2189	Packaged Food	Sunfeast Yippee! Magic Masala Noodles	48.00	6.00	0	45.00	240	t	240
2190	Packaged Food	Top Ramen Masala	91.00	9.00	0	82.00	560	t	560
2191	Packaged Food	Kelloggs Corn Flakes With Real Strawberry Pure	265.00	10.00	0	236.00	575	t	575
2192	Packaged Food	Mother's Recipe Potato Papad	31.00	9.00	0	28.00	70	t	75
2193	Packaged Food	Mothers Recipe Rice Papad Ajwain	24.00	0.00	0	24.00	75	t	75
2194	Packaged Food	Chef's Basket Durum Wheat Penne Pasta	160.00	50.00	0	80.00	500	t	500
2195	Packaged Food	Dabur Hommade - Imli Sauce Saunth	20.00	10.00	0	18.00	100	t	100
2196	Packaged Food	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
2197	Packaged Food	Sunfeast Pasta Treat Pack of Tomato Cheese	28.00	17.00	0	23.00	65	t	65
2198	Packaged Food	Safal Frozen - Sweet Corn	160.00	5.00	0	152.00	1000	t	1
2199	Packaged Food	MTR Vegetable Upma	25.00	0.00	0	25.00	60	t	60
2200	Packaged Food	Del Monte Original Blend Tomato Ketchup Pouch	120.00	7.00	0	111.00	950	t	950
2201	Packaged Food	Del Monte Natural Vinegar 	55.00	3.00	0	53.00	180	t	180
2202	Packaged Food	Del Monte Eggless Mayo	135.00	6.00	0	126.00	500	t	500
2203	Packaged Food	ITC Master Chef Cheesy Corn Triangles	160.00	5.00	0	152.00	320	t	320
2204	Packaged Food	Mother's Recipe Mixed Pickle 	115.00	4.00	0	110.00	400	t	400
2205	Packaged Food	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
2206	Packaged Food	Hershey's Cocoa + Almond Spread	295.00	9.00	0	266.00	350	t	350
2207	Packaged Food	Maggi Special Masala Spicy Yummy Noodles	72.00	0.00	0	72.00	280	t	280
2208	Packaged Food	Del Monte Schezwan Sauce	55.00	0.00	0	55.00	190	t	190
2209	Packaged Food	Yummiez Green Peas	135.00	0.00	0	135.00	500	t	500
2210	Packaged Food	Yummiez Green Peas	250.00	0.00	0	250.00	1000	t	1
2211	Packaged Food	Yummiez American Sweet Corn	85.00	0.00	0	85.00	400	t	400
2212	Packaged Food	Dr Oetker Cucumber & Carrot Sandwich Spread Veg	79.00	0.00	0	79.00	250	t	250
2213	Packaged Food	Del Monte Pitted Green Olives	250.00	0.00	0	250.00	450	t	450
2214	Ice Cream & Desserts	Maggi 2 Minute Masala Noodles	12.00	0.00	6	12.00	70	f	70
2215	Ice Cream & Desserts	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
2216	Ice Cream & Desserts	iD Malabar Parota 	80.00	10.00	4	72.00	400	f	400
2217	Ice Cream & Desserts	iD Wheat Lachha Paratha	80.00	12.00	6	70.00	400	f	400
2218	Ice Cream & Desserts	McCain Aloo Tikki	110.00	4.00	6	105.00	400	f	400
2219	Ice Cream & Desserts	McCain Smiles Cripsy Happy Potatoes	120.00	5.00	6	114.00	415	f	415
2220	Ice Cream & Desserts	McCain Veggie Burger Patty	115.00	3.00	6	111.00	360	f	360
2221	Ice Cream & Desserts	McCain Veggie Fingers	117.00	5.00	6	111.00	400	f	400
2222	Ice Cream & Desserts	Amul Delicious Fat Spread - Cholesterol Free	18.00	5.00	6	17.00	100	f	100
2223	Ice Cream & Desserts	Whiskas Wet  Meal (Adult - Cat Food)  Chicken in Gravy	35.00	2.00	2	34.00	85	f	85
2224	Ice Cream & Desserts	McCain Chilli Garlic Potato Bites Crunchy Potato Nuggets	125.00	5.00	1	118.00	420	f	420
2225	Ice Cream & Desserts	Ching's Secret Instant Hot Garlic Noodles	15.00	0.00	3	15.00	60	f	60
2226	Ice Cream & Desserts	Veeba Eggless Mayonnaise	79.00	11.00	5	70.00	250	f	250
2227	Ice Cream & Desserts	Ching's Secret Instant Schezwan Noodles	15.00	0.00	6	15.00	60	f	60
2228	Ice Cream & Desserts	Veeba Pasta And Pizza Sauce	75.00	13.00	5	65.00	280	f	280
2229	Ice Cream & Desserts	Top Ramen  Noodles Curry Veg Pouch	20.00	0.00	1	20.00	70	f	70
2230	Ice Cream & Desserts	Saffola Veggie Twist Masala Oats	15.00	0.00	6	15.00	38	f	38
2231	Ice Cream & Desserts	Unibic Almond & Oats Protein Bar	40.00	17.00	4	33.00	30	f	30
2232	Ice Cream & Desserts	Quaker Oats	79.00	0.00	2	79.00	400	f	400
2233	Ice Cream & Desserts	Amul Delicious Fat Spread - Cholesterol Free	88.00	2.00	2	86.00	500	f	500
2234	Ice Cream & Desserts	McCain French Fries	120.00	5.00	1	114.00	420	f	420
2235	Ice Cream & Desserts	Ching's Secret Manchow Instant Soup	10.00	0.00	1	10.00	15	f	15
2236	Ice Cream & Desserts	McCain Potato Cheese Shotz	130.00	4.00	6	124.00	250	f	250
2237	Ice Cream & Desserts	McCain Masala - Fries	120.00	5.00	3	114.00	375	f	375
2238	Ice Cream & Desserts	Ching's Secret Schezwan Fried Rice Masala	15.00	0.00	6	15.00	20	f	20
2239	Ice Cream & Desserts	McCain New Mini Samosa with Cheese Pizza Style Filling	120.00	1.00	3	118.00	240	f	240
2240	Ice Cream & Desserts	McCain Chilli Cheesy Nuggets	130.00	4.00	1	124.00	250	f	250
2241	Ice Cream & Desserts	Whiskas Adult (+1 Year) Dry Cat Food, Ocean Fish Flavour	430.00	10.00	6	387.00	1200	f	1
2242	Ice Cream & Desserts	Chings Instant Soup - Hot & Sour	10.00	0.00	1	10.00	15	f	15
2243	Ice Cream & Desserts	Amul Spray Infant Milk Food	197.00	2.00	6	193.00	500	f	500
2244	Ice Cream & Desserts	McCain Smiles - Pudina Chatka	120.00	5.00	3	114.00	375	f	375
2245	Ice Cream & Desserts	McCain French Fries Crisp & Delicious	175.00	4.00	3	167.00	750	f	750
2246	Ice Cream & Desserts	Ferrero Nutella Hazelnut Spread	220.00	5.00	2	207.00	180	f	180
2247	Ice Cream & Desserts	Lijjat Garlic Papad	60.00	5.00	5	57.00	200	f	200
2248	Ice Cream & Desserts	Switz Samosa Dough Sheets	90.00	4.00	6	86.00	50	f	50
2249	Ice Cream & Desserts	Amul Cheese Spread Creamy	85.00	5.00	6	80.00	180	f	180
2250	Ice Cream & Desserts	Maggi Imli Sauce Pichkoo	22.00	0.00	6	22.00	90	f	90
2251	Ice Cream & Desserts	Whiskas Kitten (2-12 months) Dry Cat Food Food Ocean Fish	385.00	9.00	5	347.00	1100	f	1100
2252	Ice Cream & Desserts	Chings Instant Soup - Sweet Corn Veg	10.00	0.00	2	10.00	15	f	15
2253	Ice Cream & Desserts	Whiskas Wet  Meal (Kitten - Cat Food)  Chicken in Gravy	35.00	5.00	2	33.00	85	f	85
2254	Ice Cream & Desserts	McCain Crazy Fries Masala MixHot 'n' Tangy	120.00	5.00	6	114.00	400	f	400
2255	Ice Cream & Desserts	The Whole Truth Double Cocoa Protein Bar No Sugar	100.00	10.00	6	90.00	52	f	52
2256	Ice Cream & Desserts	Amul Happy Treats French Fries	68.00	4.00	1	65.00	425	f	425
2257	Ice Cream & Desserts	Ferrero Nutella Hazeulnut Spread	380.00	6.00	5	357.00	350	f	350
2258	Ice Cream & Desserts	Veeba Chipolte Southwest Dressing	161.00	7.00	4	149.00	300	f	300
2259	Ice Cream & Desserts	Ching's Secret Manchow Noodles Instant Soup	15.00	0.00	6	15.00	20	f	20
2260	Ice Cream & Desserts	Yoga Bar Breakfast Protein Bar - Blueberry Pie	50.00	12.00	1	44.00	50	f	50
2261	Ice Cream & Desserts	Quaker Oats	199.00	7.00	6	184.00	1000	f	1
2262	Ice Cream & Desserts	The Whole Truth Mini Protein Bar - Coconut Cocoa No Added Sugar	55.00	25.00	6	41.00	27	f	27
2263	Ice Cream & Desserts	Switz Spring Roll Dough Sheets	90.00	4.00	6	86.00	1160	f	20
2264	Ice Cream & Desserts	Unibic Fruit & Nut Real Cranberries & Almonds Protein Bar	40.00	17.00	6	33.00	30	f	30
2265	Ice Cream & Desserts	Ching's Secret Tomato Instant Soup	10.00	0.00	1	10.00	16	f	15
2266	Ice Cream & Desserts	Chef's Basket Durum Wheat Elbow Pasta	160.00	50.00	6	80.00	500	f	500
2267	Ice Cream & Desserts	Sunfeast Yippee! Mood Masala Noodles	60.00	28.00	3	43.00	260	f	260
2268	Ice Cream & Desserts	MTR Breakfast Khatta Meetha Poha Mix	25.00	20.00	6	20.00	60	f	60
2269	Ice Cream & Desserts	Kellogg's Crunchy Fruit & Nut Breakfast Cereals Muesli	445.00	9.00	6	401.00	750	f	750
2270	Ice Cream & Desserts	Ching's Secret Chilli Vinegar	50.00	0.00	4	50.00	170	f	170
2271	Ice Cream & Desserts	Ching's Red Chilli Sauce	55.00	0.00	6	55.00	200	f	200
2272	Ice Cream & Desserts	Amul Lite Spread	40.00	2.00	5	39.00	100	f	100
2273	Ice Cream & Desserts	Borges Durum Wheat Fusilli Pasta 	250.00	0.00	3	250.00	500	f	500
2274	Ice Cream & Desserts	The Whole Truth Cranberry Mini Protein Bar No Sugar	55.00	20.00	6	44.00	27	f	27
2275	Ice Cream & Desserts	The Whole Truth Mini Protein Bar - Coffee Cocoa No Added Sugar	55.00	20.00	6	44.00	27	f	27
2276	Ice Cream & Desserts	Maggi Hot & Sweet Tomato Chilli Sauce	115.00	0.00	1	115.00	500	f	500
2277	Ice Cream & Desserts	Sunfeast YiPPee! Noodles - Magic Masala	96.00	5.00	4	91.00	540	f	540
2278	Ice Cream & Desserts	Chef's Basket Durum Wheat Fusilli Pasta	160.00	50.00	6	80.00	500	f	500
2279	Ice Cream & Desserts	Top Ramen Chicken Noodles	60.00	10.00	1	54.00	280	f	280
2280	Ice Cream & Desserts	Veeba Cheese and Chilli Sandwich Spread	89.00	11.00	6	79.00	275	f	275
2281	Ice Cream & Desserts	Ching’s Secret Chowmein Hakka Noodles Masala 	44.00	0.00	2	44.00	60	f	60
2282	Ice Cream & Desserts	Safal Frozen - Mixed Vegetables	110.00	4.00	2	105.00	1000	f	1
2283	Ice Cream & Desserts	MTR 3 Min Poha	25.00	0.00	6	25.00	60	f	60
2284	Ice Cream & Desserts	Ching's Manchurian Instant Noodles	15.00	0.00	5	15.00	60	f	60
2285	Ice Cream & Desserts	The Whole Truth Peanut Cocoa Mini Protein Bar No Sugar 	55.00	25.00	6	41.00	27	f	27
2286	Ice Cream & Desserts	Gits Pav Bhaji Ready to Eat	110.00	22.00	6	85.00	300	f	300
2287	Ice Cream & Desserts	McCain New Mini Samosa with Cheese Corn Style Filling	120.00	1.00	2	118.00	240	f	240
2288	Ice Cream & Desserts	Lijjat Udad Mini Papad	60.00	6.00	6	56.00	200	f	200
2289	Ice Cream & Desserts	McCain Herb & Garlic Crazy Fries Masala Mix 	120.00	5.00	5	114.00	400	f	400
2290	Ice Cream & Desserts	Yoga Bar Multigrain Energy Bar Nuts And Seeds	40.00	12.00	4	35.00	38	f	38
2291	Ice Cream & Desserts	Ching's Secret Sauce, Green Chilli	55.00	0.00	5	55.00	190	f	190
2292	Ice Cream & Desserts	Veeba Pizza Topping	75.00	6.00	4	70.00	280	f	280
2293	Ice Cream & Desserts	Switz Paratha Puff	110.00	4.00	6	105.00	400	f	400
2294	Ice Cream & Desserts	New Kellogg's Muesli with 21% Fruit, Nut & Seeds	325.00	6.00	6	305.00	500	f	500
2295	Ice Cream & Desserts	The Whole Truth Double Cocoa Mini Protein Bar No Sugar	55.00	20.00	5	44.00	27	f	27
2296	Ice Cream & Desserts	Sunfeast Yippee Tricolor Pasta Seasoning	28.00	17.00	1	23.00	65	f	65
2297	Ice Cream & Desserts	Wingreens Cheesy Chipotle Sauce	99.00	49.00	1	50.00	130	f	130
2298	Ice Cream & Desserts	Maggi Rich Tomato Ketchup	105.00	4.00	2	100.00	500	f	500
2299	Ice Cream & Desserts	The Whole Truth Dark Chocolate Peanut Butter - Creamy	235.00	25.00	6	174.00	325	f	325
2300	Ice Cream & Desserts	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
2301	Ice Cream & Desserts	Go Cheese  Spread Plain	99.00	5.00	6	94.00	200	f	200
2302	Ice Cream & Desserts	Kellogg's Real Almond & Honey Corn Flakes	175.00	9.00	6	158.00	300	f	300
2303	Ice Cream & Desserts	The Whole Truth Vegan Almond Choco Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2304	Ice Cream & Desserts	Prasuma Vegetable Momos	270.00	0.00	5	270.00	24	f	24
2305	Ice Cream & Desserts	MTR Upma	50.00	10.00	6	45.00	160	f	160
2306	Ice Cream & Desserts	Ching's Schezwan Masala Instant Noodles	60.00	0.00	1	60.00	240	f	240
2307	Ice Cream & Desserts	The Whole Truth Cranberry Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
2308	Ice Cream & Desserts	Saffola Yummy Masala Noodles 	20.00	0.00	2	20.00	46	f	46
2309	Ice Cream & Desserts	Veeba English Mustard	74.00	6.00	2	69.00	300	f	300
2310	Ice Cream & Desserts	Dabur Hommade Tamarind Paste	48.00	6.00	6	45.00	200	f	200
2311	Ice Cream & Desserts	Yoga Bar Breakfast Muesli - Almond Caramel (No Added Sugar)	325.00	4.00	6	309.00	400	f	400
2312	Ice Cream & Desserts	The Whole Truth Mini Protein Bar - Peanut Butter No Added Sugar	55.00	25.00	6	41.00	27	f	27
2313	Ice Cream & Desserts	ITC Master Chef Crispy Chicken Fries 	170.00	4.00	3	162.00	280	f	280
2314	Ice Cream & Desserts	Kelloggs Corn Flakes	99.00	13.00	6	86.00	250	f	250
2315	Ice Cream & Desserts	Nissin Cup Noodles Tangy Tomato	50.00	10.00	2	45.00	70	f	70
2316	Ice Cream & Desserts	Smith & Jones White Pasta Sauce Mix	40.00	0.00	3	40.00	46	f	46
2317	Ice Cream & Desserts	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	10.00	1	25.00	65	f	65
2318	Ice Cream & Desserts	Mothers Recipe Tamrind Date Chutney 	55.00	9.00	2	50.00	200	f	200
2319	Ice Cream & Desserts	Veeba Mint Mayonnaise	169.00	8.00	4	155.00	300	f	300
2320	Ice Cream & Desserts	Mccain Emotibites - Crispy Happy Potato Snack	130.00	0.00	6	129.00	415	f	415
2321	Ice Cream & Desserts	The Whole Truth Energy Bar Choco Cranberry Fudge	60.00	26.00	6	44.00	40	f	40
2322	Ice Cream & Desserts	Godrej Yummiez Chicken Lucknowi Seekh Kebab	260.00	10.00	4	234.00	400	f	400
2323	Ice Cream & Desserts	Prasuma Vegetable Momos	150.00	0.00	5	150.00	580	f	10
2324	Ice Cream & Desserts	Mother's Recipe Mixed Pickle	85.00	9.00	2	77.00	300	f	300
2325	Ice Cream & Desserts	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	17.00	3	23.00	65	f	65
2326	Ice Cream & Desserts	The Whole Truth Peanut Cocoa Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
2327	Ice Cream & Desserts	Yoga Bar Breakfast Muesli - Chocolate & Cranberry 	325.00	4.00	6	309.00	400	f	400
2328	Ice Cream & Desserts	Sunfeast YiPPee! Magic Masala Noodles	70.00	10.00	3	63.00	405	f	405
2329	Ice Cream & Desserts	Veeba Sweet Onion Sauce	141.00	14.00	4	121.00	350	f	350
2330	Ice Cream & Desserts	Quaker Oats Breakfast Cereals - With Flavour Mix Nutritious Rich Source Of Energy	49.00	8.00	6	45.00	200	f	200
2331	Ice Cream & Desserts	Mother's Recipe Tamarind Paste	50.00	2.00	6	49.00	200	f	200
2332	Ice Cream & Desserts	Yogabar No Added Sugar Protein Bar Brownie	125.00	15.00	4	106.00	60	f	60
2333	Ice Cream & Desserts	Bambino Popular Vermicelli 	40.00	2.00	3	39.00	400	f	400
2334	Ice Cream & Desserts	Ching's Secret Mix Veg Instant Soup	10.00	0.00	3	10.00	15	f	15
2335	Ice Cream & Desserts	Mother's Recipe Pickle - Red Stuffed Chilli	145.00	11.00	3	129.00	400	f	400
2336	Ice Cream & Desserts	Kellogg's No Added Sugar Muesli	335.00	11.00	6	298.00	500	f	500
2337	Ice Cream & Desserts	Veeba Salsa Dip	119.00	6.00	6	111.00	360	f	360
2338	Ice Cream & Desserts	Veeba Thousand Island Dressing	149.00	8.00	6	137.00	300	f	300
2339	Ice Cream & Desserts	Baggry's Crunchy Muesli Almond Raisins & Honey	130.00	0.00	5	130.00	200	f	200
2340	Ice Cream & Desserts	Knorr Chinese Hot And Sour Veg Soup	55.00	3.00	1	53.00	43	f	43
2341	Ice Cream & Desserts	Go Cheese Spread - Garlic	99.00	5.00	6	94.00	200	f	200
2342	Ice Cream & Desserts	The Whole Truth Peanut Butter With Dates - Creamy No Sugar	215.00	9.00	6	194.00	325	f	325
2343	Ice Cream & Desserts	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
2344	Ice Cream & Desserts	Kissan Pineapple Jam	165.00	9.00	1	149.00	500	f	500
2345	Ice Cream & Desserts	Smith & Jones Masala Noodles	89.00	0.00	5	89.00	480	f	480
2346	Ice Cream & Desserts	Nestle Nestle Nan Pro Follow-Up Formula	650.00	0.00	6	650.00	400	f	400
2347	Ice Cream & Desserts	Sunfeast Yippee! Power Up Atta Noodles	96.00	15.00	6	81.00	280	f	280
2348	Ice Cream & Desserts	McCain Super Wedges	120.00	7.00	6	111.00	400	f	400
2349	Ice Cream & Desserts	Kellogg's Crunchy Granola Honey, Almonds, Strawberries & Pumpkin Seeds	330.00	10.00	1	294.00	450	f	450
2350	Ice Cream & Desserts	Kellogg's Chocos	130.00	10.00	6	117.00	250	f	250
2351	Ice Cream & Desserts	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodle	32.00	0.00	3	32.00	150	f	150
2352	Ice Cream & Desserts	The Whole Truth Vegan Fig Apricot & Orange Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2353	Ice Cream & Desserts	Saffola Veggie Twist Masala Oats	195.00	12.00	2	171.00	500	f	500
2354	Ice Cream & Desserts	ITC Master Chef Classic Aloo Tikki	80.00	10.00	3	72.00	320	f	320
2355	Ice Cream & Desserts	Smith & Jones Pink Pasta Sauce Mix	40.00	0.00	4	40.00	46	f	46
2356	Ice Cream & Desserts	Wingreens Farms Chipotle Dip	200.00	25.00	1	150.00	180	f	180
2357	Ice Cream & Desserts	Kellogg's Real Almond & Honey Corn Flakes	550.00	5.00	3	520.00	1000	f	1
2358	Ice Cream & Desserts	Kellogg's Crunchy Granola Chocolate & Almonds	330.00	10.00	3	294.00	450	f	450
2359	Ice Cream & Desserts	Cornitos Cornitos Taco Shells - 6 Inches	160.00	20.00	4	128.00	180	f	180
2360	Ice Cream & Desserts	Ching's Secret Singapore Curry Instant Noodles	15.00	0.00	3	15.00	60	f	60
2361	Ice Cream & Desserts	Mother's Recipe Pickle - Mango	125.00	9.00	6	113.00	400	f	500
2362	Ice Cream & Desserts	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
2363	Ice Cream & Desserts	Pedigree Dentastix  Dog Treat Oral Care for Adult Medium Breed 	175.00	20.00	6	140.00	180	f	180
2364	Ice Cream & Desserts	Maggi Hot & Sweet - Tomato Chilli Sauce	170.00	10.00	1	153.00	1000	f	1
2365	Ice Cream & Desserts	Ching's Secret Asian Hot Instant Soup	15.00	0.00	3	15.00	15	f	15
2366	Ice Cream & Desserts	Kellogg’s Chocos Protein And Fibre Of 1 Roti	499.00	11.00	6	444.00	1200	f	1
2367	Ice Cream & Desserts	Mother's Recipe Pickle - Mango	149.00	26.00	4	109.00	500	f	500
2368	Ice Cream & Desserts	Chings Secret Manchurian Instant Noodle	60.00	0.00	6	60.00	240	f	240
2369	Ice Cream & Desserts	Kellogg's Original Corn Flakes	310.00	6.00	6	290.00	875	f	875
2370	Ice Cream & Desserts	Ching's Singapore Curry Instant Noodles	60.00	0.00	4	60.00	240	f	240
2371	Ice Cream & Desserts	Kellogg's Almonds And Cranberries Granola	330.00	6.00	6	310.00	460	f	460
2372	Ice Cream & Desserts	Nestle Ceregrow Multigrain Cereal with Milk and Fruits - 3 to 6 years	292.00	0.00	6	292.00	300	f	300
2373	Ice Cream & Desserts	MTR 3 Minute Breakfast - Magic Masala Upma	25.00	0.00	6	25.00	60	f	60
2374	Ice Cream & Desserts	Smith & Jones Masala Noodles	68.00	10.00	5	61.00	360	f	360
2375	Ice Cream & Desserts	Knorr Classic Tomato Soup With 100% Real Vegetabls, No Added Preservatives	55.00	0.00	6	55.00	53	f	53
2376	Ice Cream & Desserts	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
2377	Ice Cream & Desserts	Kellogg's Corn Flakes	425.00	9.00	1	383.00	1000	f	1
2378	Ice Cream & Desserts	Kelloggs Chocos	170.00	5.00	4	160.00	385	f	385
2379	Ice Cream & Desserts	Pedigree Puppy Dry Dog Food Food Chicken & Milk	290.00	20.00	6	232.00	1200	f	1200
2380	Ice Cream & Desserts	Ching's Secret Lemon Coriander Instant Soup	15.00	0.00	5	15.00	15	f	15
2381	Ice Cream & Desserts	Nestle Cerelac Baby Cereal With Milk Wheat-Rice Mixed Fruit	261.00	0.00	6	261.00	300	f	300
2382	Ice Cream & Desserts	Kelloggs Chocos - Moons & Stars	660.00	40.00	4	396.00	1200	f	1
2383	Ice Cream & Desserts	ITC Master Chef Chicken Galouti Kebab	170.00	4.00	2	162.00	210	f	210
2384	Ice Cream & Desserts	Yogabar 100% Pure Peanut Butter Creamy & Yummy Unsweetened	229.00	10.00	6	206.00	400	f	400
2385	Ice Cream & Desserts	Kitchens Of India Palak Paneer	130.00	30.00	6	91.00	285	f	285
2386	Ice Cream & Desserts	Kelloggs Chocos Fills Double Chocolat	99.00	11.00	6	88.00	175	f	175
2387	Ice Cream & Desserts	Soulfull Ragi Bites Choco Fills	169.00	5.00	4	160.00	250	f	250
2388	Ice Cream & Desserts	Figaro Sliced Black Olive 	179.00	0.00	6	179.00	450	f	450
2389	Ice Cream & Desserts	Veeba Barbeque Sauce	149.00	8.00	6	137.00	330	f	330
2390	Ice Cream & Desserts	The Whole Truth Vegan Mocha Almond Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2391	Ice Cream & Desserts	The Whole Truth - Nuts, Fruits & Seeds Muesli	325.00	20.00	6	260.00	350	f	350
2392	Ice Cream & Desserts	Pantai Green Curry Paste	150.00	14.00	5	128.00	114	f	114
2393	Ice Cream & Desserts	Kelloggs Special K	210.00	8.00	5	192.00	435	f	435
2394	Ice Cream & Desserts	Moi Soi Sichuan Chilli Oil- For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2395	Ice Cream & Desserts	Mother's Recipe Madras Appalam	50.00	10.00	6	45.00	100	f	100
2396	Ice Cream & Desserts	Top Ramen Masala Oat Masala	80.00	10.00	6	72.00	280	f	280
2397	Ice Cream & Desserts	Saffola Everyday Peppy Tomato Masala Oats	195.00	12.00	6	171.00	500	f	500
2398	Ice Cream & Desserts	Ching's Secret Instant Noodles, Hot Garlic	60.00	0.00	4	60.00	240	f	240
2399	Ice Cream & Desserts	Kitchens Of India Chicken Chettinad	200.00	30.00	1	140.00	285	f	285
2400	Ice Cream & Desserts	Nestle Cerelac Wheat - Stage 1	190.00	0.00	6	190.00	300	f	300
2401	Ice Cream & Desserts	Sumeru Aloo Paratha	119.00	5.00	6	113.00	400	f	400
2402	Ice Cream & Desserts	ITC Master Chef Veggie Pizza Pocket	170.00	4.00	4	162.00	340	f	340
2403	Ice Cream & Desserts	Wingreens Farms Tangy Cheese Pita Chips & Mexican Salsa Dip	60.00	15.00	1	51.00	70	f	70
2404	Ice Cream & Desserts	Ching's Secret Manchow Soup	55.00	0.00	3	55.00	55	f	55
2405	Ice Cream & Desserts	Veeba Carrot & Cucumber Sandwich Spread	85.00	10.00	6	76.00	250	f	250
2406	Ice Cream & Desserts	Kellogg's Real Almond & Honey Corn Flakes	370.00	12.00	3	324.00	650	f	650
2407	Ice Cream & Desserts	Kitchens Of India Mughlai Paneer	160.00	30.00	4	112.00	285	f	285
2408	Ice Cream & Desserts	Ching's Secret Just Soak - Veg Hakka Noodles	30.00	0.00	5	30.00	150	f	150
2409	Ice Cream & Desserts	Ching's Secret Chowmein Hakka Noodles Masala	60.00	10.00	2	54.00	100	f	100
2410	Ice Cream & Desserts	The Whole Truth Dark Chocolate Peanut Butter - Crunchy	235.00	20.00	5	188.00	325	f	325
2411	Ice Cream & Desserts	Mother's Recipe Bhel Puri Chutney	55.00	9.00	4	50.00	200	f	200
2412	Ice Cream & Desserts	Kelloggs Chocos Moon & Stars	330.00	10.00	6	294.00	680	f	680
2413	Ice Cream & Desserts	Mother's Recipe Lime Pickle 	120.00	5.00	1	114.00	400	f	400
2414	Ice Cream & Desserts	Kitchens of India Dal Makhani	110.00	30.00	2	77.00	285	f	285
2415	Ice Cream & Desserts	Pantai Light Soy Sauce	275.00	14.00	5	234.00	200	f	200
2416	Ice Cream & Desserts	Ching's Secret Sweet Corn Soup	55.00	0.00	6	55.00	55	f	55
2417	Ice Cream & Desserts	Top Ramen Noodles, Atta	80.00	0.00	1	80.00	280	f	280
2418	Ice Cream & Desserts	Cantina Tortilla Dip Sauce Sour Creamy Tex Mex	225.00	15.00	5	191.00	190	f	190
2419	Ice Cream & Desserts	Dabur Hommade - Rajasthan Ki Garlic Chutne	65.00	6.00	6	61.00	200	f	200
2420	Ice Cream & Desserts	MTR Seviyan Vermicelli 	42.00	0.00	2	42.00	400	f	400
2421	Ice Cream & Desserts	Pantai Oyster Sauce	275.00	14.00	4	234.00	200	f	200
2422	Ice Cream & Desserts	Go Cheese Spread - Four Pepper (Soft & Creamy)	99.00	5.00	6	94.00	200	f	200
2423	Ice Cream & Desserts	MTR Ready To Eat Paneer Butter Masala	135.00	9.00	2	122.00	300	f	300
2424	Ice Cream & Desserts	Nestle Lactogen Stage 2 Follow-up Formula Powder	340.00	0.00	2	340.00	400	f	400
2425	Ice Cream & Desserts	Kellogg's Crunchy Bites Chocos	190.00	10.00	6	171.00	375	f	375
2426	Ice Cream & Desserts	Veeba Hot Sweet Tomato Chilli Sauce	104.00	20.00	3	83.00	500	f	500
2427	Ice Cream & Desserts	Borges Durum Wheat Pasta Superior Quality	250.00	40.00	6	149.00	500	f	500
2428	Ice Cream & Desserts	Funfoods Peanut Butter Crunchy	169.00	7.00	1	156.00	400	f	400
2429	Ice Cream & Desserts	Pantai Red Curry Paste	60.00	0.00	4	60.00	50	f	50
2430	Ice Cream & Desserts	ITC Master Chef Chicken Seekh Kabab	325.00	0.00	6	325.00	500	f	500
2431	Ice Cream & Desserts	Del Monte Pizza & Pasta Sauce Spout Pack	99.00	0.00	3	99.00	400	f	400
2432	Ice Cream & Desserts	Pantai Sriracha Red Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2433	Ice Cream & Desserts	Hershey's Cocoa Spread	295.00	0.00	3	295.00	350	f	350
2434	Ice Cream & Desserts	Maggi Ghee Tadka Upma Express Pouch	25.00	0.00	6	25.00	65	f	65
2435	Ice Cream & Desserts	Ching's Secret Manchurian Noodles	91.00	0.00	5	91.00	360	f	360
2436	Ice Cream & Desserts	Kellogg's All Bran Wheat Flakes	220.00	6.00	5	205.00	425	f	425
2437	Ice Cream & Desserts	Yummiez Chicken Breakfast Sausages	150.00	0.00	3	150.00	250	f	250
2438	Ice Cream & Desserts	Pantai Red Curry Paste	150.00	14.00	3	128.00	114	f	114
2439	Ice Cream & Desserts	Bagrrys Muesli Crunchy Fruit & Nut With Cranberries	330.00	10.00	6	297.00	400	f	400
2440	Ice Cream & Desserts	Quaker Oats Pouch	276.00	10.00	6	248.00	1500	f	1
2441	Ice Cream & Desserts	Prasuma Momos -  Cheesy Spicy Veg	295.00	0.00	6	295.00	24	f	24
2442	Ice Cream & Desserts	Veeba Sriracha Chilli Garlic Sauce	149.00	8.00	5	137.00	320	f	320
2443	Ice Cream & Desserts	Ching's Secret Just Soak - Veg Hakka Noodles	115.00	0.00	6	115.00	600	f	600
2444	Ice Cream & Desserts	Moi Soi Kung Pao Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2445	Ice Cream & Desserts	Figaro Plain Green Olive 	179.00	0.00	6	179.00	450	f	450
2446	Ice Cream & Desserts	Mother's Recipe Gujrati Gorkeri Pickle	140.00	10.00	3	126.00	500	f	500
2447	Ice Cream & Desserts	Kellogg's Muesli 20% Nuts Delight	320.00	0.00	6	320.00	500	f	500
2448	Ice Cream & Desserts	Borges Farfalle Durum Wheat Pasta 	250.00	0.00	5	250.00	500	f	500
2449	Ice Cream & Desserts	Kellogg's Chocos	299.00	10.00	4	269.00	700	f	700
2450	Ice Cream & Desserts	Nestle Nan Pro 4 Follow Up Formula Powder For Older Infants 	620.00	0.00	1	620.00	400	f	400
2451	Ice Cream & Desserts	Veeba Truly Tomato Ketchup	99.00	20.00	6	79.00	500	f	500
2452	Ice Cream & Desserts	Ching's Secret Green Chilli Sauce	85.00	4.00	1	81.00	680	f	680
2453	Ice Cream & Desserts	MTR Roasted Vermicelli 	55.00	0.00	1	55.00	400	f	400
2454	Ice Cream & Desserts	Mother's Recipe Punjabi Teekha Mang Pickle	120.00	10.00	4	108.00	400	f	400
2455	Ice Cream & Desserts	Ching's Secret Hot Garlic Instant Noodles	114.00	0.00	6	114.00	480	f	480
2456	Ice Cream & Desserts	Kellogg's Real Honey Corn Flakes	290.00	7.00	5	267.00	630	f	630
2457	Ice Cream & Desserts	ITC Master Chef Lebanese Falafel Kebab	130.00	4.00	4	124.00	230	f	230
2458	Ice Cream & Desserts	Kelloggs Chocos Fills Double Chocolaty	185.00	10.00	5	165.00	250	f	250
2459	Ice Cream & Desserts	Organic India Apple Cider Vinegar	595.00	9.00	2	536.00	500	f	500
2460	Ice Cream & Desserts	Masala Oats Masala & Coriander 	195.00	9.00	5	176.00	500	f	500
2461	Ice Cream & Desserts	Ching's Secret  Noodles - Pad Thai Lemongras	200.00	0.00	5	200.00	130	f	130
2462	Ice Cream & Desserts	Bagrrys Fruit and Nut Muesli with Cranberries	499.00	0.00	5	499.00	750	f	750
2463	Ice Cream & Desserts	Kitchens Of India Yellow Dal Tadka	110.00	30.00	6	77.00	285	f	285
2464	Ice Cream & Desserts	Soulfull Vanilla Fills - Ragi Bites	169.00	5.00	6	160.00	250	f	250
2465	Ice Cream & Desserts	Pantai Teriyaki Sauce with Garlic	325.00	15.00	6	276.00	200	f	200
2466	Ice Cream & Desserts	Whiskas Adult Pocket Tuna Cat Food	410.00	0.00	1	410.00	1200	f	1
2467	Ice Cream & Desserts	Kitchens Of India Chicken Darbari 	200.00	30.00	4	140.00	285	f	285
2468	Ice Cream & Desserts	Soulfull Millet Muesli Fruit & Nut Almonds & Real Fruits	299.00	10.00	6	269.00	400	f	400
2469	Ice Cream & Desserts	Smith & Jones Red Pasta Sauce Mix	40.00	0.00	6	40.00	46	f	46
2470	Ice Cream & Desserts	Kellogg's Muesli Nuts Delight	425.00	9.00	3	383.00	750	f	750
2471	Ice Cream & Desserts	Kitchens of India Dal Bukhara Gravy Mix	110.00	30.00	6	77.00	285	f	285
2472	Ice Cream & Desserts	The Whole Truth Peanut Butter - Sweetened & Crunchy	215.00	20.00	6	172.00	325	f	325
2473	Ice Cream & Desserts	Remia Mayonnaise	230.00	0.00	6	230.00	241	f	241
2474	Ice Cream & Desserts	Ching's Secret Green Chilli Sauce	105.00	0.00	6	105.00	425	f	425
2475	Ice Cream & Desserts	Bagrrys Fruit N Fibre Muesli - Strawberry	595.00	0.00	1	595.00	1000	f	1
2476	Ice Cream & Desserts	Ching's Secret Tomato Oats Instant Soup	15.00	0.00	3	15.00	20	f	20
2477	Ice Cream & Desserts	Kellogg's Special K Original Corn Flakes	140.00	5.00	1	133.00	290	f	290
2478	Ice Cream & Desserts	Moi Soi  Black Bean Sauce - Dip Spread Stir Fry & Marinade	280.00	50.00	5	140.00	175	f	175
2479	Ice Cream & Desserts	Tong Garden Wasabi Green Peas	175.00	4.00	6	167.00	150	f	150
2480	Ice Cream & Desserts	Ching's Secret Red Chilli Sauce	105.00	0.00	4	105.00	440	f	440
2481	Ice Cream & Desserts	Ching's Instant Hot and Sour Soup	55.00	0.00	5	55.00	55	f	55
2482	Ice Cream & Desserts	Ching's Secret Noodles - Pad Thai Original	200.00	0.00	6	200.00	130	f	130
2483	Ice Cream & Desserts	Aashirvaad Instant Meals - Khatta Meetha Pohaa With Millets	55.00	30.00	5	38.00	80	f	80
2484	Ice Cream & Desserts	Del Monte Black Sliced Olives	250.00	0.00	1	250.00	450	f	450
2485	Ice Cream & Desserts	Kitchens Of India Murgh Methi	220.00	30.00	5	154.00	285	f	285
2486	Ice Cream & Desserts	Nestle Cerelac 5 Grains & Fruits Cereal	288.00	0.00	6	288.00	300	f	300
2487	Ice Cream & Desserts	The Whole Truth - 5 Grain Muesli No Added Sugar	325.00	20.00	6	260.00	350	f	350
2488	Ice Cream & Desserts	Ching's Secret  Pad Thai Noodles Green Curry	200.00	0.00	6	200.00	130	f	130
2489	Ice Cream & Desserts	Aashirvaad Suji Halwa With Jaggery	75.00	0.00	6	75.00	70	f	70
2490	Ice Cream & Desserts	Mother's Recipe Mango Pickle 	120.00	0.00	1	120.00	400	f	400
2491	Ice Cream & Desserts	Ching's Secret Pad Thai Noodles - Extra Hot Thai Chilli	200.00	0.00	6	200.00	130	f	130
2492	Ice Cream & Desserts	Kellogg's Special K Original Corn Flakes	399.00	11.00	6	355.00	900	f	900
2493	Ice Cream & Desserts	Knorr Sweet Corn Chicken Soup	55.00	0.00	2	55.00	42	f	42
2494	Ice Cream & Desserts	Ching's Secret Tomato Soup	55.00	0.00	6	55.00	55	f	55
2495	Ice Cream & Desserts	Funfoods Peanut Butter Creamy	169.00	0.00	1	169.00	400	f	400
2496	Ice Cream & Desserts	Japanese Choice Udon Noodles	295.00	9.00	6	266.00	250	f	250
2497	Ice Cream & Desserts	Kelloggs Muesli - With 22% Fruit Magic	320.00	10.00	5	288.00	500	f	500
2498	Ice Cream & Desserts	Dabur Hommade - Kalonji Tamatar Ki Chutney	65.00	6.00	6	61.00	200	f	200
2499	Ice Cream & Desserts	Kitchens Of India Dal Makhani	110.00	30.00	1	77.00	285	f	285
2500	Ice Cream & Desserts	Aashirvaad Suji Halwa With Jaggery	55.00	30.00	6	38.00	80	f	80
2501	Ice Cream & Desserts	Del Monte Green Chili Sauce	55.00	0.00	3	55.00	190	f	190
2502	Ice Cream & Desserts	Pedigree Dog Food Adult Chicken & Veg	660.00	10.00	1	594.00	3000	f	3
2503	Ice Cream & Desserts	Kellogg's Original Corn Flakes	185.00	5.00	6	175.00	475	f	475
2504	Ice Cream & Desserts	Pedigree Puppy Dry Dog Food Food Chicken & Milk	690.00	6.00	2	648.00	3000	f	3
2505	Ice Cream & Desserts	Kitchens Of India Rajma Masala	110.00	30.00	5	77.00	285	f	285
2506	Ice Cream & Desserts	Kitchen Of India Ready-To-Eat Pindi Channa	110.00	30.00	2	77.00	285	f	285
2507	Ice Cream & Desserts	Figaro Pitted Black Olive 	179.00	0.00	6	179.00	450	f	450
2508	Ice Cream & Desserts	Cantina Tabasco Red Sauce	140.00	15.00	6	119.00	60	f	60
2509	Ice Cream & Desserts	Mother's Recipe Pickle - Mixed	149.00	26.00	6	109.00	500	f	500
2510	Ice Cream & Desserts	Nestle Cerelac Baby Cereal with Milk 5 Grains & Vegetables from 18 to 24 Month	279.00	0.00	5	279.00	300	f	300
2511	Ice Cream & Desserts	Mother's Recipe Tamarind Paste	50.00	2.00	2	49.00	200	f	200
2512	Ice Cream & Desserts	Pedigree Meat Jerky Adult Dog Treat Barbecued Chicken	140.00	20.00	6	112.00	80	f	80
2513	Ice Cream & Desserts	Veeba Peri Peri Sauce	161.00	0.00	6	161.00	300	f	300
2514	Ice Cream & Desserts	Pantai Sriracha Yellow Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2515	Ice Cream & Desserts	Praakritik Organic Jumbo Rolled Oats	190.00	11.00	6	169.00	500	f	500
2516	Ice Cream & Desserts	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodles	123.00	0.00	6	123.00	600	f	600
2517	Ice Cream & Desserts	Pantai Spring Roll Sauce	275.00	10.00	6	245.00	200	f	200
2518	Ice Cream & Desserts	MTR Vermicelli Payasam	75.00	0.00	6	75.00	180	f	180
2519	Ice Cream & Desserts	Bagrrys Corn Flakes	350.00	0.00	6	350.00	880	f	800
2520	Ice Cream & Desserts	MTR Ready To Eat Palak Paneer 	135.00	11.00	6	120.00	300	f	300
2521	Ice Cream & Desserts	Del Monte Red Chili Sauce	55.00	0.00	5	55.00	190	f	190
2522	Ice Cream & Desserts	Kitchens of India Mutter Paneer Mix	120.00	30.00	4	84.00	285	f	285
2523	Ice Cream & Desserts	Pantai Green Curry Paste	60.00	6.00	6	56.00	50	f	50
2524	Ice Cream & Desserts	The Laughing Cow Cheese Spread Plain	110.00	0.00	6	110.00	180	f	180
2525	Ice Cream & Desserts	MTR Dal Fry	110.00	0.00	5	110.00	300	f	300
2526	Ice Cream & Desserts	Pantai Fish Sauce	275.00	14.00	6	234.00	200	f	200
2527	Ice Cream & Desserts	Cantina Beans Mexican Beans	250.00	14.00	6	213.00	410	f	410
2528	Ice Cream & Desserts	Ching's Secret Manchurian Instant Noodle	114.00	0.00	6	114.00	480	f	480
2529	Ice Cream & Desserts	Remia Salad Italian Dressing 	230.00	0.00	6	230.00	250	f	250
2530	Ice Cream & Desserts	Yummiez Veg Cheese Fingers Pouch	230.00	0.00	4	230.00	400	f	400
2531	Ice Cream & Desserts	MTR Dal Makhani	110.00	0.00	4	110.00	300	f	300
2532	Ice Cream & Desserts	MTR Ready to Eat Pav Bhaji	110.00	0.00	6	110.00	300	f	300
2533	Ice Cream & Desserts	Weikfield Tomato Salsa Instant Pasta	25.00	0.00	1	25.00	77	f	77
2534	Ice Cream & Desserts	Nestlé CERELAC Baby Cereal with Milk	272.00	0.00	1	272.00	300	f	300
2535	Ice Cream & Desserts	Remia Salad Caesar Dressing	250.00	0.00	6	250.00	250	f	250
2536	Ice Cream & Desserts	Bagrrys Fruit N Fibre Muesli Mixed Fruit	330.00	0.00	6	330.00	500	f	500
2537	Ice Cream & Desserts	MTR Paneer Butter Masala & Veg Pulao	175.00	9.00	4	158.00	375	f	375
2538	Ice Cream & Desserts	Sundrop Cocoa Nut Hazelnut Chocolatey Spread	120.00	0.00	6	120.00	160	f	160
2539	Ice Cream & Desserts	Moi Soi Manchurian Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	6	140.00	175	f	175
2540	Ice Cream & Desserts	Pedigree Dog Food Adult Meat & Rice	660.00	7.00	2	608.00	3000	f	3
2541	Ice Cream & Desserts	Pantai Sriracha Green Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2542	Ice Cream & Desserts	Pantai Chilli Garlic Sauce	275.00	14.00	6	234.00	200	f	200
2543	Ice Cream & Desserts	Pantai Dark Soy Sauce	275.00	14.00	6	234.00	200	f	200
2544	Ice Cream & Desserts	Yoga Bar Peanut Butter Dark Chocolate Jar	249.00	0.00	4	249.00	400	f	400
2545	Ice Cream & Desserts	Cantina Tabasco Green Sauce	140.00	15.00	6	119.00	60	f	60
2546	Ice Cream & Desserts	Pantai Pad Thai Sauce (Non-Veg)	325.00	9.00	5	293.00	200	f	200
2547	Ice Cream & Desserts	Pantai Sweet Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2548	Ice Cream & Desserts	Ching's Secret Schezwan Instant Noodle	114.00	0.00	6	114.00	480	f	480
2549	Ice Cream & Desserts	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
2550	Ice Cream & Desserts	Pediasure Premium Chocolate Powdered Health Drink	610.00	0.00	2	610.00	400	f	400
2551	Ice Cream & Desserts	Chings Secret Hot Garlic Instant Noodles	91.00	0.00	6	91.00	60	f	60
2552	Ice Cream & Desserts	Godrej Yummiez Cheese Corn Nuggets 	230.00	0.00	4	230.00	400	f	400
2553	Ice Cream & Desserts	Pantai Hot Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2554	Ice Cream & Desserts	Knorr International Mexican Tomato Corn Soup 	65.00	6.00	3	61.00	52	f	52
2555	Ice Cream & Desserts	Bagrry's Fruit Fibre Muesli Mixed Fruit 	595.00	0.00	5	595.00	1000	f	1
2556	Ice Cream & Desserts	MTR Roasted Vermicelli 	105.00	0.00	4	105.00	850	f	850
2557	Ice Cream & Desserts	Maggi 2-Minute Instant Noodles - Masala	44.00	0.00	0	44.00	280	t	280
2558	Ice Cream & Desserts	Kurkure Green Chutney, Rajasthani Style	20.00	0.00	0	20.00	90	t	90
2559	Ice Cream & Desserts	Kellogg's Chocos Combo Pack	60.00	6.00	0	56.00	156	t	156
2560	Ice Cream & Desserts	Kissan Mixed Fruit Jam 	155.00	0.00	0	155.00	500	t	500
2561	Ice Cream & Desserts	Lijjat Urad Papad	60.00	5.00	0	57.00	200	t	200
2562	Ice Cream & Desserts	Amul Cheese Spread Yummy Plain	85.00	0.00	0	85.00	200	t	200
2563	Ice Cream & Desserts	Mother's Recipe Ginger And Garlic Paste	50.00	24.00	0	38.00	200	t	200
2564	Ice Cream & Desserts	Maggi Magic Cubes Chicken	40.00	2.00	0	39.00	40	t	40
2565	Ice Cream & Desserts	Pedigree Puppy Chicken Chunks in Gravy 	35.00	2.00	0	34.00	70	t	70
2566	Ice Cream & Desserts	The Whole Truth Peanut Butter - Unsweetened & Crunchy	185.00	20.00	0	148.00	325	t	325
2567	Ice Cream & Desserts	Ching's Chow Mein Hakka Noodles Masala	10.00	0.00	0	10.00	20	t	20
2568	Ice Cream & Desserts	Safal Frozen Mixed Vegetables	60.00	5.00	0	57.00	500	t	500
2569	Ice Cream & Desserts	Safal Frozen Corn	41.00	4.00	0	39.00	200	t	200
2570	Ice Cream & Desserts	Amul Cheese Spread Spicy Garlic	85.00	3.00	0	82.00	200	t	200
2571	Ice Cream & Desserts	Ching's Secret Veg Hakka Noodles	107.00	0.00	0	107.00	600	t	600
2572	Ice Cream & Desserts	Saffola Oats 100 % Natural	15.00	0.00	0	15.00	38	t	38
2573	Ice Cream & Desserts	Lijjat Moong Papad	60.00	5.00	0	57.00	200	t	200
2574	Ice Cream & Desserts	Mothers Recipe Papad - Sabudana With Rock Salt	31.00	9.00	0	28.00	70	t	70
2575	Ice Cream & Desserts	Maggi Chilly Chow Cuppa Noodles	50.00	0.00	0	50.00	70	t	70
2576	Ice Cream & Desserts	Veeba Favourites Eggless Burger Mayonnaise	69.00	8.00	0	63.00	250	t	250
2577	Ice Cream & Desserts	Sunfeast Yippee! Magic Masala Noodles	48.00	6.00	0	45.00	240	t	240
2579	Ice Cream & Desserts	Kelloggs Corn Flakes With Real Strawberry Pure	265.00	10.00	0	236.00	575	t	575
2580	Ice Cream & Desserts	Mother's Recipe Potato Papad	31.00	9.00	0	28.00	70	t	75
2581	Ice Cream & Desserts	Mothers Recipe Rice Papad Ajwain	24.00	0.00	0	24.00	75	t	75
2582	Ice Cream & Desserts	Chef's Basket Durum Wheat Penne Pasta	160.00	50.00	0	80.00	500	t	500
2583	Ice Cream & Desserts	Dabur Hommade - Imli Sauce Saunth	20.00	10.00	0	18.00	100	t	100
2584	Ice Cream & Desserts	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
2585	Ice Cream & Desserts	Sunfeast Pasta Treat Pack of Tomato Cheese	28.00	17.00	0	23.00	65	t	65
2586	Ice Cream & Desserts	Safal Frozen - Sweet Corn	160.00	5.00	0	152.00	1000	t	1
2587	Ice Cream & Desserts	MTR Vegetable Upma	25.00	0.00	0	25.00	60	t	60
2588	Ice Cream & Desserts	Del Monte Original Blend Tomato Ketchup Pouch	120.00	7.00	0	111.00	950	t	950
2589	Ice Cream & Desserts	Del Monte Natural Vinegar 	55.00	3.00	0	53.00	180	t	180
2590	Ice Cream & Desserts	Del Monte Eggless Mayo	135.00	6.00	0	126.00	500	t	500
2591	Ice Cream & Desserts	ITC Master Chef Cheesy Corn Triangles	160.00	5.00	0	152.00	320	t	320
2592	Ice Cream & Desserts	Mother's Recipe Mixed Pickle 	115.00	4.00	0	110.00	400	t	400
2593	Ice Cream & Desserts	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
2594	Ice Cream & Desserts	Hershey's Cocoa + Almond Spread	295.00	9.00	0	266.00	350	t	350
2595	Ice Cream & Desserts	Maggi Special Masala Spicy Yummy Noodles	72.00	0.00	0	72.00	280	t	280
2596	Ice Cream & Desserts	Del Monte Schezwan Sauce	55.00	0.00	0	55.00	190	t	190
2597	Ice Cream & Desserts	Yummiez Green Peas	135.00	0.00	0	135.00	500	t	500
2598	Ice Cream & Desserts	Yummiez Green Peas	250.00	0.00	0	250.00	1000	t	1
2599	Ice Cream & Desserts	Yummiez American Sweet Corn	85.00	0.00	0	85.00	400	t	400
2600	Ice Cream & Desserts	Dr Oetker Cucumber & Carrot Sandwich Spread Veg	79.00	0.00	0	79.00	250	t	250
2601	Ice Cream & Desserts	Del Monte Pitted Green Olives	250.00	0.00	0	250.00	450	t	450
2602	Chocolates & Candies	Maggi 2 Minute Masala Noodles	12.00	0.00	6	12.00	70	f	70
2603	Chocolates & Candies	iD Idli & Dosa Batter 	80.00	15.00	6	68.00	1000	f	1
2604	Chocolates & Candies	iD Malabar Parota 	80.00	10.00	4	72.00	400	f	400
2605	Chocolates & Candies	iD Wheat Lachha Paratha	80.00	12.00	6	70.00	400	f	400
2606	Chocolates & Candies	McCain Aloo Tikki	110.00	4.00	6	105.00	400	f	400
2607	Chocolates & Candies	McCain Smiles Cripsy Happy Potatoes	120.00	5.00	6	114.00	415	f	415
2608	Chocolates & Candies	McCain Veggie Burger Patty	115.00	3.00	6	111.00	360	f	360
2609	Chocolates & Candies	McCain Veggie Fingers	117.00	5.00	6	111.00	400	f	400
2610	Chocolates & Candies	Amul Delicious Fat Spread - Cholesterol Free	18.00	5.00	6	17.00	100	f	100
2611	Chocolates & Candies	Whiskas Wet  Meal (Adult - Cat Food)  Chicken in Gravy	35.00	2.00	2	34.00	85	f	85
2612	Chocolates & Candies	McCain Chilli Garlic Potato Bites Crunchy Potato Nuggets	125.00	5.00	1	118.00	420	f	420
2613	Chocolates & Candies	Ching's Secret Instant Hot Garlic Noodles	15.00	0.00	3	15.00	60	f	60
2614	Chocolates & Candies	Veeba Eggless Mayonnaise	79.00	11.00	5	70.00	250	f	250
2615	Chocolates & Candies	Ching's Secret Instant Schezwan Noodles	15.00	0.00	6	15.00	60	f	60
2616	Chocolates & Candies	Veeba Pasta And Pizza Sauce	75.00	13.00	5	65.00	280	f	280
2617	Chocolates & Candies	Top Ramen  Noodles Curry Veg Pouch	20.00	0.00	1	20.00	70	f	70
2618	Chocolates & Candies	Saffola Veggie Twist Masala Oats	15.00	0.00	6	15.00	38	f	38
2619	Chocolates & Candies	Unibic Almond & Oats Protein Bar	40.00	17.00	4	33.00	30	f	30
2620	Chocolates & Candies	Quaker Oats	79.00	0.00	2	79.00	400	f	400
2621	Chocolates & Candies	Amul Delicious Fat Spread - Cholesterol Free	88.00	2.00	2	86.00	500	f	500
2622	Chocolates & Candies	McCain French Fries	120.00	5.00	1	114.00	420	f	420
2623	Chocolates & Candies	Ching's Secret Manchow Instant Soup	10.00	0.00	1	10.00	15	f	15
2624	Chocolates & Candies	McCain Potato Cheese Shotz	130.00	4.00	6	124.00	250	f	250
2625	Chocolates & Candies	McCain Masala - Fries	120.00	5.00	3	114.00	375	f	375
2626	Chocolates & Candies	Ching's Secret Schezwan Fried Rice Masala	15.00	0.00	6	15.00	20	f	20
2627	Chocolates & Candies	McCain New Mini Samosa with Cheese Pizza Style Filling	120.00	1.00	3	118.00	240	f	240
2628	Chocolates & Candies	McCain Chilli Cheesy Nuggets	130.00	4.00	1	124.00	250	f	250
2629	Chocolates & Candies	Whiskas Adult (+1 Year) Dry Cat Food, Ocean Fish Flavour	430.00	10.00	6	387.00	1200	f	1
2630	Chocolates & Candies	Chings Instant Soup - Hot & Sour	10.00	0.00	1	10.00	15	f	15
2631	Chocolates & Candies	Amul Spray Infant Milk Food	197.00	2.00	6	193.00	500	f	500
2632	Chocolates & Candies	McCain Smiles - Pudina Chatka	120.00	5.00	3	114.00	375	f	375
2633	Chocolates & Candies	McCain French Fries Crisp & Delicious	175.00	4.00	3	167.00	750	f	750
2634	Chocolates & Candies	Ferrero Nutella Hazelnut Spread	220.00	5.00	2	207.00	180	f	180
2635	Chocolates & Candies	Lijjat Garlic Papad	60.00	5.00	5	57.00	200	f	200
2636	Chocolates & Candies	Switz Samosa Dough Sheets	90.00	4.00	6	86.00	50	f	50
2637	Chocolates & Candies	Amul Cheese Spread Creamy	85.00	5.00	6	80.00	180	f	180
2638	Chocolates & Candies	Maggi Imli Sauce Pichkoo	22.00	0.00	6	22.00	90	f	90
2639	Chocolates & Candies	Whiskas Kitten (2-12 months) Dry Cat Food Food Ocean Fish	385.00	9.00	5	347.00	1100	f	1100
2640	Chocolates & Candies	Chings Instant Soup - Sweet Corn Veg	10.00	0.00	2	10.00	15	f	15
2641	Chocolates & Candies	Whiskas Wet  Meal (Kitten - Cat Food)  Chicken in Gravy	35.00	5.00	2	33.00	85	f	85
2642	Chocolates & Candies	McCain Crazy Fries Masala MixHot 'n' Tangy	120.00	5.00	6	114.00	400	f	400
2643	Chocolates & Candies	The Whole Truth Double Cocoa Protein Bar No Sugar	100.00	10.00	6	90.00	52	f	52
2644	Chocolates & Candies	Amul Happy Treats French Fries	68.00	4.00	1	65.00	425	f	425
2645	Chocolates & Candies	Ferrero Nutella Hazeulnut Spread	380.00	6.00	5	357.00	350	f	350
2646	Chocolates & Candies	Veeba Chipolte Southwest Dressing	161.00	7.00	4	149.00	300	f	300
2647	Chocolates & Candies	Ching's Secret Manchow Noodles Instant Soup	15.00	0.00	6	15.00	20	f	20
2648	Chocolates & Candies	Yoga Bar Breakfast Protein Bar - Blueberry Pie	50.00	12.00	1	44.00	50	f	50
2649	Chocolates & Candies	Quaker Oats	199.00	7.00	6	184.00	1000	f	1
2650	Chocolates & Candies	The Whole Truth Mini Protein Bar - Coconut Cocoa No Added Sugar	55.00	25.00	6	41.00	27	f	27
2651	Chocolates & Candies	Switz Spring Roll Dough Sheets	90.00	4.00	6	86.00	1160	f	20
2652	Chocolates & Candies	Unibic Fruit & Nut Real Cranberries & Almonds Protein Bar	40.00	17.00	6	33.00	30	f	30
2653	Chocolates & Candies	Ching's Secret Tomato Instant Soup	10.00	0.00	1	10.00	16	f	15
2654	Chocolates & Candies	Chef's Basket Durum Wheat Elbow Pasta	160.00	50.00	6	80.00	500	f	500
2655	Chocolates & Candies	Sunfeast Yippee! Mood Masala Noodles	60.00	28.00	3	43.00	260	f	260
2656	Chocolates & Candies	MTR Breakfast Khatta Meetha Poha Mix	25.00	20.00	6	20.00	60	f	60
2657	Chocolates & Candies	Kellogg's Crunchy Fruit & Nut Breakfast Cereals Muesli	445.00	9.00	6	401.00	750	f	750
2658	Chocolates & Candies	Ching's Secret Chilli Vinegar	50.00	0.00	4	50.00	170	f	170
2659	Chocolates & Candies	Ching's Red Chilli Sauce	55.00	0.00	6	55.00	200	f	200
2660	Chocolates & Candies	Amul Lite Spread	40.00	2.00	5	39.00	100	f	100
2661	Chocolates & Candies	Borges Durum Wheat Fusilli Pasta 	250.00	0.00	3	250.00	500	f	500
2662	Chocolates & Candies	The Whole Truth Cranberry Mini Protein Bar No Sugar	55.00	20.00	6	44.00	27	f	27
2663	Chocolates & Candies	The Whole Truth Mini Protein Bar - Coffee Cocoa No Added Sugar	55.00	20.00	6	44.00	27	f	27
2664	Chocolates & Candies	Maggi Hot & Sweet Tomato Chilli Sauce	115.00	0.00	1	115.00	500	f	500
2665	Chocolates & Candies	Sunfeast YiPPee! Noodles - Magic Masala	96.00	5.00	4	91.00	540	f	540
2666	Chocolates & Candies	Chef's Basket Durum Wheat Fusilli Pasta	160.00	50.00	6	80.00	500	f	500
2667	Chocolates & Candies	Top Ramen Chicken Noodles	60.00	10.00	1	54.00	280	f	280
2668	Chocolates & Candies	Veeba Cheese and Chilli Sandwich Spread	89.00	11.00	6	79.00	275	f	275
2669	Chocolates & Candies	Ching’s Secret Chowmein Hakka Noodles Masala 	44.00	0.00	2	44.00	60	f	60
2670	Chocolates & Candies	Safal Frozen - Mixed Vegetables	110.00	4.00	2	105.00	1000	f	1
2671	Chocolates & Candies	MTR 3 Min Poha	25.00	0.00	6	25.00	60	f	60
2672	Chocolates & Candies	Ching's Manchurian Instant Noodles	15.00	0.00	5	15.00	60	f	60
2673	Chocolates & Candies	The Whole Truth Peanut Cocoa Mini Protein Bar No Sugar 	55.00	25.00	6	41.00	27	f	27
2674	Chocolates & Candies	Gits Pav Bhaji Ready to Eat	110.00	22.00	6	85.00	300	f	300
2675	Chocolates & Candies	McCain New Mini Samosa with Cheese Corn Style Filling	120.00	1.00	2	118.00	240	f	240
2676	Chocolates & Candies	Lijjat Udad Mini Papad	60.00	6.00	6	56.00	200	f	200
2677	Chocolates & Candies	McCain Herb & Garlic Crazy Fries Masala Mix 	120.00	5.00	5	114.00	400	f	400
2678	Chocolates & Candies	Yoga Bar Multigrain Energy Bar Nuts And Seeds	40.00	12.00	4	35.00	38	f	38
2679	Chocolates & Candies	Ching's Secret Sauce, Green Chilli	55.00	0.00	5	55.00	190	f	190
2680	Chocolates & Candies	Veeba Pizza Topping	75.00	6.00	4	70.00	280	f	280
2681	Chocolates & Candies	Switz Paratha Puff	110.00	4.00	6	105.00	400	f	400
2682	Chocolates & Candies	New Kellogg's Muesli with 21% Fruit, Nut & Seeds	325.00	6.00	6	305.00	500	f	500
2683	Chocolates & Candies	The Whole Truth Double Cocoa Mini Protein Bar No Sugar	55.00	20.00	5	44.00	27	f	27
2684	Chocolates & Candies	Sunfeast Yippee Tricolor Pasta Seasoning	28.00	17.00	1	23.00	65	f	65
2685	Chocolates & Candies	Wingreens Cheesy Chipotle Sauce	99.00	49.00	1	50.00	130	f	130
2686	Chocolates & Candies	Maggi Rich Tomato Ketchup	105.00	4.00	2	100.00	500	f	500
2687	Chocolates & Candies	The Whole Truth Dark Chocolate Peanut Butter - Creamy	235.00	25.00	6	174.00	325	f	325
2688	Chocolates & Candies	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
2689	Chocolates & Candies	Go Cheese  Spread Plain	99.00	5.00	6	94.00	200	f	200
2690	Chocolates & Candies	Kellogg's Real Almond & Honey Corn Flakes	175.00	9.00	6	158.00	300	f	300
2691	Chocolates & Candies	The Whole Truth Vegan Almond Choco Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2692	Chocolates & Candies	Prasuma Vegetable Momos	270.00	0.00	5	270.00	24	f	24
2693	Chocolates & Candies	MTR Upma	50.00	10.00	6	45.00	160	f	160
2694	Chocolates & Candies	Ching's Schezwan Masala Instant Noodles	60.00	0.00	1	60.00	240	f	240
2695	Chocolates & Candies	The Whole Truth Cranberry Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
2696	Chocolates & Candies	Saffola Yummy Masala Noodles 	20.00	0.00	2	20.00	46	f	46
2697	Chocolates & Candies	Veeba English Mustard	74.00	6.00	2	69.00	300	f	300
2698	Chocolates & Candies	Dabur Hommade Tamarind Paste	48.00	6.00	6	45.00	200	f	200
2699	Chocolates & Candies	Yoga Bar Breakfast Muesli - Almond Caramel (No Added Sugar)	325.00	4.00	6	309.00	400	f	400
2700	Chocolates & Candies	The Whole Truth Mini Protein Bar - Peanut Butter No Added Sugar	55.00	25.00	6	41.00	27	f	27
2701	Chocolates & Candies	ITC Master Chef Crispy Chicken Fries 	170.00	4.00	3	162.00	280	f	280
2702	Chocolates & Candies	Kelloggs Corn Flakes	99.00	13.00	6	86.00	250	f	250
2703	Chocolates & Candies	Nissin Cup Noodles Tangy Tomato	50.00	10.00	2	45.00	70	f	70
2704	Chocolates & Candies	Smith & Jones White Pasta Sauce Mix	40.00	0.00	3	40.00	46	f	46
2705	Chocolates & Candies	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	10.00	1	25.00	65	f	65
2706	Chocolates & Candies	Mothers Recipe Tamrind Date Chutney 	55.00	9.00	2	50.00	200	f	200
2707	Chocolates & Candies	Veeba Mint Mayonnaise	169.00	8.00	4	155.00	300	f	300
2708	Chocolates & Candies	Mccain Emotibites - Crispy Happy Potato Snack	130.00	0.00	6	129.00	415	f	415
2709	Chocolates & Candies	The Whole Truth Energy Bar Choco Cranberry Fudge	60.00	26.00	6	44.00	40	f	40
2710	Chocolates & Candies	Godrej Yummiez Chicken Lucknowi Seekh Kebab	260.00	10.00	4	234.00	400	f	400
2711	Chocolates & Candies	Prasuma Vegetable Momos	150.00	0.00	5	150.00	580	f	10
2712	Chocolates & Candies	Mother's Recipe Mixed Pickle	85.00	9.00	2	77.00	300	f	300
2713	Chocolates & Candies	Sunfeast Yippee! Pasta Treat - Sour Cream Onion	28.00	17.00	3	23.00	65	f	65
2714	Chocolates & Candies	The Whole Truth Peanut Cocoa Protein Bar No Sugar	100.00	26.00	6	74.00	52	f	52
2715	Chocolates & Candies	Yoga Bar Breakfast Muesli - Chocolate & Cranberry 	325.00	4.00	6	309.00	400	f	400
2716	Chocolates & Candies	Sunfeast YiPPee! Magic Masala Noodles	70.00	10.00	3	63.00	405	f	405
2717	Chocolates & Candies	Veeba Sweet Onion Sauce	141.00	14.00	4	121.00	350	f	350
2718	Chocolates & Candies	Quaker Oats Breakfast Cereals - With Flavour Mix Nutritious Rich Source Of Energy	49.00	8.00	6	45.00	200	f	200
2719	Chocolates & Candies	Mother's Recipe Tamarind Paste	50.00	2.00	6	49.00	200	f	200
2720	Chocolates & Candies	Yogabar No Added Sugar Protein Bar Brownie	125.00	15.00	4	106.00	60	f	60
2721	Chocolates & Candies	Bambino Popular Vermicelli 	40.00	2.00	3	39.00	400	f	400
2722	Chocolates & Candies	Ching's Secret Mix Veg Instant Soup	10.00	0.00	3	10.00	15	f	15
2723	Chocolates & Candies	Mother's Recipe Pickle - Red Stuffed Chilli	145.00	11.00	3	129.00	400	f	400
2724	Chocolates & Candies	Kellogg's No Added Sugar Muesli	335.00	11.00	6	298.00	500	f	500
2725	Chocolates & Candies	Veeba Salsa Dip	119.00	6.00	6	111.00	360	f	360
2726	Chocolates & Candies	Veeba Thousand Island Dressing	149.00	8.00	6	137.00	300	f	300
2727	Chocolates & Candies	Baggry's Crunchy Muesli Almond Raisins & Honey	130.00	0.00	5	130.00	200	f	200
2728	Chocolates & Candies	Knorr Chinese Hot And Sour Veg Soup	55.00	3.00	1	53.00	43	f	43
2729	Chocolates & Candies	Go Cheese Spread - Garlic	99.00	5.00	6	94.00	200	f	200
2730	Chocolates & Candies	The Whole Truth Peanut Butter With Dates - Creamy No Sugar	215.00	9.00	6	194.00	325	f	325
2731	Chocolates & Candies	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
2732	Chocolates & Candies	Kissan Pineapple Jam	165.00	9.00	1	149.00	500	f	500
2733	Chocolates & Candies	Smith & Jones Masala Noodles	89.00	0.00	5	89.00	480	f	480
2734	Chocolates & Candies	Nestle Nestle Nan Pro Follow-Up Formula	650.00	0.00	6	650.00	400	f	400
2735	Chocolates & Candies	Sunfeast Yippee! Power Up Atta Noodles	96.00	15.00	6	81.00	280	f	280
2736	Chocolates & Candies	McCain Super Wedges	120.00	7.00	6	111.00	400	f	400
2737	Chocolates & Candies	Kellogg's Crunchy Granola Honey, Almonds, Strawberries & Pumpkin Seeds	330.00	10.00	1	294.00	450	f	450
2738	Chocolates & Candies	Kellogg's Chocos	130.00	10.00	6	117.00	250	f	250
2739	Chocolates & Candies	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodle	32.00	0.00	3	32.00	150	f	150
2740	Chocolates & Candies	The Whole Truth Vegan Fig Apricot & Orange Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2741	Chocolates & Candies	Saffola Veggie Twist Masala Oats	195.00	12.00	2	171.00	500	f	500
2742	Chocolates & Candies	ITC Master Chef Classic Aloo Tikki	80.00	10.00	3	72.00	320	f	320
2743	Chocolates & Candies	Smith & Jones Pink Pasta Sauce Mix	40.00	0.00	4	40.00	46	f	46
2744	Chocolates & Candies	Wingreens Farms Chipotle Dip	200.00	25.00	1	150.00	180	f	180
2745	Chocolates & Candies	Kellogg's Real Almond & Honey Corn Flakes	550.00	5.00	3	520.00	1000	f	1
2746	Chocolates & Candies	Kellogg's Crunchy Granola Chocolate & Almonds	330.00	10.00	3	294.00	450	f	450
2747	Chocolates & Candies	Cornitos Cornitos Taco Shells - 6 Inches	160.00	20.00	4	128.00	180	f	180
2748	Chocolates & Candies	Ching's Secret Singapore Curry Instant Noodles	15.00	0.00	3	15.00	60	f	60
2749	Chocolates & Candies	Mother's Recipe Pickle - Mango	125.00	9.00	6	113.00	400	f	500
2750	Chocolates & Candies	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
2751	Chocolates & Candies	Pedigree Dentastix  Dog Treat Oral Care for Adult Medium Breed 	175.00	20.00	6	140.00	180	f	180
2752	Chocolates & Candies	Maggi Hot & Sweet - Tomato Chilli Sauce	170.00	10.00	1	153.00	1000	f	1
2753	Chocolates & Candies	Ching's Secret Asian Hot Instant Soup	15.00	0.00	3	15.00	15	f	15
2754	Chocolates & Candies	Kellogg’s Chocos Protein And Fibre Of 1 Roti	499.00	11.00	6	444.00	1200	f	1
2755	Chocolates & Candies	Mother's Recipe Pickle - Mango	149.00	26.00	4	109.00	500	f	500
2756	Chocolates & Candies	Chings Secret Manchurian Instant Noodle	60.00	0.00	6	60.00	240	f	240
2757	Chocolates & Candies	Kellogg's Original Corn Flakes	310.00	6.00	6	290.00	875	f	875
2758	Chocolates & Candies	Ching's Singapore Curry Instant Noodles	60.00	0.00	4	60.00	240	f	240
2759	Chocolates & Candies	Kellogg's Almonds And Cranberries Granola	330.00	6.00	6	310.00	460	f	460
2760	Chocolates & Candies	Nestle Ceregrow Multigrain Cereal with Milk and Fruits - 3 to 6 years	292.00	0.00	6	292.00	300	f	300
2761	Chocolates & Candies	MTR 3 Minute Breakfast - Magic Masala Upma	25.00	0.00	6	25.00	60	f	60
2762	Chocolates & Candies	Smith & Jones Masala Noodles	68.00	10.00	5	61.00	360	f	360
2763	Chocolates & Candies	Knorr Classic Tomato Soup With 100% Real Vegetabls, No Added Preservatives	55.00	0.00	6	55.00	53	f	53
2764	Chocolates & Candies	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
2765	Chocolates & Candies	Kellogg's Corn Flakes	425.00	9.00	1	383.00	1000	f	1
2766	Chocolates & Candies	Kelloggs Chocos	170.00	5.00	4	160.00	385	f	385
2767	Chocolates & Candies	Pedigree Puppy Dry Dog Food Food Chicken & Milk	290.00	20.00	6	232.00	1200	f	1200
2768	Chocolates & Candies	Ching's Secret Lemon Coriander Instant Soup	15.00	0.00	5	15.00	15	f	15
2769	Chocolates & Candies	Nestle Cerelac Baby Cereal With Milk Wheat-Rice Mixed Fruit	261.00	0.00	6	261.00	300	f	300
2770	Chocolates & Candies	Kelloggs Chocos - Moons & Stars	660.00	40.00	4	396.00	1200	f	1
2771	Chocolates & Candies	ITC Master Chef Chicken Galouti Kebab	170.00	4.00	2	162.00	210	f	210
2772	Chocolates & Candies	Yogabar 100% Pure Peanut Butter Creamy & Yummy Unsweetened	229.00	10.00	6	206.00	400	f	400
2773	Chocolates & Candies	Kitchens Of India Palak Paneer	130.00	30.00	6	91.00	285	f	285
2774	Chocolates & Candies	Kelloggs Chocos Fills Double Chocolat	99.00	11.00	6	88.00	175	f	175
2775	Chocolates & Candies	Soulfull Ragi Bites Choco Fills	169.00	5.00	4	160.00	250	f	250
2776	Chocolates & Candies	Figaro Sliced Black Olive 	179.00	0.00	6	179.00	450	f	450
2777	Chocolates & Candies	Veeba Barbeque Sauce	149.00	8.00	6	137.00	330	f	330
2778	Chocolates & Candies	The Whole Truth Vegan Mocha Almond Fudge Energy Bar No Sugar	60.00	20.00	6	48.00	40	f	40
2779	Chocolates & Candies	The Whole Truth - Nuts, Fruits & Seeds Muesli	325.00	20.00	6	260.00	350	f	350
2780	Chocolates & Candies	Pantai Green Curry Paste	150.00	14.00	5	128.00	114	f	114
2781	Chocolates & Candies	Kelloggs Special K	210.00	8.00	5	192.00	435	f	435
2782	Chocolates & Candies	Moi Soi Sichuan Chilli Oil- For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2783	Chocolates & Candies	Mother's Recipe Madras Appalam	50.00	10.00	6	45.00	100	f	100
2784	Chocolates & Candies	Top Ramen Masala Oat Masala	80.00	10.00	6	72.00	280	f	280
2785	Chocolates & Candies	Saffola Everyday Peppy Tomato Masala Oats	195.00	12.00	6	171.00	500	f	500
2786	Chocolates & Candies	Ching's Secret Instant Noodles, Hot Garlic	60.00	0.00	4	60.00	240	f	240
2787	Chocolates & Candies	Kitchens Of India Chicken Chettinad	200.00	30.00	1	140.00	285	f	285
2788	Chocolates & Candies	Nestle Cerelac Wheat - Stage 1	190.00	0.00	6	190.00	300	f	300
2789	Chocolates & Candies	Sumeru Aloo Paratha	119.00	5.00	6	113.00	400	f	400
2790	Chocolates & Candies	ITC Master Chef Veggie Pizza Pocket	170.00	4.00	4	162.00	340	f	340
2791	Chocolates & Candies	Wingreens Farms Tangy Cheese Pita Chips & Mexican Salsa Dip	60.00	15.00	1	51.00	70	f	70
2792	Chocolates & Candies	Ching's Secret Manchow Soup	55.00	0.00	3	55.00	55	f	55
2793	Chocolates & Candies	Veeba Carrot & Cucumber Sandwich Spread	85.00	10.00	6	76.00	250	f	250
2794	Chocolates & Candies	Kellogg's Real Almond & Honey Corn Flakes	370.00	12.00	3	324.00	650	f	650
2795	Chocolates & Candies	Kitchens Of India Mughlai Paneer	160.00	30.00	4	112.00	285	f	285
2796	Chocolates & Candies	Ching's Secret Just Soak - Veg Hakka Noodles	30.00	0.00	5	30.00	150	f	150
2797	Chocolates & Candies	Ching's Secret Chowmein Hakka Noodles Masala	60.00	10.00	2	54.00	100	f	100
2798	Chocolates & Candies	The Whole Truth Dark Chocolate Peanut Butter - Crunchy	235.00	20.00	5	188.00	325	f	325
2799	Chocolates & Candies	Mother's Recipe Bhel Puri Chutney	55.00	9.00	4	50.00	200	f	200
2800	Chocolates & Candies	Kelloggs Chocos Moon & Stars	330.00	10.00	6	294.00	680	f	680
2801	Chocolates & Candies	Mother's Recipe Lime Pickle 	120.00	5.00	1	114.00	400	f	400
2802	Chocolates & Candies	Kitchens of India Dal Makhani	110.00	30.00	2	77.00	285	f	285
2803	Chocolates & Candies	Pantai Light Soy Sauce	275.00	14.00	5	234.00	200	f	200
2804	Chocolates & Candies	Ching's Secret Sweet Corn Soup	55.00	0.00	6	55.00	55	f	55
2805	Chocolates & Candies	Top Ramen Noodles, Atta	80.00	0.00	1	80.00	280	f	280
2806	Chocolates & Candies	Cantina Tortilla Dip Sauce Sour Creamy Tex Mex	225.00	15.00	5	191.00	190	f	190
2807	Chocolates & Candies	Dabur Hommade - Rajasthan Ki Garlic Chutne	65.00	6.00	6	61.00	200	f	200
2808	Chocolates & Candies	MTR Seviyan Vermicelli 	42.00	0.00	2	42.00	400	f	400
2809	Chocolates & Candies	Pantai Oyster Sauce	275.00	14.00	4	234.00	200	f	200
2810	Chocolates & Candies	Go Cheese Spread - Four Pepper (Soft & Creamy)	99.00	5.00	6	94.00	200	f	200
2811	Chocolates & Candies	MTR Ready To Eat Paneer Butter Masala	135.00	9.00	2	122.00	300	f	300
2812	Chocolates & Candies	Nestle Lactogen Stage 2 Follow-up Formula Powder	340.00	0.00	2	340.00	400	f	400
2813	Chocolates & Candies	Kellogg's Crunchy Bites Chocos	190.00	10.00	6	171.00	375	f	375
2814	Chocolates & Candies	Veeba Hot Sweet Tomato Chilli Sauce	104.00	20.00	3	83.00	500	f	500
2815	Chocolates & Candies	Borges Durum Wheat Pasta Superior Quality	250.00	40.00	6	149.00	500	f	500
2816	Chocolates & Candies	Funfoods Peanut Butter Crunchy	169.00	7.00	1	156.00	400	f	400
2817	Chocolates & Candies	Pantai Red Curry Paste	60.00	0.00	4	60.00	50	f	50
2818	Chocolates & Candies	ITC Master Chef Chicken Seekh Kabab	325.00	0.00	6	325.00	500	f	500
2819	Chocolates & Candies	Del Monte Pizza & Pasta Sauce Spout Pack	99.00	0.00	3	99.00	400	f	400
2820	Chocolates & Candies	Pantai Sriracha Red Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2821	Chocolates & Candies	Hershey's Cocoa Spread	295.00	0.00	3	295.00	350	f	350
2822	Chocolates & Candies	Maggi Ghee Tadka Upma Express Pouch	25.00	0.00	6	25.00	65	f	65
2823	Chocolates & Candies	Ching's Secret Manchurian Noodles	91.00	0.00	5	91.00	360	f	360
2824	Chocolates & Candies	Kellogg's All Bran Wheat Flakes	220.00	6.00	5	205.00	425	f	425
2825	Chocolates & Candies	Yummiez Chicken Breakfast Sausages	150.00	0.00	3	150.00	250	f	250
2826	Chocolates & Candies	Pantai Red Curry Paste	150.00	14.00	3	128.00	114	f	114
2827	Chocolates & Candies	Bagrrys Muesli Crunchy Fruit & Nut With Cranberries	330.00	10.00	6	297.00	400	f	400
2828	Chocolates & Candies	Quaker Oats Pouch	276.00	10.00	6	248.00	1500	f	1
2829	Chocolates & Candies	Prasuma Momos -  Cheesy Spicy Veg	295.00	0.00	6	295.00	24	f	24
2830	Chocolates & Candies	Veeba Sriracha Chilli Garlic Sauce	149.00	8.00	5	137.00	320	f	320
2831	Chocolates & Candies	Ching's Secret Just Soak - Veg Hakka Noodles	115.00	0.00	6	115.00	600	f	600
2832	Chocolates & Candies	Moi Soi Kung Pao Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	5	140.00	175	f	175
2833	Chocolates & Candies	Figaro Plain Green Olive 	179.00	0.00	6	179.00	450	f	450
2834	Chocolates & Candies	Mother's Recipe Gujrati Gorkeri Pickle	140.00	10.00	3	126.00	500	f	500
2835	Chocolates & Candies	Kellogg's Muesli 20% Nuts Delight	320.00	0.00	6	320.00	500	f	500
2836	Chocolates & Candies	Borges Farfalle Durum Wheat Pasta 	250.00	0.00	5	250.00	500	f	500
2837	Chocolates & Candies	Kellogg's Chocos	299.00	10.00	4	269.00	700	f	700
2838	Chocolates & Candies	Nestle Nan Pro 4 Follow Up Formula Powder For Older Infants 	620.00	0.00	1	620.00	400	f	400
2839	Chocolates & Candies	Veeba Truly Tomato Ketchup	99.00	20.00	6	79.00	500	f	500
2840	Chocolates & Candies	Ching's Secret Green Chilli Sauce	85.00	4.00	1	81.00	680	f	680
2841	Chocolates & Candies	MTR Roasted Vermicelli 	55.00	0.00	1	55.00	400	f	400
2842	Chocolates & Candies	Mother's Recipe Punjabi Teekha Mang Pickle	120.00	10.00	4	108.00	400	f	400
2843	Chocolates & Candies	Ching's Secret Hot Garlic Instant Noodles	114.00	0.00	6	114.00	480	f	480
2844	Chocolates & Candies	Kellogg's Real Honey Corn Flakes	290.00	7.00	5	267.00	630	f	630
2845	Chocolates & Candies	ITC Master Chef Lebanese Falafel Kebab	130.00	4.00	4	124.00	230	f	230
2846	Chocolates & Candies	Kelloggs Chocos Fills Double Chocolaty	185.00	10.00	5	165.00	250	f	250
2847	Chocolates & Candies	Organic India Apple Cider Vinegar	595.00	9.00	2	536.00	500	f	500
2848	Chocolates & Candies	Masala Oats Masala & Coriander 	195.00	9.00	5	176.00	500	f	500
2849	Chocolates & Candies	Ching's Secret  Noodles - Pad Thai Lemongras	200.00	0.00	5	200.00	130	f	130
2850	Chocolates & Candies	Bagrrys Fruit and Nut Muesli with Cranberries	499.00	0.00	5	499.00	750	f	750
2851	Chocolates & Candies	Kitchens Of India Yellow Dal Tadka	110.00	30.00	6	77.00	285	f	285
2852	Chocolates & Candies	Soulfull Vanilla Fills - Ragi Bites	169.00	5.00	6	160.00	250	f	250
2853	Chocolates & Candies	Pantai Teriyaki Sauce with Garlic	325.00	15.00	6	276.00	200	f	200
2854	Chocolates & Candies	Whiskas Adult Pocket Tuna Cat Food	410.00	0.00	1	410.00	1200	f	1
2855	Chocolates & Candies	Kitchens Of India Chicken Darbari 	200.00	30.00	4	140.00	285	f	285
2856	Chocolates & Candies	Soulfull Millet Muesli Fruit & Nut Almonds & Real Fruits	299.00	10.00	6	269.00	400	f	400
2857	Chocolates & Candies	Smith & Jones Red Pasta Sauce Mix	40.00	0.00	6	40.00	46	f	46
2858	Chocolates & Candies	Kellogg's Muesli Nuts Delight	425.00	9.00	3	383.00	750	f	750
2859	Chocolates & Candies	Kitchens of India Dal Bukhara Gravy Mix	110.00	30.00	6	77.00	285	f	285
2860	Chocolates & Candies	The Whole Truth Peanut Butter - Sweetened & Crunchy	215.00	20.00	6	172.00	325	f	325
2861	Chocolates & Candies	Remia Mayonnaise	230.00	0.00	6	230.00	241	f	241
2862	Chocolates & Candies	Ching's Secret Green Chilli Sauce	105.00	0.00	6	105.00	425	f	425
2863	Chocolates & Candies	Bagrrys Fruit N Fibre Muesli - Strawberry	595.00	0.00	1	595.00	1000	f	1
2864	Chocolates & Candies	Ching's Secret Tomato Oats Instant Soup	15.00	0.00	3	15.00	20	f	20
2865	Chocolates & Candies	Kellogg's Special K Original Corn Flakes	140.00	5.00	1	133.00	290	f	290
2866	Chocolates & Candies	Moi Soi  Black Bean Sauce - Dip Spread Stir Fry & Marinade	280.00	50.00	5	140.00	175	f	175
2867	Chocolates & Candies	Tong Garden Wasabi Green Peas	175.00	4.00	6	167.00	150	f	150
2868	Chocolates & Candies	Ching's Secret Red Chilli Sauce	105.00	0.00	4	105.00	440	f	440
2869	Chocolates & Candies	Ching's Instant Hot and Sour Soup	55.00	0.00	5	55.00	55	f	55
2870	Chocolates & Candies	Ching's Secret Noodles - Pad Thai Original	200.00	0.00	6	200.00	130	f	130
2871	Chocolates & Candies	Aashirvaad Instant Meals - Khatta Meetha Pohaa With Millets	55.00	30.00	5	38.00	80	f	80
2872	Chocolates & Candies	Del Monte Black Sliced Olives	250.00	0.00	1	250.00	450	f	450
2873	Chocolates & Candies	Kitchens Of India Murgh Methi	220.00	30.00	5	154.00	285	f	285
2874	Chocolates & Candies	Nestle Cerelac 5 Grains & Fruits Cereal	288.00	0.00	6	288.00	300	f	300
2875	Chocolates & Candies	The Whole Truth - 5 Grain Muesli No Added Sugar	325.00	20.00	6	260.00	350	f	350
2876	Chocolates & Candies	Ching's Secret  Pad Thai Noodles Green Curry	200.00	0.00	6	200.00	130	f	130
2877	Chocolates & Candies	Aashirvaad Suji Halwa With Jaggery	75.00	0.00	6	75.00	70	f	70
2878	Chocolates & Candies	Mother's Recipe Mango Pickle 	120.00	0.00	1	120.00	400	f	400
2879	Chocolates & Candies	Ching's Secret Pad Thai Noodles - Extra Hot Thai Chilli	200.00	0.00	6	200.00	130	f	130
2880	Chocolates & Candies	Kellogg's Special K Original Corn Flakes	399.00	11.00	6	355.00	900	f	900
2881	Chocolates & Candies	Knorr Sweet Corn Chicken Soup	55.00	0.00	2	55.00	42	f	42
2882	Chocolates & Candies	Ching's Secret Tomato Soup	55.00	0.00	6	55.00	55	f	55
2883	Chocolates & Candies	Funfoods Peanut Butter Creamy	169.00	0.00	1	169.00	400	f	400
2884	Chocolates & Candies	Japanese Choice Udon Noodles	295.00	9.00	6	266.00	250	f	250
2885	Chocolates & Candies	Kelloggs Muesli - With 22% Fruit Magic	320.00	10.00	5	288.00	500	f	500
2886	Chocolates & Candies	Dabur Hommade - Kalonji Tamatar Ki Chutney	65.00	6.00	6	61.00	200	f	200
2887	Chocolates & Candies	Kitchens Of India Dal Makhani	110.00	30.00	1	77.00	285	f	285
2888	Chocolates & Candies	Aashirvaad Suji Halwa With Jaggery	55.00	30.00	6	38.00	80	f	80
2889	Chocolates & Candies	Del Monte Green Chili Sauce	55.00	0.00	3	55.00	190	f	190
2890	Chocolates & Candies	Pedigree Dog Food Adult Chicken & Veg	660.00	10.00	1	594.00	3000	f	3
2891	Chocolates & Candies	Kellogg's Original Corn Flakes	185.00	5.00	6	175.00	475	f	475
2892	Chocolates & Candies	Pedigree Puppy Dry Dog Food Food Chicken & Milk	690.00	6.00	2	648.00	3000	f	3
2893	Chocolates & Candies	Kitchens Of India Rajma Masala	110.00	30.00	5	77.00	285	f	285
2894	Chocolates & Candies	Kitchen Of India Ready-To-Eat Pindi Channa	110.00	30.00	2	77.00	285	f	285
2895	Chocolates & Candies	Figaro Pitted Black Olive 	179.00	0.00	6	179.00	450	f	450
2896	Chocolates & Candies	Cantina Tabasco Red Sauce	140.00	15.00	6	119.00	60	f	60
2897	Chocolates & Candies	Mother's Recipe Pickle - Mixed	149.00	26.00	6	109.00	500	f	500
2898	Chocolates & Candies	Nestle Cerelac Baby Cereal with Milk 5 Grains & Vegetables from 18 to 24 Month	279.00	0.00	5	279.00	300	f	300
2899	Chocolates & Candies	Mother's Recipe Tamarind Paste	50.00	2.00	2	49.00	200	f	200
2900	Chocolates & Candies	Pedigree Meat Jerky Adult Dog Treat Barbecued Chicken	140.00	20.00	6	112.00	80	f	80
2901	Chocolates & Candies	Veeba Peri Peri Sauce	161.00	0.00	6	161.00	300	f	300
2902	Chocolates & Candies	Pantai Sriracha Yellow Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2903	Chocolates & Candies	Praakritik Organic Jumbo Rolled Oats	190.00	11.00	6	169.00	500	f	500
2904	Chocolates & Candies	Ching's Secret Just Soak - Whole Wheat Veg Hakka Noodles	123.00	0.00	6	123.00	600	f	600
2905	Chocolates & Candies	Pantai Spring Roll Sauce	275.00	10.00	6	245.00	200	f	200
2906	Chocolates & Candies	MTR Vermicelli Payasam	75.00	0.00	6	75.00	180	f	180
2907	Chocolates & Candies	Bagrrys Corn Flakes	350.00	0.00	6	350.00	880	f	800
2908	Chocolates & Candies	MTR Ready To Eat Palak Paneer 	135.00	11.00	6	120.00	300	f	300
2909	Chocolates & Candies	Del Monte Red Chili Sauce	55.00	0.00	5	55.00	190	f	190
2910	Chocolates & Candies	Kitchens of India Mutter Paneer Mix	120.00	30.00	4	84.00	285	f	285
2911	Chocolates & Candies	Pantai Green Curry Paste	60.00	6.00	6	56.00	50	f	50
2912	Chocolates & Candies	The Laughing Cow Cheese Spread Plain	110.00	0.00	6	110.00	180	f	180
2913	Chocolates & Candies	MTR Dal Fry	110.00	0.00	5	110.00	300	f	300
2914	Chocolates & Candies	Pantai Fish Sauce	275.00	14.00	6	234.00	200	f	200
2915	Chocolates & Candies	Cantina Beans Mexican Beans	250.00	14.00	6	213.00	410	f	410
2916	Chocolates & Candies	Ching's Secret Manchurian Instant Noodle	114.00	0.00	6	114.00	480	f	480
2917	Chocolates & Candies	Remia Salad Italian Dressing 	230.00	0.00	6	230.00	250	f	250
2918	Chocolates & Candies	Yummiez Veg Cheese Fingers Pouch	230.00	0.00	4	230.00	400	f	400
2919	Chocolates & Candies	MTR Dal Makhani	110.00	0.00	4	110.00	300	f	300
2920	Chocolates & Candies	MTR Ready to Eat Pav Bhaji	110.00	0.00	6	110.00	300	f	300
2921	Chocolates & Candies	Weikfield Tomato Salsa Instant Pasta	25.00	0.00	1	25.00	77	f	77
2922	Chocolates & Candies	Nestlé CERELAC Baby Cereal with Milk	272.00	0.00	1	272.00	300	f	300
2923	Chocolates & Candies	Remia Salad Caesar Dressing	250.00	0.00	6	250.00	250	f	250
2924	Chocolates & Candies	Bagrrys Fruit N Fibre Muesli Mixed Fruit	330.00	0.00	6	330.00	500	f	500
2925	Chocolates & Candies	MTR Paneer Butter Masala & Veg Pulao	175.00	9.00	4	158.00	375	f	375
2926	Chocolates & Candies	Sundrop Cocoa Nut Hazelnut Chocolatey Spread	120.00	0.00	6	120.00	160	f	160
2927	Chocolates & Candies	Moi Soi Manchurian Sauce - For Stir Fry Marinade Spread & Dip	280.00	50.00	6	140.00	175	f	175
2928	Chocolates & Candies	Pedigree Dog Food Adult Meat & Rice	660.00	7.00	2	608.00	3000	f	3
2929	Chocolates & Candies	Pantai Sriracha Green Chilli Sauce	225.00	15.00	6	191.00	200	f	200
2930	Chocolates & Candies	Pantai Chilli Garlic Sauce	275.00	14.00	6	234.00	200	f	200
2931	Chocolates & Candies	Pantai Dark Soy Sauce	275.00	14.00	6	234.00	200	f	200
2932	Chocolates & Candies	Yoga Bar Peanut Butter Dark Chocolate Jar	249.00	0.00	4	249.00	400	f	400
2933	Chocolates & Candies	Cantina Tabasco Green Sauce	140.00	15.00	6	119.00	60	f	60
2934	Chocolates & Candies	Pantai Pad Thai Sauce (Non-Veg)	325.00	9.00	5	293.00	200	f	200
2935	Chocolates & Candies	Pantai Sweet Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2936	Chocolates & Candies	Ching's Secret Schezwan Instant Noodle	114.00	0.00	6	114.00	480	f	480
2937	Chocolates & Candies	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
2938	Chocolates & Candies	Pediasure Premium Chocolate Powdered Health Drink	610.00	0.00	2	610.00	400	f	400
2939	Chocolates & Candies	Chings Secret Hot Garlic Instant Noodles	91.00	0.00	6	91.00	60	f	60
2940	Chocolates & Candies	Godrej Yummiez Cheese Corn Nuggets 	230.00	0.00	4	230.00	400	f	400
2941	Chocolates & Candies	Pantai Hot Chilli Sauce	275.00	14.00	6	234.00	200	f	200
2942	Chocolates & Candies	Knorr International Mexican Tomato Corn Soup 	65.00	6.00	3	61.00	52	f	52
2943	Chocolates & Candies	Bagrry's Fruit Fibre Muesli Mixed Fruit 	595.00	0.00	5	595.00	1000	f	1
2944	Chocolates & Candies	MTR Roasted Vermicelli 	105.00	0.00	4	105.00	850	f	850
2945	Chocolates & Candies	Maggi 2-Minute Instant Noodles - Masala	44.00	0.00	0	44.00	280	t	280
2946	Chocolates & Candies	Kurkure Green Chutney, Rajasthani Style	20.00	0.00	0	20.00	90	t	90
2947	Chocolates & Candies	Kellogg's Chocos Combo Pack	60.00	6.00	0	56.00	156	t	156
2948	Chocolates & Candies	Kissan Mixed Fruit Jam 	155.00	0.00	0	155.00	500	t	500
2949	Chocolates & Candies	Lijjat Urad Papad	60.00	5.00	0	57.00	200	t	200
2950	Chocolates & Candies	Amul Cheese Spread Yummy Plain	85.00	0.00	0	85.00	200	t	200
2951	Chocolates & Candies	Mother's Recipe Ginger And Garlic Paste	50.00	24.00	0	38.00	200	t	200
2952	Chocolates & Candies	Maggi Magic Cubes Chicken	40.00	2.00	0	39.00	40	t	40
2953	Chocolates & Candies	Pedigree Puppy Chicken Chunks in Gravy 	35.00	2.00	0	34.00	70	t	70
2954	Chocolates & Candies	The Whole Truth Peanut Butter - Unsweetened & Crunchy	185.00	20.00	0	148.00	325	t	325
2955	Chocolates & Candies	Ching's Chow Mein Hakka Noodles Masala	10.00	0.00	0	10.00	20	t	20
2956	Chocolates & Candies	Safal Frozen Mixed Vegetables	60.00	5.00	0	57.00	500	t	500
2957	Chocolates & Candies	Safal Frozen Corn	41.00	4.00	0	39.00	200	t	200
2958	Chocolates & Candies	Amul Cheese Spread Spicy Garlic	85.00	3.00	0	82.00	200	t	200
2959	Chocolates & Candies	Ching's Secret Veg Hakka Noodles	107.00	0.00	0	107.00	600	t	600
2960	Chocolates & Candies	Saffola Oats 100 % Natural	15.00	0.00	0	15.00	38	t	38
2961	Chocolates & Candies	Lijjat Moong Papad	60.00	5.00	0	57.00	200	t	200
2962	Chocolates & Candies	Mothers Recipe Papad - Sabudana With Rock Salt	31.00	9.00	0	28.00	70	t	70
2963	Chocolates & Candies	Maggi Chilly Chow Cuppa Noodles	50.00	0.00	0	50.00	70	t	70
2964	Chocolates & Candies	Veeba Favourites Eggless Burger Mayonnaise	69.00	8.00	0	63.00	250	t	250
2965	Chocolates & Candies	Sunfeast Yippee! Magic Masala Noodles	48.00	6.00	0	45.00	240	t	240
2966	Chocolates & Candies	Top Ramen Masala	91.00	9.00	0	82.00	560	t	560
2967	Chocolates & Candies	Kelloggs Corn Flakes With Real Strawberry Pure	265.00	10.00	0	236.00	575	t	575
2968	Chocolates & Candies	Mother's Recipe Potato Papad	31.00	9.00	0	28.00	70	t	75
2969	Chocolates & Candies	Mothers Recipe Rice Papad Ajwain	24.00	0.00	0	24.00	75	t	75
2970	Chocolates & Candies	Chef's Basket Durum Wheat Penne Pasta	160.00	50.00	0	80.00	500	t	500
2971	Chocolates & Candies	Dabur Hommade - Imli Sauce Saunth	20.00	10.00	0	18.00	100	t	100
2972	Chocolates & Candies	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
2973	Chocolates & Candies	Sunfeast Pasta Treat Pack of Tomato Cheese	28.00	17.00	0	23.00	65	t	65
2974	Chocolates & Candies	Safal Frozen - Sweet Corn	160.00	5.00	0	152.00	1000	t	1
2975	Chocolates & Candies	MTR Vegetable Upma	25.00	0.00	0	25.00	60	t	60
2976	Chocolates & Candies	Del Monte Original Blend Tomato Ketchup Pouch	120.00	7.00	0	111.00	950	t	950
2977	Chocolates & Candies	Del Monte Natural Vinegar 	55.00	3.00	0	53.00	180	t	180
2978	Chocolates & Candies	Del Monte Eggless Mayo	135.00	6.00	0	126.00	500	t	500
2979	Chocolates & Candies	ITC Master Chef Cheesy Corn Triangles	160.00	5.00	0	152.00	320	t	320
2980	Chocolates & Candies	Mother's Recipe Mixed Pickle 	115.00	4.00	0	110.00	400	t	400
2981	Chocolates & Candies	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
2982	Chocolates & Candies	Hershey's Cocoa + Almond Spread	295.00	9.00	0	266.00	350	t	350
2983	Chocolates & Candies	Maggi Special Masala Spicy Yummy Noodles	72.00	0.00	0	72.00	280	t	280
2984	Chocolates & Candies	Del Monte Schezwan Sauce	55.00	0.00	0	55.00	190	t	190
2985	Chocolates & Candies	Yummiez Green Peas	135.00	0.00	0	135.00	500	t	500
2986	Chocolates & Candies	Yummiez Green Peas	250.00	0.00	0	250.00	1000	t	1
2987	Chocolates & Candies	Yummiez American Sweet Corn	85.00	0.00	0	85.00	400	t	400
2988	Chocolates & Candies	Dr Oetker Cucumber & Carrot Sandwich Spread Veg	79.00	0.00	0	79.00	250	t	250
2989	Chocolates & Candies	Del Monte Pitted Green Olives	250.00	0.00	0	250.00	450	t	450
2991	Meats, Fish & Eggs	Arden Eggs White	65.00	15.00	4	55.00	348	f	6
2992	Meats, Fish & Eggs	Arden Eggs Brown	85.00	7.00	4	79.00	348	f	6
2993	Meats, Fish & Eggs	Godrej Real Good Chicken Whole Pre-Cut	300.00	10.00	4	270.00	1000	f	1
2994	Meats, Fish & Eggs	Zorabian Chicken Breast Boneless	145.00	8.00	3	133.00	250	f	250
2995	Meats, Fish & Eggs	Godrej Real Good Chicken Curry Cut	175.00	9.00	3	158.00	500	f	500
2996	Meats, Fish & Eggs	TGFC Chicken Curry Cut Fresh	249.00	25.00	1	186.00	500	f	500
2997	Meats, Fish & Eggs	Arden Desi Eggs	110.00	13.00	4	95.00	348	f	6
2998	Meats, Fish & Eggs	Godrej Real Good Chicken Breast Boneless	275.00	9.00	6	248.00	450	f	450
2999	Meats, Fish & Eggs	Fresh Chicken Boneless Cubes (Halal)	215.00	5.00	1	204.00	500	f	500
3000	Meats, Fish & Eggs	Godrej Real Good Chicken Kheema	255.00	9.00	3	230.00	450	f	450
3001	Meats, Fish & Eggs	Suguna Sharp Egg 	72.00	13.00	3	62.00	348	f	6
3002	Meats, Fish & Eggs	TGFC Bombay Duck Whole Cleaned	319.00	14.00	1	274.00	500	f	500
3003	Meats, Fish & Eggs	Zorabian Pre Cut Chicken Skinless (Half)	165.00	0.00	1	165.00	500	f	500
3004	Meats, Fish & Eggs	Godrej Real Good Chicken Drumstick 	265.00	9.00	2	239.00	500	f	500
3005	Meats, Fish & Eggs	Suguna Active - DHA	72.00	13.00	4	62.00	348	f	6
3006	Meats, Fish & Eggs	Godrej Real Good Chicken Marinated Lollipop 	200.00	10.00	2	180.00	580	f	10
3007	Meats, Fish & Eggs	Godrej Yummiez Chicken Nuggets	325.00	9.00	1	293.00	500	f	500
3008	Meats, Fish & Eggs	Eastern Chicken Masala	70.00	7.00	3	65.00	100	f	100
3009	Meats, Fish & Eggs	Ching's Chicken Chilli Masala	10.00	0.00	6	10.00	20	f	20
3010	Meats, Fish & Eggs	Fresh Chicken Whole Leg - Skinless (Halal)	165.00	4.00	1	157.00	500	f	500
3011	Meats, Fish & Eggs	Ceres Foods Fish Mustard Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
3012	Meats, Fish & Eggs	TGFC Tilapia Curry Cut	259.00	43.00	1	147.00	500	f	500
3013	Meats, Fish & Eggs	Godrej Yummiez Chicken Lucknowi Seekh Kebab	260.00	10.00	4	234.00	400	f	400
3014	Meats, Fish & Eggs	Godrej Real Good Marinated Hot & Grill Chicken	245.00	9.00	2	221.00	450	f	450
3015	Meats, Fish & Eggs	Everest Meat Masala Powder	74.00	9.00	3	67.00	100	f	100
3016	Meats, Fish & Eggs	Suguna Heart- Omega3	72.00	13.00	4	62.00	348	f	6
3017	Meats, Fish & Eggs	Everest Powder - Egg Curry Masala	40.00	2.00	6	39.00	50	f	50
3018	Meats, Fish & Eggs	TGFC Chicken Boneless Fresh Whole	261.00	14.00	1	222.00	500	f	500
3019	Meats, Fish & Eggs	Zorabian Chicken Smoked Ham	205.00	5.00	1	194.00	250	f	250
3020	Meats, Fish & Eggs	Suguna Fit Egg	120.00	43.00	4	68.00	348	f	6
3021	Meats, Fish & Eggs	Everest Tandoori Chicken Masala	39.00	2.00	5	38.00	50	f	50
3022	Meats, Fish & Eggs	Godrej Yummiez Chilli Chicken Sausages 	160.00	10.00	3	144.00	250	f	250
3023	Meats, Fish & Eggs	Godrej Yummiez Chicken Punjabi Tikka 	295.00	9.00	6	266.00	360	f	360
3024	Meats, Fish & Eggs	Eastern Fish Masala	48.00	2.00	5	47.00	100	f	100
3025	Meats, Fish & Eggs	TGFC Catla Bengali Cut	290.00	29.00	1	204.00	500	f	500
3026	Meats, Fish & Eggs	Godrej Real Good Chicken Leg Boneless	275.00	9.00	3	248.00	450	f	450
3027	Meats, Fish & Eggs	TGFC Rohu Bengali Cut	249.00	28.00	1	179.00	500	f	500
3028	Meats, Fish & Eggs	Godrej Real Good Chicken Lollypop	175.00	9.00	1	158.00	580	f	10
3029	Meats, Fish & Eggs	Godrej Real Good Chicken Liver Sealed 	75.00	9.00	1	68.00	200	f	200
3030	Meats, Fish & Eggs	Everest Tandoori Chicken Masala	74.00	9.00	3	67.00	100	f	100
3031	Meats, Fish & Eggs	Fresh Mutton Mince - Kheema (Halal)	515.00	3.00	1	495.00	500	f	500
3032	Meats, Fish & Eggs	Fresh Mutton Curry Cut Cubes (Halal)	465.00	4.00	1	442.00	500	f	500
3033	Meats, Fish & Eggs	Ceres Foods Laal Maas Instant Liquid Masala	220.00	50.00	5	110.00	200	f	200
3034	Meats, Fish & Eggs	Godrej Real Good Chicken Legs 	210.00	10.00	1	189.00	116	f	2
3035	Meats, Fish & Eggs	Yummiez Chicken Breakfast Sausages	150.00	0.00	3	150.00	250	f	250
3036	Meats, Fish & Eggs	TGFC Basa Fillets	329.00	24.00	1	247.00	500	f	500
3037	Meats, Fish & Eggs	Zorabian Chicken Legs Skinless	210.00	0.00	1	210.00	450	f	450
3038	Meats, Fish & Eggs	Ceres Foods Nalli Nihari Instant Liquid Masala	220.00	50.00	6	110.00	200	f	200
3039	Meats, Fish & Eggs	Yummiez Chicken Garlic Fingers Pouch	250.00	0.00	5	250.00	400	f	400
3040	Meats, Fish & Eggs	Suhana Spice Mix - Chicken Biryani	66.00	0.00	6	66.00	50	f	50
3041	Meats, Fish & Eggs	Suguna Nourish Egg	62.00	0.00	0	62.00	696	t	12
3042	Meats, Fish & Eggs	Fresh Chicken Curry Cut - Skinless (Halal)	140.00	0.00	0	140.00	500	t	500
3043	Meats, Fish & Eggs	Zorabian Chicken Breast Boneless 	145.00	0.00	0	145.00	450	t	450
3044	Meats, Fish & Eggs	Zorabian Chicken Kheema Parathas	190.00	0.00	0	190.00	300	t	300
3045	Meats, Fish & Eggs	Fresh Chicken Mince - Kheema (Halal)	215.00	5.00	0	204.00	500	t	500
3046	Meats, Fish & Eggs	Godrej Real Good Chicken Boneless Cubes 	275.00	9.00	0	248.00	450	t	450
3047	Meats, Fish & Eggs	Suguna Vitamin D Egg	75.00	17.00	0	62.00	348	t	6
3048	Meats, Fish & Eggs	Suguna Nourish Egg 	72.00	16.00	0	60.00	348	t	6
3049	Meats, Fish & Eggs	Zorabian Chicken Mince	250.00	0.00	0	250.00	450	t	450
3050	Meats, Fish & Eggs	Zorabian Chicken Leg Boneless 	250.00	0.00	0	250.00	450	t	450
3051	Meats, Fish & Eggs	Godrej Yummiez Chicken Breakfast Salami	150.00	4.00	0	143.00	250	t	250
3052	Meats, Fish & Eggs	Zorabian Chicken Cubes	270.00	0.00	0	270.00	500	t	500
3053	Biscuits	Britannia Good Day Cashew Cookies	10.00	0.00	6	10.00	60	f	58
3054	Biscuits	Britannia 50-50 Maska Chaska Biscuits	32.00	3.00	6	31.00	120	f	120
3055	Biscuits	Dukes Waffy Chocolate Wafers	45.00	51.00	4	22.00	60	f	75
3056	Biscuits	Britannia Nutri Choice Digestive Biscuit	45.00	0.00	1	45.00	200	f	150
3057	Biscuits	Britannia Goodday Chocochip Cookies	120.00	17.00	5	99.00	400	f	400
3058	Biscuits	Britannia Good Day Pista Badam	45.00	2.00	1	44.00	200	f	200
3059	Biscuits	Cadbury Chocobakes Chocolate Filled Cookies 	30.00	0.00	5	30.00	75	f	75
3060	Biscuits	Dukes Waffy Strawberry Roll	150.00	50.00	3	75.00	250	f	250
3061	Biscuits	Parle Monaco Classic Salty Biscuits	70.00	0.00	4	70.00	400	f	400
3062	Biscuits	Dukes Waffy Orange Wafers	45.00	51.00	5	22.00	60	f	75
3063	Biscuits	Britannia Good Day Pista Badam	20.00	0.00	6	20.00	100	f	100
3064	Biscuits	Britannia Milk Bikis Biscuits Packet	20.00	0.00	3	20.00	200	f	200
3065	Biscuits	Britannia Toastea (Premium Bake Rusk)	65.00	0.00	6	65.00	400	f	400
3066	Biscuits	Dukes Waffy Strawberry Wafers	45.00	51.00	2	22.00	60	f	75
3067	Biscuits	Britannia Toastea Premium Bake Rusk	35.00	0.00	3	35.00	182	f	182
3068	Biscuits	Lotte Choco Pie 	80.00	10.00	3	72.00	168	f	168
3069	Biscuits	Bauli Moonfils Choco Veg Puff Roll	15.00	0.00	2	15.00	45	f	45
3070	Biscuits	Sunfeast Dark Fantasy Choco Fills Cookies Packet	150.00	15.00	3	127.00	300	f	300
3071	Biscuits	Britannia 50-50 Maska Chaska Biscuit	75.00	10.00	6	67.50	300	f	300
3072	Biscuits	Britannnia 50-50 Sweet & Salty Biscuit	25.00	0.00	4	25.00	200	f	200
3073	Biscuits	Britannia Good Day Chunky Cookies	50.00	15.00	6	42.50	120	f	120
3074	Biscuits	Sunfeast Marie Light	23.00	13.00	1	20.00	200	f	200
3075	Biscuits	Britannia Bourbon Biscuit Buy 4 Get 1 Free	80.00	10.00	2	72.00	500	f	500
3076	Biscuits	The Bake Shop Whole Wheat Oats Khari	65.00	6.00	5	61.00	200	f	200
3077	Biscuits	Britannia Nutri Choice Oats Milk Almond Biscuit	25.00	10.00	6	22.50	75	f	75
3078	Biscuits	Sunfeast Dark Fantasy Choco Creme	80.00	27.00	4	58.00	300	f	300
3079	Biscuits	Lotte Choco Pie Chocolate Cake	25.00	0.00	6	25.00	56	f	56
3080	Biscuits	Sunfeast Mom's Magic Cashew & Almond Cookies Packet	30.00	10.00	3	27.00	200	f	200
3081	Biscuits	Unibic SugarFree - Oatmeal Cookies	50.00	16.00	3	42.00	75	f	75
3082	Biscuits	Parle Hide & Seek Cookies With Added Almonds	30.00	3.00	1	29.00	100	f	100
3083	Biscuits	Unibic Fruit & Nut Cookies	25.00	8.00	3	23.00	67	f	67
3084	Biscuits	Sunfeast Yumfills Whoopie Pie	140.00	25.00	5	105.00	253	f	276
3085	Biscuits	Britannia Toastea Premium Bake Rusk	110.00	14.00	1	94.00	700	f	700
3086	Biscuits	McVitie's Marie biscuits with Goodness of Calcium	30.00	0.00	6	30.00	250	f	250
3087	Biscuits	Britannia Treat Croissant Vanilla Creme Roll	20.00	10.00	2	18.00	47	f	47
3088	Biscuits	Unibic Honey Oatmeal Cookies	25.00	8.00	6	23.00	75	f	75
3089	Biscuits	Britannia Good Day Choco Chip Cookies	30.00	3.00	6	29.00	100	f	100
3090	Biscuits	The Bake Shop Masala Cheese Crackers	95.00	6.00	3	89.00	100	f	100
3091	Biscuits	Britannia Pure Magic Vanilla Creme Biscuit	35.00	17.00	4	29.00	100	f	100
3092	Biscuits	Open Secret Assorted Story Box	105.00	22.00	4	81.00	75	f	75
3093	Biscuits	Cadbury Oreo Dipped Biscuit	70.00	10.00	1	63.00	150	f	150
3094	Biscuits	Sunfeast Farmlite Oats & Almonds Biscuits Packet	60.00	10.00	3	54.00	150	f	150
3095	Biscuits	Unibic SugarFree - Butter Cookies	50.00	16.00	6	42.00	75	f	75
3096	Biscuits	Britannia Good Day Cashew Cookies Packet	120.00	12.00	6	105.60	600	f	600
3097	Biscuits	Dukes Sour & Cream Onion Nibbles Baked	55.00	25.00	3	41.00	150	f	150
3098	Biscuits	Britannia Treat Croissant Vanilla Creme Roll	20.00	0.00	6	20.00	47	f	47
3099	Biscuits	Parle Hide & Seek Choco Rolls	50.00	2.00	4	49.00	120	f	120
3100	Biscuits	Britannia Treat Creme Wafers - Vanilla	45.00	11.00	6	40.00	60	f	1
3102	Biscuits	Lotte Choco Pie 	140.00	6.00	2	131.00	336	f	336
3103	Biscuits	Sunfeast Mom's Magic Cashew & Almond Biscuits	120.00	15.00	6	102.00	600	f	600
3104	Biscuits	Unibic Cashew Cookies	25.00	8.00	6	23.00	75	f	75
3105	Biscuits	Parle Monaco Jeffs Zeera Biscuit	60.00	10.00	4	54.00	200	f	200
3106	Biscuits	Unibic Snack Bar - Multigrain, Choco	40.00	17.00	6	33.00	30	f	30
3107	Biscuits	The Bake Shop Methi Khari Simply Delicious	65.00	6.00	2	61.00	200	f	200
3108	Biscuits	Britannia Treat Jimjam Family Pack (Buy 4 Get 1 Free)	100.00	0.00	6	100.00	500	f	500
3109	Biscuits	Open Secret Choco Almond Tiffin Pack	35.00	22.00	3	27.00	25	f	25
3110	Biscuits	Lotte Choco Pie 	150.00	20.00	6	120.00	696	f	12
3111	Biscuits	Baker Street Suji Rusk Large Pack	30.00	10.00	6	27.00	200	f	200
3112	Biscuits	Parle Hide & Seek Choco Rolls	30.00	0.00	1	30.00	75	f	75
3113	Biscuits	Sunfeast Dark Fantasy Vanilla Creme	80.00	15.00	6	68.00	300	f	300
3114	Biscuits	Britannia Treat Burst Choco Creme Fills	30.00	0.00	3	30.00	120	f	120
3115	Biscuits	Parle Milano Mixed Berries Cookies	35.00	2.00	3	34.00	75	f	75
3116	Biscuits	Karachi Bakery Cashew Biscuits 	210.00	5.00	4	199.00	400	f	400
3117	Biscuits	Britannia Pure Magic Choco Lush Cookies	120.00	20.00	4	96.00	300	f	300
3118	Biscuits	Britannia Treart Creme Wafers Chocolate	45.00	11.00	6	40.00	60	f	1
3119	Biscuits	Unibic Daily Digestive (Multigrain Cookies)	30.00	6.00	6	28.00	75	f	75
3120	Biscuits	Cadbury Chocobakes Choc Filled Cookies	60.00	0.00	6	60.00	150	f	150
3121	Biscuits	The Bake Shop Whole Wheat Multigrain Toast (Rusk)	60.00	6.00	2	56.00	200	f	200
3122	Biscuits	Unibic Choco Kiss Cookies	45.00	15.00	5	38.00	75	f	75
3123	Biscuits	Britannia Treat Creme Wafers - Orange	45.00	11.00	6	40.00	60	f	60
3124	Biscuits	Bauli Moonfills Pack of 4	60.00	10.00	6	54.00	180	f	190
3125	Biscuits	Unibic Oatmeal Digestive Cookies 	50.00	6.00	6	47.00	150	f	150
3126	Biscuits	Orion Choco Pie - Chocolate Coated Soft Biscuit	150.00	25.00	2	112.00	336	f	336
3127	Biscuits	Britannia Good Day Cashew Cookies Pack Of 6	120.00	10.00	6	108.00	120	f	120
3128	Biscuits	Parle Fab Bourbon	30.00	0.00	3	30.00	150	f	150
3129	Biscuits	Open Secret White Choco Tiffin Pack	35.00	22.00	1	27.00	25	f	25
3130	Biscuits	The Bake Shop Whole Wheat Bread Sticks	60.00	6.00	1	56.00	100	f	100
3131	Biscuits	Unibic Assorted Cookies 	149.00	8.00	6	137.00	450	f	450
3132	Biscuits	The Bake Shop Milk & Raisin Toast (Rusk)	60.00	6.00	4	56.00	200	f	200
3133	Biscuits	Lotte Choco Pie Cocoa Pie	90.00	10.00	6	81.00	168	f	168
3134	Biscuits	Bauli Moonfils Veg - Strawberry	15.00	0.00	5	15.00	45	f	47
3135	Biscuits	The Bake Shop Masala Lavash	75.00	6.00	6	70.00	100	f	200
3136	Biscuits	Britannia Good Day Nut Cookies	30.00	0.00	6	30.00	120	f	120
3137	Biscuits	Sunfeast Mom's Magic Rich Butter Cookies	30.00	10.00	6	27.00	200	f	200
3138	Biscuits	The Bake Shop Whole Wheat Toast (Rusk) 	60.00	6.00	4	56.00	200	f	200
3139	Biscuits	Open Secret Peanut Butter Story Box	105.00	22.00	6	81.00	75	f	75
3140	Biscuits	Open Secret White Choco Story Box	105.00	22.00	6	81.00	75	f	75
3141	Biscuits	The Bake Shop Whole Wheat Multigrain Lavash	75.00	6.00	3	70.00	100	f	200
3142	Biscuits	McVitie's Oat Cookies	45.00	0.00	2	45.00	120	f	120
3143	Biscuits	Britannia Tiger Krunch Biscuits	120.00	0.00	4	120.00	400	f	400
3144	Biscuits	McVitie's Butter Cookies	30.00	10.00	6	27.00	200	f	200
3145	Biscuits	Bauli Moonfils Strawberry	15.00	0.00	5	15.00	45	f	45
3146	Biscuits	Britannia Good Day Butter Cookies	80.00	10.00	6	72.00	600	f	600
3147	Biscuits	Parle Hide & Seek Choco Rolls	60.00	0.00	1	60.00	120	f	120
3148	Biscuits	The Bake Shop Jeera Ajwain Bread Sticks	60.00	6.00	6	56.00	100	f	100
3149	Biscuits	Parle Fab!o Vanilla Creme Sandwich Biscuit	30.00	3.00	6	29.00	120	f	120
3150	Biscuits	Sunfeast Farmlite Nuts Digestive	70.00	11.00	6	62.00	250	f	250
3151	Biscuits	Britannia Pure Magic - Chocolush	35.00	2.00	6	34.00	100	f	100
3152	Biscuits	The Bake Shop Maska & Multigrain Cheese Crackers	130.00	10.00	3	116.00	100	f	150
3153	Biscuits	Britannia Nutri Choice Ragi Cookies	70.00	10.00	6	63.00	150	f	150
3154	Biscuits	Sunfeast Farmlite 5 Seed Digestive	60.00	0.00	2	60.00	250	f	250
3155	Biscuits	Dukes Nibbles - Ranch Crackers	50.00	0.00	6	50.00	150	f	150
3156	Biscuits	Danish Butter Cookies	350.00	0.00	1	350.00	400	f	400
3157	Biscuits	The Bake Shop Sesame Seed Crackers	130.00	10.00	4	116.00	100	f	150
3158	Biscuits	Good Day Butter Cookies	10.00	0.00	0	10.00	75	t	75
3159	Biscuits	Britannia Marie Gold Biscuits Packet	30.00	0.00	0	30.00	250	t	250
3160	Biscuits	Britannia Good Day Cashew Cookies	20.00	0.00	0	20.00	100	t	100
3161	Biscuits	Sunfeast Dark Fantasy Choco Fills	35.00	8.00	0	32.00	75	t	75
3162	Biscuits	Britannia Nutri Choice Digestive Biscuits Packet	25.00	0.00	0	25.00	100	t	100
3163	Biscuits	Britannia Classic Little Hearts 	25.00	0.00	0	25.00	75	t	75
3164	Biscuits	Britannia Good Day Cashew Cookies Packet	40.00	5.00	0	38.00	200	t	200
3165	Biscuits	Britannia Nice Time Biscuit	25.00	0.00	0	25.00	150	t	150
3166	Biscuits	Britannia Milk Bikis Cream Biscuit	45.00	0.00	0	45.00	200	t	200
3167	Biscuits	Britannia Bourbon Chocolate Cream Biscuits	35.00	2.00	0	34.00	150	t	150
3168	Biscuits	Dukes Waffy Chocolate Wafer Rolls 	150.00	50.00	0	75.00	250	t	250
3169	Biscuits	Britannia Milk Bikis Milky Sandwich	25.00	0.00	0	25.00	120	t	120
3170	Biscuits	Britannia Marie Gold Biscuit	28.00	0.00	0	28.00	200	t	200
3171	Biscuits	Britannia Marie Gold (Buy 4 Get 1 Free)	80.00	0.00	0	80.00	600	t	600
3172	Biscuits	Britannia 50-50 Maska Chaska Biscuit	10.00	0.00	0	10.00	46	t	45
3173	Biscuits	Unibic Choco Nut Cookies	25.00	8.00	0	23.00	75	t	75
3174	Biscuits	Britannia Vita Marie Gold Biscuit	45.00	0.00	0	45.00	300	t	300
3175	Biscuits	The Bake Shop Maska Khari	65.00	6.00	0	61.00	200	t	100
3176	Biscuits	Parle Fab! Jam-In Cream Filled 	35.00	2.00	0	34.00	150	t	150
3177	Biscuits	Sunfeast Nice Biscuit	25.00	12.00	0	22.00	150	t	150
3178	Biscuits	Britannia Nutrichoice 5 Grain Digestive Biscuits	75.00	0.00	0	75.00	200	t	200
3179	Biscuits	Cadbury Oreo Strawberry Bicuits	30.00	3.00	0	29.00	120	t	120
3180	Biscuits	Sunfeast Mom's Magic Cashew & Almond Biscuit	10.00	0.00	0	10.00	60	t	60
3181	Biscuits	Britannia Roll Yo! Strawberry Swiss Roll	10.00	0.00	0	10.00	28	t	28
3182	Biscuits	Bauli Moonfils Choco Cream (With Egg)	15.00	0.00	0	15.00	45	t	45
3183	Biscuits	Britannia Nutri Choice Oats Choco Almond Biscuit	25.00	10.00	0	22.50	100	t	75
3184	Biscuits	Britannia Nutri Choice Cracker Sugar Free Biscuit	35.00	0.00	0	35.00	300	t	300
3185	Biscuits	Cadbury Oreo Chocolatey Sandwich Biscuits Family Pack	80.00	0.00	0	80.00	300	t	300
3186	Biscuits	Bauli Moonfils Orange Puff Roll	15.00	0.00	0	15.00	45	t	45
3187	Biscuits	Britannia Treat Jimjam Cream Biscuits 	25.00	0.00	0	25.00	100	t	100
3188	Biscuits	Britannia Toastea Premium Bake Rusk	50.00	6.00	0	47.00	300	t	300
3189	Biscuits	The Bake Shop Jeera Khari	65.00	0.00	0	65.00	200	t	200
3190	Biscuits	Cadbury Oreo Creme Biscuit - Vanilla, Original 120 g	30.00	3.00	0	29.00	120	t	120
3191	Biscuits	Britannia Good Day Cashew Cookies	230.00	25.00	0	172.00	1000	t	1
3192	Biscuits	Bauli Moonfils - Vanilla	15.00	0.00	0	15.00	45	t	45
3193	Biscuits	Britannia Roll Yo! Choco Swiss Roll (With Egg)	10.00	0.00	0	10.00	28	t	28
3194	Biscuits	Britannia Milk Bikis Cream Biscuit	70.00	0.00	0	70.00	500	t	500
3195	Biscuits	Open Secret Choco Almond Story Box	105.00	22.00	0	81.00	75	t	75
3196	Biscuits	Parle Monaco Sixer Salted Biscuits 	60.00	10.00	0	54.00	200	t	200
3197	Biscuits	Sunfeast Dark Fantasy Bourbon Bliss	35.00	17.00	0	29.00	150	t	150
3198	Biscuits	Patanjali Atta Doodh Rusk	40.00	0.00	0	40.00	300	t	300
3199	Biscuits	Sunfeast Dark Fantasy Bourbon Bliss	35.00	0.00	0	35.00	150	t	150
3200	Personal Care	Clove Sensitive Toothpaste with Anti-Sensitivity & Fluoride Formulation	160.00	35.00	3	104.00	80	f	80
3201	Personal Care	Dettol Original Germ Protection Alcohol Based Hand Sanitizer	25.00	0.00	6	25.00	50	f	50
3202	Personal Care	Colgate Visible White Toothpaste	115.00	10.00	6	103.00	100	f	100
3203	Personal Care	Dettol SKincare Handwash Value Refill	109.00	3.00	6	105.00	750	f	750
3204	Personal Care	Savlon Herbal Sensitive Liquid Handwash Refill Pouch	115.00	4.00	6	110.00	750	f	500
3205	Personal Care	Colgate Total 12 Whole Mouth Protection Toothpaste	120.00	10.00	6	108.00	120	f	120
3206	Personal Care	Lux International Creamy White Soap Bar	35.00	2.00	6	34.00	75	f	75
3207	Personal Care	Colgate Herbal Toothpaste	114.00	18.00	2	93.00	200	f	200
3208	Personal Care	Nivea Men Deodorant Fresh Active 48h Long lasting Freshness	225.00	24.00	6	169.00	150	f	150
3209	Personal Care	Dabur Meswak Toothpaste	58.00	5.00	6	55.00	100	f	100
3210	Personal Care	Colgate Max Fresh Cooling Crystals Toothpaste	101.00	5.00	2	95.00	150	f	150
3211	Personal Care	Indulekha Bhringa Hair Oil	432.00	15.00	6	367.00	100	f	100
3212	Personal Care	Colgate Sensitive Soft Bristles Toothbrush	50.00	0.00	6	50.00	58	f	1
3213	Personal Care	Pears Pure & Gentle Glycerin Bath Soap	75.00	0.00	6	75.00	125	f	125
3214	Personal Care	Vaseline Skin Protecting Jelly	79.00	13.00	6	68.00	50	f	50
3215	Personal Care	Dettol Original Germ Protection Bathing Soap Bar	166.00	5.00	4	157.00	375	f	375
3216	Personal Care	Dettol Intense Cool Soap (B4G1)	260.00	5.00	6	247.00	625	f	625
3217	Personal Care	Livon Anti-Frizz Serum	250.00	10.00	3	225.00	100	f	100
3218	Personal Care	Lifebuoy Germ Protection Care Soap Bar	30.00	3.00	3	29.00	100	f	125
3219	Personal Care	Lux International Creamy White Soap Bar	70.00	10.00	6	63.00	125	f	125
3220	Personal Care	Godrej Nupur – 100% Pure Henna (Mehendi)	10.00	0.00	6	10.00	18	f	18
3221	Personal Care	Glow & Lovely Advanced Multivitamin Face Cream	213.00	10.00	6	190.00	110	f	110
3222	Personal Care	Set Wet Style Vertical Hold Hair Gel	50.00	10.00	4	45.00	50	f	50
3223	Personal Care	Godrej Expert Rich Crème, Natural Black	30.00	0.00	6	30.00	20	f	20
3224	Personal Care	Nycil Germ Expert Cool Herbal Talc	130.00	8.00	1	119.00	150	f	200
3225	Personal Care	Godrej Expert Creme Hair Natural Brown Colour 	30.00	0.00	6	30.00	20	f	20
3226	Personal Care	Veet Sensitive Skin Hair Removal Cream	135.00	5.00	6	128.00	50	f	50
3227	Personal Care	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	50.00	2.00	1	49.00	80	f	80
3228	Personal Care	Pears Pure And Gentle Value Pack Of 3 Bathing Soap	199.00	6.00	5	186.00	375	f	375
3229	Personal Care	Gillette Presto Ready Shaver 5 Cartridges 	88.00	6.00	6	82.00	290	f	5
3230	Personal Care	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	160.00	10.00	4	144.00	300	f	300
3231	Personal Care	Godrej Expert Rich Crème, Dark Brown	30.00	0.00	4	30.00	20	f	20
3232	Personal Care	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil 	185.00	15.00	3	157.00	100	f	100
3233	Personal Care	Fiama Gel Bar Celebration Pack Buy 4 Get 1 Free	290.00	10.00	6	261.00	625	f	625
3235	Personal Care	Dove Hair Fall Rescue Shampoo	150.00	6.00	5	141.00	180	f	180
3236	Personal Care	Gillette Mach 3 Mens Razor Blades	499.00	7.00	4	460.00	232	f	4
3237	Personal Care	Palmolive Aroma Absolute Relax Shower Gel	199.00	20.00	2	159.00	250	f	250
3238	Personal Care	Godrej Protekt Germ Fighter Handwash	99.00	0.00	6	99.00	750	f	750
3239	Personal Care	Dettol Hand Sanitizer	100.00	5.00	6	95.00	200	f	200
3240	Personal Care	Dabur Amla Hair Oil	88.00	0.00	2	88.00	180	f	180
3241	Personal Care	Dettol Original Liquid Handwash	89.00	4.00	6	85.00	200	f	200
3242	Personal Care	L'Oreal Paris Total Repair 5 Conditioner	199.00	0.00	6	199.00	192	f	180
3243	Personal Care	Patanjali Saundarya Aloe Vera Gel	90.00	0.00	5	90.00	150	f	150
3244	Personal Care	Head & Shoulders 2 In 1 Anti Dandruff Shampoo Conditioner 	195.00	10.00	4	174.00	180	f	180
3245	Personal Care	Clean & Clear Pimple Clearing Face Wash	130.00	10.00	2	117.00	80	f	80
3246	Personal Care	Himalaya Anti Dandruff Shampoo	140.00	8.00	2	128.00	200	f	200
3247	Personal Care	Stayfree Secure Dry Cover Regular Sanitary Pad With Wings	30.00	3.00	6	29.00	406	f	7
3248	Personal Care	Savlon Moisture Shield Hand Wash	99.00	4.00	6	95.00	750	f	750
3249	Personal Care	Dove Intense Repair Conditioner	190.00	14.00	6	162.00	175	f	80
3250	Personal Care	Dabur Gulabari Rose Glow Face Cleanse	75.00	5.00	4	71.00	100	f	100
3251	Personal Care	Parachute Jasmine Hair Oil	82.00	9.00	6	74.00	190	f	190
3252	Personal Care	Johnson's Baby Skincare Wipes	79.00	6.00	6	74.00	1160	f	20
3253	Personal Care	Dettol Skincare Liquid Hand Wash	79.00	0.00	6	79.00	200	f	200
3254	Personal Care	Old Spice Original Lather Shaving Cream	75.00	9.00	6	68.00	70	f	70
3255	Personal Care	Veet Hair Removal Cream Dry Skin	135.00	5.00	5	128.00	50	f	50
3256	Personal Care	L'Oreal Paris Total Repair 5 Shampoo	265.00	0.00	2	265.00	396	f	360
3257	Personal Care	Fiama Menthol & Magnolia Cooling Gel Bar Soap	160.00	11.00	6	141.00	375	f	375
3258	Personal Care	Nivea Lip Balm Original Care for 24h Moisture with Shea Butter & Natural Oils	140.00	15.00	6	119.00	5	f	4
3259	Personal Care	Oral-B Charcoal Deep Clean Stain Removal Toothbrush Soft	99.00	0.00	3	99.00	232	f	4
3260	Personal Care	Neutrogena Ultra Sheer Dry Touch SPF 50+ Sunblock Sunscreen Lotion	250.00	10.00	3	225.00	30	f	30
3261	Personal Care	Clinic Plus Strong & Long Health Shampoo	499.00	10.00	3	449.00	650	f	650
3262	Personal Care	Johnson's Baby No More Tears Baby Shampoo	98.00	0.00	5	98.00	100	f	100
3263	Personal Care	Colgate Zig Zag Toothbrush	120.00	0.00	3	120.00	348	f	6
3264	Personal Care	Savlon Moisture Shield Germ Protection Handwash Refill (Buy 1 Get 1 Free)	189.00	0.00	6	189.00	1500	f	1500
3265	Personal Care	Colgate Sensitive Everyday Protection Anticavity Toothpaste	75.00	0.00	6	75.00	40	f	40
3266	Personal Care	Whisper Ultra Soft XL+ Sanitary Pads	330.00	2.00	6	323.00	30	f	30
3267	Personal Care	Garnier Colour Naturals Hair Colour - 1 Natural Black	80.00	0.00	1	80.00	60	f	60
3268	Personal Care	Axe Pulse Men's Deodorant	210.00	0.00	6	210.00	150	f	150
3269	Personal Care	Colgate Zigzag Charcoal Soft Bristle Toothbrush - 4 Pcs	99.00	0.00	6	99.00	232	f	4
3270	Personal Care	Whisper Ultra Clean Wings XL+  Pouch	449.00	7.00	6	415.00	44	f	44
3271	Personal Care	Whisper Choice Regular Sanitary Pads	90.00	0.00	6	90.00	1160	f	20
3272	Personal Care	Axe Dark Temptation Men's Deodorant	210.00	7.00	5	194.00	150	f	150
3273	Personal Care	Head & Shoulders Anti-Dandruff Smooth & Silky Shampoo	150.00	0.00	4	150.00	180	f	180
3274	Personal Care	Clinic Plus Strength & Shine Shampoo With Egg Protein 	105.00	0.00	2	105.00	175	f	175
3275	Personal Care	Engage M1 Perfume Spray for Men 	210.00	7.00	6	194.00	120	f	120
3276	Personal Care	Tresemme Keratin Smooth Conditioner	380.00	0.00	3	380.00	340	f	340
3277	Personal Care	Garnier Color Naturals Crème Hair Color, Shade 5 Light Brown	180.00	0.00	1	180.00	100	f	100
3278	Personal Care	Origami Aloe Vera Wipes	75.00	13.00	4	65.00	25	f	25
3279	Personal Care	Engage Drizzle Deodorant For Women, Floral And Lavender, Skin Friendly	195.00	10.00	6	174.00	150	f	150
3280	Personal Care	Gellette Presto Ready Shaver	20.00	0.00	1	20.00	58	f	1
3281	Personal Care	Colgate Max Fresh Plax Mouthwash - Fresh Mint	150.00	20.00	5	120.00	250	f	250
3282	Personal Care	Colgate Zig Zag Charcoal Medium Toothbrush 4 Pcs	99.00	0.00	6	99.00	232	f	4
3283	Personal Care	Godrej Protekt	99.00	0.00	3	99.00	750	f	750
3284	Personal Care	Colgate Total Charcoal Anticavity Toothpaste	110.00	10.00	3	99.00	120	f	120
3285	Personal Care	Colgate Kids 0-2 Extra Soft Tooth Brush	30.00	16.00	6	25.00	58	f	1
3286	Personal Care	Gillete Mach3 	260.00	10.00	6	234.00	116	f	2
3287	Personal Care	Maybelline New York Colossal Kajal Black	149.00	0.00	2	149.00	0	f	0
3288	Personal Care	Godrej Cinthol Lime Talc	55.00	0.00	3	55.00	100	f	100
3289	Personal Care	Hamam Soap Bar Neem Tulsi and Aloe Vera	58.00	0.00	6	58.00	150	f	150
3290	Personal Care	Godrej Expert Rich Crème, Burgundy	33.00	0.00	6	33.00	20	f	20
3291	Personal Care	Colgate Gentle Sensitive+ Toothbrush Pack Of 4	120.00	10.00	4	108.00	232	f	4
3292	Personal Care	Nivea Creme All Season Multi-Purpose Cream 	175.00	10.00	4	157.00	100	f	100
3293	Personal Care	Oral-B Charcoal Deep Clean Stain Removal Toothbrush Medium	99.00	0.00	1	99.00	232	f	4
3294	Personal Care	Mamaearth 100% Natural Berry Blast Kids Toothpaste	149.00	10.00	4	134.00	50	f	50
3295	Personal Care	HImalaya Gentle Baby Wipes	200.00	10.00	3	180.00	72	f	72
3296	Personal Care	Stayfree Dry Max All Night XL Dry Cover Sanitary Pads	340.00	12.00	6	298.00	28	f	28
3297	Personal Care	L'Oreal Paris Excellence Creme Hair Color, 1 Black	620.00	0.00	1	620.00	172	f	172
3298	Personal Care	Fem Fairness Naturals Saffron Skin Bleach	85.00	15.00	4	72.00	64	f	64
3299	Personal Care	Engage Woman Blush Body Deo Spray	195.00	10.00	5	174.00	150	f	150
3300	Personal Care	Dove Pink Rosa Beauty Bathinhg Bar	60.00	0.00	6	60.00	100	f	100
3301	Personal Care	Sebamed Cleansing Bar	99.00	10.00	4	89.00	100	f	100
3302	Personal Care	Pampers Premium Care Pants - Large	1099.00	18.00	2	899.00	44	f	44
3303	Personal Care	Nivea Women Deodorant Fresh Natural Long Lasting Freshness & 48h Protection	199.00	20.00	2	159.00	150	f	150
3304	Personal Care	L'Oreal Paris Excellence Creme Hair Color, 3 Dark Brown/Natural Darkest Brown	620.00	0.00	6	620.00	172	f	172
3305	Personal Care	Patanjali Kesh Kanti Natural Hair Cleanser	75.00	9.00	4	68.00	200	f	200
3306	Personal Care	Godrej No.1 Bathing Soap – Lime & Aloe Vera	149.00	0.00	6	149.00	600	f	600
3307	Personal Care	Pantene Advanced Control Hair Fall Solution Shampoo	120.00	6.00	5	112.00	180	f	180
3308	Personal Care	Veet Full Body Waxing Kit For Dry Skin	235.00	7.00	6	218.00	1160	f	20
3309	Personal Care	Johnson's Baby Skincare Wipes	245.00	9.00	6	221.00	72	f	72
3310	Personal Care	Gillette Lemon Lime Shaving Foam	199.00	11.00	4	177.00	196	f	196
3311	Personal Care	Old Spice After Shave Lotion Musk	215.00	6.00	3	200.00	100	f	100
3312	Personal Care	Whisper Ultra Soft Air Fresh Sanitary Pads (XL) with Wings	315.00	0.00	4	315.00	30	f	30
3313	Personal Care	Himalaya Baby Powder	80.00	8.00	4	73.00	100	f	100
3314	Personal Care	Fiama Men's Refreshing Pulse Shower Gel	225.00	20.00	4	180.00	250	f	250
3315	Personal Care	Whisper Ultra Clean XL Plus Sanitary Pad	175.00	0.00	5	175.00	870	f	15
3316	Personal Care	Johnson's Baby Powder	143.00	0.00	6	143.00	200	f	200
3317	Personal Care	Dove Cream Beauty Bathing Bar	235.00	9.00	6	212.00	125	f	125
3318	Personal Care	Patanjali Kesh Kanti Shikakai Hair Cleanser	95.00	0.00	4	95.00	200	f	200
3319	Personal Care	L'Oreal Paris Color Protect Conditioner	199.00	0.00	3	199.00	192	f	192
3320	Personal Care	Nivea Men Active Clean with Active Charcoal Shower Gel for Body Face & Hair	199.00	4.00	5	191.00	250	f	250
3321	Personal Care	L'Oreal 6 Oil Nourish Conditioner	135.00	0.00	1	135.00	192	f	192
3322	Personal Care	Godrej Easy Natural Black Hair Colour	25.00	0.00	5	25.00	20	f	20
3323	Personal Care	Dabur Gulabari Rose Water Daily Glow	80.00	6.00	2	75.00	250	f	250
3324	Personal Care	Himalaya Purifying Neem Face Wash	170.00	10.00	6	153.00	150	f	150
3325	Personal Care	Fem Fairness Naturals Gold Skin Bleach	65.00	9.00	3	59.00	24	f	24
3326	Personal Care	Whisper Choice Ultra XL Sanitary Pad	133.00	2.00	5	130.00	1160	f	20
3327	Personal Care	Dove Dandruff Care Shampoo	158.00	6.00	5	147.00	180	f	180
3328	Personal Care	Head & Shoulders Anti Dandruff Anti Hairfall Shampoo	285.00	0.00	5	285.00	340	f	240
3329	Personal Care	L'Oreal Casting Creme Ebony Black Hair Color	550.00	0.00	6	550.00	159	f	87
3330	Personal Care	Mamaearth Onion Hair Oil	399.00	10.00	6	359.00	150	f	150
3331	Personal Care	L'Oreal Paris Casting Creme Gloss Hair Color (Dark Brown 400)	550.00	0.00	4	550.00	159	f	159
3332	Personal Care	Palmolive Naturals Sea Minerals Liquid Hand Wash	99.00	10.00	6	89.00	250	f	250
3333	Personal Care	Oral-B Extra Soft Bristles Sensitive 	98.00	0.00	4	98.00	232	f	4
3334	Personal Care	Engage M3 Perfume Spray for Men	200.00	10.00	3	180.00	120	f	120
3335	Personal Care	Mamaearth Deeply Nourishing wash for Babies	199.00	0.00	4	199.00	200	f	200
3336	Personal Care	Dettol Original Soap (B4G1)	260.00	5.00	6	247.00	625	f	625
3337	Personal Care	Woodward's Gripe Water	75.00	0.00	6	75.00	200	f	200
3338	Personal Care	MamyPoko Pants Extra Absorb Diapers, New Born	299.00	6.00	5	279.00	28	f	28
3339	Personal Care	Johnson's Baby Soap	70.00	0.00	6	70.00	100	f	100
3340	Personal Care	Engage M4 Perfume Spray For Men	200.00	10.00	6	180.00	120	f	120
3341	Personal Care	Fem Fairness Naturals Hair Removal Cream Fair & Soft - Gold	65.00	10.00	4	58.00	40	f	40
3342	Personal Care	Dove Hair Fall Rescue Conditioner	190.00	0.00	4	190.00	175	f	175
3343	Personal Care	Himalaya Anti Hair Fall Shampoo	130.00	12.00	2	114.00	200	f	200
3344	Personal Care	Fiama Peach & Avocado Gel Bar	176.00	10.00	3	158.00	375	f	375
3345	Personal Care	Pears Pure & Gentle Value Pack Of 4 Bathing Soap 	125.00	0.00	6	125.00	75	f	75
3346	Personal Care	Fiama Fresh Hand Wash	150.00	6.00	3	140.00	400	f	400
3347	Personal Care	Palmolive Black Orchid And Milk Liquid Hand Wash	99.00	10.00	6	89.00	250	f	250
3348	Personal Care	Oral-B Criss Cross Medium Toothbrush (Buy 2 Get 2 Free)	160.00	0.00	5	160.00	232	f	4
3349	Personal Care	Gillette Mach 3 Turbo Razor	349.00	6.00	5	325.00	58	f	1
3350	Personal Care	Himalaya Baby Lotion	165.00	12.00	3	145.00	200	f	200
3351	Personal Care	Head & Shoulders 2-in-1 Cool Menthol Anti Dandruff Shampoo + Conditioner	375.00	0.00	1	375.00	340	f	180
3352	Personal Care	Sunsilk Lusciously Thick & Long Shampoo	249.00	6.00	6	234.00	340	f	340
3353	Personal Care	Fiama Di Wills Men's Refreshing Pulse Shower Gel	225.00	4.00	3	214.00	250	f	250
3354	Personal Care	Sebamed Anti - Dandruff Shampoo	600.00	10.00	2	540.00	200	f	200
3355	Personal Care	Listerine Cool Mint Mouthwash - Mild Taste	150.00	10.00	6	135.00	250	f	250
3356	Personal Care	L'Oreal Paris Excellence Creme Hair Color, 4.25 Aishwarya's Brown	620.00	0.00	6	620.00	172	f	172
3357	Personal Care	Himalaya Gentle Baby Bath	165.00	9.00	6	150.00	200	f	200
3358	Personal Care	L'Oreal Paris Casting Creme Gloss Hair Color, Medium Brown 500	550.00	0.00	4	550.00	160	f	159
3359	Personal Care	L'Oreal Paris Color Protect Shampoo	282.00	0.00	3	282.00	360	f	360
3360	Personal Care	Fiama Di Wills Lemongrass & Jojoba Gel Bar	176.00	10.00	6	158.00	375	f	375
3361	Personal Care	Colgate Plax Peppermint Mouthwash	150.00	20.00	5	120.00	250	f	250
3362	Personal Care	Dove Daily Shine Conditioner	90.00	10.00	1	81.00	80	f	80
3363	Personal Care	Patanjali Kesh Kanti Anti Dandruff Hair Cleanser	110.00	0.00	6	110.00	200	f	200
3364	Personal Care	Old Spice Original After Shave Lotion	250.00	0.00	1	250.00	150	f	150
3365	Personal Care	Dove Hair Fall Rescue Shampoo	137.00	10.00	4	123.00	180	f	180
3366	Personal Care	Dettol Clinical Strength Hand Sanitizer Liquid	250.00	10.00	6	225.00	500	f	500
3367	Personal Care	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil	399.00	20.00	3	319.00	300	f	300
3368	Personal Care	Comfy Baby Pants XL 12-17 kg	429.00	15.00	1	364.00	24	f	24
3369	Personal Care	Dettol Liquid Handwash With Free Liquid	99.00	0.00	6	99.00	200	f	200
3370	Personal Care	Nivea Body Milk Lotion for Very Dry Skin	399.00	20.00	6	319.00	400	f	400
3371	Personal Care	Lakme Sun Expert	225.00	0.00	6	225.00	60	f	60
3372	Personal Care	Head & shoulders Anti Dandruff Shampoo Cool Menthol	170.00	0.00	6	170.00	180	f	180
3373	Personal Care	Godrej Nupur Henna	75.00	0.00	5	75.00	150	f	120
3374	Personal Care	Johnson's Baby Lotion	100.00	0.00	4	100.00	100	f	100
3375	Personal Care	Himalaya Anti Dandruff Shampoo	140.00	10.00	1	126.00	200	f	200
3376	Personal Care	Maybelline New York Colossal Kajal Super Black	300.00	8.00	3	275.00	0	f	0
3377	Personal Care	Stayfree Dry-Max All Night Ultra-Dry Sanitary Pad	90.00	10.00	6	81.00	406	f	7
3378	Personal Care	Dove Daily Shine Shampoo	645.00	5.00	3	612.00	650	f	650
3379	Personal Care	Godrej Easy 5 Minute Natural Brown 4 Hair Colour	29.00	0.00	5	29.00	20	f	20
3380	Personal Care	Colgate Sensitive Plus Enamel Toothpaste Tube	140.00	0.00	6	140.00	160	f	160
3381	Personal Care	Colgate Max Fresh Peppermint Toothpaste 	182.00	15.00	6	154.00	300	f	300
3382	Personal Care	Pond's Light Moisturiser	309.00	10.00	6	278.00	250	f	250
3383	Personal Care	Engage Mate For Man Deo Spray	195.00	10.00	5	174.00	150	f	150
3384	Personal Care	Pantene Advanced Hair Fall Solution Shampoo - Total Damage Care	120.00	0.00	5	120.00	180	f	180
3385	Personal Care	Whisper Choice Regular Wing Sanitary Pad	30.00	0.00	2	30.00	406	f	7
3386	Personal Care	Colgate Slim Soft Charcoal Toothbrush	150.00	18.00	4	123.00	232	f	4
3387	Personal Care	Fiama Scents Juniper & Geranium Body Wash	199.00	6.00	5	186.00	250	f	250
3388	Personal Care	Mamaearth Ubtan Body Lotion	399.00	15.00	4	339.00	400	f	400
3389	Personal Care	Godrej Aer Power Pocket - Long Lasting Bathroom Fragrance Floral Delight	55.00	0.00	6	55.00	10	f	10
3390	Personal Care	Himalaya Anti-Hair Fall Shampoo	230.00	18.00	1	188.00	400	f	400
3391	Personal Care	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil	310.00	15.00	6	263.00	200	f	200
3392	Personal Care	Engage M2 Perfume Spray For Men	200.00	10.00	6	180.00	120	f	120
3393	Personal Care	Listerine Cool Mint Mouthwash - Mild Taste	150.00	10.00	6	135.00	250	f	250
3394	Personal Care	Mamaearth Ubtan Face Scrub Turmeric & Walnut	349.00	10.00	1	314.00	100	f	100
3395	Personal Care	Himalaya Purifying Neem Face Wash Tube	270.00	15.00	6	229.00	300	f	300
3396	Personal Care	Johnson's Baby Top To Toe Bath Body Wash	165.00	0.00	4	165.00	210	f	210
3397	Personal Care	Gillette Mach 3 Start	249.00	0.00	6	249.00	116	f	2
3398	Personal Care	Scalpe Pro Anti dandruff Shampoo 100ml	185.00	0.00	2	185.00	100	f	100
3399	Personal Care	Johnson's Baby Cream	150.00	0.00	6	150.00	100	f	100
3400	Personal Care	Johnson's Baby Soap	105.00	0.00	6	105.00	150	f	150
3401	Personal Care	Himalaya Gentle Baby Shampoo	320.00	17.00	6	265.00	400	f	400
3402	Personal Care	L'Oreal Paris Shine Masque Royal Jelly Hair Colour	550.00	0.00	3	550.00	88	f	87
3403	Personal Care	Engage Rush Deodorant For Men	190.00	11.00	6	169.00	150	f	150
3404	Personal Care	Clean & Clear Foaming Face Wash	140.00	10.00	4	126.00	100	f	100
3405	Personal Care	Dettol Lather Shaving Cream	75.00	5.00	6	71.00	78	f	78
3406	Personal Care	Gillette Classic Regular Pre Shave Foam	199.00	0.00	4	199.00	196	f	196
3407	Personal Care	Dove Daily Shine Conditioner	190.00	0.00	6	190.00	175	f	180
3408	Personal Care	Johnson's Baby Shampoo	180.00	0.00	6	180.00	200	f	200
3409	Personal Care	Park Avenue Beer Shampoo 	155.00	9.00	4	140.00	180	f	180
3410	Personal Care	Pantene Advanced Hair Fall Solution Silky Smooth Care Shampoo	120.00	6.00	6	112.00	180	f	180
3411	Personal Care	Fem Fairness Naturals Hair Removal Cream Fair & Soft - Rose	65.00	10.00	6	58.00	40	f	40
3412	Personal Care	Sunsilk Stunning Black Shine Shampoo	555.00	6.00	6	521.00	650	f	650
3413	Personal Care	Dabur Meswak Toothpaste	100.00	0.00	1	100.00	200	f	200
3414	Personal Care	Patanjali Kesh Kanti Reetha Hair Cleanser	85.00	0.00	5	85.00	200	f	200
3415	Personal Care	Nivea Lip Balm Soft Rose for 24h Moisture with Natural Oils Delicate Rose Shine	185.00	8.00	6	169.00	5	f	4
3416	Personal Care	Santoor Total Skin Care Soap With Sandal & Turmeric	180.00	0.00	6	180.00	600	f	600
3417	Personal Care	L'Oreal Paris Excellence Creme Hair Color, 4 Natural Brown/Natural Dark Brown	620.00	0.00	1	620.00	172	f	172
3418	Personal Care	Gillette Pre Shave Foam - Classic Regular Skin	225.00	0.00	6	225.00	418	f	418
3419	Personal Care	Fiama Di Wills Shower Gel Patchouli & Macadamia	199.00	10.00	6	179.00	250	f	250
3420	Personal Care	Listerine Fresh Burst Mouthwash	140.00	10.00	4	126.00	250	f	250
3421	Personal Care	Nivea Cocoa Nourish Body Lotion With Coconut Oil & Cocoa Butter For Very Dry Skin 	299.00	17.00	5	247.00	200	f	200
3422	Personal Care	Pantene Hair Fall Control Shampoo	240.00	7.00	2	221.00	340	f	340
3423	Personal Care	Fogg Master - Royal Intense	250.00	0.00	5	250.00	120	f	120
3424	Personal Care	TRESemme Smooth And Shine Conditioner	220.00	0.00	5	220.00	190	f	190
3425	Personal Care	Whisper Ultra Clean XL Plus Sanitary Pad	155.00	0.00	6	155.00	870	f	15
3426	Personal Care	Colgate Kids Toothpaste - 6+ Years, Strawberry Flavour	93.00	5.00	6	88.00	80	f	80
3427	Personal Care	Nivea Soft Moisturizing Cream	310.00	12.00	1	272.00	200	f	200
3428	Personal Care	Patanjali Kesh Kanti Aloe Vera Hair Cleanser	85.00	0.00	5	85.00	200	f	200
3429	Personal Care	Neutrogena Deep Clean Foaming Cleanser	130.00	11.00	2	115.00	50	f	50
3430	Personal Care	Clean & Clear Morning Energy Berry Face Wash	155.00	6.00	6	145.00	100	f	100
3431	Personal Care	Pampers Premium Care New Baby Pants	320.00	0.00	4	320.00	24	f	24
3432	Personal Care	Vaseline Intensive Care Aloe Fresh	225.00	9.00	6	203.00	200	f	200
3433	Personal Care	L'Oreal Paris Dream Lengths Shampoo	149.00	0.00	6	149.00	192	f	192
3435	Personal Care	Engage Man Rush Deodorant	195.00	9.00	6	176.00	150	f	150
3436	Personal Care	Pantene Advanced Hair Fall Solution Shampoo - Total Damage Care	264.00	0.00	6	264.00	340	f	340
3437	Personal Care	Whisper Daily Liners Clean and Fresh	105.00	0.00	4	105.00	1160	f	20
3438	Personal Care	Himalaya Men Pimple Clear Neem Face Wash	180.00	9.00	2	163.00	100	f	100
3439	Personal Care	Pantene Adv Hairfall Solution Conditioner Silky Smooth	190.00	0.00	5	190.00	200	f	200
3440	Personal Care	Himalaya Prickly Heat Baby Powder	90.00	10.00	6	81.00	100	f	100
3441	Personal Care	Mamaearth Daily Moisturizing Lotion For Babies	199.00	0.00	6	199.00	200	f	200
3442	Personal Care	Stayfree Advanced XL Ultra Comfort Sanitary napkins with Wings	175.00	0.00	3	175.00	812	f	14
3443	Personal Care	Pampers Premium Care Pants - Medium	1099.00	18.00	6	899.00	54	f	54
3444	Personal Care	Fiama Men's Refreshing Pulse Shower Gel	199.00	10.00	6	179.00	250	f	250
3445	Personal Care	Vaseline Original Skin Protecting Jelly	125.00	10.00	6	112.00	100	f	100
3446	Personal Care	Clean & Clear Foaming Face Wash	180.00	10.00	6	162.00	150	f	150
3447	Personal Care	Fiama Lemongrass and Jojoba Shower Gel	225.00	20.00	6	180.00	250	f	250
3448	Personal Care	Oral-B Charcoal Cross Cross Extra Soft Toothbrush (Buy 2 Get 1 Free)	180.00	0.00	1	180.00	174	f	3
3449	Personal Care	Listerine Fresh Burst Mouthwash	285.00	7.00	6	263.00	500	f	500
3450	Personal Care	Veet Full Body Waxing Kit	235.00	7.00	6	218.00	1160	f	20
3451	Personal Care	Listerine Original Mouthwash	55.00	9.00	6	50.00	80	f	80
3452	Personal Care	Santoor Almond Soft With Sandal & Almond Milk	180.00	0.00	2	180.00	625	f	625
3453	Personal Care	Nivea Body Shea Smooth with Shea Butter for Dry Skin	425.00	20.00	5	340.00	400	f	9
3454	Personal Care	Neutrogena Deep Clean Facial Cleanser	130.00	0.00	4	130.00	50	f	50
3455	Personal Care	L'Oreal Paris Excellence Creme Hair Color, 3.16 Burgundy	550.00	0.00	3	550.00	159	f	172
3456	Personal Care	Johnson's Baby Powder	235.00	0.00	6	235.00	400	f	400
3457	Personal Care	Bombay Shaving Company Charcoal Face Wash	249.00	0.00	4	249.00	100	f	100
3458	Personal Care	Colgate Kids 2+ Years Extra Soft Toothbrush	20.00	0.00	3	20.00	58	f	1
3459	Personal Care	Veet Hair Removal Cream (Normal Skin)	135.00	5.00	6	128.00	50	f	50
3460	Personal Care	Dove Daily Shine Shampoo	240.00	0.00	4	240.00	340	f	340
3461	Personal Care	L'Oreal Anti Hair Fall Conditioner	199.00	0.00	6	199.00	192	f	192
3462	Personal Care	Nivea Body Lotion Aloe Hydration For Normal Skin 	275.00	10.00	6	247.00	200	f	200
3463	Personal Care	Pampers Pants - Large	1549.00	45.00	3	849.00	82	f	82
3464	Personal Care	Engage Urge Deodorant For Men, Citrus And Woody, Skin Friendly	195.00	10.00	6	174.00	150	f	150
3465	Personal Care	Head & Shoulders 2 In 1 Anti Dandruff Smooth & Silky Shampoo+Conditioner	375.00	10.00	6	334.00	340	f	340
3466	Personal Care	Fem Fairness Natural Gold Skin Bleach	85.00	7.00	4	79.00	64	f	64
3467	Personal Care	Engage Deo Frost	195.00	9.00	6	176.00	150	f	150
3468	Personal Care	Stayfree Secure XL Size Sanitary Napkins	115.00	0.00	5	115.00	1160	f	20
3469	Personal Care	Pampers Pants - Medium	699.00	21.00	1	549.00	50	f	50
3470	Personal Care	Pampers Active Baby Diapers New Born Extra Small 	1099.00	22.00	3	849.00	72	f	72
3471	Personal Care	Nivea Creme, All Season Multi-Purpose Cream	175.00	9.00	6	158.00	100	f	100
3472	Personal Care	Woodwards Gripe Water 	50.00	0.00	4	50.00	130	f	130
3473	Personal Care	Clean & Clear Morning Energy Aqua Splash Face Wash	145.00	9.00	5	131.00	100	f	100
3474	Personal Care	Sunsilk Lusciously Thick & Long Shampoo	555.00	6.00	6	521.00	650	f	650
3475	Personal Care	Mamaearth Skin Correct Face Serum	599.00	15.00	1	509.00	30	f	30
3476	Personal Care	Chik Hairfall Prevent Egg Shampoo	178.00	0.00	6	178.00	340	f	340
3477	Personal Care	Pantene Silky Smooth Care Shampoo	225.00	6.00	3	210.00	340	f	340
3478	Personal Care	Garnier Skin Naturals, Micellar Cleansing Water	199.00	5.00	4	189.00	125	f	125
3479	Personal Care	Set Wet Swag Avatar Deodorant & Body Spray Perfume For Men	199.00	0.00	1	199.00	150	f	150
3480	Personal Care	Pampers All Round Protection Pants - Medium	699.00	17.00	6	575.00	50	f	50
3481	Personal Care	Set Wet Deodrant Charm Avatar	199.00	0.00	1	199.00	150	f	150
3482	Personal Care	Nupur Heena Mehandi	199.00	0.00	6	199.00	500	f	500
3483	Personal Care	Head & Shoulders 2-in-1 Active Protect Shampoo	375.00	9.00	6	338.00	340	f	340
3484	Personal Care	Gillette Mach 3 Turbo Cartridges	649.00	10.00	6	578.00	232	f	4
3485	Personal Care	TRESemme Smooth And Shine Conditioner	210.00	13.00	1	182.00	190	f	190
3486	Personal Care	Bombay Shaving Company Sensitive Cartridges	375.00	0.00	2	375.00	116	f	2
3487	Personal Care	Himalaya Baby Lotion	300.00	12.00	1	264.00	400	f	400
3488	Personal Care	Old Spice Lime Lather Shaving Cream	75.00	0.00	6	75.00	70	f	70
3489	Personal Care	Colgate Sensitive Plus Anticavity Toothpaste 	140.00	10.00	6	126.00	70	f	70
3490	Personal Care	Colgate Toothpaste For Kids Motu Oatlu	93.00	0.00	6	93.00	80	f	80
3491	Personal Care	Pantene Total Damage Care Shampoo	120.00	0.00	6	120.00	180	f	180
3492	Personal Care	Himalaya Moisturising Aloe Vera Facial Wipes	100.00	10.00	6	90.00	25	f	25
3493	Personal Care	Savlon Moisture Shield Hand Wash	69.00	0.00	5	69.00	200	f	200
3494	Personal Care	Pampers Active Baby Diapers New Born Extra Small	360.00	10.00	6	324.00	24	f	24
3495	Personal Care	Himalaya Anti Dandruff Shampoo	260.00	18.00	1	213.00	400	f	400
3496	Personal Care	Himalaya Anti Hair Fall Shampoo	490.00	25.00	4	367.00	700	f	700
3497	Personal Care	Johnson's Baby Oil	200.00	0.00	6	200.00	200	f	200
3498	Personal Care	Vaseline Intensive Care Deep Moisture Body Lotion	325.00	0.00	4	325.00	400	f	400
3499	Personal Care	L'Oreal Paris Dream Lengths Conditioner	199.00	0.00	1	199.00	193	f	193
3500	Personal Care	Nivea Soft Light Moisturizing Cream	185.00	15.00	6	157.00	100	f	100
3501	Personal Care	Whisper Ultra Soft XL+ Sanitary Pads	555.00	0.00	1	555.00	60	f	60
3502	Personal Care	Palmolive Feel The Massage Shower Gel	249.00	20.00	6	199.00	250	f	250
3503	Personal Care	L'Oreal Paris Dream Lengths Conditioner	209.00	0.00	3	209.00	193	f	193
3504	Personal Care	Head & Shoulders Anti-Dandruff Smooth & Silky Shampoo	285.00	6.00	6	266.00	340	f	340
3505	Personal Care	Mamaearth Moisturizing Baby Bath Soap	249.00	0.00	4	249.00	150	f	150
3506	Personal Care	Listerine Original Mouthwash	150.00	10.00	6	135.00	250	f	250
3507	Personal Care	Himalaya Gentle Baby Shampoo	170.00	14.00	6	146.00	200	f	200
3508	Personal Care	Dove Dryness Care Shampoo	268.00	5.00	1	252.00	340	f	340
3509	Personal Care	Dove Hair Fall Rescue Shampoo	280.00	15.00	6	236.00	340	f	340
3510	Personal Care	Head & Shoulders Anti Dandruff Shampoo Cool Menthol	295.00	9.00	6	266.00	340	f	340
3511	Personal Care	Bombay Shaving Company Defender Razor	345.00	0.00	6	345.00	58	f	1
3512	Personal Care	Head & Shoulders Shampoo + Conditioner - 2-In-1, Cool Menthol	365.00	0.00	1	365.00	340	f	340
3513	Personal Care	Himalaya Baby Nourishing Massage Oil	200.00	20.00	2	160.00	200	f	250
3514	Personal Care	Himalaya Baby Powder	235.00	20.00	6	188.00	400	f	400
3515	Personal Care	Fogg Paradise Fragrant Body Spray For Women 	250.00	0.00	6	250.00	150	f	150
3516	Personal Care	Revive Revive Liquid	71.00	0.00	6	71.00	200	f	200
3517	Personal Care	Pantene Hairfall Control Conditioner	190.00	6.00	6	178.00	200	f	200
3518	Personal Care	Mamaearth Vitamin C Face Toner	399.00	0.00	1	399.00	200	f	200
3519	Personal Care	Himalaya Diaper Rash Cream	80.00	10.00	2	72.00	20	f	20
3520	Personal Care	Fogg Royal Fragrance Spray	230.00	0.00	4	230.00	150	f	120
3521	Personal Care	Dove Pink Rosa Beauty Bathing Bar	245.00	9.00	6	221.00	100	f	100
3522	Personal Care	Dove Dryness Care Conditioner Frizzy & Dry Hair	90.00	6.00	4	84.00	80	f	80
3523	Personal Care	Dettol Original Liquid Handwash Refill	109.00	3.00	0	105.00	750	t	750
3524	Personal Care	Parachute 100% Pure Coconut Oil	123.00	0.00	0	123.00	300	t	300
3525	Personal Care	Stayfree Secure Cottony Soft Cover Sanitary Pad (Regular) with Wings	30.00	3.00	0	29.00	406	t	7
3526	Personal Care	Dabur Gulabari Premium Rose Water	48.00	2.00	0	47.00	120	t	120
3527	Personal Care	Parachute Advansed Gold Coconut Hair Oil	215.00	9.00	0	194.00	400	t	400
3528	Personal Care	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	90.00	10.00	0	81.00	150	t	150
3529	Personal Care	Godrej No.1 Bathing Soap – Lime & Aloe Vera	100.00	16.00	0	84.00	500	t	100
3530	Personal Care	Sensodyne Sensitive Fresh Gel Toothpaste	115.00	7.00	0	106.00	75	t	75
3531	Personal Care	Whisper Bindazzz Nights XL + Sanitary Pad	90.00	0.00	0	90.00	406	t	7
3532	Personal Care	Whisper Choice Sanitary Pad 	32.00	9.00	0	29.00	406	t	7
3533	Personal Care	Godrej No.1 Bathing Soap, Jasmine	84.00	0.00	0	84.00	400	t	100
3534	Personal Care	Gillette Venus Close & Clean Razor 	249.00	7.00	0	230.00	58	t	1
3535	Personal Care	Whisper Choice Regular Sanitary Pads	90.00	3.00	0	87.00	58	t	20
3536	Personal Care	Stayfree Secure Dry Cover Extra Large Sanitary Pad	42.00	2.00	0	41.00	406	t	7
3537	Personal Care	Oxylife Natural Radiance 5 Creme Bleach - With Active Oxygen	82.00	9.00	0	74.00	27	t	27
3538	Personal Care	Clean & Clear Morning Energy Lemon Face Wash	145.00	9.00	0	131.00	100	t	100
3539	Personal Care	Bajaj Almond Drops Hair Oil	67.00	10.00	0	60.00	100	t	100
3540	Personal Care	Bajaj Almond Drops Hair Oil Bottle	130.00	7.00	0	120.00	200	t	200
3541	Personal Care	Whisper Bindazzz Night Sanitary Pads XL Plus	185.00	0.00	0	185.00	870	t	15
3542	Personal Care	Godrej Cinthol Lime Refreshing Deo Soap	116.00	0.00	0	116.00	400	t	400
3543	Personal Care	MamyPoko Pants Standard Diapers, Extra Large (12 - 17 kg)	399.00	7.00	0	369.00	26	t	26
3544	Paan Corner	Clove Sensitive Toothpaste with Anti-Sensitivity & Fluoride Formulation	160.00	35.00	3	104.00	80	f	80
3545	Paan Corner	Dettol Original Germ Protection Alcohol Based Hand Sanitizer	25.00	0.00	6	25.00	50	f	50
3546	Paan Corner	Colgate Visible White Toothpaste	115.00	10.00	6	103.00	100	f	100
3547	Paan Corner	Dettol SKincare Handwash Value Refill	109.00	3.00	6	105.00	750	f	750
3548	Paan Corner	Savlon Herbal Sensitive Liquid Handwash Refill Pouch	115.00	4.00	6	110.00	750	f	500
3549	Paan Corner	Colgate Total 12 Whole Mouth Protection Toothpaste	120.00	10.00	6	108.00	120	f	120
3550	Paan Corner	Lux International Creamy White Soap Bar	35.00	2.00	6	34.00	75	f	75
3551	Paan Corner	Colgate Herbal Toothpaste	114.00	18.00	2	93.00	200	f	200
3552	Paan Corner	Nivea Men Deodorant Fresh Active 48h Long lasting Freshness	225.00	24.00	6	169.00	150	f	150
3553	Paan Corner	Dabur Meswak Toothpaste	58.00	5.00	6	55.00	100	f	100
3554	Paan Corner	Colgate Max Fresh Cooling Crystals Toothpaste	101.00	5.00	2	95.00	150	f	150
3555	Paan Corner	Indulekha Bhringa Hair Oil	432.00	15.00	6	367.00	100	f	100
3556	Paan Corner	Colgate Sensitive Soft Bristles Toothbrush	50.00	0.00	6	50.00	58	f	1
3557	Paan Corner	Pears Pure & Gentle Glycerin Bath Soap	75.00	0.00	6	75.00	125	f	125
3558	Paan Corner	Vaseline Skin Protecting Jelly	79.00	13.00	6	68.00	50	f	50
3559	Paan Corner	Dettol Original Germ Protection Bathing Soap Bar	166.00	5.00	4	157.00	375	f	375
3560	Paan Corner	Dettol Intense Cool Soap (B4G1)	260.00	5.00	6	247.00	625	f	625
3562	Paan Corner	Lifebuoy Germ Protection Care Soap Bar	30.00	3.00	3	29.00	100	f	125
3563	Paan Corner	Lux International Creamy White Soap Bar	70.00	10.00	6	63.00	125	f	125
3564	Paan Corner	Godrej Nupur – 100% Pure Henna (Mehendi)	10.00	0.00	6	10.00	18	f	18
3565	Paan Corner	Glow & Lovely Advanced Multivitamin Face Cream	213.00	10.00	6	190.00	110	f	110
3566	Paan Corner	Set Wet Style Vertical Hold Hair Gel	50.00	10.00	4	45.00	50	f	50
3567	Paan Corner	Godrej Expert Rich Crème, Natural Black	30.00	0.00	6	30.00	20	f	20
3568	Paan Corner	Nycil Germ Expert Cool Herbal Talc	130.00	8.00	1	119.00	150	f	200
3569	Paan Corner	Godrej Expert Creme Hair Natural Brown Colour 	30.00	0.00	6	30.00	20	f	20
3570	Paan Corner	Veet Sensitive Skin Hair Removal Cream	135.00	5.00	6	128.00	50	f	50
3571	Paan Corner	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	50.00	2.00	1	49.00	80	f	80
3572	Paan Corner	Pears Pure And Gentle Value Pack Of 3 Bathing Soap	199.00	6.00	5	186.00	375	f	375
3573	Paan Corner	Gillette Presto Ready Shaver 5 Cartridges 	88.00	6.00	6	82.00	290	f	5
3574	Paan Corner	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	160.00	10.00	4	144.00	300	f	300
3575	Paan Corner	Godrej Expert Rich Crème, Dark Brown	30.00	0.00	4	30.00	20	f	20
3576	Paan Corner	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil 	185.00	15.00	3	157.00	100	f	100
3577	Paan Corner	Fiama Gel Bar Celebration Pack Buy 4 Get 1 Free	290.00	10.00	6	261.00	625	f	625
3578	Paan Corner	Gillette Sensitive Shaving Foam	225.00	6.00	4	210.00	418	f	418
3579	Paan Corner	Dove Hair Fall Rescue Shampoo	150.00	6.00	5	141.00	180	f	180
3580	Paan Corner	Gillette Mach 3 Mens Razor Blades	499.00	7.00	4	460.00	232	f	4
3581	Paan Corner	Palmolive Aroma Absolute Relax Shower Gel	199.00	20.00	2	159.00	250	f	250
3582	Paan Corner	Godrej Protekt Germ Fighter Handwash	99.00	0.00	6	99.00	750	f	750
3583	Paan Corner	Dettol Hand Sanitizer	100.00	5.00	6	95.00	200	f	200
3584	Paan Corner	Dabur Amla Hair Oil	88.00	0.00	2	88.00	180	f	180
3585	Paan Corner	Dettol Original Liquid Handwash	89.00	4.00	6	85.00	200	f	200
3586	Paan Corner	L'Oreal Paris Total Repair 5 Conditioner	199.00	0.00	6	199.00	192	f	180
3587	Paan Corner	Patanjali Saundarya Aloe Vera Gel	90.00	0.00	5	90.00	150	f	150
3588	Paan Corner	Head & Shoulders 2 In 1 Anti Dandruff Shampoo Conditioner 	195.00	10.00	4	174.00	180	f	180
3589	Paan Corner	Clean & Clear Pimple Clearing Face Wash	130.00	10.00	2	117.00	80	f	80
3590	Paan Corner	Himalaya Anti Dandruff Shampoo	140.00	8.00	2	128.00	200	f	200
3591	Paan Corner	Stayfree Secure Dry Cover Regular Sanitary Pad With Wings	30.00	3.00	6	29.00	406	f	7
3592	Paan Corner	Savlon Moisture Shield Hand Wash	99.00	4.00	6	95.00	750	f	750
3593	Paan Corner	Dove Intense Repair Conditioner	190.00	14.00	6	162.00	175	f	80
3594	Paan Corner	Dabur Gulabari Rose Glow Face Cleanse	75.00	5.00	4	71.00	100	f	100
3595	Paan Corner	Parachute Jasmine Hair Oil	82.00	9.00	6	74.00	190	f	190
3596	Paan Corner	Johnson's Baby Skincare Wipes	79.00	6.00	6	74.00	1160	f	20
3597	Paan Corner	Dettol Skincare Liquid Hand Wash	79.00	0.00	6	79.00	200	f	200
3598	Paan Corner	Old Spice Original Lather Shaving Cream	75.00	9.00	6	68.00	70	f	70
3599	Paan Corner	Veet Hair Removal Cream Dry Skin	135.00	5.00	5	128.00	50	f	50
3600	Paan Corner	L'Oreal Paris Total Repair 5 Shampoo	265.00	0.00	2	265.00	396	f	360
3601	Paan Corner	Fiama Menthol & Magnolia Cooling Gel Bar Soap	160.00	11.00	6	141.00	375	f	375
3602	Paan Corner	Nivea Lip Balm Original Care for 24h Moisture with Shea Butter & Natural Oils	140.00	15.00	6	119.00	5	f	4
3603	Paan Corner	Oral-B Charcoal Deep Clean Stain Removal Toothbrush Soft	99.00	0.00	3	99.00	232	f	4
3604	Paan Corner	Neutrogena Ultra Sheer Dry Touch SPF 50+ Sunblock Sunscreen Lotion	250.00	10.00	3	225.00	30	f	30
3605	Paan Corner	Clinic Plus Strong & Long Health Shampoo	499.00	10.00	3	449.00	650	f	650
3606	Paan Corner	Johnson's Baby No More Tears Baby Shampoo	98.00	0.00	5	98.00	100	f	100
3607	Paan Corner	Colgate Zig Zag Toothbrush	120.00	0.00	3	120.00	348	f	6
3608	Paan Corner	Savlon Moisture Shield Germ Protection Handwash Refill (Buy 1 Get 1 Free)	189.00	0.00	6	189.00	1500	f	1500
3609	Paan Corner	Colgate Sensitive Everyday Protection Anticavity Toothpaste	75.00	0.00	6	75.00	40	f	40
3610	Paan Corner	Whisper Ultra Soft XL+ Sanitary Pads	330.00	2.00	6	323.00	30	f	30
3611	Paan Corner	Garnier Colour Naturals Hair Colour - 1 Natural Black	80.00	0.00	1	80.00	60	f	60
3612	Paan Corner	Axe Pulse Men's Deodorant	210.00	0.00	6	210.00	150	f	150
3613	Paan Corner	Colgate Zigzag Charcoal Soft Bristle Toothbrush - 4 Pcs	99.00	0.00	6	99.00	232	f	4
3614	Paan Corner	Whisper Ultra Clean Wings XL+  Pouch	449.00	7.00	6	415.00	44	f	44
3615	Paan Corner	Whisper Choice Regular Sanitary Pads	90.00	0.00	6	90.00	1160	f	20
3616	Paan Corner	Axe Dark Temptation Men's Deodorant	210.00	7.00	5	194.00	150	f	150
3617	Paan Corner	Head & Shoulders Anti-Dandruff Smooth & Silky Shampoo	150.00	0.00	4	150.00	180	f	180
3618	Paan Corner	Clinic Plus Strength & Shine Shampoo With Egg Protein 	105.00	0.00	2	105.00	175	f	175
3619	Paan Corner	Engage M1 Perfume Spray for Men 	210.00	7.00	6	194.00	120	f	120
3620	Paan Corner	Tresemme Keratin Smooth Conditioner	380.00	0.00	3	380.00	340	f	340
3621	Paan Corner	Garnier Color Naturals Crème Hair Color, Shade 5 Light Brown	180.00	0.00	1	180.00	100	f	100
3622	Paan Corner	Origami Aloe Vera Wipes	75.00	13.00	4	65.00	25	f	25
3623	Paan Corner	Engage Drizzle Deodorant For Women, Floral And Lavender, Skin Friendly	195.00	10.00	6	174.00	150	f	150
3624	Paan Corner	Gellette Presto Ready Shaver	20.00	0.00	1	20.00	58	f	1
3625	Paan Corner	Colgate Max Fresh Plax Mouthwash - Fresh Mint	150.00	20.00	5	120.00	250	f	250
3626	Paan Corner	Colgate Zig Zag Charcoal Medium Toothbrush 4 Pcs	99.00	0.00	6	99.00	232	f	4
3628	Paan Corner	Colgate Total Charcoal Anticavity Toothpaste	110.00	10.00	3	99.00	120	f	120
3629	Paan Corner	Colgate Kids 0-2 Extra Soft Tooth Brush	30.00	16.00	6	25.00	58	f	1
3630	Paan Corner	Gillete Mach3 	260.00	10.00	6	234.00	116	f	2
3631	Paan Corner	Maybelline New York Colossal Kajal Black	149.00	0.00	2	149.00	0	f	0
3632	Paan Corner	Godrej Cinthol Lime Talc	55.00	0.00	3	55.00	100	f	100
3633	Paan Corner	Hamam Soap Bar Neem Tulsi and Aloe Vera	58.00	0.00	6	58.00	150	f	150
3634	Paan Corner	Godrej Expert Rich Crème, Burgundy	33.00	0.00	6	33.00	20	f	20
3635	Paan Corner	Colgate Gentle Sensitive+ Toothbrush Pack Of 4	120.00	10.00	4	108.00	232	f	4
3636	Paan Corner	Nivea Creme All Season Multi-Purpose Cream 	175.00	10.00	4	157.00	100	f	100
3637	Paan Corner	Oral-B Charcoal Deep Clean Stain Removal Toothbrush Medium	99.00	0.00	1	99.00	232	f	4
3638	Paan Corner	Mamaearth 100% Natural Berry Blast Kids Toothpaste	149.00	10.00	4	134.00	50	f	50
3639	Paan Corner	HImalaya Gentle Baby Wipes	200.00	10.00	3	180.00	72	f	72
3640	Paan Corner	Stayfree Dry Max All Night XL Dry Cover Sanitary Pads	340.00	12.00	6	298.00	28	f	28
3641	Paan Corner	L'Oreal Paris Excellence Creme Hair Color, 1 Black	620.00	0.00	1	620.00	172	f	172
3642	Paan Corner	Fem Fairness Naturals Saffron Skin Bleach	85.00	15.00	4	72.00	64	f	64
3643	Paan Corner	Engage Woman Blush Body Deo Spray	195.00	10.00	5	174.00	150	f	150
3644	Paan Corner	Dove Pink Rosa Beauty Bathinhg Bar	60.00	0.00	6	60.00	100	f	100
3645	Paan Corner	Sebamed Cleansing Bar	99.00	10.00	4	89.00	100	f	100
3646	Paan Corner	Pampers Premium Care Pants - Large	1099.00	18.00	2	899.00	44	f	44
3647	Paan Corner	Nivea Women Deodorant Fresh Natural Long Lasting Freshness & 48h Protection	199.00	20.00	2	159.00	150	f	150
3648	Paan Corner	L'Oreal Paris Excellence Creme Hair Color, 3 Dark Brown/Natural Darkest Brown	620.00	0.00	6	620.00	172	f	172
3649	Paan Corner	Patanjali Kesh Kanti Natural Hair Cleanser	75.00	9.00	4	68.00	200	f	200
3650	Paan Corner	Godrej No.1 Bathing Soap – Lime & Aloe Vera	149.00	0.00	6	149.00	600	f	600
3651	Paan Corner	Pantene Advanced Control Hair Fall Solution Shampoo	120.00	6.00	5	112.00	180	f	180
3652	Paan Corner	Veet Full Body Waxing Kit For Dry Skin	235.00	7.00	6	218.00	1160	f	20
3653	Paan Corner	Johnson's Baby Skincare Wipes	245.00	9.00	6	221.00	72	f	72
3654	Paan Corner	Gillette Lemon Lime Shaving Foam	199.00	11.00	4	177.00	196	f	196
3655	Paan Corner	Old Spice After Shave Lotion Musk	215.00	6.00	3	200.00	100	f	100
3656	Paan Corner	Whisper Ultra Soft Air Fresh Sanitary Pads (XL) with Wings	315.00	0.00	4	315.00	30	f	30
3657	Paan Corner	Himalaya Baby Powder	80.00	8.00	4	73.00	100	f	100
3658	Paan Corner	Fiama Men's Refreshing Pulse Shower Gel	225.00	20.00	4	180.00	250	f	250
3659	Paan Corner	Whisper Ultra Clean XL Plus Sanitary Pad	175.00	0.00	5	175.00	870	f	15
3660	Paan Corner	Johnson's Baby Powder	143.00	0.00	6	143.00	200	f	200
3661	Paan Corner	Dove Cream Beauty Bathing Bar	235.00	9.00	6	212.00	125	f	125
3662	Paan Corner	Patanjali Kesh Kanti Shikakai Hair Cleanser	95.00	0.00	4	95.00	200	f	200
3663	Paan Corner	L'Oreal Paris Color Protect Conditioner	199.00	0.00	3	199.00	192	f	192
3664	Paan Corner	Nivea Men Active Clean with Active Charcoal Shower Gel for Body Face & Hair	199.00	4.00	5	191.00	250	f	250
3665	Paan Corner	L'Oreal 6 Oil Nourish Conditioner	135.00	0.00	1	135.00	192	f	192
3666	Paan Corner	Godrej Easy Natural Black Hair Colour	25.00	0.00	5	25.00	20	f	20
3667	Paan Corner	Dabur Gulabari Rose Water Daily Glow	80.00	6.00	2	75.00	250	f	250
3668	Paan Corner	Himalaya Purifying Neem Face Wash	170.00	10.00	6	153.00	150	f	150
3669	Paan Corner	Fem Fairness Naturals Gold Skin Bleach	65.00	9.00	3	59.00	24	f	24
3670	Paan Corner	Whisper Choice Ultra XL Sanitary Pad	133.00	2.00	5	130.00	1160	f	20
3671	Paan Corner	Dove Dandruff Care Shampoo	158.00	6.00	5	147.00	180	f	180
3672	Paan Corner	Head & Shoulders Anti Dandruff Anti Hairfall Shampoo	285.00	0.00	5	285.00	340	f	240
3673	Paan Corner	L'Oreal Casting Creme Ebony Black Hair Color	550.00	0.00	6	550.00	159	f	87
3674	Paan Corner	Mamaearth Onion Hair Oil	399.00	10.00	6	359.00	150	f	150
3675	Paan Corner	L'Oreal Paris Casting Creme Gloss Hair Color (Dark Brown 400)	550.00	0.00	4	550.00	159	f	159
3676	Paan Corner	Palmolive Naturals Sea Minerals Liquid Hand Wash	99.00	10.00	6	89.00	250	f	250
3677	Paan Corner	Oral-B Extra Soft Bristles Sensitive 	98.00	0.00	4	98.00	232	f	4
3678	Paan Corner	Engage M3 Perfume Spray for Men	200.00	10.00	3	180.00	120	f	120
3679	Paan Corner	Mamaearth Deeply Nourishing wash for Babies	199.00	0.00	4	199.00	200	f	200
3680	Paan Corner	Dettol Original Soap (B4G1)	260.00	5.00	6	247.00	625	f	625
3681	Paan Corner	Woodward's Gripe Water	75.00	0.00	6	75.00	200	f	200
3682	Paan Corner	MamyPoko Pants Extra Absorb Diapers, New Born	299.00	6.00	5	279.00	28	f	28
3683	Paan Corner	Johnson's Baby Soap	70.00	0.00	6	70.00	100	f	100
3684	Paan Corner	Engage M4 Perfume Spray For Men	200.00	10.00	6	180.00	120	f	120
3685	Paan Corner	Fem Fairness Naturals Hair Removal Cream Fair & Soft - Gold	65.00	10.00	4	58.00	40	f	40
3686	Paan Corner	Dove Hair Fall Rescue Conditioner	190.00	0.00	4	190.00	175	f	175
3687	Paan Corner	Himalaya Anti Hair Fall Shampoo	130.00	12.00	2	114.00	200	f	200
3688	Paan Corner	Fiama Peach & Avocado Gel Bar	176.00	10.00	3	158.00	375	f	375
3689	Paan Corner	Pears Pure & Gentle Value Pack Of 4 Bathing Soap 	125.00	0.00	6	125.00	75	f	75
3690	Paan Corner	Fiama Fresh Hand Wash	150.00	6.00	3	140.00	400	f	400
3691	Paan Corner	Palmolive Black Orchid And Milk Liquid Hand Wash	99.00	10.00	6	89.00	250	f	250
3692	Paan Corner	Oral-B Criss Cross Medium Toothbrush (Buy 2 Get 2 Free)	160.00	0.00	5	160.00	232	f	4
3693	Paan Corner	Gillette Mach 3 Turbo Razor	349.00	6.00	5	325.00	58	f	1
3694	Paan Corner	Himalaya Baby Lotion	165.00	12.00	3	145.00	200	f	200
3695	Paan Corner	Head & Shoulders 2-in-1 Cool Menthol Anti Dandruff Shampoo + Conditioner	375.00	0.00	1	375.00	340	f	180
3696	Paan Corner	Sunsilk Lusciously Thick & Long Shampoo	249.00	6.00	6	234.00	340	f	340
3697	Paan Corner	Fiama Di Wills Men's Refreshing Pulse Shower Gel	225.00	4.00	3	214.00	250	f	250
3698	Paan Corner	Sebamed Anti - Dandruff Shampoo	600.00	10.00	2	540.00	200	f	200
3699	Paan Corner	Listerine Cool Mint Mouthwash - Mild Taste	150.00	10.00	6	135.00	250	f	250
3700	Paan Corner	L'Oreal Paris Excellence Creme Hair Color, 4.25 Aishwarya's Brown	620.00	0.00	6	620.00	172	f	172
3701	Paan Corner	Himalaya Gentle Baby Bath	165.00	9.00	6	150.00	200	f	200
3702	Paan Corner	L'Oreal Paris Casting Creme Gloss Hair Color, Medium Brown 500	550.00	0.00	4	550.00	160	f	159
3703	Paan Corner	L'Oreal Paris Color Protect Shampoo	282.00	0.00	3	282.00	360	f	360
3704	Paan Corner	Fiama Di Wills Lemongrass & Jojoba Gel Bar	176.00	10.00	6	158.00	375	f	375
3705	Paan Corner	Colgate Plax Peppermint Mouthwash	150.00	20.00	5	120.00	250	f	250
3706	Paan Corner	Dove Daily Shine Conditioner	90.00	10.00	1	81.00	80	f	80
3707	Paan Corner	Patanjali Kesh Kanti Anti Dandruff Hair Cleanser	110.00	0.00	6	110.00	200	f	200
3708	Paan Corner	Old Spice Original After Shave Lotion	250.00	0.00	1	250.00	150	f	150
3709	Paan Corner	Dove Hair Fall Rescue Shampoo	137.00	10.00	4	123.00	180	f	180
3710	Paan Corner	Dettol Clinical Strength Hand Sanitizer Liquid	250.00	10.00	6	225.00	500	f	500
3711	Paan Corner	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil	399.00	20.00	3	319.00	300	f	300
3712	Paan Corner	Comfy Baby Pants XL 12-17 kg	429.00	15.00	1	364.00	24	f	24
3713	Paan Corner	Dettol Liquid Handwash With Free Liquid	99.00	0.00	6	99.00	200	f	200
3714	Paan Corner	Nivea Body Milk Lotion for Very Dry Skin	399.00	20.00	6	319.00	400	f	400
3715	Paan Corner	Lakme Sun Expert	225.00	0.00	6	225.00	60	f	60
3716	Paan Corner	Head & shoulders Anti Dandruff Shampoo Cool Menthol	170.00	0.00	6	170.00	180	f	180
3717	Paan Corner	Godrej Nupur Henna	75.00	0.00	5	75.00	150	f	120
3718	Paan Corner	Johnson's Baby Lotion	100.00	0.00	4	100.00	100	f	100
3719	Paan Corner	Himalaya Anti Dandruff Shampoo	140.00	10.00	1	126.00	200	f	200
3720	Paan Corner	Maybelline New York Colossal Kajal Super Black	300.00	8.00	3	275.00	0	f	0
3721	Paan Corner	Stayfree Dry-Max All Night Ultra-Dry Sanitary Pad	90.00	10.00	6	81.00	406	f	7
3722	Paan Corner	Dove Daily Shine Shampoo	645.00	5.00	3	612.00	650	f	650
3723	Paan Corner	Godrej Easy 5 Minute Natural Brown 4 Hair Colour	29.00	0.00	5	29.00	20	f	20
3724	Paan Corner	Colgate Sensitive Plus Enamel Toothpaste Tube	140.00	0.00	6	140.00	160	f	160
3725	Paan Corner	Colgate Max Fresh Peppermint Toothpaste 	182.00	15.00	6	154.00	300	f	300
3726	Paan Corner	Pond's Light Moisturiser	309.00	10.00	6	278.00	250	f	250
3727	Paan Corner	Engage Mate For Man Deo Spray	195.00	10.00	5	174.00	150	f	150
3728	Paan Corner	Pantene Advanced Hair Fall Solution Shampoo - Total Damage Care	120.00	0.00	5	120.00	180	f	180
3729	Paan Corner	Whisper Choice Regular Wing Sanitary Pad	30.00	0.00	2	30.00	406	f	7
3730	Paan Corner	Colgate Slim Soft Charcoal Toothbrush	150.00	18.00	4	123.00	232	f	4
3731	Paan Corner	Fiama Scents Juniper & Geranium Body Wash	199.00	6.00	5	186.00	250	f	250
3732	Paan Corner	Mamaearth Ubtan Body Lotion	399.00	15.00	4	339.00	400	f	400
3733	Paan Corner	Godrej Aer Power Pocket - Long Lasting Bathroom Fragrance Floral Delight	55.00	0.00	6	55.00	10	f	10
3734	Paan Corner	Himalaya Anti-Hair Fall Shampoo	230.00	18.00	1	188.00	400	f	400
3735	Paan Corner	Nivea Soft Light Moisturizer for Face Hand & Body Non-Sticky Cream with Vitamin E & Jojoba Oil	310.00	15.00	6	263.00	200	f	200
3736	Paan Corner	Engage M2 Perfume Spray For Men	200.00	10.00	6	180.00	120	f	120
3737	Paan Corner	Listerine Cool Mint Mouthwash - Mild Taste	150.00	10.00	6	135.00	250	f	250
3738	Paan Corner	Mamaearth Ubtan Face Scrub Turmeric & Walnut	349.00	10.00	1	314.00	100	f	100
3739	Paan Corner	Himalaya Purifying Neem Face Wash Tube	270.00	15.00	6	229.00	300	f	300
3740	Paan Corner	Johnson's Baby Top To Toe Bath Body Wash	165.00	0.00	4	165.00	210	f	210
3741	Paan Corner	Gillette Mach 3 Start	249.00	0.00	6	249.00	116	f	2
3742	Paan Corner	Scalpe Pro Anti dandruff Shampoo 100ml	185.00	0.00	2	185.00	100	f	100
3743	Paan Corner	Johnson's Baby Cream	150.00	0.00	6	150.00	100	f	100
3744	Paan Corner	Johnson's Baby Soap	105.00	0.00	6	105.00	150	f	150
3745	Paan Corner	Himalaya Gentle Baby Shampoo	320.00	17.00	6	265.00	400	f	400
3746	Paan Corner	L'Oreal Paris Shine Masque Royal Jelly Hair Colour	550.00	0.00	3	550.00	88	f	87
3747	Paan Corner	Engage Rush Deodorant For Men	190.00	11.00	6	169.00	150	f	150
3748	Paan Corner	Clean & Clear Foaming Face Wash	140.00	10.00	4	126.00	100	f	100
3749	Paan Corner	Dettol Lather Shaving Cream	75.00	5.00	6	71.00	78	f	78
3750	Paan Corner	Gillette Classic Regular Pre Shave Foam	199.00	0.00	4	199.00	196	f	196
3751	Paan Corner	Dove Daily Shine Conditioner	190.00	0.00	6	190.00	175	f	180
3752	Paan Corner	Johnson's Baby Shampoo	180.00	0.00	6	180.00	200	f	200
3753	Paan Corner	Park Avenue Beer Shampoo 	155.00	9.00	4	140.00	180	f	180
3754	Paan Corner	Pantene Advanced Hair Fall Solution Silky Smooth Care Shampoo	120.00	6.00	6	112.00	180	f	180
3755	Paan Corner	Fem Fairness Naturals Hair Removal Cream Fair & Soft - Rose	65.00	10.00	6	58.00	40	f	40
3756	Paan Corner	Sunsilk Stunning Black Shine Shampoo	555.00	6.00	6	521.00	650	f	650
3757	Paan Corner	Dabur Meswak Toothpaste	100.00	0.00	1	100.00	200	f	200
3758	Paan Corner	Patanjali Kesh Kanti Reetha Hair Cleanser	85.00	0.00	5	85.00	200	f	200
3759	Paan Corner	Nivea Lip Balm Soft Rose for 24h Moisture with Natural Oils Delicate Rose Shine	185.00	8.00	6	169.00	5	f	4
3760	Paan Corner	Santoor Total Skin Care Soap With Sandal & Turmeric	180.00	0.00	6	180.00	600	f	600
3761	Paan Corner	L'Oreal Paris Excellence Creme Hair Color, 4 Natural Brown/Natural Dark Brown	620.00	0.00	1	620.00	172	f	172
3762	Paan Corner	Gillette Pre Shave Foam - Classic Regular Skin	225.00	0.00	6	225.00	418	f	418
3763	Paan Corner	Fiama Di Wills Shower Gel Patchouli & Macadamia	199.00	10.00	6	179.00	250	f	250
3764	Paan Corner	Listerine Fresh Burst Mouthwash	140.00	10.00	4	126.00	250	f	250
3765	Paan Corner	Nivea Cocoa Nourish Body Lotion With Coconut Oil & Cocoa Butter For Very Dry Skin 	299.00	17.00	5	247.00	200	f	200
3766	Paan Corner	Pantene Hair Fall Control Shampoo	240.00	7.00	2	221.00	340	f	340
3767	Paan Corner	Fogg Master - Royal Intense	250.00	0.00	5	250.00	120	f	120
3768	Paan Corner	TRESemme Smooth And Shine Conditioner	220.00	0.00	5	220.00	190	f	190
3769	Paan Corner	Whisper Ultra Clean XL Plus Sanitary Pad	155.00	0.00	6	155.00	870	f	15
3770	Paan Corner	Colgate Kids Toothpaste - 6+ Years, Strawberry Flavour	93.00	5.00	6	88.00	80	f	80
3771	Paan Corner	Nivea Soft Moisturizing Cream	310.00	12.00	1	272.00	200	f	200
3772	Paan Corner	Patanjali Kesh Kanti Aloe Vera Hair Cleanser	85.00	0.00	5	85.00	200	f	200
3773	Paan Corner	Neutrogena Deep Clean Foaming Cleanser	130.00	11.00	2	115.00	50	f	50
3774	Paan Corner	Clean & Clear Morning Energy Berry Face Wash	155.00	6.00	6	145.00	100	f	100
3775	Paan Corner	Pampers Premium Care New Baby Pants	320.00	0.00	4	320.00	24	f	24
3776	Paan Corner	Vaseline Intensive Care Aloe Fresh	225.00	9.00	6	203.00	200	f	200
3777	Paan Corner	L'Oreal Paris Dream Lengths Shampoo	149.00	0.00	6	149.00	192	f	192
3778	Paan Corner	Johnson's Baby Oil	115.00	0.00	4	115.00	100	f	100
3779	Paan Corner	Engage Man Rush Deodorant	195.00	9.00	6	176.00	150	f	150
3780	Paan Corner	Pantene Advanced Hair Fall Solution Shampoo - Total Damage Care	264.00	0.00	6	264.00	340	f	340
3781	Paan Corner	Whisper Daily Liners Clean and Fresh	105.00	0.00	4	105.00	1160	f	20
3782	Paan Corner	Himalaya Men Pimple Clear Neem Face Wash	180.00	9.00	2	163.00	100	f	100
3783	Paan Corner	Pantene Adv Hairfall Solution Conditioner Silky Smooth	190.00	0.00	5	190.00	200	f	200
3784	Paan Corner	Himalaya Prickly Heat Baby Powder	90.00	10.00	6	81.00	100	f	100
3785	Paan Corner	Mamaearth Daily Moisturizing Lotion For Babies	199.00	0.00	6	199.00	200	f	200
3786	Paan Corner	Stayfree Advanced XL Ultra Comfort Sanitary napkins with Wings	175.00	0.00	3	175.00	812	f	14
3787	Paan Corner	Pampers Premium Care Pants - Medium	1099.00	18.00	6	899.00	54	f	54
3788	Paan Corner	Fiama Men's Refreshing Pulse Shower Gel	199.00	10.00	6	179.00	250	f	250
3789	Paan Corner	Vaseline Original Skin Protecting Jelly	125.00	10.00	6	112.00	100	f	100
3790	Paan Corner	Clean & Clear Foaming Face Wash	180.00	10.00	6	162.00	150	f	150
3791	Paan Corner	Fiama Lemongrass and Jojoba Shower Gel	225.00	20.00	6	180.00	250	f	250
3792	Paan Corner	Oral-B Charcoal Cross Cross Extra Soft Toothbrush (Buy 2 Get 1 Free)	180.00	0.00	1	180.00	174	f	3
3793	Paan Corner	Listerine Fresh Burst Mouthwash	285.00	7.00	6	263.00	500	f	500
3794	Paan Corner	Veet Full Body Waxing Kit	235.00	7.00	6	218.00	1160	f	20
3795	Paan Corner	Listerine Original Mouthwash	55.00	9.00	6	50.00	80	f	80
3796	Paan Corner	Santoor Almond Soft With Sandal & Almond Milk	180.00	0.00	2	180.00	625	f	625
3797	Paan Corner	Nivea Body Shea Smooth with Shea Butter for Dry Skin	425.00	20.00	5	340.00	400	f	9
3798	Paan Corner	Neutrogena Deep Clean Facial Cleanser	130.00	0.00	4	130.00	50	f	50
3799	Paan Corner	L'Oreal Paris Excellence Creme Hair Color, 3.16 Burgundy	550.00	0.00	3	550.00	159	f	172
3800	Paan Corner	Johnson's Baby Powder	235.00	0.00	6	235.00	400	f	400
3801	Paan Corner	Bombay Shaving Company Charcoal Face Wash	249.00	0.00	4	249.00	100	f	100
3802	Paan Corner	Colgate Kids 2+ Years Extra Soft Toothbrush	20.00	0.00	3	20.00	58	f	1
3803	Paan Corner	Veet Hair Removal Cream (Normal Skin)	135.00	5.00	6	128.00	50	f	50
3804	Paan Corner	Dove Daily Shine Shampoo	240.00	0.00	4	240.00	340	f	340
3805	Paan Corner	L'Oreal Anti Hair Fall Conditioner	199.00	0.00	6	199.00	192	f	192
3806	Paan Corner	Nivea Body Lotion Aloe Hydration For Normal Skin 	275.00	10.00	6	247.00	200	f	200
3807	Paan Corner	Pampers Pants - Large	1549.00	45.00	3	849.00	82	f	82
3808	Paan Corner	Engage Urge Deodorant For Men, Citrus And Woody, Skin Friendly	195.00	10.00	6	174.00	150	f	150
3809	Paan Corner	Head & Shoulders 2 In 1 Anti Dandruff Smooth & Silky Shampoo+Conditioner	375.00	10.00	6	334.00	340	f	340
3810	Paan Corner	Fem Fairness Natural Gold Skin Bleach	85.00	7.00	4	79.00	64	f	64
3811	Paan Corner	Engage Deo Frost	195.00	9.00	6	176.00	150	f	150
3812	Paan Corner	Stayfree Secure XL Size Sanitary Napkins	115.00	0.00	5	115.00	1160	f	20
3813	Paan Corner	Pampers Pants - Medium	699.00	21.00	1	549.00	50	f	50
3814	Paan Corner	Pampers Active Baby Diapers New Born Extra Small 	1099.00	22.00	3	849.00	72	f	72
3815	Paan Corner	Nivea Creme, All Season Multi-Purpose Cream	175.00	9.00	6	158.00	100	f	100
3816	Paan Corner	Woodwards Gripe Water 	50.00	0.00	4	50.00	130	f	130
3817	Paan Corner	Clean & Clear Morning Energy Aqua Splash Face Wash	145.00	9.00	5	131.00	100	f	100
3818	Paan Corner	Sunsilk Lusciously Thick & Long Shampoo	555.00	6.00	6	521.00	650	f	650
3819	Paan Corner	Mamaearth Skin Correct Face Serum	599.00	15.00	1	509.00	30	f	30
3820	Paan Corner	Chik Hairfall Prevent Egg Shampoo	178.00	0.00	6	178.00	340	f	340
3821	Paan Corner	Pantene Silky Smooth Care Shampoo	225.00	6.00	3	210.00	340	f	340
3822	Paan Corner	Garnier Skin Naturals, Micellar Cleansing Water	199.00	5.00	4	189.00	125	f	125
3823	Paan Corner	Set Wet Swag Avatar Deodorant & Body Spray Perfume For Men	199.00	0.00	1	199.00	150	f	150
3824	Paan Corner	Pampers All Round Protection Pants - Medium	699.00	17.00	6	575.00	50	f	50
3826	Paan Corner	Nupur Heena Mehandi	199.00	0.00	6	199.00	500	f	500
3827	Paan Corner	Head & Shoulders 2-in-1 Active Protect Shampoo	375.00	9.00	6	338.00	340	f	340
3828	Paan Corner	Gillette Mach 3 Turbo Cartridges	649.00	10.00	6	578.00	232	f	4
3829	Paan Corner	TRESemme Smooth And Shine Conditioner	210.00	13.00	1	182.00	190	f	190
3830	Paan Corner	Bombay Shaving Company Sensitive Cartridges	375.00	0.00	2	375.00	116	f	2
3831	Paan Corner	Himalaya Baby Lotion	300.00	12.00	1	264.00	400	f	400
3832	Paan Corner	Old Spice Lime Lather Shaving Cream	75.00	0.00	6	75.00	70	f	70
3833	Paan Corner	Colgate Sensitive Plus Anticavity Toothpaste 	140.00	10.00	6	126.00	70	f	70
3834	Paan Corner	Colgate Toothpaste For Kids Motu Oatlu	93.00	0.00	6	93.00	80	f	80
3835	Paan Corner	Pantene Total Damage Care Shampoo	120.00	0.00	6	120.00	180	f	180
3836	Paan Corner	Himalaya Moisturising Aloe Vera Facial Wipes	100.00	10.00	6	90.00	25	f	25
3837	Paan Corner	Savlon Moisture Shield Hand Wash	69.00	0.00	5	69.00	200	f	200
3838	Paan Corner	Pampers Active Baby Diapers New Born Extra Small	360.00	10.00	6	324.00	24	f	24
3839	Paan Corner	Himalaya Anti Dandruff Shampoo	260.00	18.00	1	213.00	400	f	400
3840	Paan Corner	Himalaya Anti Hair Fall Shampoo	490.00	25.00	4	367.00	700	f	700
3841	Paan Corner	Johnson's Baby Oil	200.00	0.00	6	200.00	200	f	200
3842	Paan Corner	Vaseline Intensive Care Deep Moisture Body Lotion	325.00	0.00	4	325.00	400	f	400
3843	Paan Corner	L'Oreal Paris Dream Lengths Conditioner	199.00	0.00	1	199.00	193	f	193
3844	Paan Corner	Nivea Soft Light Moisturizing Cream	185.00	15.00	6	157.00	100	f	100
3845	Paan Corner	Whisper Ultra Soft XL+ Sanitary Pads	555.00	0.00	1	555.00	60	f	60
3846	Paan Corner	Palmolive Feel The Massage Shower Gel	249.00	20.00	6	199.00	250	f	250
3847	Paan Corner	L'Oreal Paris Dream Lengths Conditioner	209.00	0.00	3	209.00	193	f	193
3848	Paan Corner	Head & Shoulders Anti-Dandruff Smooth & Silky Shampoo	285.00	6.00	6	266.00	340	f	340
3849	Paan Corner	Mamaearth Moisturizing Baby Bath Soap	249.00	0.00	4	249.00	150	f	150
3850	Paan Corner	Listerine Original Mouthwash	150.00	10.00	6	135.00	250	f	250
3851	Paan Corner	Himalaya Gentle Baby Shampoo	170.00	14.00	6	146.00	200	f	200
3852	Paan Corner	Dove Dryness Care Shampoo	268.00	5.00	1	252.00	340	f	340
3853	Paan Corner	Dove Hair Fall Rescue Shampoo	280.00	15.00	6	236.00	340	f	340
3854	Paan Corner	Head & Shoulders Anti Dandruff Shampoo Cool Menthol	295.00	9.00	6	266.00	340	f	340
3855	Paan Corner	Bombay Shaving Company Defender Razor	345.00	0.00	6	345.00	58	f	1
3856	Paan Corner	Head & Shoulders Shampoo + Conditioner - 2-In-1, Cool Menthol	365.00	0.00	1	365.00	340	f	340
3857	Paan Corner	Himalaya Baby Nourishing Massage Oil	200.00	20.00	2	160.00	200	f	250
3858	Paan Corner	Himalaya Baby Powder	235.00	20.00	6	188.00	400	f	400
3859	Paan Corner	Fogg Paradise Fragrant Body Spray For Women 	250.00	0.00	6	250.00	150	f	150
3860	Paan Corner	Revive Revive Liquid	71.00	0.00	6	71.00	200	f	200
3861	Paan Corner	Pantene Hairfall Control Conditioner	190.00	6.00	6	178.00	200	f	200
3862	Paan Corner	Mamaearth Vitamin C Face Toner	399.00	0.00	1	399.00	200	f	200
3863	Paan Corner	Himalaya Diaper Rash Cream	80.00	10.00	2	72.00	20	f	20
3864	Paan Corner	Fogg Royal Fragrance Spray	230.00	0.00	4	230.00	150	f	120
3865	Paan Corner	Dove Pink Rosa Beauty Bathing Bar	245.00	9.00	6	221.00	100	f	100
3866	Paan Corner	Dove Dryness Care Conditioner Frizzy & Dry Hair	90.00	6.00	4	84.00	80	f	80
3867	Paan Corner	Dettol Original Liquid Handwash Refill	109.00	3.00	0	105.00	750	t	750
3868	Paan Corner	Parachute 100% Pure Coconut Oil	123.00	0.00	0	123.00	300	t	300
3869	Paan Corner	Stayfree Secure Cottony Soft Cover Sanitary Pad (Regular) with Wings	30.00	3.00	0	29.00	406	t	7
3870	Paan Corner	Dabur Gulabari Premium Rose Water	48.00	2.00	0	47.00	120	t	120
3871	Paan Corner	Parachute Advansed Gold Coconut Hair Oil	215.00	9.00	0	194.00	400	t	400
3872	Paan Corner	Closeup Everfresh+ Anti-Germ Gel Toothpaste Red Hot	90.00	10.00	0	81.00	150	t	150
3873	Paan Corner	Godrej No.1 Bathing Soap – Lime & Aloe Vera	100.00	16.00	0	84.00	500	t	100
3874	Paan Corner	Sensodyne Sensitive Fresh Gel Toothpaste	115.00	7.00	0	106.00	75	t	75
3875	Paan Corner	Whisper Bindazzz Nights XL + Sanitary Pad	90.00	0.00	0	90.00	406	t	7
3876	Paan Corner	Whisper Choice Sanitary Pad 	32.00	9.00	0	29.00	406	t	7
3877	Paan Corner	Godrej No.1 Bathing Soap, Jasmine	84.00	0.00	0	84.00	400	t	100
3878	Paan Corner	Gillette Venus Close & Clean Razor 	249.00	7.00	0	230.00	58	t	1
3879	Paan Corner	Whisper Choice Regular Sanitary Pads	90.00	3.00	0	87.00	58	t	20
3880	Paan Corner	Stayfree Secure Dry Cover Extra Large Sanitary Pad	42.00	2.00	0	41.00	406	t	7
3881	Paan Corner	Oxylife Natural Radiance 5 Creme Bleach - With Active Oxygen	82.00	9.00	0	74.00	27	t	27
3882	Paan Corner	Clean & Clear Morning Energy Lemon Face Wash	145.00	9.00	0	131.00	100	t	100
3883	Paan Corner	Bajaj Almond Drops Hair Oil	67.00	10.00	0	60.00	100	t	100
3884	Paan Corner	Bajaj Almond Drops Hair Oil Bottle	130.00	7.00	0	120.00	200	t	200
3885	Paan Corner	Whisper Bindazzz Night Sanitary Pads XL Plus	185.00	0.00	0	185.00	870	t	15
3886	Paan Corner	Godrej Cinthol Lime Refreshing Deo Soap	116.00	0.00	0	116.00	400	t	400
3887	Paan Corner	MamyPoko Pants Standard Diapers, Extra Large (12 - 17 kg)	399.00	7.00	0	369.00	26	t	26
3889	Home & Cleaning	Colin Glass and Surface Cleaner Liquid Spray Regular	96.00	7.00	6	89.00	500	f	500
3890	Home & Cleaning	A1 Biodegradable Garbage Dustbin Bags	69.00	0.00	6	69.00	30	f	30
3891	Home & Cleaning	Mortein Cockroach Killer Spray, Crawling insect killer with Deep-Reach Nozzle	189.00	5.00	2	179.00	425	f	425
3892	Home & Cleaning	Pril Perfect Lime Dishwash Liquid	190.00	7.00	4	175.00	750	f	750
3893	Home & Cleaning	Dettol Antiseptic Disinfectant Liquid	66.00	0.00	6	66.00	125	f	125
3894	Home & Cleaning	Godrej Aer Power Pocket Berry Rush	55.00	0.00	3	55.00	10	f	10
3895	Home & Cleaning	Hit Cockroach Killer Spray 	101.00	2.00	4	98.00	200	f	200
3896	Home & Cleaning	Vim Dishwash Liquid Gel Lemon	185.00	5.00	1	175.00	750	f	750
3897	Home & Cleaning	Harpic Disinfectant Toilet Cleaner Liquid, Original - 1 L	178.00	0.00	6	178.00	1000	f	1
3898	Home & Cleaning	Odomos Mosquito Repellent Cream 	50.00	8.00	6	46.00	50	f	50
3899	Home & Cleaning	Harpic Disinfectant Bathroom Cleaner Liquid Lemon	189.00	5.00	6	179.00	1000	f	1
3900	Home & Cleaning	Eveready AA pack of 10 	150.00	4.00	6	143.00	580	f	10
3901	Home & Cleaning	Cherry Blossom Liquid Wax Polish	98.00	5.00	6	93.00	75	f	75
3902	Home & Cleaning	Gala Scrubber Cleaner Home Everyday Scrub	35.00	2.00	6	34.00	58	f	1
3903	Home & Cleaning	Hit Flower Lime Fragrance Insect Killer Spray	182.00	3.00	6	176.00	400	f	400
3904	Home & Cleaning	Harpic Hygienic Toilet Cleaner Rim Block Jasmine	82.00	6.00	4	77.00	26	f	26
3905	Home & Cleaning	Om Bhakti - Pancha Deepa Oil 	199.00	10.00	6	179.00	1000	f	1
3906	Home & Cleaning	Ariel Complete Detergent Washing Powder 500 g  + 200 g Free	135.00	0.00	6	135.00	500	f	500
3907	Home & Cleaning	Surf Excel Matic Top Load Detergent Powder	200.00	6.00	1	188.00	1000	f	1
3908	Home & Cleaning	Harpic Flushmatic In-Cistern Toilet Cleaner Blocks Marine	154.00	7.00	4	143.00	100	f	100
3909	Home & Cleaning	Eveready 1012 Carbon Zinc AAA Battery	150.00	4.00	2	143.00	580	f	10
3910	Home & Cleaning	Surf Excel Matic Front Load Detergent Liquid	225.00	1.00	6	221.00	1000	f	1
3911	Home & Cleaning	Origami Kitchen Towels 2 In 1 Quilted 2ply	140.00	10.00	6	126.00	116	f	2
3912	Home & Cleaning	Oxi Green Phenyl - Pine 	82.00	9.00	6	74.00	1000	f	1
3913	Home & Cleaning	Surf Excel Easy Wash Detergent Liquid	170.00	0.00	6	169.00	1000	f	1
3914	Home & Cleaning	Uno Playing Card Game	149.00	9.00	2	135.00	58	f	1
3915	Home & Cleaning	Chakaachak Mini Cloth Brush	40.00	2.00	1	39.00	58	f	1
3916	Home & Cleaning	Chakaachak Super Scrub Pad (Pack of 3)	35.00	2.00	2	34.00	174	f	3
3917	Home & Cleaning	Colin Glass and Surface Cleaner Liquid Spray Regular	62.00	6.00	5	58.00	250	f	250
3918	Home & Cleaning	Om Bhakti Cow Dung Cakes 	16.00	0.00	6	16.00	290	f	5
3919	Home & Cleaning	Dettol Antiseptic Liquid	33.00	0.00	4	33.00	60	f	60
3920	Home & Cleaning	Harpic Hygienic Toilet Cleaner Rim Block Citrus	82.00	6.00	6	77.00	26	f	26
3921	Home & Cleaning	Eveready Ultima Alkaline AA Cell Battery-6 Pc Pack	210.00	10.00	6	189.00	348	f	6
3922	Home & Cleaning	Mangaldeep Rose Puja Agarbatti 	65.00	9.00	4	59.00	120	f	120
3923	Home & Cleaning	Ariel Matic Top Load Detergent Washing Powder	225.00	0.00	6	225.00	1000	f	1
3924	Home & Cleaning	Gala Cloth Poccha/Mop	125.00	9.00	6	113.00	58	f	1
3925	Home & Cleaning	Chakaachak Floor Cleaning Pocha	50.00	2.00	6	49.00	58	f	1
3926	Home & Cleaning	Oxi Green Floor Cleaner - Floral	179.00	10.00	6	161.00	1000	f	1
3927	Home & Cleaning	Godrej Aer Pocket, Bathroom Air Fragrance - Assorted Pack Of 3	160.00	0.00	6	160.00	30	f	30
3928	Home & Cleaning	Ariel Complete Detergent Washing Powder 1 kg + 500 g Free	280.00	6.00	6	263.00	1500	f	1
3929	Home & Cleaning	Chakaachak Sponge Scrubber (Pack of 2)	45.00	2.00	6	44.00	116	f	2
3930	Home & Cleaning	Lizol Disinfectant Surface & Floor Cleaner Liquid Floral	103.00	5.00	6	97.00	500	f	500
3931	Home & Cleaning	Harpic Germ & Stain Blaster Disinfectant Toilet Cleaner Floral	148.00	7.00	6	137.00	750	f	750
3932	Home & Cleaning	Hit Lime Fresh Flying Insect Killer	269.00	0.00	6	269.00	385	f	385
3933	Home & Cleaning	Fevistik Super Glue Stick	40.00	2.00	6	39.00	15	f	15
3934	Home & Cleaning	Godrej Ezee Liquid Detergent	175.00	0.00	6	175.00	1000	f	1
3935	Home & Cleaning	Odonil Air Fresher Buy 3 Get 1 Free	225.00	5.00	3	213.00	300	f	300
3936	Home & Cleaning	Godrej Aer Power Pocket - Long Lasting Bathroom Fragrance Fresh Blossom	55.00	0.00	6	55.00	10	f	10
3937	Home & Cleaning	Genteel Liquid Detegrent	320.00	0.00	6	320.00	2000	f	2
3938	Home & Cleaning	Scotch Brite Scrub Pad	75.00	9.00	6	68.00	290	f	5
3939	Home & Cleaning	Shubh kart - Nirmal Eco Box Chandan Agarbatti - 100g	65.00	13.00	5	56.00	100	f	100
3940	Home & Cleaning	Surf Excel Quick Wash	600.00	8.00	1	549.00	4000	f	4
3941	Home & Cleaning	Hem Mantra Masala Agarbatti	85.00	7.00	1	79.00	50	f	50
3942	Home & Cleaning	Odonil Room Air Freshener Spray Lavender Mist	149.00	5.00	4	141.00	240	f	240
3943	Home & Cleaning	Chakaachak Mega Star Toilet Brush	110.00	2.00	4	107.00	58	f	1
3944	Home & Cleaning	Om Bhakti Wick for Diya - Cotton Long Batti 	19.00	0.00	4	19.00	50	f	50
3945	Home & Cleaning	Origami Non-Woven Kitchen Towel	190.00	14.00	4	162.00	80	f	80
3946	Home & Cleaning	Shubh kart - Nirmal 5 in 1 Agarbatti Zipper - 150g	65.00	13.00	6	56.00	150	f	150
3947	Home & Cleaning	Harpic Lemon Bathroom Cleaner 	95.00	9.00	6	86.00	500	f	500
3948	Home & Cleaning	Scotch Brite Sponge Wipes	200.00	0.00	2	200.00	174	f	3
3949	Home & Cleaning	Godrej Aer Spray Fresh Lush Green	150.00	16.00	2	126.00	240	f	240
3950	Home & Cleaning	Oxi Green Phenyl Concentrate	200.00	10.00	6	180.00	1000	f	1
3951	Home & Cleaning	Oxi Green Max Force Green Concentrate	107.00	10.00	3	96.00	500	f	500
3952	Home & Cleaning	Godrej Aer Morning Misty Meadows Home Air Freshener	150.00	0.00	4	149.00	240	f	240
3953	Home & Cleaning	Kiwi Dranex Drain Cleaner	135.00	9.00	1	122.00	348	f	6
3954	Home & Cleaning	Origami Disposable Spoons	80.00	10.00	3	72.00	1160	f	20
3955	Home & Cleaning	Pril Bar Tub	55.00	0.00	1	55.00	500	f	500
3956	Home & Cleaning	Om Bhakti Wick for Diya - Cotton Flower Batti 	19.00	0.00	4	19.00	60	f	60
3957	Home & Cleaning	Chakaachak Deluxe Dustpan Grey	68.00	2.00	3	66.00	58	f	1
3958	Home & Cleaning	Lizol Disinfectant Surface & Floor Cleaner Liquid Citrus	205.00	8.00	3	188.00	975	f	975
3959	Home & Cleaning	ScotchBrite Premium Kitchen Towels	150.00	18.00	3	123.00	174	f	1
3960	Home & Cleaning	Vanish All in One Powder Detergent Booster	210.00	10.00	2	189.00	400	f	400
3961	Home & Cleaning	Good Knight Fabric Personal Mosquito Repellent Roll On	75.00	0.00	3	75.00	8	f	8
3962	Home & Cleaning	Gala Iron Bull Scrub Pad	140.00	10.00	6	126.00	174	f	3
3963	Home & Cleaning	Tide Plus Extra Power Lemon & Mint Detergent Powder	215.00	1.00	6	211.00	2000	f	2
3964	Home & Cleaning	Chakaachak Dustpan Grey	70.00	2.00	5	68.00	58	f	1
3965	Home & Cleaning	Mortein PowerGard Rat Kill Cake	64.00	6.00	6	60.00	100	f	100
3966	Home & Cleaning	Odomos Mosquito Repellent Cream	25.00	0.00	1	25.00	23	f	25
3967	Home & Cleaning	Shubh kart - Nirmal Eco Box Sugandhi Mogra Agarbatti - 100g	65.00	13.00	6	56.00	100	f	100
3968	Home & Cleaning	Cherry Blossom Wax Shoe Polish Black	68.00	5.00	6	64.00	40	f	40
3969	Home & Cleaning	Origami Paper Plates	240.00	15.00	5	204.00	50	f	50
3970	Home & Cleaning	Gala Microfiber Magic Cloth 2-In-1	175.00	9.00	6	158.00	58	f	1
3971	Home & Cleaning	Mr Muscle Dranex Drain Cleaner Kiwi	160.00	6.00	4	149.00	375	f	375
3972	Home & Cleaning	Lizol Disinfectant Surface & Floor Cleaner Liquid Jasmine	103.00	5.00	6	97.00	500	f	500
3973	Home & Cleaning	Odonil Room Spray Air Freshener Citrus Fres	150.00	12.00	4	132.00	137	f	137
3974	Home & Cleaning	Scotch Brite Power Scrub Pad	50.00	2.00	6	49.00	58	f	1
3975	Home & Cleaning	Origami Good Karma Toilet Roll	275.00	14.00	6	234.00	232	f	1
3976	Home & Cleaning	Shubh kart - Shubhkart Sambrani Cup Black 12n	80.00	6.00	4	75.00	696	f	12
3977	Home & Cleaning	Gala Scrubber Pad	75.00	9.00	5	68.00	290	f	5
3978	Home & Cleaning	Origami So Soft Tissue Roll Single - 340 Pulls 3 Ply	80.00	0.00	1	80.00	58	f	1
3979	Home & Cleaning	Odomos lotion - Mosquito Repellent	90.00	8.00	6	82.00	120	f	120
3980	Home & Cleaning	Surf Excel Matic Front Load Detergent Powder	530.00	4.00	6	507.00	2000	f	2
3981	Home & Cleaning	Fevicol Mr.Original General Purpose White Glue 	50.00	2.00	6	49.00	105	f	100
3982	Home & Cleaning	Aro Aluminium Container with Lid 230 ml	75.00	9.00	3	68.00	25	f	25
3983	Home & Cleaning	Harpic Power Fresh 6 Toilet Cleaner Rim Block Floral Delight	188.00	10.00	6	169.00	35	f	35
3984	Home & Cleaning	Origami So Soft Tissue Roll 3 Ply	390.00	11.00	6	347.00	696	f	12
3985	Home & Cleaning	Ariel Matic Front Load Detergent Washing Powder	800.00	15.00	6	680.00	3000	f	3
3986	Home & Cleaning	Gala Double Hockey Toilet Brush	150.00	10.00	6	135.00	58	f	1
3987	Home & Cleaning	Surf Excel Detergent Bar Value Pack	114.00	0.00	6	114.00	800	f	800
3988	Home & Cleaning	Odonil Zipper Blissful Citrus	55.00	0.00	1	55.00	10	f	10
3989	Home & Cleaning	Eveready Base B22 9-Watt LED Bulb	150.00	0.00	2	150.00	58	f	1
3990	Home & Cleaning	Scotch Brite Sponge Wipe	330.00	10.00	6	297.00	290	f	5
3991	Home & Cleaning	Domex Disinfectant Floor Cleaner	180.00	5.00	6	170.00	1000	f	1
3992	Home & Cleaning	Surf Excel Matic Powder Front Load 	810.00	7.00	2	750.00	4000	f	4
3993	Home & Cleaning	Scotch Brite Silver Sparks Scrub Pad	90.00	10.00	6	81.00	348	f	3
3994	Home & Cleaning	Airwick Room Air Freshener Spray Cool Water & Aloe Vera	161.00	5.00	6	152.00	245	f	245
3995	Home & Cleaning	Shubh kart - Surabhi Camphor Pouch 50g	95.00	9.00	6	86.00	50	f	50
3996	Home & Cleaning	Pril Power Of Active Boosters	102.00	0.00	1	102.00	400	f	400
3997	Home & Cleaning	Scotch Brite Tough Scrubber Brush	150.00	6.00	6	140.00	58	f	1
3998	Home & Cleaning	Mortein Dual All Insect Killer Spray	280.00	10.00	6	252.00	600	f	600
3999	Home & Cleaning	Lizol Double Concentrate Disinfectant Floor Cleaner Lavender	325.00	10.00	6	292.00	900	f	900
4000	Home & Cleaning	Eveready Ultima Alkaline Battery AAA	68.00	0.00	6	68.00	116	f	2
4001	Home & Cleaning	Shubh kart - Tejas Twisted Cotton Wicks 1000n	30.00	6.00	6	28.00	1000	f	1000
4002	Home & Cleaning	Lizol Double Concentrate Disinfectant Floor Cleaner Citrus	650.00	8.00	6	598.00	1900	f	1
4003	Home & Cleaning	Surf Excel Matic Top Load	720.00	9.00	4	649.00	4000	f	4
4004	Home & Cleaning	Oxi Green Dish Wash Liquid - Lemon	105.00	6.00	6	98.00	500	f	500
4005	Home & Cleaning	Mangalam Camphor	100.00	10.00	6	90.00	50	f	50
4006	Home & Cleaning	Cherry Blossom Liquid Wax Polish (Dark Tan)	98.00	5.00	6	93.00	75	f	75
4007	Home & Cleaning	Gala EzeeSqueegee Wiper	150.00	10.00	6	135.00	58	f	1
4008	Home & Cleaning	Lizol Disinfectant Surface & Floor Cleaner Liquid Pine	205.00	8.00	6	188.00	975	f	975
4009	Home & Cleaning	Philips Stellar Bright 16W Light Bulb	390.00	16.00	6	324.00	58	f	1
4010	Home & Cleaning	Airwick EverFresh Gel Bathroom Air Freshener - Lavender Dew	70.00	10.00	6	63.00	50	f	50
4011	Home & Cleaning	Origami Cups Plain 100 units	155.00	14.00	5	132.00	100	f	100
4012	Home & Cleaning	Airwick EverFresh Gel Bathroom Air Freshener - Citrus Splash	70.00	10.00	6	63.00	50	f	50
4013	Home & Cleaning	Ariel Matic Liquid Detergent Front Load	250.00	0.00	6	250.00	1000	f	1
4015	Home & Cleaning	Odonil Air Freshner Lavender Meadows	75.00	5.00	4	71.00	75	f	75
4016	Home & Cleaning	Om Bhakti Haldi 	12.00	0.00	4	12.00	15	f	15
4017	Home & Cleaning	Cherry Blossom Wax Shoe Polish Dark Tan	68.00	5.00	6	64.00	40	f	40
4018	Home & Cleaning	Dabur Odomos Naturals Mosquito Repellant Gel	75.00	8.00	4	69.00	80	f	80
4019	Home & Cleaning	Shubh kart - Nirmal sugandhi mogra wet dhoop zipper 20 sticks	30.00	6.00	6	28.00	1160	f	20
4020	Home & Cleaning	Lizol Disinfectant Surface & Floor Cleaner Liquid Floral	205.00	8.00	6	188.00	975	f	975
4021	Home & Cleaning	Om Bhakti Wick for Diya - Ghee Cotton Wicks Big 	189.00	10.00	6	170.00	30	f	30
4022	Home & Cleaning	Air Wick Room Air Freshener Spray - Lavender & Lotus	161.00	5.00	6	152.00	245	f	245
4023	Home & Cleaning	Scotch Brite Kitchen Sink Brush	135.00	9.00	5	122.00	58	f	1
4024	Home & Cleaning	Odonil Room Air Freshener Spray - Lavender Mist	150.00	12.00	1	132.00	137	f	137
4025	Home & Cleaning	Godrej Aer Power Pocket - Long Lasting Bathroom Fragrance Lavender Bloom	55.00	0.00	4	55.00	10	f	10
4026	Home & Cleaning	Origami Good Karma Paper Serviettes 	80.00	10.00	6	72.00	50	f	50
4027	Home & Cleaning	Scotch Magic Tape	115.00	14.00	6	98.00	58	f	1
4028	Home & Cleaning	Ambi Pur Car Freshener Gel - Relaxing Lavender	299.00	10.00	2	269.00	75	f	75
4029	Home & Cleaning	Origami Kitchen Towels 4 in 1 60 Pulls 2 Ply	265.00	0.00	6	265.00	58	f	1
4030	Home & Cleaning	Ariel Matic Liquid Detergent Front Load	225.00	0.00	6	225.00	1000	f	1
4031	Home & Cleaning	Om Bhakti Wick for Diya - Ghee Cotton Wicks Small 	139.00	10.00	6	125.00	30	f	30
4032	Home & Cleaning	Chakaachak Super Strong Scrub	29.00	3.00	5	28.00	58	f	1
4033	Home & Cleaning	Nimyle Lemongrass Floor Cleaner	165.00	5.00	5	156.00	975	f	975
4034	Home & Cleaning	Oxi Green Floor Cleaner - Citrus 	179.00	10.00	6	161.00	1000	f	1
4035	Home & Cleaning	Airwick Room Air Freshener Spray - Rose & Saffron	161.00	5.00	5	152.00	245	f	245
4036	Home & Cleaning	Origami Luxuria Kitchen Towel 300 Pulls Single	320.00	0.00	2	320.00	58	f	1
4037	Home & Cleaning	Philips EyePro 10.5W Light Bulb	220.00	10.00	6	198.00	58	f	1
4038	Home & Cleaning	Mangalam Camphor Tablet Jar	280.00	10.00	6	252.00	100	f	100
4039	Home & Cleaning	Chakaachak Super Sponge Wipes (Pack of 3)	140.00	0.00	6	140.00	174	f	3
4040	Home & Cleaning	Origami Good Karma Paper Serviettes - 100 napkins (1 ply)	78.00	10.00	6	70.00	58	f	1
4041	Home & Cleaning	Robin Dazzling Liquid Blue After Wash	74.00	5.00	6	70.00	200	f	200
4042	Home & Cleaning	Om Bhakti Camphor Big	119.00	10.00	6	107.00	40	f	40
4043	Home & Cleaning	Om Bhakti Wick for Diya - Cotton Long Batti 	20.00	0.00	6	20.00	75	f	75
4044	Home & Cleaning	Om Bhakti Camphor Small	79.00	10.00	6	71.00	25	f	25
4045	Home & Cleaning	Ariel Matic Top Load Detergent Washing Powder	499.00	0.00	1	499.00	2000	f	2
4046	Home & Cleaning	Scotch Brite Multi-Purpose Sponge Wipes	700.00	17.00	6	581.00	580	f	10
4047	Home & Cleaning	Surabhi Pure Camphor	50.00	2.00	6	49.00	25	f	25
4048	Home & Cleaning	Lizol Double Concentrate Disinfectant Floor Cleaner Citrus	325.00	5.00	6	308.00	900	f	900
4049	Home & Cleaning	Chakaachak Floor Pocha Large	50.00	0.00	1	50.00	58	f	1
4050	Home & Cleaning	Ariel Matic Front Load Liquid Detergent	220.00	0.00	4	220.00	1000	f	1
4051	Home & Cleaning	Harpic Power Fresh 6 Toilet Cleaner Rim Block Marine Splash	188.00	10.00	4	169.00	35	f	35
4052	Home & Cleaning	Chakaachak Dust Proof Broom	180.00	2.00	6	175.00	58	f	1
4054	Home & Cleaning	Om Bhakti Kumkum 	12.00	0.00	6	12.00	15	f	15
4055	Home & Cleaning	Apsara Non Dust Eraser	60.00	10.00	5	54.00	1160	f	20
4056	Home & Cleaning	Chakaachak Power Scrub (Pack of 2)	42.00	2.00	6	41.00	116	f	2
4057	Home & Cleaning	Om Bhakti Wick for Diya - Vanaspati Ghee Cotton Wicks Small 	69.00	11.00	6	61.00	30	f	30
4058	Home & Cleaning	Whiskas Adult +1 year Salmon in Gravy	250.00	10.00	3	225.00	85	f	1
4059	Home & Cleaning	Origami Paper Party Plates	240.00	0.00	6	240.00	580	f	50
4060	Home & Cleaning	Gala Microfiber Multipurpose Cloth	140.00	7.00	6	129.00	58	f	1
4061	Home & Cleaning	Ariel Matic Front Load Detergent Powder	260.00	0.00	6	260.00	1000	f	1
4062	Home & Cleaning	Ariel Matic Liquid Detergent Front Load	250.00	0.00	4	250.00	1000	f	1
4063	Home & Cleaning	Vim Dishwash Bar	23.00	4.00	0	22.00	300	t	300
4064	Home & Cleaning	Dettol Effective Protection Antiseptic Liquid	116.00	0.00	0	116.00	250	t	250
4065	Home & Cleaning	Godrej Good Night Gold Flash Liquid Vapouriser	89.00	0.00	0	89.00	60	t	60
4066	Home & Cleaning	Rin Detergent Powder	86.00	2.00	0	84.00	1000	t	1
4067	Home & Cleaning	Surf Excel Easy Wash Detergent Powder	136.00	3.00	0	131.00	1000	t	1
4068	Home & Cleaning	Rin Detergent Bar	10.00	0.00	0	10.00	140	t	140
4069	Home & Cleaning	Odomos Mosquito Repellent Spray	90.00	8.00	0	82.00	100	t	100
4070	Home & Cleaning	Chakaachak Super Steel Scrubber	12.00	8.00	0	11.00	58	t	1
4071	Home & Cleaning	Scotch-Brite Scrub Sponge Ideal For Dishwash Liquid	65.00	9.00	0	59.00	116	t	2
4072	Home & Cleaning	Gala No Dust Broom	190.00	7.00	0	175.00	58	t	1
4073	Home & Cleaning	Chakaachak Eazo Grass Broom New 	105.00	2.00	0	102.00	58	t	1
4074	Home & Cleaning	Vim Dishwash Bar	45.00	0.00	0	45.00	600	t	600
4075	Home & Cleaning	Rin Fabric Whitener Detergent	69.00	10.00	0	62.00	500	t	500
4076	Home & Cleaning	Comfort After Wash Fabric Conditioner Lily Fresh 	235.00	9.00	0	212.00	860	t	860
4077	Home & Cleaning	Ujala Superme For Super Whiteness Of Clothes	25.00	0.00	0	25.00	75	t	75
4078	Home & Cleaning	Surf Excel Quick Wash	208.00	6.00	0	195.00	1000	t	1
4079	Home & Cleaning	Scotch BOPP Packaging Tape	80.00	15.00	0	68.00	58	t	1
4080	Home & Cleaning	Origami Plates Plain	250.00	10.00	0	225.00	100	t	100
4081	Home & Cleaning	Dettol Antiseptic Liquid	30.00	0.00	0	30.00	60	t	60
4082	Health & Hygiene	Epigamia Fruit Yogurt Alphonso Mango	40.00	50.00	6	20.00	75	f	75
4083	Health & Hygiene	Epigamia Fruit Yogurt Vanilla	40.00	50.00	6	20.00	75	f	75
4084	Health & Hygiene	Nestle A+ Actiplus Probiotic Dahi Plain Curd	78.00	3.00	5	75.00	400	f	400
4085	Health & Hygiene	Dettol Original Germ Protection Alcohol Based Hand Sanitizer	25.00	0.00	6	25.00	50	f	50
4086	Health & Hygiene	Dettol Antiseptic Disinfectant Liquid	66.00	0.00	6	66.00	125	f	125
4087	Health & Hygiene	Durex Air Ultra Thin Condoms	82.00	0.00	6	82.00	174	f	3
4088	Health & Hygiene	Durex Air Ultra Thin Condom	245.00	10.00	6	220.00	580	f	10
4089	Health & Hygiene	Dabur Regular Hajmola	45.00	6.00	6	42.00	120	f	120
4090	Health & Hygiene	Hajmola Anardana Digestive Tablets	45.00	6.00	2	42.00	120	f	180
4091	Health & Hygiene	Zandu Balm	40.00	10.00	4	36.00	8	f	8
4092	Health & Hygiene	Vicks Cough Drops Menthol	20.00	0.00	6	20.00	1160	f	20
4093	Health & Hygiene	Durex Extra Time Condoms	228.00	10.00	6	205.00	580	f	10
4094	Health & Hygiene	Vicks Vaporub	85.00	9.00	6	77.00	25	f	25
4095	Health & Hygiene	Dettol Antiseptic Liquid	33.00	0.00	4	33.00	60	f	60
4096	Health & Hygiene	Veet Sensitive Skin Hair Removal Cream	135.00	5.00	6	128.00	50	f	50
4097	Health & Hygiene	Vicks VapoRub	145.00	11.00	2	129.00	50	f	50
4098	Health & Hygiene	Dabur Hajmola Imli Digestive Tablets	45.00	6.00	6	42.00	120	f	120
4099	Health & Hygiene	Dettol Antiseptic Liquid + Disinfectant Spray - Original	159.00	10.00	6	143.00	225	f	225
4100	Health & Hygiene	Iodex Body Pain Expert 	40.00	2.00	6	39.00	8	f	8
4101	Health & Hygiene	Patanjali Hing Goli	65.00	10.00	4	58.00	100	f	100
4102	Health & Hygiene	Moov Fast Pain Relief Cream	189.00	15.00	6	160.00	50	f	50
4103	Health & Hygiene	Dettol Hand Sanitizer	100.00	5.00	6	95.00	200	f	200
4104	Health & Hygiene	Whisper Ultra Soft XL+ Sanitary Pads	330.00	2.00	6	323.00	30	f	30
4105	Health & Hygiene	Whisper Choice Regular Wing Sanitary Pad	30.00	0.00	2	30.00	406	f	7
4106	Health & Hygiene	Savlon Surface Disinfectant Spray	165.00	10.00	6	148.00	170	f	170
4107	Health & Hygiene	Durex Extra Thin Condoms	228.00	10.00	6	205.00	580	f	10
4108	Health & Hygiene	Stayfree Secure Dry Cover Regular Sanitary Pad With Wings	30.00	3.00	6	29.00	406	f	7
4109	Health & Hygiene	Eno Fruit Salt Lemon Flavour Energy Powder	130.00	10.00	6	117.00	100	f	100
4110	Health & Hygiene	Moov Pain Relief Specialist Spray	149.00	5.00	5	141.00	35	f	35
4111	Health & Hygiene	Savlon Germ Protection Wipes	189.00	10.00	6	170.00	72	f	72
4112	Health & Hygiene	Veet Hair Removal Cream Dry Skin	135.00	5.00	5	128.00	50	f	50
4113	Health & Hygiene	Whisper Ultra Soft Air Fresh Sanitary Pads (XL) with Wings	315.00	0.00	4	315.00	30	f	30
4114	Health & Hygiene	Whisper Choice Regular Sanitary Pads	90.00	0.00	6	90.00	1160	f	20
4115	Health & Hygiene	Whisper Ultra Clean Wings XL+  Pouch	449.00	7.00	6	415.00	44	f	44
4116	Health & Hygiene	Durex Extra Ribbed Condoms	245.00	10.00	2	220.00	580	f	10
4117	Health & Hygiene	Eno Regular Fruit Salt Energy Powder	130.00	0.00	6	130.00	100	f	100
4118	Health & Hygiene	Durex Extra Thin Bubblegum Condom	150.00	10.00	6	135.00	580	f	10
4119	Health & Hygiene	Dabur Hajmola Pudina - Digestive Tablets	45.00	6.00	6	42.00	120	f	120
4120	Health & Hygiene	Baidyanath Isabgol	110.00	22.00	3	85.00	100	f	100
4121	Health & Hygiene	Kapiva Thar Aloe Vera Juice	299.00	15.00	6	254.00	1000	f	1
4122	Health & Hygiene	Fine Life Cotton Balls	110.00	10.00	6	99.00	100	f	100
4123	Health & Hygiene	Stayfree Dry Max All Night XL Dry Cover Sanitary Pads	340.00	12.00	6	298.00	28	f	28
4124	Health & Hygiene	Moov Pain Releiver Spray	290.00	15.00	6	246.00	80	f	80
4125	Health & Hygiene	Whisper Ultra Clean XL Plus Sanitary Pad	175.00	0.00	5	175.00	870	f	15
4126	Health & Hygiene	Durex Condoms Mutual Climax	120.00	0.00	6	120.00	174	f	3
4127	Health & Hygiene	Durex Extra Dots Condoms	228.00	10.00	6	205.00	580	f	10
4128	Health & Hygiene	Zandu Balm Ulter Power For Strong Headache Bodyache & Cold	45.00	8.00	6	41.00	8	f	8
4129	Health & Hygiene	Dabur Hajmola Maha Candy - Aam+Imli	130.00	5.00	1	123.00	130	f	130
4130	Health & Hygiene	Whisper Choice Ultra XL Sanitary Pad	133.00	2.00	5	130.00	1160	f	20
4131	Health & Hygiene	Veet Full Body Waxing Kit For Dry Skin	235.00	7.00	6	218.00	1160	f	20
4132	Health & Hygiene	Dabur Chyawanprakash - Sugar Free	415.00	7.00	6	385.00	900	f	900
4133	Health & Hygiene	Zandu Balm	85.00	10.00	5	76.00	25	f	25
4134	Health & Hygiene	Himalaya Cold Balm	125.00	9.00	6	113.00	45	f	45
4135	Health & Hygiene	Dettol Clinical Strength Hand Sanitizer Liquid	250.00	10.00	6	225.00	500	f	500
4136	Health & Hygiene	Kapiva Wild Amla Juice	249.00	14.00	6	212.00	1000	f	1
4137	Health & Hygiene	Dabur Chyawanprash	349.00	3.00	6	338.00	950	f	1
4138	Health & Hygiene	Amrutanjan Pain Balm Extra Power	100.00	11.00	6	89.00	28	f	27
4139	Health & Hygiene	Stayfree Dry-Max All Night Ultra-Dry Sanitary Pad	90.00	10.00	6	81.00	406	f	7
4140	Health & Hygiene	Whisper Ultra Clean XL Plus Sanitary Pad	155.00	0.00	6	155.00	870	f	15
4141	Health & Hygiene	Durex Mutual Climax Condoms	360.00	15.00	6	306.00	580	f	10
4142	Health & Hygiene	Whisper Daily Liners Clean and Fresh	105.00	0.00	4	105.00	1160	f	20
4143	Health & Hygiene	Moov Cream Regular	50.00	6.00	4	47.00	10	f	10
4144	Health & Hygiene	Moov Pain Relief Specialist	75.00	5.00	6	71.00	15	f	15
4145	Health & Hygiene	Dabur Chyawanprakash Sugar Free	235.00	5.00	6	223.00	500	f	500
4146	Health & Hygiene	Baidyanath Isabgol	110.00	22.00	5	85.00	100	f	100
4147	Health & Hygiene	Veet Hair Removal Cream (Normal Skin)	135.00	5.00	6	128.00	50	f	50
4148	Health & Hygiene	Stayfree Advanced XL Ultra Comfort Sanitary napkins with Wings	175.00	0.00	3	175.00	812	f	14
4149	Health & Hygiene	Savlon Clothes Disinfectant & Refreshing Spray Fresh Breeze	175.00	10.00	6	157.00	230	f	230
4150	Health & Hygiene	Dabur Chyawanprash Immunity Booster	190.00	6.00	6	177.00	500	f	500
4151	Health & Hygiene	Vicks Inhaler with Keychain	105.00	9.00	4	95.00	116	f	2
4152	Health & Hygiene	Stayfree Secure XL Size Sanitary Napkins	115.00	0.00	5	115.00	1160	f	20
4153	Health & Hygiene	Dabur Ayurvedic Tulsi Drops (Immunity Booster)	195.00	6.00	6	182.00	30	f	30
4154	Health & Hygiene	Organic India Wheat Grass	395.00	20.00	4	316.00	100	f	100
4155	Health & Hygiene	Organic India Organic Chyawanprash	495.00	20.00	6	396.00	500	f	500
4156	Health & Hygiene	Organic India Sugar Balance 60 Capsules Bottle	225.00	0.00	6	225.00	60	f	60
4157	Health & Hygiene	Whisper Ultra Soft XL+ Sanitary Pads	555.00	0.00	1	555.00	60	f	60
4158	Health & Hygiene	Dabur - Chyawanprash	99.00	0.00	1	99.00	250	f	25
4159	Health & Hygiene	Vicks BabyRub	105.00	11.00	6	93.00	25	f	25
4160	Health & Hygiene	Bombay Shaving Company Sensitive Cartridges	375.00	0.00	2	375.00	116	f	2
4161	Health & Hygiene	Organic India Brahmi Bottle	205.00	20.00	1	164.00	60	f	60
4162	Health & Hygiene	Horlicks Protein Plus Chocolate	270.00	0.00	2	270.00	200	f	200
4163	Health & Hygiene	Dabur Nature Care Isabgol - Double Action	140.00	5.00	6	133.00	100	f	100
4164	Health & Hygiene	Kapiva Wild Tulsi Giloy Juice |	400.00	15.00	1	340.00	1000	f	1
4165	Health & Hygiene	Dabur Amla Juice	235.00	15.00	6	199.00	1000	f	1
4166	Health & Hygiene	Epigamia Fruit Yogurt Strawberry	40.00	50.00	0	20.00	75	t	75
4167	Health & Hygiene	Dettol Effective Protection Antiseptic Liquid	116.00	0.00	0	116.00	250	t	250
4168	Health & Hygiene	Stayfree Secure Cottony Soft Cover Sanitary Pad (Regular) with Wings	30.00	3.00	0	29.00	406	t	7
4169	Health & Hygiene	Eno Cooling Sachets - Cool Mint, 6 Pieces Carton	54.00	11.00	0	48.00	5	t	5
4170	Health & Hygiene	Whisper Choice Sanitary Pad 	32.00	9.00	0	29.00	406	t	7
4171	Health & Hygiene	Whisper Bindazzz Nights XL + Sanitary Pad	90.00	0.00	0	90.00	406	t	7
4172	Health & Hygiene	Gillette Venus Close & Clean Razor 	249.00	7.00	0	230.00	58	t	1
4173	Health & Hygiene	Whisper Choice Regular Sanitary Pads	90.00	3.00	0	87.00	58	t	20
4174	Health & Hygiene	Stayfree Secure Dry Cover Extra Large Sanitary Pad	42.00	2.00	0	41.00	406	t	7
4175	Health & Hygiene	Dabur Honitus Herbal Cough Remedy Ayurvedic Syrup	105.00	15.00	0	89.00	100	t	100
4176	Health & Hygiene	Whisper Bindazzz Night Sanitary Pads XL Plus	185.00	0.00	0	185.00	870	t	15
4177	Health & Hygiene	Fine Life Cotton Balls	60.00	0.00	0	60.00	50	t	50
4178	Health & Hygiene	Dettol Antiseptic Liquid	30.00	0.00	0	30.00	60	t	60
\.


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 219
-- Name: zepto_sku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zepto_sku_id_seq', 4178, true);


--
-- TOC entry 4858 (class 2606 OID 16397)
-- Name: zepto zepto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zepto
    ADD CONSTRAINT zepto_pkey PRIMARY KEY (sku_id);


-- Completed on 2026-04-07 13:56:48

--
-- PostgreSQL database dump complete
--

\unrestrict zVmSLcj0kff21grcOrsqSVLHrKLq4OrhwMYyyfPNzngyonpn2MIARtsSfFjXmBV

