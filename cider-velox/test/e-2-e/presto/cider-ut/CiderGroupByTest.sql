DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(float_not_null_a FLOAT, float_half_null_b FLOAT, double_not_null_c DOUBLE, double_half_null_d DOUBLE, tinyint_not_null_e TINYINT, tinyint_half_null_f TINYINT, smallint_not_null_g SMALLINT, smallint_half_null_h SMALLINT, integer_not_null_i INTEGER, integer_half_null_j INTEGER, bigint_not_null_k BIGINT, bigint_half_null_l BIGINT, boolean_not_null_m BOOLEAN, boolean_half_null_n BOOLEAN);
INSERT INTO table_test VALUES 
 (88.084724,null,12.013038,57.789085,cast(79 as tinyint),null,cast(43 as smallint),null,55,null,47,null,cast(1 as BOOLEAN),null), 
 (61.862171,null,34.599419,null,cast(71 as tinyint),cast(2 as tinyint),cast(55 as smallint),null,37,null,37,55,cast(1 as BOOLEAN),null), 
 (74.382851,null,19.244793,null,cast(11 as tinyint),cast(26 as tinyint),cast(48 as smallint),null,26,84,97,null,cast(0 as BOOLEAN),cast(0 as BOOLEAN)), 
 (21.586483,18.919804,30.280828,null,cast(53 as tinyint),null,cast(67 as smallint),cast(70 as smallint),22,53,31,55,cast(0 as BOOLEAN),null), 
 (43.958927,36.788136,12.682693,null,cast(29 as tinyint),cast(27 as tinyint),cast(18 as smallint),cast(23 as smallint),27,75,89,null,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (1.463056,null,62.905621,71.439461,cast(84 as tinyint),null,cast(65 as smallint),null,34,null,96,66,cast(1 as BOOLEAN),cast(0 as BOOLEAN)), 
 (81.618103,null,89.238205,97.870331,cast(6 as tinyint),null,cast(84 as smallint),cast(68 as smallint),50,79,6,22,cast(0 as BOOLEAN),null), 
 (85.170830,79.513168,11.597719,null,cast(87 as tinyint),null,cast(21 as smallint),cast(0 as smallint),57,null,97,null,cast(1 as BOOLEAN),null), 
 (8.215929,null,9.580539,58.353943,cast(7 as tinyint),cast(92 as tinyint),cast(40 as smallint),null,15,77,52,29,cast(0 as BOOLEAN),cast(0 as BOOLEAN)), 
 (86.811340,null,30.007565,66.068855,cast(42 as tinyint),null,cast(60 as smallint),null,31,null,63,null,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (78.590591,23.771057,78.927299,74.399323,cast(19 as tinyint),null,cast(94 as smallint),cast(40 as smallint),52,5,22,null,cast(1 as BOOLEAN),null), 
 (27.681097,68.668633,37.856224,null,cast(11 as tinyint),null,cast(94 as smallint),cast(78 as smallint),26,null,67,54,cast(0 as BOOLEAN),cast(1 as BOOLEAN)), 
 (29.080591,74.409393,92.539093,null,cast(16 as tinyint),null,cast(37 as smallint),null,87,84,41,30,cast(0 as BOOLEAN),null), 
 (32.740639,91.016762,35.200287,39.592659,cast(72 as tinyint),null,cast(77 as smallint),cast(46 as smallint),90,30,2,65,cast(1 as BOOLEAN),null), 
 (23.273560,21.015842,70.710449,94.871613,cast(65 as tinyint),cast(71 as tinyint),cast(66 as smallint),null,5,94,74,null,cast(0 as BOOLEAN),null), 
 (54.001743,89.884552,36.141006,62.236595,cast(1 as tinyint),cast(96 as tinyint),cast(80 as smallint),null,16,60,85,7,cast(1 as BOOLEAN),null), 
 (51.704006,72.258583,82.164787,36.795784,cast(37 as tinyint),null,cast(34 as smallint),cast(14 as smallint),11,60,40,62,cast(1 as BOOLEAN),cast(0 as BOOLEAN)), 
 (6.991284,37.653179,41.044044,null,cast(85 as tinyint),cast(62 as tinyint),cast(33 as smallint),cast(83 as smallint),91,32,62,null,cast(1 as BOOLEAN),null), 
 (9.939124,50.676155,81.725800,67.143120,cast(30 as tinyint),null,cast(20 as smallint),null,27,4,78,42,cast(0 as BOOLEAN),cast(0 as BOOLEAN)), 
 (69.412003,69.119255,25.334230,null,cast(13 as tinyint),null,cast(65 as smallint),null,69,null,14,34,cast(1 as BOOLEAN),null) 
;
SELECT float_not_null_a, COUNT(*) FROM table_test GROUP BY float_not_null_a;
SELECT float_not_null_a, SUM(double_not_null_c) FROM table_test GROUP BY float_not_null_a;
SELECT float_not_null_a, AVG(double_not_null_c) FROM table_test GROUP BY float_not_null_a;
SELECT double_not_null_c, COUNT(*) FROM table_test GROUP BY double_not_null_c;
SELECT tinyint_not_null_e, COUNT(*) FROM table_test GROUP BY tinyint_not_null_e;
SELECT smallint_not_null_g, COUNT(*) FROM table_test GROUP BY smallint_not_null_g;
SELECT integer_not_null_i, COUNT(*) FROM table_test GROUP BY integer_not_null_i;
SELECT bigint_not_null_k, COUNT(*) FROM table_test GROUP BY bigint_not_null_k;
SELECT boolean_not_null_m, COUNT(*) FROM table_test GROUP BY boolean_not_null_m;
SELECT float_half_null_b, COUNT(*) FROM table_test GROUP BY float_half_null_b;
SELECT double_half_null_d, COUNT(*) FROM table_test GROUP BY double_half_null_d;
SELECT tinyint_half_null_f, COUNT(*) FROM table_test GROUP BY tinyint_half_null_f;
SELECT smallint_half_null_h, COUNT(*) FROM table_test GROUP BY smallint_half_null_h;
SELECT integer_half_null_j, COUNT(*) FROM table_test GROUP BY integer_half_null_j;
SELECT bigint_half_null_l, COUNT(*) FROM table_test GROUP BY bigint_half_null_l;
SELECT boolean_half_null_n, COUNT(*) FROM table_test GROUP BY boolean_half_null_n;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(float_not_null_a FLOAT, float_half_null_b FLOAT, double_not_null_c DOUBLE, double_half_null_d DOUBLE, tinyint_not_null_e TINYINT, tinyint_half_null_f TINYINT, smallint_not_null_g SMALLINT, smallint_half_null_h SMALLINT, integer_not_null_i INTEGER, integer_half_null_j INTEGER, bigint_not_null_k BIGINT, bigint_half_null_l BIGINT, boolean_not_null_m BOOLEAN, boolean_half_null_n BOOLEAN);
INSERT INTO table_test VALUES 
 (41.685535,null,14.422944,null,cast(25 as tinyint),cast(86 as tinyint),cast(70 as smallint),null,8,null,83,54,cast(1 as BOOLEAN),null), 
 (82.953255,null,0.834051,null,cast(71 as tinyint),cast(65 as tinyint),cast(28 as smallint),cast(6 as smallint),67,null,20,null,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (73.722855,null,59.449120,null,cast(40 as tinyint),cast(51 as tinyint),cast(94 as smallint),null,0,null,29,1,cast(0 as BOOLEAN),null), 
 (45.098080,98.465622,70.507057,59.424980,cast(40 as tinyint),cast(38 as tinyint),cast(95 as smallint),null,51,null,44,28,cast(0 as BOOLEAN),null), 
 (8.350148,null,22.752600,62.371075,cast(49 as tinyint),cast(97 as tinyint),cast(46 as smallint),cast(33 as smallint),82,67,72,88,cast(0 as BOOLEAN),null), 
 (98.152809,null,49.380787,14.938166,cast(75 as tinyint),cast(97 as tinyint),cast(40 as smallint),null,40,null,29,null,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (83.781120,null,87.659256,1.062709,cast(69 as tinyint),cast(72 as tinyint),cast(92 as smallint),cast(3 as smallint),49,43,83,14,cast(0 as BOOLEAN),cast(1 as BOOLEAN)), 
 (60.140163,null,65.815460,null,cast(40 as tinyint),cast(88 as tinyint),cast(27 as smallint),null,33,null,47,10,cast(1 as BOOLEAN),null), 
 (61.666744,null,18.917421,null,cast(91 as tinyint),cast(74 as tinyint),cast(83 as smallint),null,29,null,7,43,cast(1 as BOOLEAN),cast(0 as BOOLEAN)), 
 (42.764317,null,13.635593,10.823116,cast(67 as tinyint),null,cast(7 as smallint),cast(90 as smallint),17,null,70,15,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (90.329536,null,31.316366,7.603396,cast(67 as tinyint),null,cast(84 as smallint),cast(58 as smallint),72,null,10,null,cast(0 as BOOLEAN),null), 
 (93.663635,null,65.670197,null,cast(99 as tinyint),null,cast(82 as smallint),null,84,null,82,null,cast(0 as BOOLEAN),null), 
 (31.817028,null,87.583031,0.511606,cast(33 as tinyint),null,cast(60 as smallint),cast(19 as smallint),18,null,57,77,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (89.903572,42.921589,16.775047,null,cast(95 as tinyint),cast(88 as tinyint),cast(72 as smallint),null,93,49,54,97,cast(1 as BOOLEAN),cast(0 as BOOLEAN)), 
 (49.339996,81.757416,47.346867,84.289642,cast(51 as tinyint),cast(94 as tinyint),cast(4 as smallint),null,78,93,57,16,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (42.762924,91.990784,53.743889,45.046432,cast(60 as tinyint),null,cast(42 as smallint),null,64,null,64,null,cast(0 as BOOLEAN),null), 
 (19.376888,null,39.368275,null,cast(45 as tinyint),cast(75 as tinyint),cast(98 as smallint),null,78,null,35,null,cast(1 as BOOLEAN),cast(1 as BOOLEAN)), 
 (99.765747,null,85.230522,null,cast(64 as tinyint),cast(99 as tinyint),cast(91 as smallint),null,85,61,75,71,cast(1 as BOOLEAN),cast(0 as BOOLEAN)), 
 (27.296946,null,51.583298,89.448303,cast(5 as tinyint),null,cast(87 as smallint),cast(80 as smallint),2,null,71,9,cast(1 as BOOLEAN),null), 
 (89.075119,null,35.738174,15.384796,cast(90 as tinyint),null,cast(9 as smallint),cast(33 as smallint),0,97,29,14,cast(0 as BOOLEAN),cast(1 as BOOLEAN)) 
;
SELECT bigint_not_null_k, boolean_not_null_m, COUNT(*), SUM(bigint_not_null_k) FROM table_test GROUP BY bigint_not_null_k, boolean_not_null_m;
SELECT integer_not_null_i, smallint_not_null_g, COUNT(*), sum(integer_not_null_i), sum(smallint_not_null_g) FROM table_test GROUP BY integer_not_null_i, smallint_not_null_g;
SELECT integer_not_null_i, bigint_not_null_k, boolean_not_null_m, COUNT(*), sum(integer_not_null_i), sum(bigint_not_null_k) FROM table_test GROUP BY integer_not_null_i, bigint_not_null_k, boolean_not_null_m;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a BIGINT NOT NULL, col_b BIGINT NOT NULL, col_c BIGINT NOT NULL, col_d BIGINT);
INSERT INTO table_test VALUES 
 (296,383,-712,null), 
 (238,29,-269,-415), 
 (-19,-749,-161,-865), 
 (-998,-540,98,-371), 
 (112,193,-21,550), 
 (380,160,-836,null), 
 (819,347,690,521), 
 (953,668,383,null), 
 (-749,-482,284,null), 
 (372,-801,167,552), 
 (157,-742,-766,397), 
 (783,711,-475,828), 
 (-822,-164,74,null), 
 (618,-106,-73,-29), 
 (-514,729,683,-383), 
 (-714,149,646,null), 
 (-314,3,-575,null), 
 (-800,183,-632,248), 
 (983,-949,820,901), 
 (295,62,697,null) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a BIGINT NOT NULL, col_b BIGINT NOT NULL, col_c BIGINT NOT NULL, col_d BIGINT);
INSERT INTO table_test VALUES 
 (897,-617,454,null), 
 (312,-743,-526,356), 
 (238,711,795,null), 
 (-294,611,606,null), 
 (420,532,469,-970), 
 (-432,-793,220,-492), 
 (-36,-681,-949,-982), 
 (937,-819,38,null), 
 (808,458,-943,62), 
 (243,-196,-328,-76), 
 (-144,18,723,null), 
 (253,940,927,-586), 
 (-575,71,-375,null), 
 (508,-136,-173,-63), 
 (769,502,290,602), 
 (12,717,-578,null), 
 (-336,934,-256,-277), 
 (227,98,-95,290), 
 (-989,980,-689,null), 
 (-767,-130,937,789) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a BIGINT NOT NULL, col_b BIGINT NOT NULL, col_c BIGINT NOT NULL, col_d BIGINT);
INSERT INTO table_test VALUES 
 (672,-803,984,-727), 
 (-460,814,734,null), 
 (523,-336,-980,-743), 
 (208,-75,175,177), 
 (990,-397,-372,-546), 
 (856,-456,468,127), 
 (580,884,703,492), 
 (-854,124,709,586), 
 (829,188,316,823), 
 (-566,380,444,null), 
 (11,365,-377,null), 
 (-617,-801,279,null), 
 (-354,-963,-419,957), 
 (219,500,-898,null), 
 (-535,-245,612,null), 
 (726,-348,955,null), 
 (560,-208,659,-872), 
 (-957,-959,540,281), 
 (899,405,-623,-651), 
 (617,192,364,-598) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a > 5 GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE  col_a > 5 and col_b > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b > 5 and col_c > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b < 5 GROUP BY col_a, col_b, col_c;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a BIGINT NOT NULL, col_b BIGINT NOT NULL, col_c BIGINT NOT NULL, col_d BIGINT);
INSERT INTO table_test VALUES 
 (465,-891,151,null), 
 (-443,-532,562,110), 
 (-210,827,-418,760), 
 (313,-12,301,-486), 
 (252,284,654,null), 
 (433,272,-44,null), 
 (903,623,776,null), 
 (-589,257,224,-464), 
 (689,-872,814,null), 
 (-134,173,-731,363), 
 (-468,-98,-387,-576), 
 (-474,-895,-702,572), 
 (528,-967,796,null), 
 (103,980,657,-550), 
 (-752,-591,-883,null), 
 (779,221,594,-469), 
 (-943,-318,-418,-259), 
 (-961,162,737,-654), 
 (377,-115,-500,null), 
 (-974,-810,187,-349) 
;
SELECT col_a, SUM(col_a) FROM table_test WHERE col_a < 8 GROUP BY col_a HAVING col_a > 2;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a <> col_b;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a < 500 GROUP BY col_a,col_b HAVING col_a > 0 AND col_b < 500;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum, SUM(col_c) AS col_c_sum FROM table_test where col_a < 500 GROUP BY col_a, col_b, col_c HAVING col_a = col_b AND col_c > 500;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a FLOAT NOT NULL, col_b FLOAT NOT NULL, col_c FLOAT NOT NULL, col_d FLOAT);
INSERT INTO table_test VALUES 
 (-952.534668,-196.808655,328.906128,null), 
 (423.738159,255.231689,-509.586365,-987.281738), 
 (-725.261230,-760.792297,315.972046,null), 
 (-180.448669,-347.562012,-981.307251,-160.751038), 
 (-412.884949,993.361572,179.297241,745.073486), 
 (-575.273743,688.876587,827.086670,null), 
 (125.775635,-678.218201,-473.459778,null), 
 (757.968872,-522.101562,353.239624,null), 
 (793.832031,-273.703064,400.496826,null), 
 (856.558594,-264.139648,-132.264893,null), 
 (-219.377625,-424.086731,377.659302,null), 
 (18.754333,580.933838,841.182373,null), 
 (-484.252197,467.340088,-917.865784,null), 
 (613.154785,-806.944641,478.542603,-324.564758), 
 (601.619873,-337.195862,-134.002686,309.726685), 
 (-468.005249,32.797241,-763.256409,-515.255554), 
 (-976.375549,322.527954,-361.349731,null), 
 (610.196655,298.298584,-169.271912,-922.699402), 
 (-74.646973,523.926636,-673.652466,null), 
 (-968.966003,335.018921,-788.469116,null) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a FLOAT NOT NULL, col_b FLOAT NOT NULL, col_c FLOAT NOT NULL, col_d FLOAT);
INSERT INTO table_test VALUES 
 (636.696045,693.801270,680.563232,null), 
 (630.672241,-413.514465,992.894165,547.737915), 
 (-162.345398,112.277710,-170.798645,-941.185242), 
 (-619.171753,242.226929,802.091064,-999.087830), 
 (-980.216125,-941.264282,451.035767,212.775269), 
 (-509.412811,-816.843689,189.517578,null), 
 (857.891968,631.432495,-936.911743,null), 
 (872.194336,32.790527,-639.357422,-890.894836), 
 (-333.873047,-44.262329,600.453735,942.192261), 
 (814.215210,962.165771,951.658813,854.571411), 
 (-497.164490,200.980591,-910.639954,835.199097), 
 (-825.488953,502.351196,30.066895,633.815430), 
 (-430.596802,303.768677,240.896606,378.662598), 
 (-802.095825,-758.612671,-888.995483,-947.696045), 
 (536.040161,-190.518127,-457.395813,null), 
 (-848.603394,188.772949,82.574707,null), 
 (221.795898,-787.285645,122.460938,608.242798), 
 (-469.782532,-838.875610,-896.447754,761.324585), 
 (246.988770,-283.400208,-865.450134,null), 
 (-427.947083,-865.490906,-643.691284,-493.307281) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a FLOAT NOT NULL, col_b FLOAT NOT NULL, col_c FLOAT NOT NULL, col_d FLOAT);
INSERT INTO table_test VALUES 
 (-738.204651,-299.529419,-506.133942,957.874878), 
 (-966.253723,-220.983398,-501.896179,null), 
 (929.429688,473.616333,915.350220,null), 
 (136.339478,710.655518,451.500977,null), 
 (115.041016,-776.556885,-131.005249,418.906006), 
 (-854.463257,-411.112854,-347.590271,null), 
 (-976.708923,480.996094,755.196899,726.312378), 
 (-534.018921,961.685669,-852.164734,-789.368164), 
 (-742.577759,-312.273132,573.503906,null), 
 (772.793945,-909.542297,595.544922,null), 
 (396.179321,-17.386780,-393.675598,963.945068), 
 (-657.517395,-939.085571,-807.920288,297.921753), 
 (499.402710,873.307739,-710.629883,null), 
 (-0.939636,968.007690,589.777466,null), 
 (-41.220764,-514.893616,136.241089,null), 
 (-807.356567,375.063354,-417.859192,null), 
 (246.226929,139.330566,816.975220,null), 
 (142.555176,305.503296,62.000000,-371.826172), 
 (-11.051147,-589.614746,454.868774,null), 
 (-300.330017,231.937378,547.046997,null) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a > 5 GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE  col_a > 5 and col_b > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b > 5 and col_c > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b < 5 GROUP BY col_a, col_b, col_c;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a FLOAT NOT NULL, col_b FLOAT NOT NULL, col_c FLOAT NOT NULL, col_d FLOAT);
INSERT INTO table_test VALUES 
 (576.211426,-995.506165,-854.357300,null), 
 (-245.847412,477.201660,408.402222,null), 
 (729.173950,-286.756897,719.232178,null), 
 (-835.616760,-915.967834,434.816650,null), 
 (982.145020,-574.527771,236.481445,null), 
 (-634.480286,-464.087708,-808.188660,null), 
 (276.620117,570.781982,495.120239,null), 
 (115.557373,-938.447815,633.342529,null), 
 (-146.596252,144.344360,-454.361755,784.097534), 
 (849.728516,235.819336,728.441772,-9.057129), 
 (528.280273,-714.450439,-888.640198,null), 
 (534.907715,-186.264282,764.844116,null), 
 (289.867920,-419.293274,-259.229675,-695.818420), 
 (-696.073059,-206.216309,654.012573,null), 
 (692.935913,198.669678,129.531250,261.365845), 
 (443.161987,244.177979,-240.068359,null), 
 (-304.503296,-663.115051,740.925781,null), 
 (-765.065125,235.809814,162.201050,null), 
 (-94.474182,242.032471,640.759644,null), 
 (962.254761,406.975830,120.974365,null) 
;
SELECT col_a, SUM(col_a) FROM table_test WHERE col_a < 8 GROUP BY col_a HAVING col_a > 2;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a <> col_b;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a < 500 GROUP BY col_a,col_b HAVING col_a > 0 AND col_b < 500;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum, SUM(col_c) AS col_c_sum FROM table_test where col_a < 500 GROUP BY col_a, col_b, col_c HAVING col_a = col_b AND col_c > 500;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a DOUBLE NOT NULL, col_b DOUBLE NOT NULL, col_c DOUBLE NOT NULL, col_d DOUBLE);
INSERT INTO table_test VALUES 
 (-292.832458,746.078491,-219.067505,343.905151), 
 (-725.474060,518.668579,775.573364,364.605713), 
 (-470.960022,515.353516,733.003784,null), 
 (88.192871,797.180908,-211.151062,-950.986206), 
 (-57.601501,589.693115,-643.820190,null), 
 (-520.173584,-671.958130,965.552490,-809.071289), 
 (-522.625732,-857.932495,309.240723,-698.828613), 
 (-612.952637,224.185669,-707.118774,null), 
 (-544.114563,963.911987,159.423828,null), 
 (652.709717,-377.554321,887.752930,-252.174316), 
 (459.585083,29.050049,118.545776,-776.020081), 
 (330.887939,-186.585938,-758.557007,null), 
 (-263.818542,305.241943,-624.586792,195.808350), 
 (635.220825,457.963013,-46.819336,null), 
 (-414.375549,303.220459,-35.801453,631.833496), 
 (262.221680,708.434692,-784.639771,99.991943), 
 (-467.841736,-987.582764,553.838013,-678.067139), 
 (-595.287109,-26.951599,-460.717773,null), 
 (242.743286,-649.863037,-389.438293,-800.643188), 
 (888.037354,-225.250244,-894.290771,-233.470642) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a DOUBLE NOT NULL, col_b DOUBLE NOT NULL, col_c DOUBLE NOT NULL, col_d DOUBLE);
INSERT INTO table_test VALUES 
 (-341.577881,-814.901428,-444.993774,null), 
 (-312.511658,947.193481,-624.350647,null), 
 (-55.398682,-512.280701,-998.899841,null), 
 (970.477905,507.664062,-842.339661,null), 
 (583.246216,722.664673,35.286743,null), 
 (-974.451477,441.407104,185.523682,806.828857), 
 (-964.201355,-251.694946,722.883789,618.223389), 
 (-640.646118,-885.824402,-683.637329,-290.330017), 
 (128.665894,-89.550598,566.827881,null), 
 (-51.790955,889.706909,-522.729553,-719.308350), 
 (-218.820862,543.506104,-655.953064,null), 
 (400.428223,866.001099,-700.201172,-715.570068), 
 (-592.362610,280.505005,-276.058716,-460.026184), 
 (-750.465515,-613.237610,777.988159,-884.008484), 
 (51.592407,201.588257,928.050903,-852.216736), 
 (736.121338,506.690063,-258.171570,null), 
 (65.738647,615.360474,-125.810303,145.155273), 
 (420.016357,-452.992920,323.578247,335.434326), 
 (-733.648560,753.141846,355.873047,-169.687866), 
 (472.402344,-692.516541,187.797485,-873.909241) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a DOUBLE NOT NULL, col_b DOUBLE NOT NULL, col_c DOUBLE NOT NULL, col_d DOUBLE);
INSERT INTO table_test VALUES 
 (709.701416,324.906006,-893.049255,null), 
 (445.156982,-418.843445,157.707764,null), 
 (-544.921204,-674.313354,-467.883362,105.782837), 
 (233.298096,555.921875,-419.215332,803.828003), 
 (831.628296,-164.555481,-901.953003,null), 
 (665.423096,-788.158142,779.575317,-904.994812), 
 (363.462891,-617.771484,-248.380920,null), 
 (251.921753,312.286621,513.272339,-874.790344), 
 (-280.355103,483.154175,288.258057,null), 
 (237.719238,797.411621,-532.171265,null), 
 (-607.042175,238.623413,605.221924,null), 
 (-477.869934,-932.958923,-517.306641,null), 
 (-523.805176,94.655640,-282.829224,null), 
 (-581.181824,-704.930054,469.418579,851.637695), 
 (-403.489014,16.409851,351.934082,-611.826355), 
 (-723.454590,587.535522,618.461670,null), 
 (-594.892029,-186.585510,673.776489,-651.078369), 
 (844.489258,293.217773,-753.772400,null), 
 (-718.838074,142.626099,-555.519287,null), 
 (431.713379,151.906860,-945.366028,755.105591) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a > 5 GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE  col_a > 5 and col_b > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b > 5 and col_c > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b < 5 GROUP BY col_a, col_b, col_c;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a DOUBLE NOT NULL, col_b DOUBLE NOT NULL, col_c DOUBLE NOT NULL, col_d DOUBLE);
INSERT INTO table_test VALUES 
 (-448.423035,-326.284119,811.510742,null), 
 (499.936890,-967.053406,315.051514,null), 
 (205.075562,719.340698,824.346924,417.057251), 
 (-197.607849,-571.955933,293.568848,null), 
 (-392.426697,240.363525,557.821045,null), 
 (-14.131836,-845.404480,966.079102,null), 
 (-839.004211,-805.530945,929.124268,null), 
 (183.709717,835.284302,-255.594910,null), 
 (-806.401245,-28.405579,-323.635254,null), 
 (367.861450,359.359497,253.323853,null), 
 (497.417480,966.194092,-745.819092,906.875977), 
 (929.514038,-750.153198,-498.105957,null), 
 (804.311768,-247.667908,-139.944031,null), 
 (-720.431885,838.176392,-832.162964,-996.906189), 
 (-881.484070,113.840576,-60.316101,-842.658203), 
 (-467.392700,-468.693542,117.671143,577.335449), 
 (-47.333008,194.287109,-357.094727,null), 
 (-457.742859,404.510742,-809.334900,961.619751), 
 (-168.443481,-545.978027,985.165771,null), 
 (587.215820,155.721680,-450.613831,-575.014160) 
;
SELECT col_a, SUM(col_a) FROM table_test WHERE col_a < 8 GROUP BY col_a HAVING col_a > 2;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a <> col_b;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a < 500 GROUP BY col_a,col_b HAVING col_a > 0 AND col_b < 500;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum, SUM(col_c) AS col_c_sum FROM table_test where col_a < 500 GROUP BY col_a, col_b, col_c HAVING col_a = col_b AND col_c > 500;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a TINYINT NOT NULL, col_b TINYINT NOT NULL, col_c TINYINT NOT NULL, col_d TINYINT);
INSERT INTO table_test VALUES 
 (cast(-4 as tinyint),cast(2 as tinyint),cast(1 as tinyint),null), 
 (cast(-4 as tinyint),cast(2 as tinyint),cast(0 as tinyint),cast(2 as tinyint)), 
 (cast(-1 as tinyint),cast(0 as tinyint),cast(4 as tinyint),cast(-5 as tinyint)), 
 (cast(0 as tinyint),cast(2 as tinyint),cast(-3 as tinyint),cast(1 as tinyint)), 
 (cast(0 as tinyint),cast(3 as tinyint),cast(-4 as tinyint),null), 
 (cast(-3 as tinyint),cast(0 as tinyint),cast(-2 as tinyint),null), 
 (cast(2 as tinyint),cast(1 as tinyint),cast(1 as tinyint),null), 
 (cast(2 as tinyint),cast(1 as tinyint),cast(0 as tinyint),cast(2 as tinyint)), 
 (cast(-1 as tinyint),cast(-3 as tinyint),cast(-5 as tinyint),cast(-4 as tinyint)), 
 (cast(1 as tinyint),cast(-5 as tinyint),cast(3 as tinyint),null), 
 (cast(-3 as tinyint),cast(2 as tinyint),cast(-1 as tinyint),null), 
 (cast(-3 as tinyint),cast(4 as tinyint),cast(1 as tinyint),cast(5 as tinyint)), 
 (cast(-2 as tinyint),cast(2 as tinyint),cast(-5 as tinyint),cast(-4 as tinyint)), 
 (cast(5 as tinyint),cast(3 as tinyint),cast(5 as tinyint),null), 
 (cast(-4 as tinyint),cast(5 as tinyint),cast(-3 as tinyint),null), 
 (cast(2 as tinyint),cast(-3 as tinyint),cast(2 as tinyint),cast(2 as tinyint)), 
 (cast(-3 as tinyint),cast(0 as tinyint),cast(4 as tinyint),null), 
 (cast(3 as tinyint),cast(0 as tinyint),cast(5 as tinyint),cast(-3 as tinyint)), 
 (cast(-5 as tinyint),cast(1 as tinyint),cast(1 as tinyint),null), 
 (cast(3 as tinyint),cast(2 as tinyint),cast(1 as tinyint),null) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a TINYINT NOT NULL, col_b TINYINT NOT NULL, col_c TINYINT NOT NULL, col_d TINYINT);
INSERT INTO table_test VALUES 
 (cast(-4 as tinyint),cast(4 as tinyint),cast(0 as tinyint),cast(-2 as tinyint)), 
 (cast(-3 as tinyint),cast(-2 as tinyint),cast(5 as tinyint),null), 
 (cast(-2 as tinyint),cast(-3 as tinyint),cast(3 as tinyint),null), 
 (cast(-1 as tinyint),cast(4 as tinyint),cast(-2 as tinyint),null), 
 (cast(-2 as tinyint),cast(5 as tinyint),cast(3 as tinyint),null), 
 (cast(-4 as tinyint),cast(-1 as tinyint),cast(-5 as tinyint),null), 
 (cast(0 as tinyint),cast(-1 as tinyint),cast(-1 as tinyint),null), 
 (cast(-1 as tinyint),cast(5 as tinyint),cast(3 as tinyint),null), 
 (cast(0 as tinyint),cast(5 as tinyint),cast(-4 as tinyint),null), 
 (cast(-1 as tinyint),cast(2 as tinyint),cast(3 as tinyint),null), 
 (cast(5 as tinyint),cast(1 as tinyint),cast(0 as tinyint),cast(-2 as tinyint)), 
 (cast(5 as tinyint),cast(-1 as tinyint),cast(4 as tinyint),null), 
 (cast(0 as tinyint),cast(1 as tinyint),cast(0 as tinyint),cast(5 as tinyint)), 
 (cast(1 as tinyint),cast(1 as tinyint),cast(-5 as tinyint),null), 
 (cast(2 as tinyint),cast(3 as tinyint),cast(-5 as tinyint),null), 
 (cast(4 as tinyint),cast(1 as tinyint),cast(5 as tinyint),null), 
 (cast(-3 as tinyint),cast(2 as tinyint),cast(0 as tinyint),null), 
 (cast(0 as tinyint),cast(-1 as tinyint),cast(-1 as tinyint),cast(4 as tinyint)), 
 (cast(-1 as tinyint),cast(1 as tinyint),cast(1 as tinyint),null), 
 (cast(5 as tinyint),cast(0 as tinyint),cast(-5 as tinyint),cast(-5 as tinyint)) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a SMALLINT NOT NULL, col_b SMALLINT NOT NULL, col_c SMALLINT NOT NULL, col_d SMALLINT);
INSERT INTO table_test VALUES 
 (cast(831 as smallint),cast(139 as smallint),cast(-468 as smallint),cast(179 as smallint)), 
 (cast(-819 as smallint),cast(-18 as smallint),cast(-368 as smallint),cast(121 as smallint)), 
 (cast(-106 as smallint),cast(661 as smallint),cast(-247 as smallint),null), 
 (cast(-333 as smallint),cast(979 as smallint),cast(-428 as smallint),null), 
 (cast(-7 as smallint),cast(557 as smallint),cast(-433 as smallint),null), 
 (cast(720 as smallint),cast(-713 as smallint),cast(-770 as smallint),cast(418 as smallint)), 
 (cast(-409 as smallint),cast(29 as smallint),cast(832 as smallint),cast(-109 as smallint)), 
 (cast(-829 as smallint),cast(-418 as smallint),cast(-583 as smallint),cast(731 as smallint)), 
 (cast(-405 as smallint),cast(-589 as smallint),cast(607 as smallint),cast(469 as smallint)), 
 (cast(-907 as smallint),cast(-7 as smallint),cast(649 as smallint),null), 
 (cast(821 as smallint),cast(590 as smallint),cast(864 as smallint),null), 
 (cast(925 as smallint),cast(-938 as smallint),cast(-628 as smallint),cast(-285 as smallint)), 
 (cast(117 as smallint),cast(-111 as smallint),cast(-553 as smallint),null), 
 (cast(-911 as smallint),cast(-825 as smallint),cast(631 as smallint),null), 
 (cast(28 as smallint),cast(-682 as smallint),cast(-69 as smallint),cast(-967 as smallint)), 
 (cast(953 as smallint),cast(984 as smallint),cast(513 as smallint),cast(98 as smallint)), 
 (cast(515 as smallint),cast(49 as smallint),cast(-914 as smallint),cast(-536 as smallint)), 
 (cast(97 as smallint),cast(-13 as smallint),cast(-570 as smallint),cast(-521 as smallint)), 
 (cast(-328 as smallint),cast(220 as smallint),cast(175 as smallint),null), 
 (cast(712 as smallint),cast(-477 as smallint),cast(643 as smallint),null) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a SMALLINT NOT NULL, col_b SMALLINT NOT NULL, col_c SMALLINT NOT NULL, col_d SMALLINT);
INSERT INTO table_test VALUES 
 (cast(804 as smallint),cast(766 as smallint),cast(-612 as smallint),null), 
 (cast(-909 as smallint),cast(-883 as smallint),cast(-192 as smallint),cast(-75 as smallint)), 
 (cast(-176 as smallint),cast(-118 as smallint),cast(-357 as smallint),null), 
 (cast(71 as smallint),cast(-902 as smallint),cast(-893 as smallint),cast(698 as smallint)), 
 (cast(-678 as smallint),cast(791 as smallint),cast(169 as smallint),null), 
 (cast(-384 as smallint),cast(-884 as smallint),cast(744 as smallint),null), 
 (cast(-673 as smallint),cast(-183 as smallint),cast(-524 as smallint),cast(729 as smallint)), 
 (cast(61 as smallint),cast(-4 as smallint),cast(-246 as smallint),null), 
 (cast(-581 as smallint),cast(-430 as smallint),cast(594 as smallint),cast(925 as smallint)), 
 (cast(757 as smallint),cast(-880 as smallint),cast(821 as smallint),null), 
 (cast(59 as smallint),cast(-854 as smallint),cast(615 as smallint),cast(906 as smallint)), 
 (cast(-457 as smallint),cast(-580 as smallint),cast(-900 as smallint),cast(343 as smallint)), 
 (cast(101 as smallint),cast(-99 as smallint),cast(-65 as smallint),cast(-451 as smallint)), 
 (cast(482 as smallint),cast(315 as smallint),cast(-205 as smallint),null), 
 (cast(-168 as smallint),cast(-434 as smallint),cast(374 as smallint),cast(452 as smallint)), 
 (cast(463 as smallint),cast(-800 as smallint),cast(-299 as smallint),null), 
 (cast(729 as smallint),cast(297 as smallint),cast(-416 as smallint),cast(810 as smallint)), 
 (cast(-825 as smallint),cast(-435 as smallint),cast(-781 as smallint),null), 
 (cast(-4 as smallint),cast(814 as smallint),cast(588 as smallint),cast(349 as smallint)), 
 (cast(-418 as smallint),cast(-582 as smallint),cast(-190 as smallint),cast(-77 as smallint)) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a INTEGER NOT NULL, col_b INTEGER NOT NULL, col_c INTEGER NOT NULL, col_d INTEGER);
INSERT INTO table_test VALUES 
 (840,-510,-814,414), 
 (-902,-313,406,null), 
 (-848,195,-709,null), 
 (34,-276,-565,-692), 
 (776,445,-317,-806), 
 (155,640,-55,null), 
 (-527,867,-911,null), 
 (-334,-504,879,-28), 
 (300,217,-538,null), 
 (-777,345,-126,926), 
 (-35,-326,312,-355), 
 (469,481,6,-629), 
 (474,-867,-328,null), 
 (185,-290,585,null), 
 (-548,-545,416,-29), 
 (-735,-826,353,null), 
 (881,721,360,262), 
 (648,-36,-811,null), 
 (965,-857,172,-517), 
 (278,242,-436,950) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
SELECT col_a, SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c;
SELECT col_a / 2 AS col_a_2, SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a INTEGER NOT NULL, col_b INTEGER NOT NULL, col_c INTEGER NOT NULL, col_d INTEGER);
INSERT INTO table_test VALUES 
 (-282,-699,-719,null), 
 (-104,-123,-627,null), 
 (333,-769,-560,32), 
 (592,268,603,-965), 
 (704,-518,580,null), 
 (-501,507,-939,238), 
 (366,858,-865,null), 
 (-537,69,-696,-283), 
 (234,402,739,-854), 
 (-67,-115,-791,456), 
 (-913,71,-75,-337), 
 (-386,-265,-960,218), 
 (-164,-891,125,987), 
 (-529,-665,-252,-627), 
 (741,510,-690,null), 
 (-934,-651,-786,null), 
 (-42,548,974,-931), 
 (-360,-333,191,-510), 
 (162,260,-979,null), 
 (-478,-444,-553,-345) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test GROUP BY col_a HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test  GROUP BY col_a, col_b, col_c HAVING col_a > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b > 5 and col_c > 5;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test GROUP BY col_a, col_b, col_c HAVING col_a > 5 and col_b < 5;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a <> col_b AND col_a IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a INTEGER NOT NULL, col_b INTEGER NOT NULL, col_c INTEGER NOT NULL, col_d INTEGER);
INSERT INTO table_test VALUES 
 (-258,627,-18,304), 
 (82,-8,-434,267), 
 (308,427,708,-161), 
 (322,-148,352,566), 
 (-497,-579,409,null), 
 (77,-263,256,-631), 
 (-278,481,957,-967), 
 (251,198,446,-278), 
 (349,230,443,740), 
 (245,671,181,null), 
 (-153,582,-632,null), 
 (-95,582,-463,null), 
 (-784,-506,-646,442), 
 (840,437,128,null), 
 (724,908,305,null), 
 (-322,-68,-652,null), 
 (-553,-480,565,947), 
 (986,-927,567,null), 
 (405,554,-777,-209), 
 (-797,-858,-455,210) 
;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a > 5 GROUP BY col_a;
SELECT col_a, col_b, SUM(col_a) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE  col_a > 5 and col_b > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b > 5 and col_c > 5 GROUP BY col_a, col_b, col_c;
SELECT col_a, col_b, col_c, SUM(col_a), SUM(col_b), SUM(col_c) FROM table_test WHERE col_a > 5 and col_b < 5 GROUP BY col_a, col_b, col_c;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b;
DROP TABLE iF EXISTS table_test;
CREATE TABLE table_test(col_a INTEGER NOT NULL, col_b INTEGER NOT NULL, col_c INTEGER NOT NULL, col_d INTEGER);
INSERT INTO table_test VALUES 
 (-172,371,-693,854), 
 (682,-17,724,null), 
 (988,278,-369,-937), 
 (191,-548,302,80), 
 (-269,819,365,null), 
 (-311,216,-893,null), 
 (644,897,622,711), 
 (-276,764,-686,null), 
 (-215,3,-890,-183), 
 (695,840,138,953), 
 (-679,-931,610,null), 
 (316,-514,-876,959), 
 (-747,435,-229,50), 
 (-490,-459,450,null), 
 (-837,833,481,269), 
 (551,-782,92,null), 
 (-459,368,-535,113), 
 (-703,-864,-325,-105), 
 (184,516,440,null), 
 (-210,147,699,null) 
;
SELECT col_a, SUM(col_a) FROM table_test WHERE col_a < 8 GROUP BY col_a HAVING col_a > 2;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a <> col_b;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum FROM table_test WHERE col_a < 500 AND col_b <> 0 GROUP BY col_a, col_b HAVING col_a IS NOT NULL AND col_b IS NOT NULL;
SELECT SUM(col_a) AS col_a_sum FROM table_test WHERE col_a < 500 GROUP BY col_a,col_b HAVING col_a > 0 AND col_b < 500;
SELECT SUM(col_a) AS col_a_sum, SUM(col_b) AS col_b_sum, SUM(col_c) AS col_c_sum FROM table_test where col_a < 500 GROUP BY col_a, col_b, col_c HAVING col_a = col_b AND col_c > 500;
