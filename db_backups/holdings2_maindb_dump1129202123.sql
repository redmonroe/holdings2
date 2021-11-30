--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: ETFDB; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ETFDB" (
    id integer NOT NULL,
    name character varying(64),
    type1 character varying(64)
);


ALTER TABLE public."ETFDB" OWNER TO postgres;

--
-- Name: ETFDB_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ETFDB_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ETFDB_id_seq" OWNER TO postgres;

--
-- Name: ETFDB_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ETFDB_id_seq" OWNED BY public."ETFDB".id;


--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: hold_index; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hold_index (
    id integer NOT NULL,
    date character varying(64),
    content_note character varying(64)
);


ALTER TABLE public.hold_index OWNER TO postgres;

--
-- Name: hold_index_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hold_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hold_index_id_seq OWNER TO postgres;

--
-- Name: hold_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hold_index_id_seq OWNED BY public.hold_index.id;


--
-- Name: lb_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lb_name (
    id integer NOT NULL,
    name character varying(64),
    description character varying(64),
    hi52 character varying(64),
    lo52 character varying(64),
    current_price character varying(64),
    gain_factor character varying(64),
    off_hi character varying(64)
);


ALTER TABLE public.lb_name OWNER TO postgres;

--
-- Name: lb_name_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lb_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lb_name_id_seq OWNER TO postgres;

--
-- Name: lb_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lb_name_id_seq OWNED BY public.lb_name.id;


--
-- Name: tree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tree (
    id integer NOT NULL,
    parent_id integer,
    data character varying(64)
);


ALTER TABLE public.tree OWNER TO postgres;

--
-- Name: tree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tree_id_seq OWNER TO postgres;

--
-- Name: tree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tree_id_seq OWNED BY public.tree.id;


--
-- Name: ETFDB id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ETFDB" ALTER COLUMN id SET DEFAULT nextval('public."ETFDB_id_seq"'::regclass);


--
-- Name: hold_index id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hold_index ALTER COLUMN id SET DEFAULT nextval('public.hold_index_id_seq'::regclass);


--
-- Name: lb_name id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lb_name ALTER COLUMN id SET DEFAULT nextval('public.lb_name_id_seq'::regclass);


--
-- Name: tree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree ALTER COLUMN id SET DEFAULT nextval('public.tree_id_seq'::regclass);


--
-- Data for Name: ETFDB; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ETFDB" (id, name, type1) FROM stdin;
1	aapl	fang+
2	amzn	fang+
3	fb	fang+
4	crm	fang+
5	tsla	fang+
6	nflx	fang+
7	goog	fang+
8	googl	fang+
9	nvda	fang+
10	adbe	fang+
11	NVDA	soxx
12	AVGO	soxx
13	INTC	soxx
14	QCOM	soxx
15	TXN	soxx
16	AMD	soxx
17	KLAC	soxx
18	MRVL	soxx
19	XLNX	soxx
20	AMAT	soxx
21	ADI	soxx
22	MCHP	soxx
23	NXPI	soxx
24	LRCX	soxx
25	MU	soxx
26	ASML	soxx
27	TSM	soxx
28	SWKS	soxx
29	ON	soxx
30	MPWR	soxx
31	TER	soxx
32	ENTG	soxx
33	QRVO	soxx
34	WOLF	soxx
35	STM	soxx
36	LSCC	soxx
37	UMC	soxx
38	MKSI	soxx
39	OLED	soxx
40	ASX	soxx
41	DHI	homies
42	LEN	homies
43	NVR	homies
44	PHM	homies
45	LOW	homies
46	HD	homies
47	SHW	homies
48	BLD	homies
49	TOL	homies
50	MAS	homies
51	TREX	homies
52	MTH	homies
53	FBHS	homies
54	BLDR	homies
55	FND	homies
56	TMHC	homies
57	SKY	homies
58	KBH	homies
59	LII	homies
60	IBP	homies
61	LGIH	homies
62	WSO	homies
63	MHK	homies
64	MDC	homies
65	OC	homies
66	TPH	homies
67	CVCO	homies
68	CCS	homies
69	EXP	homies
70	LPX	homies
71	LEG	homies
72	MHO	homies
73	UFPI	homies
74	SSD	homies
75	AZEK	homies
76	LENB	homies
77	GRBK	homies
78	BECN	homies
79	DOOR	homies
80	JELD	homies
81	BZH	homies
82	PGTI	homies
83	AMWD	homies
84	NX	homies
85	ETD	homies
86	LL	homies
87	DDS	retail
88	OSTK	retail
89	M	retail
90	BOOT	retail
91	DLTR	retail
92	CHS	retail
93	RVLV	retail
94	REAL	retail
95	SIG	retail
96	PLCE	retail
97	ANF	retail
98	GPI	retail
99	BKE	retail
100	DBI	retail
101	BGFV	retail
102	ETSY	retail
103	JWN	retail
104	PAG	retail
105	SBH	retail
106	AN	retail
107	AZO	retail
108	GRPN	retail
109	MUSA	retail
110	AAP	retail
111	BBY	retail
112	HZO	retail
113	URBN	retail
114	CAL	retail
115	HIBB	retail
116	BBWI	retail
117	ZUMZ	retail
118	ACI	retail
119	DASH	retail
120	FIVE	retail
121	WOOF	retail
122	KSS	retail
123	COST	retail
124	GO	retail
125	KMX	retail
126	CTRN	retail
127	SSTK	retail
128	GME	retail
129	ORLY	retail
130	TSCO	retail
131	TGT	retail
132	FLWS	retail
133	ABG	retail
134	BJ	retail
135	ULTA	retail
136	PRCH	retail
137	BIG	retail
138	CWH	retail
139	FL	retail
140	SFM	retail
141	ASO	retail
142	CASY	retail
143	GPS	retail
144	DG	retail
145	PETS	retail
146	AMZN	retail
147	SAH	retail
148	ROST	retail
149	EBAY	retail
150	DKS	retail
151	TJX	retail
152	WMT	retail
153	AEO	retail
154	GES	retail
155	PRTY	retail
156	KR	retail
157	CHWY	retail
158	MNRO	retail
159	WBA	retail
160	LAD	retail
161	SCVL	retail
162	W	retail
163	OLLI	retail
164	BURL	retail
165	ODP	retail
166	CVNA	retail
167	SFIX	retail
168	LESL	retail
169	PRTS	retail
170	QRTEA	retail
171	EYE	retail
172	VSCO	retail
173	POSH	retail
174	SPWH	retail
175	RCII	retail
176	RAD	retail
177	WISH	retail
178	VRM	retail
179	GCO	retail
180	SFT	retail
181	QUOT	retail
182	FRG	retail
183	LE	retail
184	CRMT	retail
185	CONN	retail
186	PSMT	retail
187	IMKTA	retail
188	TA	retail
189	LQDT	retail
190	WMK	retail
191	ONEW	retail
192	ARKO	retail
193	WINA	retail
194		retail
195		retail
196		retail
197		retail
198		retail
199		retail
200		retail
201		retail
202		retail
203		retail
204		retail
205		retail
206		retail
207		retail
208		retail
209		retail
210		retail
211		retail
212		retail
213		retail
214	tcehy	kweb
215	BABA	kweb
216	JD	kweb
217	PDD	kweb
218	NTES	kweb
219	TCOM	kweb
220	YMM	kweb
221	BIDU	kweb
222	BILI	kweb
223	BEKE	kweb
224	VIPS	kweb
225	TME	kweb
226	LU	kweb
227	ZH	kweb
228	IQ	kweb
229	YY	kweb
230	QFIN	kweb
231	ATHM	kweb
232	WB	kweb
233	KC	kweb
234	VNET	kweb
235	API	kweb
236	DADA	kweb
237	TAL	kweb
238	MOMO	kweb
239	CD	kweb
240	JOBS	kweb
241	DAO	kweb
242	BZUN	kweb
243	HUYA	kweb
244	DOYU	kweb
245	GOTU	kweb
246	YQ	kweb
247	CRM	software-igv
248	MSFT	software-igv
249	ADBE	software-igv
250	INTU	software-igv
251	ORCL	software-igv
252	NOW	software-igv
253	ADSK	software-igv
254	SNAP	software-igv
255	ZM	software-igv
256	WDAY	software-igv
257	ATVI	software-igv
258	NET	software-igv
259	SNPS	software-igv
260	DOCU	software-igv
261	CRWD	software-igv
262	CDNS	software-igv
263	PANW	software-igv
264	DDOG	software-igv
265	TTD	software-igv
266	FTNT	software-igv
267	EA	software-igv
268	HUBS	software-igv
269	PLTR	software-igv
270	ANSS	software-igv
271	BILL	software-igv
272	ZS	software-igv
273	VMW	software-igv
274	PAYC	software-igv
275	SPLK	software-igv
276	TYL	software-igv
277	RNG	software-igv
278	TTWO	software-igv
279	SSNC	software-igv
280	COUP	software-igv
281	CDAY	software-igv
282	NUAN	software-igv
283	NLOK	software-igv
284	OTEX	software-igv
285	DT	software-igv
286	AVLR	software-igv
287	ESTC	software-igv
288	PTC	software-igv
289	ZEN	software-igv
290	FICO	software-igv
291	MANH	software-igv
292	FIVN	software-igv
293	CTXS	software-igv
294	ASAN	software-igv
295	PCTY	software-igv
296	GWRE	software-igv
297	AZPN	software-igv
298	SMAR	software-igv
299	LSPD	software-igv
300	PLAN	software-igv
301	DBX	software-igv
302	ZNGA	software-igv
303	DSGX	software-igv
304	RPD	software-igv
305	NTNX	software-igv
306	NEWR	software-igv
307	WK	software-igv
308	BL	software-igv
309	VRNS	software-igv
310	MSTR	software-igv
311	ZD	software-igv
312	APPS	software-igv
313	DLB	software-igv
314	SPT	software-igv
315	BB	software-igv
316	SAIL	software-igv
317	TDC	software-igv
318	SPSC	software-igv
319	CDK	software-igv
320	MIME	software-igv
321	EVBG	software-igv
322	QTWO	software-igv
323	TENB	software-igv
324	PEGA	software-igv
325	QLYS	software-igv
326	MNDT	software-igv
327	VG	software-igv
328	AYX	software-igv
329	ACIW	software-igv
330	CRNC	software-igv
331	BOX	software-igv
332	ENV	software-igv
333	ALRM	software-igv
334	ALTR	software-igv
335	XM	software-igv
336	APPN	software-igv
337	BLKB	software-igv
338	RIOT	software-igv
339	LPSN	software-igv
340	PD	software-igv
341	VRNT	software-igv
342	CVLT	software-igv
343	MNTV	software-igv
344	EGHT	software-igv
345	ZUO	software-igv
346	DOMO	software-igv
347	APPF	software-igv
348	PRGS	software-igv
349	DCT	software-igv
350	IDCC	software-igv
351	ETWO	software-igv
352	XPER	software-igv
353	EPAY	software-igv
354	MCFE	software-igv
355	AVYA	software-igv
356	JAMF	software-igv
357	PING	software-igv
358	PRO	software-igv
359	YEXT	software-igv
360	CCSI	software-igv
361	TLS	software-igv
362	NABL	software-igv
363	SWI	software-igv
364		software-igv
365		software-igv
366		software-igv
367		software-igv
368		software-igv
369		software-igv
370	 	software-igv
371		software-igv
372	NEM	PM
373	GOLD	PM
374	FNV	PM
375	WPM	PM
376	AEM	PM
377	GFI	PM
378	AU	PM
379	KGC	PM
380	RGLD	PM
381	PAAS	PM
382	BTG	PM
383	AUY	PM
384	SSRM	PM
385	AG	PM
386	HL	PM
387	AGI	PM
388	PVG	PM
389	EQX	PM
390	HMY	PM
391	OR	PM
392	BVN	PM
393	EGO	PM
394	CDE	PM
395	IAG	PM
396	FSM	PM
397	SAND	PM
398	NGD	PM
399	EXK	PM
400	DRD	PM
401	SVM	PM
402	KRE	lead_board
403	XRT	lead_board
404	XLF	lead_board
405	IYT	lead_board
406	XTL	lead_board
407	XLK	lead_board
408	EFA	lead_board
409	SIL	lead_board
410	WOOD	lead_board
411	XLC	lead_board
412	XLB	lead_board
413	SOCL	lead_board
414	IHE 	lead_board
415	ESPO	lead_board
416	XHB	lead_board
417	QQQ	lead_board
418	SOXX	lead_board
419	GDX	lead_board
420	CHIQ	lead_board
421	COPX 	lead_board
422	EUFN	lead_board
423	IBUY	lead_board
424	IHI	lead_board
425	XLRE	lead_board
426	KBE	lead_board
427	IDU 	lead_board
428	IGV	lead_board
429	MJ	lead_board
430	MOO	lead_board
431	FDN	lead_board
432	OIH	lead_board
433	XLP	lead_board
434	XLV	lead_board
435	URA	lead_board
436	UFO	lead_board
437	XME	lead_board
438	RTM	lead_board
439	RGI	lead_board
440	XLU	lead_board
441	SLX 	lead_board
442	SKYY	lead_board
443	VNQI	lead_board
444	VNQ	lead_board
445	REZ	lead_board
446	TAN	lead_board
447	PBJ	lead_board
448	IBB	lead_board
449	CHIX	lead_board
450	IHF	lead_board
451	KWEB	lead_board
452	XLE	lead_board
453	CHIU	lead_board
454	XOP	lead_board
455	XLY	lead_board
456	XLI	lead_board
457	ARKK	lead_board
458	CHII	lead_board
459	CHIR	lead_board
460	ARKG	lead_board
461	CRAK	lead_board
462	EVX	lead_board
463	BETZ	lead_board
464	INDS	lead_board
465	CIBR	lead_board
466	CHIE	lead_board
467	REMX	lead_board
468	IAI	lead_board
469	PBW	lead_board
470	FAN	lead_board
471	CHIH	lead_board
472	BBC	lead_board
473	ITB	lead_board
474	tlt	lead_board
475	ief	lead_board
476	ethe	lead_board
477	blok	lead_board
478	gbtc	lead_board
479	amzn	growth-mgk
480	tsla	growth-mgk
481	goog	growth-mgk
482	googl	growth-mgk
483	fb	growth-mgk
484	nvda	growth-mgk
485	hd	growth-mgk
486	msft	growth-mgk
487	aapl	growth-mgk
488	v	growth-mgk
489	adbe	growth-mgk
490	dis	growth-mgk
491	nflx	growth-mgk
492	ma	growth-mgk
493	pypl	growth-mgk
494	crm	growth-mgk
495	tmo	growth-mgk
496	acn	growth-mgk
497	cost	growth-mgk
498	nke	growth-mgk
499	mcd	growth-mgk
500	txn	growth-mgk
501	lin	growth-mgk
502	low	growth-mgk
503	intu	growth-mgk
504	amd	growth-mgk
505	isrg	growth-mgk
506	amt	growth-mgk
507	sbux	growth-mgk
508	amat	growth-mgk
509	ba	growth-mgk
510	mrna	growth-mgk
511	spgi	growth-mgk
512	zts	growth-mgk
513	sq	growth-mgk
514	dhr	growth-mgk
515	bkng	growth-mgk
516	snow	growth-mgk
517	syk	growth-mgk
518	chtr	growth-mgk
519	lrcx	growth-mgk
520	cci	growth-mgk
521	ups	growth-mgk
522	eqix	growth-mgk
523	tjx	growth-mgk
524	shw	growth-mgk
525	ew	growth-mgk
526	el	growth-mgk
527	adsk	growth-mgk
528	aon	growth-mgk
529	ilmn	growth-mgk
530	cl	growth-mgk
531	mco	growth-mgk
532	regn	growth-mgk
533	snap	growth-mgk
534	bsx	growth-mgk
535	atvi	growth-mgk
536	fisv	growth-mgk
537	uber	growth-mgk
538	ge	growth-mgk
539	ecl	growth-mgk
540	crwd	growth-mgk
541	zm	growth-mgk
542	wday	growth-mgk
543	abnb	growth-mgk
544	dg	growth-mgk
545	rop	growth-mgk
546	psa	growth-mgk
547	twlo	growth-mgk
548	vrtx	growth-mgk
549	a	growth-mgk
550	adp	growth-mgk
551	algn	growth-mgk
552	orly	growth-mgk
553	gpn	growth-mgk
554	mar	growth-mgk
555	coin	growth-mgk
556	rost	growth-mgk
557	ea	growth-mgk
558	payx	growth-mgk
559	mu	growth-mgk
560	dash	growth-mgk
561	yum	growth-mgk
562	fis	growth-mgk
563	mnst	growth-mgk
564	klac	growth-mgk
565	idxx	growth-mgk
566	fcx	growth-mgk
567	lulu	growth-mgk
568	docu	growth-mgk
569	cvna	growth-mgk
570	hsy	growth-mgk
571	cmg	growth-mgk
572	rblx	growth-mgk
573	nem	growth-mgk
574	pltr	growth-mgk
575	twtr	growth-mgk
576	hlt	growth-mgk
577	azo	growth-mgk
578	rok	growth-mgk
579	roku	growth-mgk
580	pins	growth-mgk
581	vmw	growth-mgk
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
8aabae4deeb2
\.


--
-- Data for Name: hold_index; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hold_index (id, date, content_note) FROM stdin;
1	2021-11-22	index_components/fang_names.csv
2	2021-11-23	LBOARD_BROAD_ASSET_CLASS_1121
3	2021-11-23	index_components
4	2021-11-23	fang_names
5	2021-11-23	leaders & laggards
6	2021-11-23	soxx
7	2021-11-25	fang_names
8	2021-11-25	leaders & laggards
9	2021-11-25	retail_xrt
10	2021-11-26	l_and_l
11	2021-11-26	l_and_l
12	2021-11-26	fang+
13	2021-11-26	fang+
14	2021-11-26	fang+
15	2021-11-26	fang+
16	2021-11-26	homies
17	2021-11-26	retail
18	2021-11-26	PM
19	2021-11-26	soxx
20	2021-11-29	growth-mgk
21	2021-11-29	soxx
\.


--
-- Data for Name: lb_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lb_name (id, name, description, hi52, lo52, current_price, gain_factor, off_hi) FROM stdin;
\.


--
-- Data for Name: tree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tree (id, parent_id, data) FROM stdin;
1	\N	stocks
2	\N	bonds
3	\N	crypto
4	1	{risk_off,value,ew,growth,us,weirdo,risk_on,smallcap,commodity}
5	2	{risk_off,us}
6	4	(ITA,value)
7	4	(ITA,us)
8	5	(ITA,us)
9	4	(KRE,value)
10	4	(KRE,risk_on)
11	4	(PSCD,value)
12	4	(PSCD,risk_on)
13	4	(PSCD,smallcap)
14	4	(PSCI,value)
15	4	(PSCI,risk_on)
16	4	(PSCI,smallcap)
17	4	(IPAY,risk_on)
18	4	(XRT,risk_on)
19	4	(XLF,value)
20	4	(XLF,risk_on)
21	4	(IYT,value)
22	4	(IYT,risk_on)
23	4	(XLK,growth)
24	4	(XLK,risk_on)
25	4	(SIL,commodity)
26	4	(PSCF,value)
27	4	(PSCF,risk_on)
28	4	(PSCF,smallcap)
29	4	(WOOD,commodity)
30	4	(WOOD,risk_on)
31	4	(XLC,risk_on)
32	4	(XLB,value)
33	4	(XLB,risk_on)
34	4	(SOCL,growth)
35	4	(SOCL,risk_on)
36	4	(PSCT,growth)
37	4	(PSCT,risk_on)
38	4	(PSCT,smallcap)
39	4	("IHE ",risk_off)
40	5	("IHE ",risk_off)
41	4	(ESPO,growth)
42	4	(ESPO,risk_on)
43	4	(RCD,risk_on)
44	4	(RCD,ew)
45	4	(XHB,risk_on)
46	4	(CHIC,growth)
47	4	(CHIC,risk_on)
48	4	(QQQ,growth)
49	4	(QQQ,risk_on)
50	4	(SOXX,growth)
51	4	(SOXX,risk_on)
52	4	(GDX,commodity)
53	4	(CHIQ,risk_on)
54	4	(BATT,commodity)
55	4	(BATT,risk_on)
56	4	("COPX ",commodity)
57	4	("COPX ",risk_on)
58	4	(EUFN,value)
59	4	(EUFN,risk_on)
60	4	(IBUY,growth)
61	4	(IBUY,risk_on)
62	4	(IHI,risk_on)
63	4	(FIVG,growth)
64	4	(FIVG,risk_on)
65	4	(XLRE,risk_off)
66	5	(XLRE,risk_off)
67	4	(KBE,value)
68	4	(KBE,risk_on)
69	4	("IDU ",risk_off)
70	5	("IDU ",risk_off)
71	4	(IGV,growth)
72	4	(IGV,risk_on)
73	4	(MJ,commodity)
74	4	(MOO,commodity)
75	4	(FDN,growth)
76	4	(FDN,risk_on)
77	4	(OIH,value)
78	4	(OIH,commodity)
79	4	(OIH,risk_on)
80	4	(XLP,risk_off)
81	5	(XLP,risk_off)
82	4	(XLV,risk_off)
83	5	(XLV,risk_off)
84	4	(URA,commodity)
85	4	(URA,risk_on)
86	4	(UFO,growth)
87	4	(UFO,risk_on)
88	4	(RYF,value)
89	4	(RYF,risk_on)
90	4	(XME,commodity)
91	4	(XME,risk_on)
92	4	(RTM,risk_on)
93	4	(RTM,ew)
94	4	(RGI,risk_on)
95	4	(RGI,ew)
96	4	(XLU,risk_off)
97	5	(XLU,risk_off)
98	4	(ROBO,growth)
99	4	(ROBO,risk_on)
100	4	("SLX ",value)
101	4	("SLX ",commodity)
102	4	("SLX ",risk_on)
103	4	(PSCH,smallcap)
104	4	(SKYY,growth)
105	4	(SKYY,risk_on)
106	4	(RHS,risk_off)
107	5	(RHS,risk_off)
108	4	(RHS,ew)
109	4	(PSCE,value)
110	4	(PSCE,risk_on)
111	4	(PSCE,smallcap)
112	4	(VNQI,risk_off)
113	5	(VNQI,risk_off)
114	4	(VNQ,risk_off)
115	5	(VNQ,risk_off)
116	4	("ROOF ",risk_off)
117	5	("ROOF ",risk_off)
118	4	("ROOF ",smallcap)
119	4	(REZ,risk_off)
120	5	(REZ,risk_off)
121	4	(SRVR,growth)
122	4	(TAN,commodity)
123	4	(RYE,value)
124	4	(RYE,risk_on)
125	4	(RYE,ew)
126	4	(FLM,value)
127	4	(FLM,risk_on)
128	4	(IBB,risk_on)
129	4	(CHIX,value)
130	4	(CHIX,risk_on)
131	4	(IHF,risk_off)
132	5	(IHF,risk_off)
133	4	(KWEB,growth)
134	4	(KWEB,risk_on)
135	4	(XLE,value)
136	4	(XLE,commodity)
137	4	(XLE,risk_on)
138	4	(CHIU,risk_off)
139	5	(CHIU,risk_off)
140	4	(AMLP,value)
141	4	(AMLP,commodity)
142	4	(AMLP,risk_on)
143	4	(RYT,growth)
144	4	(RYT,risk_on)
145	4	(RYT,ew)
146	4	(XOP,value)
147	4	(XOP,commodity)
148	4	(XOP,risk_on)
149	4	(REET,risk_off)
150	5	(REET,risk_off)
151	4	(XLY,risk_on)
152	4	(XLI,value)
153	4	(XLI,risk_on)
154	4	(ARKK,growth)
155	4	(ARKK,risk_on)
156	4	(PSCC,risk_off)
157	5	(PSCC,risk_off)
158	4	(PSCC,smallcap)
159	4	(CHII,value)
160	4	(CHII,risk_on)
161	4	(CHIR,risk_off)
162	5	(CHIR,risk_off)
163	4	(ARKG,growth)
164	4	(ARKG,risk_on)
165	4	(CHIS,risk_off)
166	5	(CHIS,risk_off)
167	4	(CRAK,value)
168	4	(CRAK,commodity)
169	4	(CRAK,risk_on)
170	4	(CLIX,growth)
171	4	(KIE,value)
172	4	(KIE,risk_off)
173	5	(KIE,risk_off)
174	4	(BETZ,risk_on)
175	4	(HERO,growth)
176	4	(HERO,risk_on)
177	4	(INDS,risk_on)
178	4	(CIBR,growth)
179	4	(CIBR,risk_on)
180	4	(CHIE,value)
181	4	(CHIE,commodity)
182	4	(CHIE,risk_on)
183	4	(REMX,commodity)
184	4	(REMX,risk_on)
185	4	(IAI,value)
186	4	(IAI,risk_on)
187	4	(PBW,commodity)
188	4	(FAN,commodity)
189	4	(CHIH,risk_off)
190	5	(CHIH,risk_off)
191	4	(BBC,risk_on)
192	4	(ITB,risk_on)
193	4	(ITB,weirdo)
194	4	(tlt,risk_off)
195	5	(tlt,risk_off)
196	4	(tlt,us)
197	5	(tlt,us)
198	4	(ief,us)
199	5	(ief,us)
\.


--
-- Name: ETFDB_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ETFDB_id_seq"', 581, true);


--
-- Name: hold_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hold_index_id_seq', 21, true);


--
-- Name: lb_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lb_name_id_seq', 1, false);


--
-- Name: tree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tree_id_seq', 199, true);


--
-- Name: ETFDB ETFDB_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ETFDB"
    ADD CONSTRAINT "ETFDB_pkey" PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: hold_index hold_index_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hold_index
    ADD CONSTRAINT hold_index_pkey PRIMARY KEY (id);


--
-- Name: lb_name lb_name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lb_name
    ADD CONSTRAINT lb_name_pkey PRIMARY KEY (id);


--
-- Name: tree tree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree
    ADD CONSTRAINT tree_pkey PRIMARY KEY (id);


--
-- Name: tree tree_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree
    ADD CONSTRAINT tree_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.tree(id);


--
-- PostgreSQL database dump complete
--

