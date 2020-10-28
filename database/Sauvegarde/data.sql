--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2020-10-28 22:52:12

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
-- TOC entry 2938 (class 0 OID 39233)
-- Dependencies: 204
-- Data for Name: pays; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (4, 'AFGHANISTAN', 'AFG', 'AF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (8, 'ALBANIE', 'ALB', 'AL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (10, 'ANTARCTIQUE', 'ATA', 'AQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (12, 'ALGÉRIE', 'DZA', 'DZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (16, 'SAMOA AMÉRICAINES', 'ASM', 'AS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (20, 'ANDORRE', 'AND', 'AD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (24, 'ANGOLA', 'AGO', 'AO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (28, 'ANTIGUA-ET-BARBUDA', 'ATG', 'AG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (31, 'AZERBAÏDJAN', 'AZE', 'AZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (32, 'ARGENTINE', 'ARG', 'AR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (36, 'AUSTRALIE', 'AUS', 'AU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (40, 'AUTRICHE', 'AUT', 'AT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (44, 'BAHAMAS', 'BHS', 'BS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (48, 'BAHREÏN', 'BHR', 'BH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (50, 'BANGLADESH', 'BGD', 'BD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (51, 'ARMÉNIE', 'ARM', 'AM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (52, 'BARBADE', 'BRB', 'BB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (56, 'BELGIQUE', 'BEL', 'BE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (60, 'BERMUDES', 'BMU', 'BM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (64, 'BHOUTAN', 'BTN', 'BT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (68, 'BOLIVIE, ÉTAT PLURINATIONAL DE', 'BOL', 'BO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (70, 'BOSNIE-HERZÉGOVINE', 'BIH', 'BA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (72, 'BOTSWANA', 'BWA', 'BW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (74, 'BOUVET, ÎLE', 'BVT', 'BV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (76, 'BRÉSIL', 'BRA', 'BR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (84, 'BELIZE', 'BLZ', 'BZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (86, 'OCÉAN INDIEN, TERRITOIRE BRITANNIQUE DE L''', 'IOT', 'IO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (90, 'SALOMON, ÎLES', 'SLB', 'SB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (92, 'ÎLES VIERGES BRITANNIQUES', 'VGB', 'VG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (96, 'BRUNÉI DARUSSALAM', 'BRN', 'BN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (100, 'BULGARIE', 'BGR', 'BG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (104, 'MYANMAR', 'MMR', 'MM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (108, 'BURUNDI', 'BDI', 'BI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (112, 'BÉLARUS', 'BLR', 'BY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (116, 'CAMBODGE', 'KHM', 'KH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (120, 'CAMEROUN', 'CMR', 'CM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (124, 'CANADA', 'CAN', 'CA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (132, 'CABO VERDE', 'CPV', 'CV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (136, 'CAÏMANES, ÎLES', 'CYM', 'KY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (140, 'CENTRAFRICAINE, RÉPUBLIQUE', 'CAF', 'CF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (144, 'SRI LANKA', 'LKA', 'LK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (148, 'TCHAD', 'TCD', 'TD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (152, 'CHILI', 'CHL', 'CL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (156, 'CHINE', 'CHN', 'CN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (158, 'TAÏWAN, PROVINCE DE CHINE', 'TWN', 'TW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (162, 'CHRISTMAS, ÎLE', 'CXR', 'CX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (166, 'COCOS (KEELING), ÎLES', 'CCK', 'CC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (170, 'COLOMBIE', 'COL', 'CO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (174, 'COMORES', 'COM', 'KM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (175, 'MAYOTTE', 'MYT', 'YT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (178, 'CONGO', 'COG', 'CG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (180, 'CONGO, LA RÉPUBLIQUE DÉMOCRATIQUE DU', 'COD', 'CD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (184, 'COOK, ÎLES', 'COK', 'CK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (188, 'COSTA RICA', 'CRI', 'CR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (191, 'CROATIE', 'HRV', 'HR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (192, 'CUBA', 'CUB', 'CU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (196, 'CHYPRE', 'CYP', 'CY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (203, 'TCHÉQUIE', 'CZE', 'CZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (204, 'BÉNIN', 'BEN', 'BJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (208, 'DANEMARK', 'DNK', 'DK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (212, 'DOMINIQUE', 'DMA', 'DM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (214, 'DOMINICAINE, RÉPUBLIQUE', 'DOM', 'DO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (218, 'ÉQUATEUR', 'ECU', 'EC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (222, 'EL SALVADOR', 'SLV', 'SV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (226, 'GUINÉE ÉQUATORIALE', 'GNQ', 'GQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (231, 'ÉTHIOPIE', 'ETH', 'ET');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (232, 'ÉRYTHRÉE', 'ERI', 'ER');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (233, 'ESTONIE', 'EST', 'EE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (234, 'FÉROÉ, ÎLES', 'FRO', 'FO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (238, 'FALKLAND, ÎLES (MALVINAS)', 'FLK', 'FK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (239, 'GÉORGIE DU SUD ET LES ÎLES SANDWICH DU SUD', 'SGS', 'GS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (242, 'FIDJI', 'FJI', 'FJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (246, 'FINLANDE', 'FIN', 'FI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (248, 'ÅLAND, ÎLES', 'ALA', 'AX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (250, 'FRANCE', 'FRA', 'FR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (254, 'GUYANE FRANÇAISE', 'GUF', 'GF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (258, 'POLYNÉSIE FRANÇAISE', 'PYF', 'PF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (260, 'TERRES AUSTRALES FRANÇAISES', 'ATF', 'TF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (262, 'DJIBOUTI', 'DJI', 'DJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (266, 'GABON', 'GAB', 'GA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (268, 'GÉORGIE', 'GEO', 'GE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (270, 'GAMBIE', 'GMB', 'GM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (275, 'ÉTAT DE PALESTINE', 'PSE', 'PS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (276, 'ALLEMAGNE', 'DEU', 'DE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (288, 'GHANA', 'GHA', 'GH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (292, 'GIBRALTAR', 'GIB', 'GI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (296, 'KIRIBATI', 'KIR', 'KI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (300, 'GRÈCE', 'GRC', 'GR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (304, 'GROENLAND', 'GRL', 'GL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (308, 'GRENADE', 'GRD', 'GD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (312, 'GUADELOUPE', 'GLP', 'GP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (316, 'GUAM', 'GUM', 'GU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (320, 'GUATEMALA', 'GTM', 'GT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (324, 'GUINÉE', 'GIN', 'GN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (328, 'GUYANA', 'GUY', 'GY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (332, 'HAÏTI', 'HTI', 'HT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (334, 'HEARD ET MACDONALD, ÎLES', 'HMD', 'HM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (336, 'SAINT-SIÈGE (ÉTAT DE LA CITÉ DU VATICAN)', 'VAT', 'VA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (340, 'HONDURAS', 'HND', 'HN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (344, 'HONG KONG', 'HKG', 'HK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (348, 'HONGRIE', 'HUN', 'HU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (352, 'ISLANDE', 'ISL', 'IS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (356, 'INDE', 'IND', 'IN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (360, 'INDONÉSIE', 'IDN', 'ID');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (364, 'IRAN, RÉPUBLIQUE ISLAMIQUE D''', 'IRN', 'IR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (368, 'IRAQ', 'IRQ', 'IQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (372, 'IRLANDE', 'IRL', 'IE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (376, 'ISRAËL', 'ISR', 'IL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (380, 'ITALIE', 'ITA', 'IT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (384, 'CÔTE D’IVOIRE', 'CIV', 'CI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (388, 'JAMAÏQUE', 'JAM', 'JM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (392, 'JAPON', 'JPN', 'JP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (398, 'KAZAKHSTAN', 'KAZ', 'KZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (400, 'JORDANIE', 'JOR', 'JO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (404, 'KENYA', 'KEN', 'KE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (408, 'CORÉE, RÉPUBLIQUE POPULAIRE DÉMOCRATIQUE DE', 'PRK', 'KP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (410, 'CORÉE, RÉPUBLIQUE DE', 'KOR', 'KR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (414, 'KOWEÏT', 'KWT', 'KW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (417, 'KIRGHIZISTAN', 'KGZ', 'KG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (418, 'LAO, RÉPUBLIQUE DÉMOCRATIQUE POPULAIRE', 'LAO', 'LA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (422, 'LIBAN', 'LBN', 'LB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (426, 'LESOTHO', 'LSO', 'LS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (428, 'LETTONIE', 'LVA', 'LV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (430, 'LIBÉRIA', 'LBR', 'LR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (434, 'LIBYE', 'LBY', 'LY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (438, 'LIECHTENSTEIN', 'LIE', 'LI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (440, 'LITUANIE', 'LTU', 'LT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (442, 'LUXEMBOURG', 'LUX', 'LU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (446, 'MACAO', 'MAC', 'MO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (450, 'MADAGASCAR', 'MDG', 'MG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (454, 'MALAWI', 'MWI', 'MW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (458, 'MALAISIE', 'MYS', 'MY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (462, 'MALDIVES', 'MDV', 'MV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (466, 'MALI', 'MLI', 'ML');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (470, 'MALTE', 'MLT', 'MT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (474, 'MARTINIQUE', 'MTQ', 'MQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (478, 'MAURITANIE', 'MRT', 'MR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (480, 'MAURICE', 'MUS', 'MU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (484, 'MEXIQUE', 'MEX', 'MX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (492, 'MONACO', 'MCO', 'MC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (496, 'MONGOLIE', 'MNG', 'MN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (498, 'MOLDAVIE', 'MDA', 'MD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (499, 'MONTÉNÉGRO', 'MNE', 'ME');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (500, 'MONTSERRAT', 'MSR', 'MS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (504, 'MAROC', 'MAR', 'MA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (508, 'MOZAMBIQUE', 'MOZ', 'MZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (512, 'OMAN', 'OMN', 'OM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (516, 'NAMIBIE', 'NAM', 'NA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (520, 'NAURU', 'NRU', 'NR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (524, 'NÉPAL', 'NPL', 'NP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (528, 'PAYS-BAS', 'NLD', 'NL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (531, 'CURAÇAO', 'CUW', 'CW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (533, 'ARUBA', 'ABW', 'AW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (534, 'SAINT-MARTIN (PARTIE NÉERLANDAISE)', 'SXM', 'SX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (535, 'BONAIRE, SAINT-EUSTACHE ET SABA', 'BES', 'BQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (540, 'NOUVELLE-CALÉDONIE', 'NCL', 'NC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (548, 'VANUATU', 'VUT', 'VU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (554, 'NOUVELLE-ZÉLANDE', 'NZL', 'NZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (558, 'NICARAGUA', 'NIC', 'NI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (562, 'NIGER', 'NER', 'NE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (566, 'NIGÉRIA', 'NGA', 'NG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (570, 'NIUÉ', 'NIU', 'NU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (574, 'NORFOLK, ÎLE', 'NFK', 'NF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (578, 'NORVÈGE', 'NOR', 'NO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (580, 'MARIANNES DU NORD, ÎLES', 'MNP', 'MP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (581, 'ÎLES MINEURES ÉLOIGNÉES DES ÉTATS-UNIS', 'UMI', 'UM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (583, 'MICRONÉSIE, ÉTATS FÉDÉRÉS DE', 'FSM', 'FM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (584, 'MARSHALL, ÎLES', 'MHL', 'MH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (585, 'PALAOS', 'PLW', 'PW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (586, 'PAKISTAN', 'PAK', 'PK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (591, 'PANAMA', 'PAN', 'PA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (598, 'PAPOUASIE-NOUVELLE-GUINÉE', 'PNG', 'PG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (600, 'PARAGUAY', 'PRY', 'PY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (604, 'PÉROU', 'PER', 'PE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (608, 'PHILIPPINES', 'PHL', 'PH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (612, 'PITCAIRN', 'PCN', 'PN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (616, 'POLOGNE', 'POL', 'PL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (620, 'PORTUGAL', 'PRT', 'PT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (624, 'GUINÉE-BISSAU', 'GNB', 'GW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (626, 'TIMOR-LESTE', 'TLS', 'TL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (630, 'PORTO RICO', 'PRI', 'PR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (634, 'QATAR', 'QAT', 'QA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (638, 'RÉUNION', 'REU', 'RE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (642, 'ROUMANIE', 'ROU', 'RO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (643, 'RUSSIE, FÉDÉRATION DE', 'RUS', 'RU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (646, 'RWANDA', 'RWA', 'RW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (652, 'SAINT-BARTHÉLEMY', 'BLM', 'BL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (654, 'SAINTE-HÉLÈNE, ASCENSION ET TRISTAN DA CUNHA', 'SHN', 'SH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (659, 'SAINT-KITTS-ET-NEVIS', 'KNA', 'KN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (660, 'ANGUILLA', 'AIA', 'AI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (662, 'SAINTE-LUCIE', 'LCA', 'LC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (663, 'SAINT-MARTIN (PARTIE FRANÇAISE)', 'MAF', 'MF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (666, 'SAINT-PIERRE-ET-MIQUELON', 'SPM', 'PM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (670, 'SAINT-VINCENT-ET-LES-GRENADINES', 'VCT', 'VC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (674, 'SAINT-MARIN', 'SMR', 'SM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (678, 'SAO TOMÉ-ET-PRINCIPE', 'STP', 'ST');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (682, 'ARABIE SAOUDITE', 'SAU', 'SA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (686, 'SÉNÉGAL', 'SEN', 'SN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (688, 'SERBIE', 'SRB', 'RS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (690, 'SEYCHELLES', 'SYC', 'SC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (694, 'SIERRA LEONE', 'SLE', 'SL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (702, 'SINGAPOUR', 'SGP', 'SG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (703, 'SLOVAQUIE', 'SVK', 'SK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (704, 'VIET NAM', 'VNM', 'VN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (705, 'SLOVÉNIE', 'SVN', 'SI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (706, 'SOMALIE', 'SOM', 'SO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (710, 'AFRIQUE DU SUD', 'ZAF', 'ZA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (716, 'ZIMBABWE', 'ZWE', 'ZW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (724, 'ESPAGNE', 'ESP', 'ES');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (728, 'SOUDAN DU SUD', 'SSD', 'SS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (729, 'SOUDAN', 'SDN', 'SD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (732, 'SAHARA OCCIDENTAL', 'ESH', 'EH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (740, 'SURINAME', 'SUR', 'SR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (744, 'SVALBARD ET ÎLE JAN MAYEN', 'SJM', 'SJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (748, 'ESWATINI', 'SWZ', 'SZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (752, 'SUÈDE', 'SWE', 'SE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (756, 'SUISSE', 'CHE', 'CH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (760, 'SYRIENNE, RÉPUBLIQUE ARABE', 'SYR', 'SY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (762, 'TADJIKISTAN', 'TJK', 'TJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (764, 'THAÏLANDE', 'THA', 'TH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (768, 'TOGO', 'TGO', 'TG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (772, 'TOKELAU', 'TKL', 'TK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (776, 'TONGA', 'TON', 'TO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (780, 'TRINITÉ-ET-TOBAGO', 'TTO', 'TT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (784, 'ÉMIRATS ARABES UNIS', 'ARE', 'AE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (788, 'TUNISIE', 'TUN', 'TN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (792, 'TURQUIE', 'TUR', 'TR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (795, 'TURKMÉNISTAN', 'TKM', 'TM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (796, 'TURKS ET CAÏQUES, ÎLES', 'TCA', 'TC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (798, 'TUVALU', 'TUV', 'TV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (800, 'OUGANDA', 'UGA', 'UG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (804, 'UKRAINE', 'UKR', 'UA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (807, 'RÉPUBLIQUE DE MACÉDOINE', 'MKD', 'MK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (818, 'ÉGYPTE', 'EGY', 'EG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (826, 'ROYAUME-UNI', 'GBR', 'GB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (831, 'GUERNESEY', 'GGY', 'GG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (832, 'JERSEY', 'JEY', 'JE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (833, 'ÎLE DE MAN', 'IMN', 'IM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (834, 'TANZANIE, RÉPUBLIQUE UNIE DE', 'TZA', 'TZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (840, 'ÉTATS-UNIS', 'USA', 'US');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (850, 'ÎLES VIERGES DES ÉTATS-UNIS', 'VIR', 'VI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (854, 'BURKINA FASO', 'BFA', 'BF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (858, 'URUGUAY', 'URY', 'UY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (860, 'OUZBÉKISTAN', 'UZB', 'UZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (862, 'VENEZUELA, RÉPUBLIQUE BOLIVARIENNE DU', 'VEN', 'VE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (876, 'WALLIS-ET-FUTUNA', 'WLF', 'WF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (882, 'SAMOA', 'WSM', 'WS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (887, 'YÉMEN', 'YEM', 'YE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (894, 'ZAMBIE', 'ZMB', 'ZM');


--
-- TOC entry 2939 (class 0 OID 39245)
-- Dependencies: 205
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.region (id, nom, pays_pays_code) VALUES (1, 'Auvergne-Rhône-Alpes', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (2, 'Bourgogne-Franche-Comté', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (3, 'Bretagne', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (4, 'Centre-Val de Loire', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (5, 'Corse', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (6, 'Grand Est', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (7, 'Guadeloupe', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (8, 'Guyane', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (9, 'Hauts-de-France', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (10, 'Île-de-France', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (11, 'La Réunion', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (12, 'Martinique', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (13, 'Mayotte', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (14, 'Normandie', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (15, 'Nouvelle-Aquitaine', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (16, 'Occitanie', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (17, 'Pays de la Loire', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (18, 'Provence-Alpes-Côte d''Azur', 250);


--
-- TOC entry 2936 (class 0 OID 39225)
-- Dependencies: 202
-- Data for Name: departement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (1, '1', 'Ain', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (2, '2', 'Aisne', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (3, '3', 'Allier', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (4, '4', 'Alpes-de-Haute-Provence', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (5, '5', 'Hautes-Alpes', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (6, '6', 'Alpes-Maritimes', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (7, '7', 'Ardèche', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (8, '8', 'Ardennes', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (9, '9', 'Ariège', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (10, '10', 'Aube', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (11, '11', 'Aude', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (12, '12', 'Aveyron', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (14, '14', 'Calvados', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (15, '15', 'Cantal', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (16, '16', 'Charente', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (17, '17', 'Charente-Maritime', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (18, '18', 'Cher', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (19, '19', 'Corrèze', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (50, '50', 'Manche', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (32, '32', 'Gers', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (85, '85', 'Vendée', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (80, '80', 'Somme', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (38, '38', 'Isère', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (33, '33', 'Gironde', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (29, '29', 'Finistère', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (66, '66', 'Pyrénées-Orientales', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (74, '74', 'Haute-Savoie', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (26, '26', 'Drôme', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (90, '90', 'Territoire de Belfort', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (55, '55', 'Meuse', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (57, '57', 'Moselle', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (45, '45', 'Loiret', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (47, '47', 'Lot-et-Garonne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (72, '72', 'Sarthe', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (88, '88', 'Vosges', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (79, '79', 'Deux-Sèvres', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (86, '86', 'Vienne', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (37, '37', 'Indre-et-Loire', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (63, '63', 'Puy-de-Dôme', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (56, '56', 'Morbihan', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (62, '62', 'Pas-de-Calais', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (69, '69', 'Rhône', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (95, '95', 'Val-d''Oise', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (46, '46', 'Lot', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (27, '27', 'Eure', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (13, '13', 'Bouches-du-Rhône', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (21, '21', 'Côte-d''Or', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (22, '22', 'Cote-d''Armor', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (23, '23', 'Creuse', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (24, '24', 'Dordogne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (25, '25', 'Doubs', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (89, '89', 'Yonne', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (65, '65', 'Hautes-Pyrénées', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (42, '42', 'Loire', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (77, '77', 'Seine-et-Marne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (81, '81', 'Tarn', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (73, '73', 'Savoie', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (68, '68', 'Haut-Rhin', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (31, '31', 'Haute-Garonne', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (59, '59', 'Nord', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (67, '67', 'Bas-Rhin', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (94, '94', 'Val-de-Marne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (36, '36', 'Indre', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (54, '54', 'Meurthe-et-Moselle', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (93, '93', 'Seine-Saint-Denis', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (76, '76', 'Seine-Maritime', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (51, '51', 'Marne', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (20, '20', 'Corse', 5);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (92, '92', 'Hauts-de-Seine', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (30, '30', 'Gard', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (70, '70', 'Haute-Saône', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (91, '91', 'Essonne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (83, '83', 'Var', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (41, '41', 'Loir-et-Cher', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (43, '43', 'Haute-Loire', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (48, '48', 'Lozère', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (49, '49', 'Maine-et-Loire', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (44, '44', 'Loire-Atlantique', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (75, '75', 'Paris', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (40, '40', 'Landes', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (71, '71', 'Saône-et-Loire', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (84, '84', 'Vaucluse', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (61, '61', 'Orne', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (35, '35', 'Ille-et-Vilaine', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (52, '52', 'Haute-Marne', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (53, '53', 'Mayenne', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (28, '28', 'Eure-et-Loir', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (64, '64', 'Pyrénées-Atlantiques', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (60, '60', 'Oise', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (87, '87', 'Haute-Vienne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (82, '82', 'Tarn-et-Garonne', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (58, '58', 'Nièvre Nord', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (34, '34', 'Hérault', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (39, '39', 'Jura', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (78, '78', 'Yvelines', 10);


--
-- TOC entry 2930 (class 0 OID 39183)
-- Dependencies: 196
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (36, '12', 'lorraine', '57525', 'Talange', 57);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (37, '14', 'du funicule', '55000', 'Epinal', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (38, '14', 'du funicule', '55000', 'Epinal', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (39, '14', 'du funicule', '55000', 'Epinal', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (40, '4', 'du sapin ', '69000', 'Lyon', 69);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (41, '5', 'des peupliers', '55488', 'Silmont', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (42, '5', 'des peupliers', '54488', 'Silmont', 54);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (43, '5', 'des peupliers', '54488', 'Silmont', 54);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (44, '7', 'de lorraine', '57000', 'Metz', 57);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (45, '5', 'des près', '55004', 'Vosges', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (35, '7', 'd''Alsace', '87500', 'Metz', 87);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (47, '7', 'du vieux port', '13001', 'Marseille', 13);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (48, '14', 'des envahisseurs', '55000', 'Munster', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (49, '7', 'des chênes', '55478', 'Gerardmer', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (50, '7', 'des chênes', '55478', 'Gerardmer', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (51, '8', 'des coquelicots', '55478', 'Gerardmer', 55);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (52, '2', 'des coquelicots', '88445', 'Gerardmer', 88);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (53, '2', 'des coquelicots', '88445', 'Gerardmer', 88);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (54, '2', 'des coquelicots', '88445', 'Gerardmer', 88);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (55, '2', 'des coquelicots', '88445', 'Gerardmer', 88);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (56, '7', 'des coquelicots', '88475', 'Gerardmer', 88);
INSERT INTO public.adresse (adresse_id, numero, rue, code_postal, ville, departement_id) VALUES (46, '16', 'des Chênes', '45655', 'Valmont-la-Montagne', 45);


--
-- TOC entry 2941 (class 0 OID 39261)
-- Dependencies: 207
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role (id, designation, description) VALUES (1, 'Administrateur', 'Administrateur du site web');
INSERT INTO public.role (id, designation, description) VALUES (2, 'Membre', 'Membre de l''association');
INSERT INTO public.role (id, designation, description) VALUES (3, 'Utilisateur', 'Utilisateur avec compte');


--
-- TOC entry 2934 (class 0 OID 39217)
-- Dependencies: 200
-- Data for Name: compte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compte (compte_id, email, pseudo, mot_de_passe, nom, prenom, num_telephone, adresse_id, role_role_id) VALUES (2, 'john@gmail.com', 'Jodi', 'azerty', 'Doe', 'John', '0612233477', 35, 3);
INSERT INTO public.compte (compte_id, email, pseudo, mot_de_passe, nom, prenom, num_telephone, adresse_id, role_role_id) VALUES (16, 'didier.R@gmail.com', 'Didier', 'azerty', 'Raoult', 'Didier', '0654455855', 47, 3);
INSERT INTO public.compte (compte_id, email, pseudo, mot_de_passe, nom, prenom, num_telephone, adresse_id, role_role_id) VALUES (17, 'marcel.vincent@gmail.com', 'Marcel', 'azerty', 'Vincent', 'Marcel', '0655221144', 48, 3);
INSERT INTO public.compte (compte_id, email, pseudo, mot_de_passe, nom, prenom, num_telephone, adresse_id, role_role_id) VALUES (12, 'tony@gmail.com', 'Tony', 'az', 'Pereira', 'Anthony', '0621122544', 46, 1);


--
-- TOC entry 2944 (class 0 OID 39275)
-- Dependencies: 210
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.site (site_id, nom, description, adresse_id, officielescalade) VALUES (3, 'La sapinière', 'Les sapins sont des arbres conifères du genre Abies originaires des régions tempérées de l''hémisphère nord. Ils font partie de la famille des Pinaceae. Ils sont reconnaissables au mode de fixation des aiguilles sur la tige, à leurs formes qui diffèrent de l''épicéa ainsi qu''à leurs cônes dressés qui se désagrègent à maturité.

Ce sont des arbres monoïques à écorce quelquefois ponctuée de vésicules résinifères, à branches verticillées et étagées. Les aiguilles du sapin sont fixées une par une, contrairement à celles d''autres conifères comme le pin d''Alep.', 40, false);
INSERT INTO public.site (site_id, nom, description, adresse_id, officielescalade) VALUES (1, 'Le creusot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.
Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.

Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.', 38, true);
INSERT INTO public.site (site_id, nom, description, adresse_id, officielescalade) VALUES (11, 'La Bresse', 'Au cœur du parc régional des Ballons des Vosges, la station de ski La Bresse est un petit coin de tranquillité faisant surtout le bonheur des skieurs amateurs avec ses pentes douces en forêts. Si vous cherchez une station pour apprendre à skier tranquillement, foncez !', 56, false);


--
-- TOC entry 2932 (class 0 OID 39191)
-- Dependencies: 198
-- Data for Name: commentaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (108, 'Super site d''escalade !!!', '2020-10-25', 12, 11);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (111, 'terrible !!!', '2020-10-25', 12, 11);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (113, 'super escapade !', '2020-10-25', 12, 3);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (114, 'Un coin charmant !!!', '2020-10-25', 12, 1);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (115, 'enfin !!', '2020-10-25', 12, 1);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (36, 'Le creusot est une ville magnifique bordée de vignoble. Un séjour inoubliable <3', '2020-09-03', 2, 1);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (47, 'La sapinière est un site super pour les personnes qui adorent la fôret', '2020-10-19', 12, 3);
INSERT INTO public.commentaire (commentaire_id, commentaire, date, compte_id, site_id) VALUES (105, 'Le paysage Vosgiens est magnifique je recommande', '2020-10-25', 12, 11);


--
-- TOC entry 2951 (class 0 OID 47693)
-- Dependencies: 217
-- Data for Name: cotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cotation (id, difficulte) VALUES (1, '1');
INSERT INTO public.cotation (id, difficulte) VALUES (2, '2');
INSERT INTO public.cotation (id, difficulte) VALUES (3, '3');
INSERT INTO public.cotation (id, difficulte) VALUES (4, '4');
INSERT INTO public.cotation (id, difficulte) VALUES (5, '5a');
INSERT INTO public.cotation (id, difficulte) VALUES (6, '5b');
INSERT INTO public.cotation (id, difficulte) VALUES (7, '5c');
INSERT INTO public.cotation (id, difficulte) VALUES (8, '6a');
INSERT INTO public.cotation (id, difficulte) VALUES (9, '6a+');
INSERT INTO public.cotation (id, difficulte) VALUES (10, '6b');
INSERT INTO public.cotation (id, difficulte) VALUES (11, '6b+');
INSERT INTO public.cotation (id, difficulte) VALUES (12, '6c');
INSERT INTO public.cotation (id, difficulte) VALUES (13, '6c+');
INSERT INTO public.cotation (id, difficulte) VALUES (14, '7a');
INSERT INTO public.cotation (id, difficulte) VALUES (15, '7a+');
INSERT INTO public.cotation (id, difficulte) VALUES (16, '7b');
INSERT INTO public.cotation (id, difficulte) VALUES (17, '7b+');
INSERT INTO public.cotation (id, difficulte) VALUES (18, '7c');
INSERT INTO public.cotation (id, difficulte) VALUES (19, '7c+');
INSERT INTO public.cotation (id, difficulte) VALUES (20, '8a');
INSERT INTO public.cotation (id, difficulte) VALUES (21, '8a+');
INSERT INTO public.cotation (id, difficulte) VALUES (22, '8b');
INSERT INTO public.cotation (id, difficulte) VALUES (23, '8b+');
INSERT INTO public.cotation (id, difficulte) VALUES (24, '8c');
INSERT INTO public.cotation (id, difficulte) VALUES (25, '8c+');
INSERT INTO public.cotation (id, difficulte) VALUES (26, '9a');
INSERT INTO public.cotation (id, difficulte) VALUES (27, '9a+');
INSERT INTO public.cotation (id, difficulte) VALUES (28, '9b');
INSERT INTO public.cotation (id, difficulte) VALUES (29, '9b+');
INSERT INTO public.cotation (id, difficulte) VALUES (30, '9c');


--
-- TOC entry 2942 (class 0 OID 39267)
-- Dependencies: 208
-- Data for Name: secteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.secteur (secteur_id, nom, description, site_site_id) VALUES (2, 'conifère', 'encore des sapins', 3);
INSERT INTO public.secteur (secteur_id, nom, description, site_site_id) VALUES (3, 'test le bouvier', 'Un formidable endroit chaleureux', 1);
INSERT INTO public.secteur (secteur_id, nom, description, site_site_id) VALUES (15, 'Hohneck ', ' Les amoureux des balades en pleine nature trouveront aussi leur bonheur en empruntant le sentier de découverte des forêts.', 11);
INSERT INTO public.secteur (secteur_id, nom, description, site_site_id) VALUES (16, 'Le domaine de Munster', 'Un paysage a couper le souffle', 11);


--
-- TOC entry 2946 (class 0 OID 39283)
-- Dependencies: 212
-- Data for Name: topo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (34, 2, 'Rebouillon', 'Traversée la Nartuby à gué pour rejoindre le secteur des 5 gros blocs. le premier bloc se trouve juste en dessous le parking.', 2020, 'France, Provence-Alpes-Côte d''Azur, Var (83), Draguignan, Châteaudouble.', 2, 1);
INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (27, 2, 'kral', 'kral de tranchebauge', 2020, 'tranchebauge', 2, 1);
INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (40, 12, 'St Romain de Bourgogne', 'Vignoble et escalade', 2020, 'St Romain', 2, 1);
INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (41, 12, 'La bresse en folie', 'Une découverte au cœur des Vosges', 2020, 'Vosges la bresse', 2, 1);
INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (39, 12, 'St Romain', 'Village entouré de falaise', 2020, 'St Romain', 16, 1);
INSERT INTO public.topo (topo_id, compte_id, nom, description, parution, lieu, emprunteur_id, reservation) VALUES (46, 12, 'test', 'test', 2020, 'test', 12, 1);


--
-- TOC entry 2948 (class 0 OID 39317)
-- Dependencies: 214
-- Data for Name: voie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.voie (voie_id, numero, nom, description, secteur_id, longueur, difficulte, site_id) VALUES (5, '7', 'Le Creusot', 'Beaux paysages', 2, '80', '14', 3);
INSERT INTO public.voie (voie_id, numero, nom, description, secteur_id, longueur, difficulte, site_id) VALUES (6, '8', 'St firmin', 'Endroit calme avec vue magnifique', 3, '10', '4', 1);
INSERT INTO public.voie (voie_id, numero, nom, description, secteur_id, longueur, difficulte, site_id) VALUES (7, '5', 'La Bresse Hohneck', 'Sentier de forêt avec vue sur les ballons', 15, '45', '10', 11);
INSERT INTO public.voie (voie_id, numero, nom, description, secteur_id, longueur, difficulte, site_id) VALUES (8, '3', 'La carriere au forte odeur', 'Ame sensible s''abstenir', 16, '100', '30', 11);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 197
-- Name: adresse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_id_seq', 56, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 199
-- Name: commentaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commentaire_id_seq', 115, true);


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 201
-- Name: compte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compte_id_seq', 17, true);


--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 216
-- Name: cotation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cotation_id_seq', 30, true);


--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 203
-- Name: departement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departement_id_seq', 101, true);


--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 206
-- Name: region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.region_id_seq', 18, true);


--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 218
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 1, false);


--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 209
-- Name: secteur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.secteur_id_seq', 16, true);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 211
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.site_id_seq', 11, true);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 213
-- Name: topo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.topo_id_seq', 46, true);


--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 215
-- Name: voie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voie_id_seq', 8, true);


-- Completed on 2020-10-28 22:52:13

--
-- PostgreSQL database dump complete
--

