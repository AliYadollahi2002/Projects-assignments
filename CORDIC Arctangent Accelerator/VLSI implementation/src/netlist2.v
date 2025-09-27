/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu Feb  6 13:19:14 2025
/////////////////////////////////////////////////////////////


module CORDIC_ip ( clk, x_in, y_in, z_in, z_out );
  input [8:0] x_in;
  input [8:0] y_in;
  input [8:0] z_in;
  output [8:0] z_out;
  input clk;
  wire   \x_reg[0][8] , \x_reg[0][7] , \x_reg[0][6] , \x_reg[0][5] ,
         \x_reg[0][4] , \x_reg[0][3] , \x_reg[0][2] , \x_reg[0][1] ,
         \x_reg[0][0] , \x_reg[1][8] , \x_reg[1][7] , \x_reg[1][6] ,
         \x_reg[1][5] , \x_reg[1][4] , \x_reg[1][3] , \x_reg[1][2] ,
         \x_reg[1][0] , \x_reg[2][8] , \x_reg[2][7] , \x_reg[2][6] ,
         \x_reg[2][5] , \x_reg[2][4] , \x_reg[2][3] , \x_reg[2][2] ,
         \x_reg[2][1] , \x_reg[2][0] , \x_reg[3][8] , \x_reg[3][7] ,
         \x_reg[3][6] , \x_reg[3][5] , \x_reg[3][4] , \x_reg[3][3] ,
         \x_reg[3][2] , \x_reg[3][1] , \x_reg[3][0] , \x_reg[4][8] ,
         \x_reg[4][7] , \x_reg[4][6] , \x_reg[4][5] , \x_reg[4][4] ,
         \x_reg[4][3] , \x_reg[4][2] , \x_reg[4][1] , \x_reg[4][0] ,
         \x_reg[5][8] , \x_reg[5][7] , \x_reg[5][6] , \x_reg[5][5] ,
         \y_reg[0][7] , \y_reg[0][6] , \y_reg[0][5] , \y_reg[0][4] ,
         \y_reg[0][3] , \y_reg[0][2] , \y_reg[0][1] , \y_reg[0][0] ,
         \y_reg[1][7] , \y_reg[1][6] , \y_reg[1][5] , \y_reg[1][4] ,
         \y_reg[1][3] , \y_reg[1][2] , \y_reg[1][1] , \y_reg[2][7] ,
         \y_reg[2][6] , \y_reg[2][5] , \y_reg[2][4] , \y_reg[2][3] ,
         \y_reg[2][2] , \y_reg[2][1] , \y_reg[2][0] , \y_reg[3][7] ,
         \y_reg[3][6] , \y_reg[3][5] , \y_reg[3][4] , \y_reg[3][3] ,
         \y_reg[3][2] , \y_reg[3][1] , \y_reg[3][0] , \y_reg[4][7] ,
         \y_reg[4][5] , \y_reg[4][4] , \y_reg[4][3] , \y_reg[4][2] ,
         \y_reg[4][1] , \y_reg[4][0] , \y_reg[5][7] , \y_reg[5][6] ,
         \y_reg[5][5] , \y_reg[5][4] , \y_reg[5][3] , \y_reg[5][2] ,
         \y_reg[5][1] , \y_reg[5][0] , \z_reg[0][8] , \z_reg[0][7] ,
         \z_reg[0][6] , \z_reg[0][5] , \z_reg[0][4] , \z_reg[0][3] ,
         \z_reg[0][2] , \z_reg[1][8] , \z_reg[1][7] , \z_reg[1][6] ,
         \z_reg[1][5] , \z_reg[1][4] , \z_reg[1][3] , \z_reg[1][2] ,
         \z_reg[1][1] , \z_reg[1][0] , \z_reg[2][8] , \z_reg[2][7] ,
         \z_reg[2][6] , \z_reg[2][5] , \z_reg[2][4] , \z_reg[2][3] ,
         \z_reg[2][2] , \z_reg[2][1] , \z_reg[2][0] , \z_reg[3][8] ,
         \z_reg[3][7] , \z_reg[3][6] , \z_reg[3][5] , \z_reg[3][4] ,
         \z_reg[3][3] , \z_reg[3][2] , \z_reg[3][1] , \z_reg[3][0] ,
         \z_reg[4][8] , \z_reg[4][7] , \z_reg[4][6] , \z_reg[4][5] ,
         \z_reg[4][4] , \z_reg[4][3] , \z_reg[4][2] , \z_reg[4][1] ,
         \z_reg[4][0] , \z_reg[5][8] , \z_reg[5][7] , \z_reg[5][6] ,
         \z_reg[5][5] , \z_reg[5][4] , \z_reg[5][3] , \z_reg[5][2] ,
         \z_reg[5][1] , \z_reg[5][0] , \z_reg[6][8] , \z_reg[6][7] ,
         \z_reg[6][6] , \z_reg[6][5] , \z_reg[6][4] , \z_reg[6][3] ,
         \z_reg[6][2] , \z_reg[6][1] , \z_reg[6][0] , \z_reg[7][8] ,
         \z_reg[7][7] , \z_reg[7][6] , \z_reg[7][5] , \z_reg[7][4] ,
         \z_reg[7][3] , \z_reg[7][2] , \z_reg[7][1] , \z_reg[7][0] ,
         \z_reg[8][8] , \z_reg[8][7] , \z_reg[8][6] , \z_reg[8][5] ,
         \z_reg[8][4] , \z_reg[8][3] , \z_reg[8][2] , \z_reg[8][1] ,
         \z_reg[8][0] , \z_w[0][8] , \z_w[0][7] , \z_w[0][6] , \z_w[0][5] ,
         \z_w[0][4] , \z_w[0][3] , \z_w[0][2] , \z_w[0][1] , \z_w[0][0] ,
         \z_w[1][8] , \z_w[1][7] , \z_w[1][6] , \z_w[1][5] , \z_w[1][4] ,
         \z_w[1][3] , \z_w[1][2] , \z_w[1][1] , \z_w[1][0] , \z_w[2][8] ,
         \z_w[2][7] , \z_w[2][6] , \z_w[2][5] , \z_w[2][4] , \z_w[2][3] ,
         \z_w[2][2] , \z_w[2][1] , \z_w[2][0] , \z_w[3][8] , \z_w[3][7] ,
         \z_w[3][6] , \z_w[3][5] , \z_w[3][4] , \z_w[3][3] , \z_w[3][2] ,
         \z_w[3][1] , \z_w[3][0] , \z_w[4][8] , \z_w[4][7] , \z_w[4][6] ,
         \z_w[4][5] , \z_w[4][4] , \z_w[4][3] , \z_w[4][2] , \z_w[4][1] ,
         \z_w[4][0] , \z_w[5][8] , \z_w[5][7] , \z_w[5][6] , \z_w[5][5] ,
         \z_w[5][4] , \z_w[5][3] , \z_w[5][2] , \z_w[5][1] , \z_w[5][0] ,
         \z_w[6][8] , \z_w[6][7] , \z_w[6][6] , \z_w[6][5] , \z_w[6][4] ,
         \z_w[6][3] , \z_w[6][2] , \z_w[6][1] , \z_w[6][0] , \x_w[0][8] ,
         \x_w[0][7] , \x_w[0][6] , \x_w[0][5] , \x_w[0][4] , \x_w[0][3] ,
         \x_w[0][2] , \x_w[0][1] , \x_w[1][8] , \x_w[1][7] , \x_w[1][6] ,
         \x_w[1][5] , \x_w[1][4] , \x_w[1][3] , \x_w[1][2] , \x_w[1][1] ,
         \x_w[2][8] , \x_w[2][7] , \x_w[2][6] , \x_w[2][5] , \x_w[2][4] ,
         \x_w[2][3] , \x_w[2][2] , \x_w[2][1] , \x_w[3][8] , \x_w[3][7] ,
         \x_w[3][6] , \x_w[3][5] , \x_w[3][4] , \x_w[3][3] , \x_w[3][2] ,
         \x_w[3][1] , \x_w[4][8] , \x_w[4][7] , \x_w[4][6] , \x_w[4][5] ,
         \y_w[0][8] , \y_w[0][7] , \y_w[0][6] , \y_w[0][5] , \y_w[0][4] ,
         \y_w[0][3] , \y_w[0][2] , \y_w[0][1] , \y_w[1][8] , \y_w[1][7] ,
         \y_w[1][6] , \y_w[1][5] , \y_w[1][4] , \y_w[1][3] , \y_w[1][2] ,
         \y_w[1][1] , \y_w[2][8] , \y_w[2][7] , \y_w[2][6] , \y_w[2][5] ,
         \y_w[2][4] , \y_w[2][3] , \y_w[2][2] , \y_w[2][1] , \y_w[3][8] ,
         \y_w[3][7] , \y_w[3][6] , \y_w[3][5] , \y_w[3][4] , \y_w[3][3] ,
         \y_w[3][2] , \y_w[3][1] , \y_w[4][8] , \y_w[4][7] , \y_w[4][6] ,
         \y_w[4][5] , \y_w[4][4] , \y_w[4][3] , \y_w[4][2] , \y_w[4][1] ,
         \y_w[5][8] , \A[0].CORDIC_element_inst1/N3 ,
         \A[0].CORDIC_element_inst1/N1 , \A[1].CORDIC_element_inst1/N1 ,
         \A[2].CORDIC_element_inst1/N1 , \A[3].CORDIC_element_inst1/N1 ,
         \A[6].CORDIC_element_inst1/N1 , \C1/DATA1_0 , n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502;

  DFQD1 \x_reg_reg[0][8]  ( .D(x_in[8]), .CP(clk), .Q(\x_reg[0][8] ) );
  DFQD1 \z_reg_reg[0][8]  ( .D(z_in[8]), .CP(clk), .Q(\z_reg[0][8] ) );
  DFQD1 \z_reg_reg[0][7]  ( .D(z_in[7]), .CP(clk), .Q(\z_reg[0][7] ) );
  DFQD1 \z_reg_reg[0][6]  ( .D(z_in[6]), .CP(clk), .Q(\z_reg[0][6] ) );
  DFQD1 \z_reg_reg[0][5]  ( .D(z_in[5]), .CP(clk), .Q(\z_reg[0][5] ) );
  DFQD1 \z_reg_reg[0][4]  ( .D(z_in[4]), .CP(clk), .Q(\z_reg[0][4] ) );
  DFQD1 \z_reg_reg[0][3]  ( .D(z_in[3]), .CP(clk), .Q(\z_reg[0][3] ) );
  DFQD1 \z_reg_reg[0][2]  ( .D(z_in[2]), .CP(clk), .Q(\z_reg[0][2] ) );
  DFQD1 \z_reg_reg[0][1]  ( .D(z_in[1]), .CP(clk), .Q(\z_w[0][1] ) );
  DFQD1 \z_reg_reg[0][0]  ( .D(z_in[0]), .CP(clk), .Q(\z_w[0][0] ) );
  DFQD1 \z_reg_reg[1][8]  ( .D(\z_w[0][8] ), .CP(clk), .Q(\z_reg[1][8] ) );
  DFQD1 \z_reg_reg[1][7]  ( .D(\z_w[0][7] ), .CP(clk), .Q(\z_reg[1][7] ) );
  DFQD1 \z_reg_reg[1][6]  ( .D(\z_w[0][6] ), .CP(clk), .Q(\z_reg[1][6] ) );
  DFQD1 \z_reg_reg[1][5]  ( .D(\z_w[0][5] ), .CP(clk), .Q(\z_reg[1][5] ) );
  DFQD1 \z_reg_reg[1][4]  ( .D(\z_w[0][4] ), .CP(clk), .Q(\z_reg[1][4] ) );
  DFQD1 \z_reg_reg[1][3]  ( .D(\z_w[0][3] ), .CP(clk), .Q(\z_reg[1][3] ) );
  DFQD1 \z_reg_reg[1][2]  ( .D(\z_w[0][2] ), .CP(clk), .Q(\z_reg[1][2] ) );
  DFQD1 \z_reg_reg[1][1]  ( .D(\z_w[0][1] ), .CP(clk), .Q(\z_reg[1][1] ) );
  DFQD1 \z_reg_reg[1][0]  ( .D(\z_w[0][0] ), .CP(clk), .Q(\z_reg[1][0] ) );
  DFQD1 \x_reg_reg[2][1]  ( .D(\x_w[1][1] ), .CP(clk), .Q(\x_reg[2][1] ) );
  DFQD1 \x_reg_reg[2][0]  ( .D(\C1/DATA1_0 ), .CP(clk), .Q(\x_reg[2][0] ) );
  DFQD1 \z_reg_reg[2][8]  ( .D(\z_w[1][8] ), .CP(clk), .Q(\z_reg[2][8] ) );
  DFQD1 \z_reg_reg[2][7]  ( .D(\z_w[1][7] ), .CP(clk), .Q(\z_reg[2][7] ) );
  DFQD1 \z_reg_reg[2][6]  ( .D(\z_w[1][6] ), .CP(clk), .Q(\z_reg[2][6] ) );
  DFQD1 \z_reg_reg[2][5]  ( .D(\z_w[1][5] ), .CP(clk), .Q(\z_reg[2][5] ) );
  DFQD1 \z_reg_reg[2][4]  ( .D(\z_w[1][4] ), .CP(clk), .Q(\z_reg[2][4] ) );
  DFQD1 \z_reg_reg[2][3]  ( .D(\z_w[1][3] ), .CP(clk), .Q(\z_reg[2][3] ) );
  DFQD1 \z_reg_reg[2][2]  ( .D(\z_w[1][2] ), .CP(clk), .Q(\z_reg[2][2] ) );
  DFQD1 \z_reg_reg[2][1]  ( .D(\z_w[1][1] ), .CP(clk), .Q(\z_reg[2][1] ) );
  DFQD1 \z_reg_reg[2][0]  ( .D(\z_w[1][0] ), .CP(clk), .Q(\z_reg[2][0] ) );
  DFQD1 \z_reg_reg[3][8]  ( .D(\z_w[2][8] ), .CP(clk), .Q(\z_reg[3][8] ) );
  DFQD1 \z_reg_reg[3][7]  ( .D(\z_w[2][7] ), .CP(clk), .Q(\z_reg[3][7] ) );
  DFQD1 \z_reg_reg[3][6]  ( .D(\z_w[2][6] ), .CP(clk), .Q(\z_reg[3][6] ) );
  DFQD1 \z_reg_reg[3][5]  ( .D(\z_w[2][5] ), .CP(clk), .Q(\z_reg[3][5] ) );
  DFQD1 \z_reg_reg[3][4]  ( .D(\z_w[2][4] ), .CP(clk), .Q(\z_reg[3][4] ) );
  DFQD1 \z_reg_reg[3][3]  ( .D(\z_w[2][3] ), .CP(clk), .Q(\z_reg[3][3] ) );
  DFQD1 \z_reg_reg[3][2]  ( .D(\z_w[2][2] ), .CP(clk), .Q(\z_reg[3][2] ) );
  DFQD1 \z_reg_reg[3][1]  ( .D(\z_w[2][1] ), .CP(clk), .Q(\z_reg[3][1] ) );
  DFQD1 \z_reg_reg[3][0]  ( .D(\z_w[2][0] ), .CP(clk), .Q(\z_reg[3][0] ) );
  DFQD1 \x_reg_reg[4][3]  ( .D(\x_w[3][3] ), .CP(clk), .Q(\x_reg[4][3] ) );
  DFQD1 \x_reg_reg[4][2]  ( .D(\x_w[3][2] ), .CP(clk), .Q(\x_reg[4][2] ) );
  DFQD1 \x_reg_reg[4][1]  ( .D(\x_w[3][1] ), .CP(clk), .Q(\x_reg[4][1] ) );
  DFQD1 \x_reg_reg[4][0]  ( .D(n1500), .CP(clk), .Q(\x_reg[4][0] ) );
  DFQD1 \y_reg_reg[4][0]  ( .D(n1501), .CP(clk), .Q(\y_reg[4][0] ) );
  DFQD1 \z_reg_reg[4][8]  ( .D(\z_w[3][8] ), .CP(clk), .Q(\z_reg[4][8] ) );
  DFQD1 \z_reg_reg[4][7]  ( .D(\z_w[3][7] ), .CP(clk), .Q(\z_reg[4][7] ) );
  DFQD1 \z_reg_reg[4][6]  ( .D(\z_w[3][6] ), .CP(clk), .Q(\z_reg[4][6] ) );
  DFQD1 \z_reg_reg[4][5]  ( .D(\z_w[3][5] ), .CP(clk), .Q(\z_reg[4][5] ) );
  DFQD1 \z_reg_reg[4][4]  ( .D(\z_w[3][4] ), .CP(clk), .Q(\z_reg[4][4] ) );
  DFQD1 \z_reg_reg[4][3]  ( .D(\z_w[3][3] ), .CP(clk), .Q(\z_reg[4][3] ) );
  DFQD1 \z_reg_reg[4][2]  ( .D(\z_w[3][2] ), .CP(clk), .Q(\z_reg[4][2] ) );
  DFQD1 \z_reg_reg[4][1]  ( .D(\z_w[3][1] ), .CP(clk), .Q(\z_reg[4][1] ) );
  DFQD1 \z_reg_reg[4][0]  ( .D(\z_w[3][0] ), .CP(clk), .Q(\z_reg[4][0] ) );
  DFQD1 \x_reg_reg[5][5]  ( .D(\x_w[4][5] ), .CP(clk), .Q(\x_reg[5][5] ) );
  DFQD1 \y_reg_reg[5][6]  ( .D(\y_w[4][6] ), .CP(clk), .Q(\y_reg[5][6] ) );
  DFQD1 \y_reg_reg[5][5]  ( .D(\y_w[4][5] ), .CP(clk), .Q(\y_reg[5][5] ) );
  DFQD1 \y_reg_reg[5][0]  ( .D(n1502), .CP(clk), .Q(\y_reg[5][0] ) );
  DFQD1 \z_reg_reg[5][8]  ( .D(\z_w[4][8] ), .CP(clk), .Q(\z_reg[5][8] ) );
  DFQD1 \z_reg_reg[5][7]  ( .D(\z_w[4][7] ), .CP(clk), .Q(\z_reg[5][7] ) );
  DFQD1 \z_reg_reg[5][6]  ( .D(\z_w[4][6] ), .CP(clk), .Q(\z_reg[5][6] ) );
  DFQD1 \z_reg_reg[5][5]  ( .D(\z_w[4][5] ), .CP(clk), .Q(\z_reg[5][5] ) );
  DFQD1 \z_reg_reg[5][4]  ( .D(\z_w[4][4] ), .CP(clk), .Q(\z_reg[5][4] ) );
  DFQD1 \z_reg_reg[5][3]  ( .D(\z_w[4][3] ), .CP(clk), .Q(\z_reg[5][3] ) );
  DFQD1 \z_reg_reg[5][2]  ( .D(\z_w[4][2] ), .CP(clk), .Q(\z_reg[5][2] ) );
  DFQD1 \z_reg_reg[5][1]  ( .D(\z_w[4][1] ), .CP(clk), .Q(\z_reg[5][1] ) );
  DFQD1 \z_reg_reg[5][0]  ( .D(\z_w[4][0] ), .CP(clk), .Q(\z_reg[5][0] ) );
  DFQD1 \z_reg_reg[6][8]  ( .D(\z_w[5][8] ), .CP(clk), .Q(\z_reg[6][8] ) );
  DFQD1 \z_reg_reg[6][7]  ( .D(\z_w[5][7] ), .CP(clk), .Q(\z_reg[6][7] ) );
  DFQD1 \z_reg_reg[6][6]  ( .D(\z_w[5][6] ), .CP(clk), .Q(\z_reg[6][6] ) );
  DFQD1 \z_reg_reg[6][5]  ( .D(\z_w[5][5] ), .CP(clk), .Q(\z_reg[6][5] ) );
  DFQD1 \z_reg_reg[6][4]  ( .D(\z_w[5][4] ), .CP(clk), .Q(\z_reg[6][4] ) );
  DFQD1 \z_reg_reg[6][3]  ( .D(\z_w[5][3] ), .CP(clk), .Q(\z_reg[6][3] ) );
  DFQD1 \z_reg_reg[6][2]  ( .D(\z_w[5][2] ), .CP(clk), .Q(\z_reg[6][2] ) );
  DFQD1 \z_reg_reg[6][1]  ( .D(\z_w[5][1] ), .CP(clk), .Q(\z_reg[6][1] ) );
  DFQD1 \z_reg_reg[6][0]  ( .D(\z_w[5][0] ), .CP(clk), .Q(\z_reg[6][0] ) );
  DFQD1 \z_reg_reg[7][8]  ( .D(\z_w[6][8] ), .CP(clk), .Q(\z_reg[7][8] ) );
  DFQD1 \z_reg_reg[7][7]  ( .D(\z_w[6][7] ), .CP(clk), .Q(\z_reg[7][7] ) );
  DFQD1 \z_reg_reg[7][6]  ( .D(\z_w[6][6] ), .CP(clk), .Q(\z_reg[7][6] ) );
  DFQD1 \z_reg_reg[7][5]  ( .D(\z_w[6][5] ), .CP(clk), .Q(\z_reg[7][5] ) );
  DFQD1 \z_reg_reg[7][4]  ( .D(\z_w[6][4] ), .CP(clk), .Q(\z_reg[7][4] ) );
  DFQD1 \z_reg_reg[7][3]  ( .D(\z_w[6][3] ), .CP(clk), .Q(\z_reg[7][3] ) );
  DFQD1 \z_reg_reg[7][2]  ( .D(\z_w[6][2] ), .CP(clk), .Q(\z_reg[7][2] ) );
  DFQD1 \z_reg_reg[7][1]  ( .D(\z_w[6][1] ), .CP(clk), .Q(\z_reg[7][1] ) );
  DFQD1 \z_reg_reg[7][0]  ( .D(\z_w[6][0] ), .CP(clk), .Q(\z_reg[7][0] ) );
  DFQD1 \z_reg_reg[8][8]  ( .D(\z_reg[7][8] ), .CP(clk), .Q(\z_reg[8][8] ) );
  DFQD1 \z_out_reg[8]  ( .D(\z_reg[8][8] ), .CP(clk), .Q(z_out[8]) );
  DFQD1 \z_reg_reg[8][7]  ( .D(\z_reg[7][7] ), .CP(clk), .Q(\z_reg[8][7] ) );
  DFQD1 \z_out_reg[7]  ( .D(\z_reg[8][7] ), .CP(clk), .Q(z_out[7]) );
  DFQD1 \z_reg_reg[8][6]  ( .D(\z_reg[7][6] ), .CP(clk), .Q(\z_reg[8][6] ) );
  DFQD1 \z_out_reg[6]  ( .D(\z_reg[8][6] ), .CP(clk), .Q(z_out[6]) );
  DFQD1 \z_reg_reg[8][5]  ( .D(\z_reg[7][5] ), .CP(clk), .Q(\z_reg[8][5] ) );
  DFQD1 \z_out_reg[5]  ( .D(\z_reg[8][5] ), .CP(clk), .Q(z_out[5]) );
  DFQD1 \z_reg_reg[8][4]  ( .D(\z_reg[7][4] ), .CP(clk), .Q(\z_reg[8][4] ) );
  DFQD1 \z_out_reg[4]  ( .D(\z_reg[8][4] ), .CP(clk), .Q(z_out[4]) );
  DFQD1 \z_reg_reg[8][3]  ( .D(\z_reg[7][3] ), .CP(clk), .Q(\z_reg[8][3] ) );
  DFQD1 \z_out_reg[3]  ( .D(\z_reg[8][3] ), .CP(clk), .Q(z_out[3]) );
  DFQD1 \z_reg_reg[8][2]  ( .D(\z_reg[7][2] ), .CP(clk), .Q(\z_reg[8][2] ) );
  DFQD1 \z_out_reg[2]  ( .D(\z_reg[8][2] ), .CP(clk), .Q(z_out[2]) );
  DFQD1 \z_reg_reg[8][1]  ( .D(\z_reg[7][1] ), .CP(clk), .Q(\z_reg[8][1] ) );
  DFQD1 \z_out_reg[1]  ( .D(\z_reg[8][1] ), .CP(clk), .Q(z_out[1]) );
  DFQD1 \z_reg_reg[8][0]  ( .D(\z_reg[7][0] ), .CP(clk), .Q(\z_reg[8][0] ) );
  DFQD1 \z_out_reg[0]  ( .D(\z_reg[8][0] ), .CP(clk), .Q(z_out[0]) );
  DFQD1 \x_reg_reg[1][8]  ( .D(\x_w[0][8] ), .CP(clk), .Q(\x_reg[1][8] ) );
  DFQD1 \x_reg_reg[2][8]  ( .D(\x_w[1][8] ), .CP(clk), .Q(\x_reg[2][8] ) );
  DFQD1 \x_reg_reg[4][8]  ( .D(\x_w[3][8] ), .CP(clk), .Q(\x_reg[4][8] ) );
  DFQD1 \x_reg_reg[3][3]  ( .D(\x_w[2][3] ), .CP(clk), .Q(\x_reg[3][3] ) );
  DFQD1 \x_reg_reg[1][6]  ( .D(\x_w[0][6] ), .CP(clk), .Q(\x_reg[1][6] ) );
  DFQD2 \x_reg_reg[2][2]  ( .D(\x_w[1][2] ), .CP(clk), .Q(\x_reg[2][2] ) );
  DFQD1 \y_reg_reg[1][7]  ( .D(\y_w[0][7] ), .CP(clk), .Q(\y_reg[1][7] ) );
  DFQD2 \x_reg_reg[2][3]  ( .D(\x_w[1][3] ), .CP(clk), .Q(\x_reg[2][3] ) );
  DFQD1 \y_reg_reg[3][7]  ( .D(\y_w[2][7] ), .CP(clk), .Q(\y_reg[3][7] ) );
  DFQD1 \y_reg_reg[5][3]  ( .D(\y_w[4][3] ), .CP(clk), .Q(\y_reg[5][3] ) );
  DFQD1 \y_reg_reg[2][4]  ( .D(\y_w[1][4] ), .CP(clk), .Q(\y_reg[2][4] ) );
  DFQD1 \y_reg_reg[3][2]  ( .D(\y_w[2][2] ), .CP(clk), .Q(\y_reg[3][2] ) );
  DFQD1 \x_reg_reg[0][3]  ( .D(x_in[3]), .CP(clk), .Q(\x_reg[0][3] ) );
  DFQD1 \x_reg_reg[0][2]  ( .D(x_in[2]), .CP(clk), .Q(\x_reg[0][2] ) );
  DFQD1 \y_reg_reg[2][1]  ( .D(\y_w[1][1] ), .CP(clk), .Q(\y_reg[2][1] ) );
  DFQD1 \y_reg_reg[4][1]  ( .D(\y_w[3][1] ), .CP(clk), .Q(\y_reg[4][1] ) );
  DFQD1 \x_reg_reg[0][6]  ( .D(x_in[6]), .CP(clk), .Q(\x_reg[0][6] ) );
  DFQD1 \y_reg_reg[2][0]  ( .D(n1497), .CP(clk), .Q(\y_reg[2][0] ) );
  DFQD1 \y_reg_reg[3][0]  ( .D(n1499), .CP(clk), .Q(\y_reg[3][0] ) );
  DFQD4 \y_reg_reg[2][8]  ( .D(\y_w[1][8] ), .CP(clk), .Q(
        \A[2].CORDIC_element_inst1/N1 ) );
  DFQD4 \y_reg_reg[0][8]  ( .D(y_in[8]), .CP(clk), .Q(
        \A[0].CORDIC_element_inst1/N1 ) );
  DFQD1 \x_reg_reg[0][4]  ( .D(x_in[4]), .CP(clk), .Q(\x_reg[0][4] ) );
  DFQD2 \y_reg_reg[2][3]  ( .D(\y_w[1][3] ), .CP(clk), .Q(\y_reg[2][3] ) );
  DFQD1 \x_reg_reg[0][5]  ( .D(x_in[5]), .CP(clk), .Q(\x_reg[0][5] ) );
  DFQD1 \x_reg_reg[0][7]  ( .D(x_in[7]), .CP(clk), .Q(\x_reg[0][7] ) );
  DFQD1 \x_reg_reg[0][1]  ( .D(x_in[1]), .CP(clk), .Q(\x_reg[0][1] ) );
  DFQD1 \y_reg_reg[4][3]  ( .D(\y_w[3][3] ), .CP(clk), .Q(\y_reg[4][3] ) );
  DFQD1 \x_reg_reg[3][2]  ( .D(\x_w[2][2] ), .CP(clk), .Q(\x_reg[3][2] ) );
  DFQD1 \y_reg_reg[5][7]  ( .D(\y_w[4][7] ), .CP(clk), .Q(\y_reg[5][7] ) );
  DFQD1 \x_reg_reg[3][0]  ( .D(n1498), .CP(clk), .Q(\x_reg[3][0] ) );
  DFQD1 \y_reg_reg[3][1]  ( .D(\y_w[2][1] ), .CP(clk), .Q(\y_reg[3][1] ) );
  DFQD1 \x_reg_reg[2][7]  ( .D(\x_w[1][7] ), .CP(clk), .Q(\x_reg[2][7] ) );
  DFQD1 \y_reg_reg[0][2]  ( .D(y_in[2]), .CP(clk), .Q(\y_reg[0][2] ) );
  DFQD1 \x_reg_reg[3][1]  ( .D(\x_w[2][1] ), .CP(clk), .Q(\x_reg[3][1] ) );
  DFQD1 \y_reg_reg[0][6]  ( .D(y_in[6]), .CP(clk), .Q(\y_reg[0][6] ) );
  DFQD1 \x_reg_reg[1][2]  ( .D(\x_w[0][2] ), .CP(clk), .Q(\x_reg[1][2] ) );
  DFQD1 \x_reg_reg[5][7]  ( .D(\x_w[4][7] ), .CP(clk), .Q(\x_reg[5][7] ) );
  DFQD1 \y_reg_reg[4][2]  ( .D(\y_w[3][2] ), .CP(clk), .Q(\y_reg[4][2] ) );
  DFQD1 \y_reg_reg[5][1]  ( .D(\y_w[4][1] ), .CP(clk), .Q(\y_reg[5][1] ) );
  DFQD1 \y_reg_reg[5][2]  ( .D(\y_w[4][2] ), .CP(clk), .Q(\y_reg[5][2] ) );
  DFQD1 \x_reg_reg[5][6]  ( .D(\x_w[4][6] ), .CP(clk), .Q(\x_reg[5][6] ) );
  DFQD1 \x_reg_reg[1][7]  ( .D(\x_w[0][7] ), .CP(clk), .Q(\x_reg[1][7] ) );
  DFQD1 \y_reg_reg[0][5]  ( .D(y_in[5]), .CP(clk), .Q(\y_reg[0][5] ) );
  DFQD1 \y_reg_reg[0][4]  ( .D(y_in[4]), .CP(clk), .Q(\y_reg[0][4] ) );
  DFQD1 \y_reg_reg[0][7]  ( .D(y_in[7]), .CP(clk), .Q(\y_reg[0][7] ) );
  DFQD1 \y_reg_reg[0][1]  ( .D(y_in[1]), .CP(clk), .Q(\y_reg[0][1] ) );
  DFQD1 \y_reg_reg[5][4]  ( .D(\y_w[4][4] ), .CP(clk), .Q(\y_reg[5][4] ) );
  DFQD1 \x_reg_reg[3][7]  ( .D(\x_w[2][7] ), .CP(clk), .Q(\x_reg[3][7] ) );
  DFQD1 \x_reg_reg[4][7]  ( .D(\x_w[3][7] ), .CP(clk), .Q(\x_reg[4][7] ) );
  DFQD2 \y_reg_reg[4][7]  ( .D(\y_w[3][7] ), .CP(clk), .Q(\y_reg[4][7] ) );
  DFQD1 \x_reg_reg[4][6]  ( .D(\x_w[3][6] ), .CP(clk), .Q(\x_reg[4][6] ) );
  DFQD1 \x_reg_reg[5][8]  ( .D(\x_w[4][8] ), .CP(clk), .Q(\x_reg[5][8] ) );
  DFQD2 \y_reg_reg[1][8]  ( .D(\y_w[0][8] ), .CP(clk), .Q(
        \A[1].CORDIC_element_inst1/N1 ) );
  DFQD2 \x_reg_reg[4][4]  ( .D(\x_w[3][4] ), .CP(clk), .Q(\x_reg[4][4] ) );
  DFQD2 \y_reg_reg[2][6]  ( .D(\y_w[1][6] ), .CP(clk), .Q(\y_reg[2][6] ) );
  DFQD4 \y_reg_reg[3][3]  ( .D(\y_w[2][3] ), .CP(clk), .Q(\y_reg[3][3] ) );
  DFQD2 \y_reg_reg[4][5]  ( .D(\y_w[3][5] ), .CP(clk), .Q(\y_reg[4][5] ) );
  DFQD2 \y_reg_reg[2][7]  ( .D(\y_w[1][7] ), .CP(clk), .Q(\y_reg[2][7] ) );
  DFQD2 \x_reg_reg[1][4]  ( .D(\x_w[0][4] ), .CP(clk), .Q(\x_reg[1][4] ) );
  DFQD4 \y_reg_reg[1][3]  ( .D(\y_w[0][3] ), .CP(clk), .Q(\y_reg[1][3] ) );
  DFQD4 \y_reg_reg[3][4]  ( .D(\y_w[2][4] ), .CP(clk), .Q(\y_reg[3][4] ) );
  DFQD2 \x_reg_reg[2][5]  ( .D(\x_w[1][5] ), .CP(clk), .Q(\x_reg[2][5] ) );
  DFQD2 \x_reg_reg[3][6]  ( .D(\x_w[2][6] ), .CP(clk), .Q(\x_reg[3][6] ) );
  DFQD2 \y_reg_reg[2][5]  ( .D(\y_w[1][5] ), .CP(clk), .Q(\y_reg[2][5] ) );
  DFQD2 \x_reg_reg[1][3]  ( .D(\x_w[0][3] ), .CP(clk), .Q(\x_reg[1][3] ) );
  DFQD2 \y_reg_reg[6][8]  ( .D(\y_w[5][8] ), .CP(clk), .Q(
        \A[6].CORDIC_element_inst1/N1 ) );
  DFQD2 \y_reg_reg[4][4]  ( .D(\y_w[3][4] ), .CP(clk), .Q(\y_reg[4][4] ) );
  DFQD1 \y_reg_reg[0][3]  ( .D(y_in[3]), .CP(clk), .Q(\y_reg[0][3] ) );
  DFQD1 \x_reg_reg[2][4]  ( .D(\x_w[1][4] ), .CP(clk), .Q(\x_reg[2][4] ) );
  DFQD1 \x_reg_reg[4][5]  ( .D(\x_w[3][5] ), .CP(clk), .Q(\x_reg[4][5] ) );
  DFQD4 \y_reg_reg[3][8]  ( .D(\y_w[2][8] ), .CP(clk), .Q(
        \A[3].CORDIC_element_inst1/N1 ) );
  DFQD2 \y_reg_reg[1][6]  ( .D(\y_w[0][6] ), .CP(clk), .Q(\y_reg[1][6] ) );
  DFQD2 \x_reg_reg[3][8]  ( .D(\x_w[2][8] ), .CP(clk), .Q(\x_reg[3][8] ) );
  DFD2 \y_reg_reg[4][8]  ( .D(\y_w[3][8] ), .CP(clk), .Q(n38), .QN(n39) );
  DFQD4 \y_reg_reg[3][6]  ( .D(\y_w[2][6] ), .CP(clk), .Q(\y_reg[3][6] ) );
  DFQD1 \x_reg_reg[3][5]  ( .D(\x_w[2][5] ), .CP(clk), .Q(\x_reg[3][5] ) );
  DFQD2 \y_reg_reg[1][4]  ( .D(\y_w[0][4] ), .CP(clk), .Q(\y_reg[1][4] ) );
  DFQD2 \y_reg_reg[1][2]  ( .D(\y_w[0][2] ), .CP(clk), .Q(\y_reg[1][2] ) );
  DFQD1 \x_reg_reg[1][0]  ( .D(\A[0].CORDIC_element_inst1/N3 ), .CP(clk), .Q(
        \x_reg[1][0] ) );
  DFQD2 \y_reg_reg[2][2]  ( .D(\y_w[1][2] ), .CP(clk), .Q(\y_reg[2][2] ) );
  DFQD1 \x_reg_reg[3][4]  ( .D(\x_w[2][4] ), .CP(clk), .Q(\x_reg[3][4] ) );
  DFQD4 \x_reg_reg[0][0]  ( .D(x_in[0]), .CP(clk), .Q(\x_reg[0][0] ) );
  DFQD2 \x_reg_reg[1][5]  ( .D(\x_w[0][5] ), .CP(clk), .Q(\x_reg[1][5] ) );
  DFQD2 \y_reg_reg[1][5]  ( .D(\y_w[0][5] ), .CP(clk), .Q(\y_reg[1][5] ) );
  DFQD1 \x_reg_reg[2][6]  ( .D(\x_w[1][6] ), .CP(clk), .Q(\x_reg[2][6] ) );
  DFQD1 \y_reg_reg[3][5]  ( .D(\y_w[2][5] ), .CP(clk), .Q(\y_reg[3][5] ) );
  DFD1 \y_reg_reg[4][6]  ( .D(\y_w[3][6] ), .CP(clk), .Q(n32), .QN(n33) );
  DFD1 \x_reg_reg[1][1]  ( .D(\x_w[0][1] ), .CP(clk), .Q(n29), .QN(n30) );
  DFD1 \y_reg_reg[5][8]  ( .D(\y_w[4][8] ), .CP(clk), .Q(n36), .QN(n35) );
  DFQD2 \y_reg_reg[1][1]  ( .D(\y_w[0][1] ), .CP(clk), .Q(\y_reg[1][1] ) );
  DFQD1 \y_reg_reg[0][0]  ( .D(y_in[0]), .CP(clk), .Q(\y_reg[0][0] ) );
  IOA21D1 U30 ( .A1(n163), .A2(\A[2].CORDIC_element_inst1/N1 ), .B(n162), .ZN(
        \y_w[2][7] ) );
  XOR2D0 U31 ( .A1(n305), .A2(n304), .Z(n313) );
  CKND2D1 U32 ( .A1(n428), .A2(n38), .ZN(n429) );
  CKND2D1 U33 ( .A1(n447), .A2(n38), .ZN(n448) );
  CKXOR2D1 U34 ( .A1(n273), .A2(n48), .Z(n274) );
  OAI21D1 U35 ( .A1(n993), .A2(n260), .B(n259), .ZN(n263) );
  CKND3 U36 ( .I(\A[1].CORDIC_element_inst1/N1 ), .ZN(n649) );
  AOI21D1 U37 ( .A1(n47), .A2(n1070), .B(n46), .ZN(n221) );
  NR2XD0 U38 ( .A1(n678), .A2(\x_reg[2][0] ), .ZN(n695) );
  INVD0 U39 ( .I(\y_reg[3][6] ), .ZN(n251) );
  NR2D0 U40 ( .A1(n823), .A2(n850), .ZN(n480) );
  INVD0 U41 ( .I(n733), .ZN(n734) );
  ND2D0 U42 ( .A1(n472), .A2(\x_reg[4][8] ), .ZN(n443) );
  NR2D0 U43 ( .A1(n39), .A2(\z_reg[4][1] ), .ZN(n1159) );
  CKXOR2D1 U44 ( .A1(n263), .A2(n42), .Z(n264) );
  ND2D0 U45 ( .A1(n829), .A2(n831), .ZN(n819) );
  ND2D0 U46 ( .A1(n67), .A2(\z_reg[2][1] ), .ZN(n1204) );
  ND2D0 U47 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(\z_reg[1][2] ), .ZN(
        n647) );
  ND2D0 U48 ( .A1(n181), .A2(n1314), .ZN(n182) );
  CKXOR2D0 U49 ( .A1(n1257), .A2(n550), .Z(n554) );
  CKXOR2D0 U50 ( .A1(n1056), .A2(n860), .Z(n864) );
  ND2D0 U51 ( .A1(n802), .A2(n39), .ZN(n803) );
  IOA21D1 U52 ( .A1(n449), .A2(n39), .B(n448), .ZN(\x_w[4][8] ) );
  IOA21D1 U53 ( .A1(n430), .A2(n39), .B(n429), .ZN(\x_w[4][7] ) );
  IOA21D1 U54 ( .A1(n344), .A2(\A[1].CORDIC_element_inst1/N1 ), .B(n57), .ZN(
        \y_w[1][8] ) );
  CKXOR2D0 U55 ( .A1(n1111), .A2(n1110), .Z(\z_w[6][8] ) );
  CKXOR2D0 U56 ( .A1(n1094), .A2(n1093), .Z(\z_w[0][6] ) );
  OR2D0 U57 ( .A1(n1211), .A2(\x_reg[1][8] ), .Z(n26) );
  CKAN2D1 U58 ( .A1(n784), .A2(\x_reg[2][5] ), .Z(n27) );
  INVD0 U59 ( .I(\x_reg[2][7] ), .ZN(n1401) );
  INVD0 U60 ( .I(\x_reg[4][4] ), .ZN(n1484) );
  IOA21D1 U61 ( .A1(n61), .A2(n1470), .B(n265), .ZN(\x_w[3][8] ) );
  CKND2D2 U62 ( .A1(n264), .A2(n1167), .ZN(n265) );
  IOA21D1 U63 ( .A1(n1315), .A2(\A[0].CORDIC_element_inst1/N1 ), .B(n182), 
        .ZN(\y_w[0][5] ) );
  IOA21D1 U64 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(n1286), .B(n205), 
        .ZN(\y_w[0][8] ) );
  CKND2D1 U65 ( .A1(n1268), .A2(n1314), .ZN(n1269) );
  CKND2D1 U66 ( .A1(n1251), .A2(n1314), .ZN(n1252) );
  XOR2D0 U67 ( .A1(n1185), .A2(n1184), .Z(\z_w[3][2] ) );
  CKND1 U68 ( .I(n608), .ZN(n1175) );
  XOR2D0 U69 ( .A1(n1189), .A2(\z_w[3][0] ), .Z(\z_w[3][1] ) );
  XOR2D0 U70 ( .A1(n86), .A2(n85), .Z(\z_w[4][8] ) );
  AOI21D1 U71 ( .A1(n674), .A2(n676), .B(n494), .ZN(n497) );
  XOR2D0 U72 ( .A1(n1206), .A2(\z_w[2][0] ), .Z(\z_w[2][1] ) );
  XOR2D0 U73 ( .A1(n1138), .A2(\z_w[5][0] ), .Z(\z_w[5][1] ) );
  CKND2D1 U74 ( .A1(n622), .A2(n51), .ZN(n607) );
  XOR2D0 U75 ( .A1(n635), .A2(n603), .Z(\z_w[5][2] ) );
  XOR2D0 U76 ( .A1(n505), .A2(n504), .Z(n506) );
  XOR2D0 U77 ( .A1(n1202), .A2(n1201), .Z(\z_w[2][2] ) );
  XOR2D0 U78 ( .A1(n1386), .A2(n1385), .Z(n1390) );
  CKND2D1 U79 ( .A1(n1178), .A2(n1177), .ZN(n1179) );
  OAI21D1 U80 ( .A1(n493), .A2(n492), .B(n491), .ZN(n676) );
  XOR2D0 U81 ( .A1(n922), .A2(n921), .Z(n926) );
  CKND1 U82 ( .I(n663), .ZN(n629) );
  CKND1 U83 ( .I(n492), .ZN(n672) );
  XNR2D0 U84 ( .A1(n245), .A2(n303), .ZN(n61) );
  XOR2D0 U85 ( .A1(n869), .A2(n868), .Z(n873) );
  XOR2D0 U86 ( .A1(n1265), .A2(n552), .Z(n553) );
  XNR2D0 U87 ( .A1(n1395), .A2(n1394), .ZN(n1407) );
  XNR2D0 U88 ( .A1(n435), .A2(n468), .ZN(n449) );
  CKND2D1 U89 ( .A1(n293), .A2(n1036), .ZN(n295) );
  XOR2D0 U90 ( .A1(n1234), .A2(\z_w[1][0] ), .Z(\z_w[1][1] ) );
  XOR2D0 U91 ( .A1(n679), .A2(n695), .Z(n682) );
  XOR2D0 U92 ( .A1(n1125), .A2(n1124), .Z(\z_w[6][5] ) );
  XNR2D0 U93 ( .A1(n1260), .A2(n1266), .ZN(n1306) );
  CKND1 U94 ( .I(n736), .ZN(n737) );
  XOR2D0 U95 ( .A1(n1162), .A2(\z_w[4][0] ), .Z(\z_w[4][1] ) );
  XOR2D0 U96 ( .A1(n1370), .A2(n1369), .Z(n1371) );
  XOR2D0 U97 ( .A1(n1158), .A2(n1157), .Z(\z_w[4][2] ) );
  XOR2D0 U98 ( .A1(n522), .A2(n514), .Z(n519) );
  XOR2D0 U99 ( .A1(n835), .A2(n808), .Z(n815) );
  OAI21D1 U100 ( .A1(n599), .A2(n598), .B(n597), .ZN(n1107) );
  INVD0 U101 ( .I(n623), .ZN(n605) );
  CKND1 U102 ( .I(n1176), .ZN(n1178) );
  XOR2D0 U103 ( .A1(n1103), .A2(\z_w[0][2] ), .Z(\z_w[0][3] ) );
  CKND1 U104 ( .I(n601), .ZN(n635) );
  XOR2D0 U105 ( .A1(n1099), .A2(n1098), .Z(\z_w[0][4] ) );
  CKND2D1 U106 ( .A1(n51), .A2(n623), .ZN(n624) );
  XOR2D0 U107 ( .A1(n617), .A2(n582), .Z(\z_w[1][2] ) );
  XOR2D0 U108 ( .A1(n1130), .A2(n1129), .Z(\z_w[6][2] ) );
  XOR2D0 U109 ( .A1(n1134), .A2(\z_w[6][0] ), .Z(\z_w[6][1] ) );
  XOR2D0 U110 ( .A1(n502), .A2(n501), .Z(n507) );
  CKND2D1 U111 ( .A1(n147), .A2(n279), .ZN(n148) );
  CKND2D1 U112 ( .A1(n1241), .A2(n1240), .ZN(n1249) );
  CKND2D1 U113 ( .A1(n794), .A2(n793), .ZN(n795) );
  AN2D0 U114 ( .A1(n262), .A2(n261), .Z(n42) );
  AN2D0 U115 ( .A1(n496), .A2(n495), .Z(n63) );
  AN2D0 U116 ( .A1(n1403), .A2(n1402), .Z(n52) );
  INVD0 U117 ( .I(n488), .ZN(n489) );
  CKND2D1 U118 ( .A1(n69), .A2(n73), .ZN(n70) );
  CKND2D1 U119 ( .A1(n839), .A2(n838), .ZN(n840) );
  CKND1 U120 ( .I(n1167), .ZN(n1470) );
  CKND2D1 U121 ( .A1(n1167), .A2(\z_reg[3][4] ), .ZN(n1172) );
  CKND2D1 U122 ( .A1(n440), .A2(n437), .ZN(n426) );
  CKND2D1 U123 ( .A1(n444), .A2(n443), .ZN(n445) );
  ND2D0 U124 ( .A1(n1401), .A2(\x_reg[2][8] ), .ZN(n1402) );
  NR2D1 U125 ( .A1(n35), .A2(\z_reg[5][1] ), .ZN(n1135) );
  CKND2D1 U126 ( .A1(n35), .A2(\z_reg[5][1] ), .ZN(n1136) );
  CKND2D1 U127 ( .A1(n1109), .A2(n1108), .ZN(n1110) );
  CKND2D1 U128 ( .A1(n615), .A2(\z_reg[0][6] ), .ZN(n1091) );
  CKND2D1 U129 ( .A1(n649), .A2(\z_reg[1][1] ), .ZN(n1232) );
  CKND2D1 U130 ( .A1(n1219), .A2(n1218), .ZN(n1220) );
  CKND2D1 U131 ( .A1(n659), .A2(n657), .ZN(n75) );
  CKND1 U132 ( .I(n74), .ZN(n69) );
  ND2D0 U133 ( .A1(n36), .A2(\z_reg[5][8] ), .ZN(n495) );
  CKND1 U134 ( .I(\z_reg[3][0] ), .ZN(\z_w[3][0] ) );
  CKND1 U135 ( .I(\z_reg[2][0] ), .ZN(\z_w[2][0] ) );
  CKND1 U136 ( .I(\z_reg[4][0] ), .ZN(\z_w[4][0] ) );
  CKND2D1 U137 ( .A1(n36), .A2(\z_reg[5][2] ), .ZN(n633) );
  CKND1 U138 ( .I(\z_reg[5][0] ), .ZN(\z_w[5][0] ) );
  CKND1 U139 ( .I(\y_reg[5][4] ), .ZN(n400) );
  CKND1 U140 ( .I(\z_reg[1][0] ), .ZN(\z_w[1][0] ) );
  CKND1 U141 ( .I(\z_reg[6][0] ), .ZN(\z_w[6][0] ) );
  CKND1 U142 ( .I(\y_reg[1][1] ), .ZN(n559) );
  INVD1 U143 ( .I(n1211), .ZN(n28) );
  CKND1 U144 ( .I(\A[0].CORDIC_element_inst1/N1 ), .ZN(n1314) );
  CKND1 U145 ( .I(\z_reg[0][2] ), .ZN(\z_w[0][2] ) );
  CKND1 U146 ( .I(\A[0].CORDIC_element_inst1/N1 ), .ZN(n615) );
  CKND2D1 U147 ( .A1(\z_reg[5][4] ), .A2(n36), .ZN(n457) );
  CKND1 U148 ( .I(\y_reg[3][7] ), .ZN(n311) );
  OAI21D1 U149 ( .A1(n1377), .A2(n150), .B(n152), .ZN(n102) );
  INVD1 U150 ( .I(\x_reg[3][5] ), .ZN(n31) );
  INVD2 U151 ( .I(\y_reg[3][5] ), .ZN(n249) );
  AO22D1 U152 ( .A1(n1068), .A2(n39), .B1(n1067), .B2(n38), .Z(\y_w[4][3] ) );
  AOI21D1 U153 ( .A1(n412), .A2(n411), .B(n410), .ZN(n1485) );
  OAI21D1 U154 ( .A1(n529), .A2(n528), .B(n527), .ZN(n531) );
  INVD1 U155 ( .I(\x_reg[2][3] ), .ZN(n91) );
  OAI21D1 U156 ( .A1(n109), .A2(n1464), .B(n128), .ZN(n1441) );
  NR2D1 U157 ( .A1(\x_reg[0][3] ), .A2(\y_reg[0][3] ), .ZN(n523) );
  OAI21D1 U158 ( .A1(n546), .A2(n545), .B(n544), .ZN(n547) );
  INVD2 U159 ( .I(n746), .ZN(n1359) );
  INVD1 U160 ( .I(\x_reg[2][6] ), .ZN(n787) );
  INVD1 U161 ( .I(\y_reg[4][5] ), .ZN(n478) );
  OAI21D1 U162 ( .A1(n921), .A2(n324), .B(n323), .ZN(n883) );
  OAI21D1 U163 ( .A1(n1417), .A2(n1413), .B(n1414), .ZN(n1404) );
  NR2D0 U164 ( .A1(n1055), .A2(n474), .ZN(n476) );
  AOI21D1 U165 ( .A1(n1400), .A2(n1399), .B(n1398), .ZN(n1417) );
  OA21D0 U166 ( .A1(n599), .A2(n595), .B(n1118), .Z(n1125) );
  AOI21D1 U167 ( .A1(n593), .A2(n592), .B(n591), .ZN(n599) );
  INVD0 U168 ( .I(n1396), .ZN(n1400) );
  INVD1 U169 ( .I(\y_reg[2][6] ), .ZN(n783) );
  OAI21D1 U170 ( .A1(n747), .A2(n229), .B(n228), .ZN(n230) );
  AOI21D1 U171 ( .A1(n43), .A2(n227), .B(n226), .ZN(n747) );
  OAI21D1 U172 ( .A1(n194), .A2(n193), .B(n192), .ZN(n1262) );
  OAI21D1 U173 ( .A1(n498), .A2(n501), .B(n499), .ZN(n508) );
  AOI21D2 U174 ( .A1(n786), .A2(n785), .B(n27), .ZN(n1397) );
  OAI21D1 U175 ( .A1(n1466), .A2(n302), .B(n301), .ZN(n305) );
  AOI21D2 U176 ( .A1(n107), .A2(n942), .B(n106), .ZN(n1466) );
  ND2D0 U177 ( .A1(n787), .A2(\y_reg[2][4] ), .ZN(n152) );
  NR2D1 U178 ( .A1(n1401), .A2(\y_reg[2][5] ), .ZN(n153) );
  OAI21D1 U179 ( .A1(n184), .A2(n540), .B(n183), .ZN(n1254) );
  OR2XD1 U180 ( .A1(n220), .A2(\x_reg[1][3] ), .Z(n47) );
  ND2D1 U181 ( .A1(\y_reg[3][3] ), .A2(\x_reg[3][0] ), .ZN(n1016) );
  NR2D1 U182 ( .A1(\y_reg[3][4] ), .A2(\x_reg[3][1] ), .ZN(n1011) );
  OAI21D1 U183 ( .A1(n1466), .A2(n111), .B(n110), .ZN(n113) );
  ND2D1 U184 ( .A1(n739), .A2(n28), .ZN(n740) );
  OAI21D1 U185 ( .A1(n1203), .A2(\z_w[2][0] ), .B(n1204), .ZN(n572) );
  NR2D1 U186 ( .A1(n67), .A2(\z_reg[2][1] ), .ZN(n1203) );
  INVD0 U187 ( .I(\x_reg[4][6] ), .ZN(n34) );
  OAI21D1 U188 ( .A1(n979), .A2(n978), .B(n977), .ZN(n980) );
  ND2D1 U189 ( .A1(n1335), .A2(n28), .ZN(n1336) );
  IOA21D1 U190 ( .A1(n1315), .A2(n1314), .B(n1313), .ZN(\x_w[0][5] ) );
  AOI21D1 U191 ( .A1(n1342), .A2(n1341), .B(n1340), .ZN(n1343) );
  OAI21D1 U192 ( .A1(n905), .A2(n1356), .B(n906), .ZN(n1342) );
  AOI21D1 U193 ( .A1(n846), .A2(n845), .B(n844), .ZN(n847) );
  OAI21D1 U194 ( .A1(n810), .A2(n797), .B(n798), .ZN(n846) );
  OAI21D2 U195 ( .A1(n1069), .A2(n222), .B(n221), .ZN(n746) );
  ND2D1 U196 ( .A1(n1071), .A2(n47), .ZN(n222) );
  CKAN2D1 U197 ( .A1(\y_reg[0][0] ), .A2(n168), .Z(n512) );
  INVD1 U198 ( .I(\x_reg[0][0] ), .ZN(n168) );
  AOI21D1 U199 ( .A1(n1441), .A2(n300), .B(n299), .ZN(n301) );
  OAI21D2 U200 ( .A1(n717), .A2(n716), .B(n715), .ZN(n1399) );
  AOI21D2 U201 ( .A1(n699), .A2(n698), .B(n697), .ZN(n717) );
  INVD2 U202 ( .I(n1399), .ZN(n1430) );
  AOI21D1 U203 ( .A1(n587), .A2(n586), .B(n585), .ZN(n608) );
  OAI21D1 U204 ( .A1(n1186), .A2(\z_w[3][0] ), .B(n1187), .ZN(n586) );
  OAI21D1 U205 ( .A1(n93), .A2(n773), .B(n92), .ZN(n37) );
  OAI21D1 U206 ( .A1(n93), .A2(n773), .B(n92), .ZN(n683) );
  NR2D1 U207 ( .A1(n556), .A2(\y_reg[2][0] ), .ZN(n773) );
  ND2D0 U208 ( .A1(\y_reg[1][5] ), .A2(\x_reg[1][6] ), .ZN(n729) );
  NR2D0 U209 ( .A1(n134), .A2(n133), .ZN(n1448) );
  ND2D0 U210 ( .A1(n114), .A2(\y_reg[3][1] ), .ZN(n115) );
  NR2D0 U211 ( .A1(n114), .A2(\y_reg[3][1] ), .ZN(n116) );
  INVD0 U212 ( .I(\x_reg[3][4] ), .ZN(n114) );
  OAI21D0 U213 ( .A1(n728), .A2(n1047), .B(n729), .ZN(n1320) );
  ND2D0 U214 ( .A1(\y_reg[1][4] ), .A2(\x_reg[1][5] ), .ZN(n1047) );
  NR2D0 U215 ( .A1(\y_reg[1][7] ), .A2(\x_reg[1][6] ), .ZN(n744) );
  INVD0 U216 ( .I(\y_reg[4][4] ), .ZN(n477) );
  INVD0 U217 ( .I(n1037), .ZN(n1038) );
  NR2D0 U218 ( .A1(\x_reg[1][5] ), .A2(\y_reg[1][6] ), .ZN(n905) );
  ND2D0 U219 ( .A1(\x_reg[1][4] ), .A2(\y_reg[1][5] ), .ZN(n1356) );
  ND2D0 U220 ( .A1(n269), .A2(\y_reg[3][4] ), .ZN(n132) );
  NR2D0 U221 ( .A1(n269), .A2(\y_reg[3][4] ), .ZN(n133) );
  ND2D0 U222 ( .A1(\x_reg[3][8] ), .A2(n249), .ZN(n135) );
  ND2D0 U223 ( .A1(\x_reg[3][7] ), .A2(\y_reg[3][4] ), .ZN(n1464) );
  NR2D0 U224 ( .A1(\x_reg[3][7] ), .A2(\y_reg[3][4] ), .ZN(n1463) );
  ND2D0 U225 ( .A1(\x_reg[3][8] ), .A2(\y_reg[3][5] ), .ZN(n128) );
  ND2D0 U226 ( .A1(\x_reg[1][7] ), .A2(\y_reg[1][6] ), .ZN(n1317) );
  INVD0 U227 ( .I(n757), .ZN(n1319) );
  ND2D0 U228 ( .A1(n311), .A2(\y_reg[3][6] ), .ZN(n1456) );
  ND2D0 U229 ( .A1(\x_reg[3][8] ), .A2(\y_reg[3][7] ), .ZN(n1445) );
  OAI21D0 U230 ( .A1(\x_reg[4][4] ), .A2(n1489), .B(n1490), .ZN(n425) );
  INVD0 U231 ( .I(n744), .ZN(n1341) );
  ND2D0 U232 ( .A1(n322), .A2(\y_reg[1][1] ), .ZN(n323) );
  NR2D0 U233 ( .A1(n322), .A2(\y_reg[1][1] ), .ZN(n324) );
  INVD0 U234 ( .I(\x_reg[1][2] ), .ZN(n322) );
  ND2D0 U235 ( .A1(\y_reg[1][1] ), .A2(\x_reg[1][2] ), .ZN(n919) );
  ND2D0 U236 ( .A1(\y_reg[1][3] ), .A2(\x_reg[1][4] ), .ZN(n887) );
  OAI21D0 U237 ( .A1(n462), .A2(n870), .B(n461), .ZN(n861) );
  ND2D0 U238 ( .A1(\x_reg[4][5] ), .A2(\y_reg[4][1] ), .ZN(n461) );
  NR2D0 U239 ( .A1(\x_reg[4][5] ), .A2(\y_reg[4][1] ), .ZN(n462) );
  ND2D0 U240 ( .A1(n169), .A2(\y_reg[0][1] ), .ZN(n170) );
  NR2D0 U241 ( .A1(n169), .A2(\y_reg[0][1] ), .ZN(n171) );
  INVD0 U242 ( .I(\x_reg[0][1] ), .ZN(n169) );
  INVD0 U243 ( .I(n1239), .ZN(n1241) );
  ND2D0 U244 ( .A1(n1259), .A2(n1258), .ZN(n1266) );
  NR2D0 U245 ( .A1(n31), .A2(n975), .ZN(n984) );
  ND2D0 U246 ( .A1(\y_reg[1][7] ), .A2(\x_reg[1][6] ), .ZN(n1339) );
  AOI21D1 U247 ( .A1(n746), .A2(n231), .B(n230), .ZN(n1350) );
  NR2D0 U248 ( .A1(n342), .A2(\x_reg[1][6] ), .ZN(n229) );
  ND2D0 U249 ( .A1(n510), .A2(\x_reg[0][1] ), .ZN(n511) );
  NR2D0 U250 ( .A1(n510), .A2(\x_reg[0][1] ), .ZN(n513) );
  INVD0 U251 ( .I(\y_reg[0][1] ), .ZN(n510) );
  NR2D0 U252 ( .A1(n521), .A2(n523), .ZN(n165) );
  NR2D0 U253 ( .A1(\x_reg[4][8] ), .A2(n477), .ZN(n809) );
  NR2D0 U254 ( .A1(n472), .A2(\y_reg[4][3] ), .ZN(n474) );
  NR2D0 U255 ( .A1(n805), .A2(n792), .ZN(n830) );
  INVD0 U256 ( .I(n1014), .ZN(n247) );
  OAI21D0 U257 ( .A1(n1011), .A2(n1016), .B(n1012), .ZN(n1004) );
  OAI21D0 U258 ( .A1(n1100), .A2(\z_w[0][2] ), .B(n1101), .ZN(n613) );
  ND2D0 U259 ( .A1(\y_reg[3][7] ), .A2(\x_reg[3][4] ), .ZN(n974) );
  ND2D0 U260 ( .A1(\x_reg[1][5] ), .A2(\y_reg[1][6] ), .ZN(n906) );
  NR2D0 U261 ( .A1(n685), .A2(n97), .ZN(n99) );
  NR2D0 U262 ( .A1(n95), .A2(\y_reg[2][3] ), .ZN(n97) );
  INVD0 U263 ( .I(n1332), .ZN(n1333) );
  INVD0 U264 ( .I(n1328), .ZN(n1329) );
  OAI21D0 U265 ( .A1(n1323), .A2(n756), .B(n755), .ZN(n759) );
  INVD0 U266 ( .I(n1320), .ZN(n755) );
  ND2D0 U267 ( .A1(\y_reg[2][6] ), .A2(\x_reg[2][4] ), .ZN(n1421) );
  ND2D0 U268 ( .A1(n1347), .A2(n1346), .ZN(n1349) );
  ND2D0 U269 ( .A1(n1211), .A2(\x_reg[1][7] ), .ZN(n1346) );
  INVD0 U270 ( .I(n1345), .ZN(n1347) );
  ND2D0 U271 ( .A1(\y_reg[1][2] ), .A2(\x_reg[1][3] ), .ZN(n897) );
  NR2D0 U272 ( .A1(\y_reg[1][2] ), .A2(\x_reg[1][3] ), .ZN(n896) );
  ND2D0 U273 ( .A1(n29), .A2(\x_reg[1][0] ), .ZN(n923) );
  NR2D0 U274 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(\z_reg[1][2] ), .ZN(
        n645) );
  NR2D0 U275 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][3] ), .ZN(
        n1100) );
  ND2D0 U276 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][3] ), .ZN(
        n1101) );
  ND2D0 U277 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][4] ), .ZN(
        n1096) );
  NR2D0 U278 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][4] ), .ZN(
        n1095) );
  IOA21D1 U279 ( .A1(n313), .A2(\A[3].CORDIC_element_inst1/N1 ), .B(n56), .ZN(
        \y_w[3][8] ) );
  OAI21D0 U280 ( .A1(n310), .A2(n1469), .B(n309), .ZN(n312) );
  INVD0 U281 ( .I(n288), .ZN(n155) );
  ND2D0 U282 ( .A1(n483), .A2(\x_reg[4][3] ), .ZN(n419) );
  CKAN2D1 U283 ( .A1(n478), .A2(\x_reg[4][1] ), .Z(n415) );
  NR2D0 U284 ( .A1(n787), .A2(\y_reg[2][4] ), .ZN(n150) );
  OAI21D1 U285 ( .A1(n153), .A2(n152), .B(n151), .ZN(n1037) );
  NR2D0 U286 ( .A1(n33), .A2(\y_reg[4][5] ), .ZN(n823) );
  NR2D0 U287 ( .A1(n809), .A2(n797), .ZN(n842) );
  ND2D0 U288 ( .A1(\x_reg[2][6] ), .A2(\y_reg[2][4] ), .ZN(n1374) );
  ND2D0 U289 ( .A1(n541), .A2(n540), .ZN(n550) );
  INVD0 U290 ( .I(n539), .ZN(n541) );
  ND2D0 U291 ( .A1(\x_reg[1][8] ), .A2(\y_reg[1][7] ), .ZN(n1325) );
  ND2D0 U292 ( .A1(\x_reg[0][0] ), .A2(\y_reg[0][0] ), .ZN(n501) );
  INVD0 U293 ( .I(n498), .ZN(n500) );
  ND2D0 U294 ( .A1(n94), .A2(\y_reg[2][2] ), .ZN(n684) );
  NR2D0 U295 ( .A1(n94), .A2(\y_reg[2][2] ), .ZN(n685) );
  INVD0 U296 ( .I(n765), .ZN(n1330) );
  INVD0 U297 ( .I(n271), .ZN(n991) );
  ND2D0 U298 ( .A1(n266), .A2(\x_reg[3][5] ), .ZN(n990) );
  ND2D0 U299 ( .A1(n1401), .A2(\x_reg[2][6] ), .ZN(n1414) );
  INVD0 U300 ( .I(n1287), .ZN(n1290) );
  ND2D0 U301 ( .A1(n470), .A2(\y_reg[4][1] ), .ZN(n866) );
  NR2D0 U302 ( .A1(n1484), .A2(n470), .ZN(n1474) );
  ND2D0 U303 ( .A1(n509), .A2(n520), .ZN(n514) );
  INVD0 U304 ( .I(n521), .ZN(n509) );
  ND2D0 U305 ( .A1(\y_reg[2][3] ), .A2(\x_reg[2][1] ), .ZN(n705) );
  NR2D0 U306 ( .A1(n483), .A2(n32), .ZN(n850) );
  INVD0 U307 ( .I(n843), .ZN(n844) );
  ND2D0 U308 ( .A1(n842), .A2(n845), .ZN(n849) );
  ND2D0 U309 ( .A1(n483), .A2(n32), .ZN(n851) );
  ND2D0 U310 ( .A1(\x_reg[3][6] ), .A2(\y_reg[3][3] ), .ZN(n938) );
  ND2D0 U311 ( .A1(n335), .A2(\y_reg[1][6] ), .ZN(n1328) );
  NR2D0 U312 ( .A1(n325), .A2(\y_reg[1][2] ), .ZN(n885) );
  NR2D0 U313 ( .A1(n1046), .A2(n728), .ZN(n1316) );
  ND2D0 U314 ( .A1(\x_reg[3][4] ), .A2(\y_reg[3][1] ), .ZN(n950) );
  NR2D1 U315 ( .A1(\x_reg[2][3] ), .A2(\y_reg[2][1] ), .ZN(n770) );
  ND2D0 U316 ( .A1(n91), .A2(\y_reg[2][1] ), .ZN(n92) );
  NR2D0 U317 ( .A1(n91), .A2(\y_reg[2][1] ), .ZN(n93) );
  ND2D0 U318 ( .A1(\x_reg[4][7] ), .A2(\y_reg[4][3] ), .ZN(n1058) );
  ND2D0 U319 ( .A1(n471), .A2(\y_reg[4][2] ), .ZN(n1054) );
  NR2D0 U320 ( .A1(n34), .A2(\y_reg[4][2] ), .ZN(n1055) );
  NR2D0 U321 ( .A1(n784), .A2(\y_reg[2][6] ), .ZN(n290) );
  AOI21D1 U322 ( .A1(n1037), .A2(n155), .B(n154), .ZN(n156) );
  INVD0 U323 ( .I(n291), .ZN(n154) );
  ND2D0 U324 ( .A1(n1036), .A2(n155), .ZN(n157) );
  ND2D0 U325 ( .A1(n784), .A2(\y_reg[2][6] ), .ZN(n289) );
  ND2D0 U326 ( .A1(\x_reg[2][8] ), .A2(\y_reg[2][6] ), .ZN(n1033) );
  INVD0 U327 ( .I(n278), .ZN(n1034) );
  ND2D0 U328 ( .A1(\x_reg[1][3] ), .A2(\y_reg[1][4] ), .ZN(n1073) );
  ND2D0 U329 ( .A1(n218), .A2(\x_reg[1][2] ), .ZN(n219) );
  CKAN2D1 U330 ( .A1(n214), .A2(n29), .Z(n215) );
  NR2D0 U331 ( .A1(\x_reg[2][2] ), .A2(\y_reg[2][4] ), .ZN(n874) );
  ND2D0 U332 ( .A1(\x_reg[2][2] ), .A2(\y_reg[2][4] ), .ZN(n875) );
  ND2D0 U333 ( .A1(\x_reg[2][3] ), .A2(\y_reg[2][5] ), .ZN(n720) );
  NR2D0 U334 ( .A1(n1355), .A2(n905), .ZN(n1338) );
  NR2D1 U335 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(\x_reg[1][7] ), .ZN(
        n1345) );
  NR2D0 U336 ( .A1(n1345), .A2(n744), .ZN(n209) );
  OAI21D0 U337 ( .A1(n1273), .A2(n1307), .B(n1272), .ZN(n1299) );
  ND2D0 U338 ( .A1(n1271), .A2(\x_reg[0][5] ), .ZN(n1272) );
  NR2D0 U339 ( .A1(n1308), .A2(n1273), .ZN(n1298) );
  NR2D0 U340 ( .A1(n1287), .A2(n1277), .ZN(n1279) );
  OAI21D0 U341 ( .A1(n1131), .A2(\z_w[6][0] ), .B(n1132), .ZN(n592) );
  NR2D0 U342 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][4] ), .ZN(
        n595) );
  ND2D0 U343 ( .A1(n590), .A2(n1127), .ZN(n591) );
  NR2D0 U344 ( .A1(n1126), .A2(n589), .ZN(n593) );
  OAI21D1 U345 ( .A1(n1135), .A2(\z_w[5][0] ), .B(n1136), .ZN(n601) );
  AOI21D1 U346 ( .A1(n601), .A2(n451), .B(n450), .ZN(n492) );
  ND2D0 U347 ( .A1(n637), .A2(n633), .ZN(n450) );
  NR2D0 U348 ( .A1(n634), .A2(n636), .ZN(n451) );
  NR2D0 U349 ( .A1(n38), .A2(\z_reg[4][4] ), .ZN(n631) );
  NR2D0 U350 ( .A1(n1154), .A2(n564), .ZN(n78) );
  NR2D0 U351 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][5] ), .ZN(n792) );
  NR2D0 U352 ( .A1(n478), .A2(\y_reg[4][4] ), .ZN(n797) );
  ND2D0 U353 ( .A1(n478), .A2(\y_reg[4][4] ), .ZN(n798) );
  NR2D0 U354 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][4] ), .ZN(n805) );
  NR2D0 U355 ( .A1(\x_reg[4][8] ), .A2(n32), .ZN(n818) );
  ND2D0 U356 ( .A1(n33), .A2(\y_reg[4][5] ), .ZN(n843) );
  INVD0 U357 ( .I(n823), .ZN(n845) );
  NR2D0 U358 ( .A1(n1181), .A2(n583), .ZN(n587) );
  ND2D0 U359 ( .A1(n584), .A2(n1182), .ZN(n585) );
  ND2D0 U360 ( .A1(\y_reg[3][4] ), .A2(\x_reg[3][1] ), .ZN(n1012) );
  ND2D0 U361 ( .A1(\y_reg[3][6] ), .A2(\x_reg[3][3] ), .ZN(n1000) );
  AOI21D1 U362 ( .A1(n66), .A2(n572), .B(n65), .ZN(n663) );
  ND2D0 U363 ( .A1(n574), .A2(n1199), .ZN(n65) );
  NR2D0 U364 ( .A1(n1198), .A2(n573), .ZN(n66) );
  ND2D0 U365 ( .A1(n29), .A2(\y_reg[1][2] ), .ZN(n1383) );
  ND2D0 U366 ( .A1(n1034), .A2(n1033), .ZN(n1040) );
  INVD0 U367 ( .I(n303), .ZN(n304) );
  ND2D0 U368 ( .A1(n718), .A2(n1421), .ZN(n725) );
  INVD0 U369 ( .I(n1463), .ZN(n1465) );
  INVD0 U370 ( .I(n1467), .ZN(n1468) );
  ND2D0 U371 ( .A1(n394), .A2(n393), .ZN(n395) );
  ND2D0 U372 ( .A1(n392), .A2(n391), .ZN(n396) );
  ND2D0 U373 ( .A1(n400), .A2(\y_reg[5][7] ), .ZN(n394) );
  AOI21D0 U374 ( .A1(n384), .A2(n383), .B(n382), .ZN(n399) );
  OAI21D0 U375 ( .A1(n381), .A2(n380), .B(n379), .ZN(n382) );
  OAI21D0 U376 ( .A1(n369), .A2(n368), .B(n367), .ZN(n370) );
  AOI21D0 U377 ( .A1(n354), .A2(n353), .B(n352), .ZN(n369) );
  ND2D0 U378 ( .A1(n730), .A2(n729), .ZN(n736) );
  INVD0 U379 ( .I(n728), .ZN(n730) );
  NR2D0 U380 ( .A1(\y_reg[1][4] ), .A2(\x_reg[1][5] ), .ZN(n1046) );
  ND2D0 U381 ( .A1(n898), .A2(n897), .ZN(n901) );
  INVD0 U382 ( .I(n896), .ZN(n898) );
  ND2D0 U383 ( .A1(n1375), .A2(n1374), .ZN(n1378) );
  INVD0 U384 ( .I(n1373), .ZN(n1375) );
  INVD0 U385 ( .I(n516), .ZN(n529) );
  INVD0 U386 ( .I(n550), .ZN(n552) );
  ND2D0 U387 ( .A1(n1326), .A2(n1325), .ZN(n1332) );
  INVD0 U388 ( .I(n1324), .ZN(n1326) );
  AOI21D0 U389 ( .A1(n1320), .A2(n1319), .B(n1318), .ZN(n1321) );
  NR2D0 U390 ( .A1(n168), .A2(\y_reg[0][0] ), .ZN(n504) );
  INVD0 U391 ( .I(n502), .ZN(n505) );
  ND2D0 U392 ( .A1(n688), .A2(n687), .ZN(n691) );
  INVD0 U393 ( .I(n686), .ZN(n688) );
  ND2D0 U394 ( .A1(\y_reg[2][2] ), .A2(\x_reg[2][4] ), .ZN(n928) );
  OAI21D0 U395 ( .A1(n931), .A2(n685), .B(n684), .ZN(n690) );
  INVD0 U396 ( .I(n691), .ZN(n689) );
  INVD0 U397 ( .I(n760), .ZN(n763) );
  ND2D0 U398 ( .A1(n1330), .A2(n1328), .ZN(n766) );
  ND2D0 U399 ( .A1(n1319), .A2(n1317), .ZN(n758) );
  ND2D0 U400 ( .A1(n967), .A2(n974), .ZN(n969) );
  INVD0 U401 ( .I(n975), .ZN(n967) );
  INVD0 U402 ( .I(n969), .ZN(n970) );
  ND2D0 U403 ( .A1(\x_reg[3][5] ), .A2(n977), .ZN(n255) );
  ND2D0 U404 ( .A1(n991), .A2(n990), .ZN(n992) );
  OAI21D0 U405 ( .A1(n988), .A2(n987), .B(n986), .ZN(n989) );
  INVD0 U406 ( .I(n985), .ZN(n986) );
  AOI21D0 U407 ( .A1(n1452), .A2(n1451), .B(n1450), .ZN(n1453) );
  INVD0 U408 ( .I(n1449), .ZN(n1450) );
  ND2D0 U409 ( .A1(n1457), .A2(n1456), .ZN(n1458) );
  INVD0 U410 ( .I(n1438), .ZN(n1439) );
  AN2D0 U411 ( .A1(n1446), .A2(n1445), .Z(n55) );
  ND2D0 U412 ( .A1(\x_reg[3][6] ), .A2(n985), .ZN(n267) );
  ND2D0 U413 ( .A1(n1415), .A2(n1414), .ZN(n1416) );
  INVD0 U414 ( .I(n1413), .ZN(n1415) );
  OAI21D0 U415 ( .A1(n1423), .A2(n1411), .B(n1410), .ZN(n1412) );
  ND2D0 U416 ( .A1(\x_reg[2][6] ), .A2(n1409), .ZN(n1410) );
  ND2D0 U417 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][4] ), .ZN(n806) );
  ND2D0 U418 ( .A1(n811), .A2(n810), .ZN(n812) );
  INVD0 U419 ( .I(n809), .ZN(n811) );
  AOI21D0 U420 ( .A1(n1299), .A2(n1290), .B(n1289), .ZN(n1291) );
  INVD0 U421 ( .I(n1288), .ZN(n1289) );
  ND2D0 U422 ( .A1(n1478), .A2(n1477), .ZN(n1479) );
  INVD0 U423 ( .I(\x_reg[4][6] ), .ZN(n471) );
  ND2D0 U424 ( .A1(n859), .A2(n1062), .ZN(n862) );
  INVD0 U425 ( .I(n1063), .ZN(n859) );
  ND2D0 U426 ( .A1(n867), .A2(n866), .ZN(n869) );
  INVD0 U427 ( .I(n865), .ZN(n867) );
  ND2D0 U428 ( .A1(\x_reg[4][4] ), .A2(\y_reg[4][0] ), .ZN(n870) );
  INVD0 U429 ( .I(n936), .ZN(n961) );
  INVD0 U430 ( .I(n514), .ZN(n517) );
  ND2D0 U431 ( .A1(\y_reg[2][2] ), .A2(\x_reg[2][0] ), .ZN(n706) );
  ND2D0 U432 ( .A1(n677), .A2(n705), .ZN(n680) );
  INVD0 U433 ( .I(n707), .ZN(n677) );
  INVD0 U434 ( .I(n1349), .ZN(n1351) );
  ND2D0 U435 ( .A1(\x_reg[2][2] ), .A2(\y_reg[2][0] ), .ZN(n775) );
  ND2D0 U436 ( .A1(n772), .A2(n771), .ZN(n776) );
  INVD0 U437 ( .I(n770), .ZN(n772) );
  ND2D0 U438 ( .A1(n876), .A2(n875), .ZN(n879) );
  INVD0 U439 ( .I(n874), .ZN(n876) );
  INVD0 U440 ( .I(n723), .ZN(n880) );
  INVD0 U441 ( .I(n717), .ZN(n878) );
  ND2D0 U442 ( .A1(n939), .A2(n938), .ZN(n945) );
  INVD0 U443 ( .I(n937), .ZN(n939) );
  NR2D0 U444 ( .A1(\x_reg[3][5] ), .A2(\y_reg[3][2] ), .ZN(n944) );
  ND2D0 U445 ( .A1(\x_reg[3][5] ), .A2(\y_reg[3][2] ), .ZN(n943) );
  INVD0 U446 ( .I(n942), .ZN(n964) );
  OAI21D0 U447 ( .A1(n961), .A2(n958), .B(n959), .ZN(n941) );
  INVD0 U448 ( .I(n945), .ZN(n940) );
  ND2D0 U449 ( .A1(n888), .A2(n887), .ZN(n892) );
  INVD0 U450 ( .I(n886), .ZN(n888) );
  OAI21D0 U451 ( .A1(n900), .A2(n885), .B(n884), .ZN(n890) );
  INVD0 U452 ( .I(n892), .ZN(n889) );
  INVD0 U453 ( .I(\x_reg[2][2] ), .ZN(n556) );
  ND2D0 U454 ( .A1(n951), .A2(n950), .ZN(n955) );
  INVD0 U455 ( .I(n949), .ZN(n951) );
  ND2D0 U456 ( .A1(n920), .A2(n919), .ZN(n924) );
  INVD0 U457 ( .I(n918), .ZN(n920) );
  NR2D1 U458 ( .A1(n30), .A2(\x_reg[1][0] ), .ZN(n921) );
  ND2D0 U459 ( .A1(n929), .A2(n928), .ZN(n932) );
  INVD0 U460 ( .I(n927), .ZN(n929) );
  INVD0 U461 ( .I(n683), .ZN(n931) );
  NR2D0 U462 ( .A1(n896), .A2(n886), .ZN(n315) );
  OAI21D0 U463 ( .A1(n886), .A2(n897), .B(n887), .ZN(n314) );
  ND2D0 U464 ( .A1(n1048), .A2(n1047), .ZN(n1051) );
  INVD0 U465 ( .I(n1046), .ZN(n1048) );
  ND2D0 U466 ( .A1(n1059), .A2(n1058), .ZN(n1065) );
  INVD0 U467 ( .I(n1057), .ZN(n1059) );
  ND2D0 U468 ( .A1(\x_reg[4][6] ), .A2(\y_reg[4][2] ), .ZN(n1062) );
  INVD0 U469 ( .I(n861), .ZN(n1064) );
  INVD0 U470 ( .I(n1065), .ZN(n1060) );
  ND2D0 U471 ( .A1(n1074), .A2(n1073), .ZN(n1078) );
  INVD0 U472 ( .I(n1072), .ZN(n1074) );
  AOI21D0 U473 ( .A1(n1368), .A2(n1071), .B(n1070), .ZN(n1076) );
  INVD0 U474 ( .I(n1078), .ZN(n1075) );
  INVD0 U475 ( .I(n1249), .ZN(n1293) );
  AOI21D0 U476 ( .A1(n1254), .A2(n1259), .B(n1236), .ZN(n1237) );
  INVD0 U477 ( .I(n1077), .ZN(n1370) );
  ND2D0 U478 ( .A1(n1366), .A2(n1365), .ZN(n1369) );
  INVD0 U479 ( .I(n1364), .ZN(n1366) );
  INVD0 U480 ( .I(n1069), .ZN(n1368) );
  INVD0 U481 ( .I(n1299), .ZN(n1300) );
  INVD0 U482 ( .I(n1266), .ZN(n1302) );
  INVD0 U483 ( .I(n1254), .ZN(n1255) );
  OAI21D0 U484 ( .A1(n880), .A2(n874), .B(n875), .ZN(n709) );
  ND2D0 U485 ( .A1(n702), .A2(n720), .ZN(n708) );
  INVD0 U486 ( .I(n721), .ZN(n702) );
  AOI21D0 U487 ( .A1(n878), .A2(n40), .B(n714), .ZN(n704) );
  NR2D0 U488 ( .A1(n542), .A2(n546), .ZN(n549) );
  AOI21D0 U489 ( .A1(n1279), .A2(n1299), .B(n1278), .ZN(n1280) );
  OAI21D0 U490 ( .A1(n1277), .A2(n1288), .B(n1276), .ZN(n1278) );
  ND2D0 U491 ( .A1(n1275), .A2(\x_reg[0][7] ), .ZN(n1276) );
  NR2D0 U492 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][2] ), .ZN(
        n1126) );
  ND2D0 U493 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][2] ), .ZN(
        n1127) );
  INVD0 U494 ( .I(n592), .ZN(n1130) );
  ND2D0 U495 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][4] ), .ZN(
        n1118) );
  NR2D0 U496 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][5] ), .ZN(
        n1121) );
  INVD0 U497 ( .I(n595), .ZN(n1119) );
  ND2D0 U498 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][5] ), .ZN(
        n1122) );
  ND2D0 U499 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][6] ), .ZN(
        n1114) );
  ND2D0 U500 ( .A1(n1122), .A2(n1118), .ZN(n1112) );
  NR2D0 U501 ( .A1(n595), .A2(n1121), .ZN(n1113) );
  OR2D0 U502 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][6] ), .Z(
        n1115) );
  INVD0 U503 ( .I(n599), .ZN(n1120) );
  NR2D0 U504 ( .A1(n36), .A2(\z_reg[5][3] ), .ZN(n636) );
  NR2D0 U505 ( .A1(n36), .A2(\z_reg[5][2] ), .ZN(n634) );
  ND2D0 U506 ( .A1(n36), .A2(\z_reg[5][3] ), .ZN(n637) );
  NR2D0 U507 ( .A1(n36), .A2(\z_reg[5][5] ), .ZN(n455) );
  INVD0 U508 ( .I(n456), .ZN(n670) );
  INVD0 U509 ( .I(n457), .ZN(n452) );
  ND2D0 U510 ( .A1(n36), .A2(\z_reg[5][5] ), .ZN(n458) );
  ND2D0 U511 ( .A1(n36), .A2(\z_reg[5][6] ), .ZN(n488) );
  ND2D0 U512 ( .A1(n458), .A2(n457), .ZN(n490) );
  OR2D0 U513 ( .A1(n36), .A2(\z_reg[5][6] ), .Z(n486) );
  INVD0 U514 ( .I(n563), .ZN(n1158) );
  ND2D0 U515 ( .A1(n38), .A2(\z_reg[4][4] ), .ZN(n1145) );
  NR2D0 U516 ( .A1(n38), .A2(\z_reg[4][5] ), .ZN(n1149) );
  INVD0 U517 ( .I(n631), .ZN(n1147) );
  INVD0 U518 ( .I(n1145), .ZN(n1146) );
  ND2D0 U519 ( .A1(n38), .A2(\z_reg[4][5] ), .ZN(n1150) );
  OR2D0 U520 ( .A1(n38), .A2(\z_reg[4][6] ), .Z(n1142) );
  INVD0 U521 ( .I(n630), .ZN(n1148) );
  ND2D0 U522 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][5] ), .ZN(n793) );
  NR2D0 U523 ( .A1(n403), .A2(n409), .ZN(n412) );
  OAI21D0 U524 ( .A1(n406), .A2(n405), .B(n404), .ZN(n411) );
  OAI21D0 U525 ( .A1(n409), .A2(n408), .B(n407), .ZN(n410) );
  XNR2D0 U526 ( .A1(n1493), .A2(n1492), .ZN(n1494) );
  ND2D0 U527 ( .A1(n1491), .A2(n1490), .ZN(n1492) );
  ND2D0 U528 ( .A1(\x_reg[4][4] ), .A2(n1488), .ZN(n1493) );
  ND2D0 U529 ( .A1(n1026), .A2(\z_reg[3][1] ), .ZN(n1187) );
  NR2D0 U530 ( .A1(n1026), .A2(\z_reg[3][1] ), .ZN(n1186) );
  ND2D0 U531 ( .A1(n1026), .A2(\z_reg[3][2] ), .ZN(n1182) );
  NR2D0 U532 ( .A1(n1026), .A2(\z_reg[3][2] ), .ZN(n1181) );
  INVD0 U533 ( .I(n586), .ZN(n1185) );
  ND2D0 U534 ( .A1(n1167), .A2(\z_reg[3][7] ), .ZN(n1163) );
  INVD0 U535 ( .I(n1163), .ZN(n1164) );
  OR2D0 U536 ( .A1(n1167), .A2(\z_reg[3][8] ), .Z(n1169) );
  ND2D0 U537 ( .A1(n1013), .A2(n1012), .ZN(n1017) );
  INVD0 U538 ( .I(n1011), .ZN(n1013) );
  ND2D0 U539 ( .A1(n1021), .A2(n1020), .ZN(n1023) );
  INVD0 U540 ( .I(n997), .ZN(n1022) );
  ND2D0 U541 ( .A1(n1001), .A2(n1000), .ZN(n1007) );
  INVD0 U542 ( .I(n999), .ZN(n1001) );
  ND2D0 U543 ( .A1(\y_reg[3][5] ), .A2(\x_reg[3][2] ), .ZN(n1005) );
  NR2D0 U544 ( .A1(\y_reg[3][5] ), .A2(\x_reg[3][2] ), .ZN(n1006) );
  INVD0 U545 ( .I(n1004), .ZN(n1025) );
  AOI21D0 U546 ( .A1(n1022), .A2(n1021), .B(n998), .ZN(n1003) );
  INVD0 U547 ( .I(n1007), .ZN(n1002) );
  NR2D0 U548 ( .A1(n67), .A2(\z_reg[2][2] ), .ZN(n1198) );
  INVD0 U549 ( .I(n572), .ZN(n1202) );
  ND2D0 U550 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][7] ), .ZN(
        n1190) );
  OR2D0 U551 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][7] ), .Z(
        n1192) );
  INVD0 U552 ( .I(n1190), .ZN(n1191) );
  OR2D0 U553 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][8] ), .Z(
        n1195) );
  OAI21D1 U554 ( .A1(n663), .A2(n662), .B(n661), .ZN(n1193) );
  ND2D0 U555 ( .A1(n656), .A2(n659), .ZN(n662) );
  AOI21D0 U556 ( .A1(n660), .A2(n659), .B(n658), .ZN(n661) );
  INVD0 U557 ( .I(n657), .ZN(n658) );
  OA21D0 U558 ( .A1(n1231), .A2(\z_w[1][0] ), .B(n1232), .Z(n617) );
  ND2D0 U559 ( .A1(n1211), .A2(\z_reg[1][7] ), .ZN(n1207) );
  INVD0 U560 ( .I(n1207), .ZN(n1208) );
  OR2D0 U561 ( .A1(n1211), .A2(\z_reg[1][7] ), .Z(n1209) );
  OR2D0 U562 ( .A1(n1211), .A2(\z_reg[1][8] ), .Z(n1213) );
  OAI21D1 U563 ( .A1(n654), .A2(n653), .B(n652), .ZN(n1210) );
  AOI21D0 U564 ( .A1(n1216), .A2(n1219), .B(n651), .ZN(n652) );
  ND2D0 U565 ( .A1(n1217), .A2(n1219), .ZN(n653) );
  ND2D0 U566 ( .A1(n1384), .A2(n1383), .ZN(n1388) );
  INVD0 U567 ( .I(n1382), .ZN(n1384) );
  INVD0 U568 ( .I(n613), .ZN(n1099) );
  NR2D0 U569 ( .A1(n615), .A2(\z_reg[0][6] ), .ZN(n1090) );
  NR2D0 U570 ( .A1(n611), .A2(n1095), .ZN(n614) );
  OAI21D0 U571 ( .A1(n611), .A2(n1096), .B(n610), .ZN(n612) );
  ND2D0 U572 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][7] ), .ZN(
        n1082) );
  INVD0 U573 ( .I(n1082), .ZN(n1083) );
  OR2D0 U574 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][7] ), .Z(
        n1084) );
  OR2D0 U575 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][8] ), .Z(
        n1087) );
  IOA21D1 U576 ( .A1(n297), .A2(\A[2].CORDIC_element_inst1/N1 ), .B(n59), .ZN(
        \y_w[2][8] ) );
  CKXOR2D1 U577 ( .A1(n287), .A2(n286), .Z(n297) );
  INVD0 U578 ( .I(n1394), .ZN(n286) );
  IOA21D1 U579 ( .A1(n485), .A2(n38), .B(n53), .ZN(\y_w[4][8] ) );
  XNR2D0 U580 ( .A1(n469), .A2(n468), .ZN(n485) );
  OAI21D0 U581 ( .A1(n467), .A2(n835), .B(n466), .ZN(n469) );
  ND2D0 U582 ( .A1(n204), .A2(n1314), .ZN(n205) );
  XNR2D0 U583 ( .A1(n203), .A2(n1282), .ZN(n204) );
  AN2D0 U584 ( .A1(n220), .A2(\x_reg[1][3] ), .Z(n46) );
  INVD0 U585 ( .I(\x_reg[1][5] ), .ZN(n331) );
  INVD0 U586 ( .I(\y_reg[1][5] ), .ZN(n224) );
  ND2D0 U587 ( .A1(\x_reg[0][1] ), .A2(\y_reg[0][1] ), .ZN(n499) );
  NR2D0 U588 ( .A1(\x_reg[0][1] ), .A2(\y_reg[0][1] ), .ZN(n498) );
  INVD0 U589 ( .I(\x_reg[2][4] ), .ZN(n94) );
  IND2D1 U590 ( .A1(n784), .B1(n95), .ZN(n786) );
  NR2D0 U591 ( .A1(n251), .A2(\y_reg[3][5] ), .ZN(n306) );
  INVD0 U592 ( .I(\y_reg[2][3] ), .ZN(n696) );
  INVD0 U593 ( .I(\x_reg[1][6] ), .ZN(n332) );
  NR2D0 U594 ( .A1(n332), .A2(\y_reg[1][5] ), .ZN(n334) );
  NR2D0 U595 ( .A1(n335), .A2(\y_reg[1][6] ), .ZN(n765) );
  ND2D0 U596 ( .A1(\x_reg[2][8] ), .A2(n783), .ZN(n291) );
  INVD0 U597 ( .I(\y_reg[1][3] ), .ZN(n218) );
  INVD0 U598 ( .I(\x_reg[0][6] ), .ZN(n195) );
  INVD0 U599 ( .I(\x_reg[0][5] ), .ZN(n191) );
  NR2D0 U600 ( .A1(n195), .A2(\y_reg[0][6] ), .ZN(n1243) );
  NR2D0 U601 ( .A1(n191), .A2(\y_reg[0][5] ), .ZN(n194) );
  INVD0 U602 ( .I(\y_reg[1][2] ), .ZN(n214) );
  ND2D0 U603 ( .A1(n342), .A2(\x_reg[1][6] ), .ZN(n228) );
  INVD0 U604 ( .I(\y_reg[0][6] ), .ZN(n1274) );
  INVD0 U605 ( .I(\y_reg[0][5] ), .ZN(n1271) );
  NR2D0 U606 ( .A1(n1271), .A2(\x_reg[0][5] ), .ZN(n1273) );
  NR2D0 U607 ( .A1(n1274), .A2(\x_reg[0][6] ), .ZN(n1287) );
  ND2D0 U608 ( .A1(\x_reg[0][6] ), .A2(\y_reg[0][6] ), .ZN(n1258) );
  ND2D0 U609 ( .A1(\x_reg[0][7] ), .A2(\y_reg[0][7] ), .ZN(n1240) );
  ND2D0 U610 ( .A1(\x_reg[0][5] ), .A2(\y_reg[0][5] ), .ZN(n183) );
  NR2D0 U611 ( .A1(\x_reg[0][5] ), .A2(\y_reg[0][5] ), .ZN(n184) );
  NR2D0 U612 ( .A1(\x_reg[0][6] ), .A2(\y_reg[0][6] ), .ZN(n1235) );
  ND2D0 U613 ( .A1(\x_reg[0][3] ), .A2(\y_reg[0][3] ), .ZN(n524) );
  ND2D0 U614 ( .A1(n472), .A2(\y_reg[4][3] ), .ZN(n473) );
  INVD0 U615 ( .I(\y_reg[3][4] ), .ZN(n246) );
  NR2D0 U616 ( .A1(n306), .A2(n1455), .ZN(n308) );
  NR2D0 U617 ( .A1(\x_reg[3][8] ), .A2(\y_reg[3][6] ), .ZN(n298) );
  ND2D0 U618 ( .A1(n1445), .A2(n1438), .ZN(n299) );
  ND2D0 U619 ( .A1(n223), .A2(n43), .ZN(n748) );
  INVD0 U620 ( .I(n911), .ZN(n223) );
  ND2D0 U621 ( .A1(\x_reg[2][7] ), .A2(\y_reg[2][5] ), .ZN(n142) );
  NR2D0 U622 ( .A1(n787), .A2(n1401), .ZN(n1391) );
  NR2D0 U623 ( .A1(\x_reg[2][8] ), .A2(n783), .ZN(n288) );
  OAI21D0 U624 ( .A1(n291), .A2(n290), .B(n289), .ZN(n292) );
  NR2D0 U625 ( .A1(\x_reg[2][8] ), .A2(\y_reg[2][6] ), .ZN(n278) );
  ND2D0 U626 ( .A1(n279), .A2(n1033), .ZN(n280) );
  OAI21D0 U627 ( .A1(n850), .A2(n843), .B(n851), .ZN(n479) );
  ND2D0 U628 ( .A1(n266), .A2(\y_reg[3][3] ), .ZN(n117) );
  ND2D0 U629 ( .A1(n400), .A2(\y_reg[5][3] ), .ZN(n391) );
  ND2D0 U630 ( .A1(n400), .A2(\y_reg[5][5] ), .ZN(n392) );
  ND2D0 U631 ( .A1(n400), .A2(\y_reg[5][6] ), .ZN(n393) );
  INVD0 U632 ( .I(\y_reg[0][2] ), .ZN(n533) );
  ND2D0 U633 ( .A1(n331), .A2(\y_reg[1][4] ), .ZN(n733) );
  NR2D0 U634 ( .A1(n224), .A2(\x_reg[1][4] ), .ZN(n911) );
  NR2D0 U635 ( .A1(\x_reg[1][4] ), .A2(\y_reg[1][5] ), .ZN(n1355) );
  INVD0 U636 ( .I(\y_reg[0][4] ), .ZN(n1270) );
  NR2D0 U637 ( .A1(\x_reg[2][6] ), .A2(\y_reg[2][4] ), .ZN(n1373) );
  ND2D0 U638 ( .A1(n95), .A2(\y_reg[2][3] ), .ZN(n96) );
  INVD0 U639 ( .I(\x_reg[0][2] ), .ZN(n172) );
  ND2D0 U640 ( .A1(\x_reg[0][2] ), .A2(\y_reg[0][2] ), .ZN(n520) );
  ND2D0 U641 ( .A1(n525), .A2(n524), .ZN(n530) );
  INVD0 U642 ( .I(n523), .ZN(n525) );
  ND2D0 U643 ( .A1(n108), .A2(n249), .ZN(n129) );
  INVD0 U644 ( .I(\x_reg[3][8] ), .ZN(n108) );
  NR2D1 U645 ( .A1(\y_reg[2][3] ), .A2(\x_reg[2][5] ), .ZN(n686) );
  INVD0 U646 ( .I(\x_reg[0][7] ), .ZN(n196) );
  NR2D0 U647 ( .A1(n196), .A2(\y_reg[0][7] ), .ZN(n198) );
  NR2D0 U648 ( .A1(n1243), .A2(n198), .ZN(n200) );
  ND2D0 U649 ( .A1(n1478), .A2(n440), .ZN(n442) );
  AOI21D0 U650 ( .A1(n440), .A2(n439), .B(n438), .ZN(n441) );
  INVD0 U651 ( .I(n437), .ZN(n438) );
  OR2D0 U652 ( .A1(n472), .A2(\x_reg[4][8] ), .Z(n444) );
  NR2D0 U653 ( .A1(n311), .A2(\x_reg[3][4] ), .ZN(n978) );
  NR2D0 U654 ( .A1(n311), .A2(\y_reg[3][6] ), .ZN(n1455) );
  NR2D0 U655 ( .A1(n266), .A2(\x_reg[3][5] ), .ZN(n271) );
  ND2D0 U656 ( .A1(\y_reg[2][7] ), .A2(\x_reg[2][5] ), .ZN(n1425) );
  NR2D0 U657 ( .A1(\y_reg[2][7] ), .A2(\x_reg[2][5] ), .ZN(n1424) );
  ND2D0 U658 ( .A1(n783), .A2(\x_reg[2][4] ), .ZN(n1428) );
  NR2D0 U659 ( .A1(n783), .A2(\x_reg[2][4] ), .ZN(n1429) );
  NR2D0 U660 ( .A1(n1401), .A2(\x_reg[2][6] ), .ZN(n1413) );
  OAI21D0 U661 ( .A1(n1424), .A2(n1421), .B(n1425), .ZN(n1409) );
  NR2D0 U662 ( .A1(n1422), .A2(n1424), .ZN(n1408) );
  ND2D0 U663 ( .A1(n251), .A2(\y_reg[3][5] ), .ZN(n1449) );
  INVD0 U664 ( .I(n306), .ZN(n1451) );
  ND2D0 U665 ( .A1(\x_reg[3][8] ), .A2(\y_reg[3][6] ), .ZN(n1438) );
  INVD0 U666 ( .I(n298), .ZN(n1440) );
  INVD0 U667 ( .I(\x_reg[0][4] ), .ZN(n178) );
  ND2D0 U668 ( .A1(\x_reg[0][4] ), .A2(\y_reg[0][4] ), .ZN(n540) );
  ND2D0 U669 ( .A1(n166), .A2(n183), .ZN(n179) );
  INVD0 U670 ( .I(n184), .ZN(n166) );
  INVD0 U671 ( .I(n436), .ZN(n1478) );
  ND2D0 U672 ( .A1(n472), .A2(\x_reg[4][6] ), .ZN(n437) );
  OR2D0 U673 ( .A1(n472), .A2(\x_reg[4][6] ), .Z(n440) );
  ND2D0 U674 ( .A1(n471), .A2(\x_reg[4][5] ), .ZN(n1477) );
  NR2D0 U675 ( .A1(\y_reg[2][3] ), .A2(\x_reg[2][1] ), .ZN(n707) );
  NR2D0 U676 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][7] ), .ZN(n837) );
  INVD0 U677 ( .I(\y_reg[1][7] ), .ZN(n342) );
  OAI21D0 U678 ( .A1(n334), .A2(n733), .B(n333), .ZN(n761) );
  ND2D0 U679 ( .A1(n332), .A2(\y_reg[1][5] ), .ZN(n333) );
  NR2D0 U680 ( .A1(\x_reg[1][8] ), .A2(n342), .ZN(n337) );
  NR2D0 U681 ( .A1(n732), .A2(n334), .ZN(n760) );
  NR2D0 U682 ( .A1(n337), .A2(n765), .ZN(n339) );
  INVD0 U683 ( .I(\x_reg[1][4] ), .ZN(n326) );
  ND2D0 U684 ( .A1(n326), .A2(\y_reg[1][3] ), .ZN(n327) );
  NR2D0 U685 ( .A1(\x_reg[1][8] ), .A2(\y_reg[1][7] ), .ZN(n1324) );
  NR2D0 U686 ( .A1(\x_reg[1][7] ), .A2(\y_reg[1][6] ), .ZN(n757) );
  OAI21D0 U687 ( .A1(n1324), .A2(n1317), .B(n1325), .ZN(n316) );
  NR2D0 U688 ( .A1(\y_reg[1][1] ), .A2(\x_reg[1][2] ), .ZN(n918) );
  NR2D1 U689 ( .A1(\y_reg[1][3] ), .A2(\x_reg[1][4] ), .ZN(n886) );
  NR2D0 U690 ( .A1(\x_reg[2][8] ), .A2(\y_reg[2][7] ), .ZN(n277) );
  OAI21D1 U691 ( .A1(n143), .A2(n1374), .B(n142), .ZN(n1030) );
  NR2D0 U692 ( .A1(n1373), .A2(n143), .ZN(n1029) );
  INVD0 U693 ( .I(\x_reg[0][3] ), .ZN(n173) );
  ND2D0 U694 ( .A1(n173), .A2(\y_reg[0][3] ), .ZN(n174) );
  ND2D0 U695 ( .A1(n195), .A2(\y_reg[0][6] ), .ZN(n1244) );
  ND2D0 U696 ( .A1(n191), .A2(\y_reg[0][5] ), .ZN(n192) );
  INVD0 U697 ( .I(n1243), .ZN(n1246) );
  NR2D0 U698 ( .A1(n190), .A2(n194), .ZN(n1261) );
  INVD0 U699 ( .I(n1235), .ZN(n1259) );
  INVD0 U700 ( .I(n1258), .ZN(n1236) );
  NR2D1 U701 ( .A1(\x_reg[2][3] ), .A2(\y_reg[2][5] ), .ZN(n721) );
  NR2D0 U702 ( .A1(n266), .A2(n269), .ZN(n240) );
  AOI21D0 U703 ( .A1(n41), .A2(n258), .B(n257), .ZN(n259) );
  INVD0 U704 ( .I(n272), .ZN(n257) );
  ND2D0 U705 ( .A1(n991), .A2(n41), .ZN(n260) );
  ND2D0 U706 ( .A1(n543), .A2(\x_reg[0][3] ), .ZN(n544) );
  INVD0 U707 ( .I(\y_reg[0][7] ), .ZN(n1275) );
  ND2D0 U708 ( .A1(n1274), .A2(\x_reg[0][6] ), .ZN(n1288) );
  NR2D0 U709 ( .A1(n1275), .A2(\x_reg[0][7] ), .ZN(n1277) );
  OAI21D0 U710 ( .A1(n1239), .A2(n1258), .B(n1240), .ZN(n185) );
  NR2D0 U711 ( .A1(n1235), .A2(n1239), .ZN(n186) );
  ND2D0 U712 ( .A1(\y_reg[4][7] ), .A2(\x_reg[4][3] ), .ZN(n407) );
  NR2D0 U713 ( .A1(\y_reg[4][7] ), .A2(\x_reg[4][3] ), .ZN(n409) );
  ND2D0 U714 ( .A1(n470), .A2(\x_reg[4][4] ), .ZN(n1490) );
  ND2D0 U715 ( .A1(n45), .A2(n418), .ZN(n423) );
  NR2D0 U716 ( .A1(n1167), .A2(\z_reg[3][4] ), .ZN(n604) );
  NR2D0 U717 ( .A1(n67), .A2(\z_reg[2][4] ), .ZN(n72) );
  NR2D0 U718 ( .A1(n649), .A2(\z_reg[1][4] ), .ZN(n668) );
  INVD0 U719 ( .I(n1218), .ZN(n651) );
  OAI21D0 U720 ( .A1(n1231), .A2(\z_w[1][0] ), .B(n1232), .ZN(n667) );
  OAI21D0 U721 ( .A1(n648), .A2(n647), .B(n646), .ZN(n665) );
  NR2D0 U722 ( .A1(n648), .A2(n645), .ZN(n666) );
  INVD0 U723 ( .I(n1030), .ZN(n1031) );
  INVD0 U724 ( .I(n1040), .ZN(n1041) );
  AOI21D0 U725 ( .A1(n1452), .A2(n308), .B(n307), .ZN(n309) );
  OAI21D0 U726 ( .A1(n1455), .A2(n1449), .B(n1456), .ZN(n307) );
  ND2D0 U727 ( .A1(n1448), .A2(n308), .ZN(n310) );
  ND2D0 U728 ( .A1(n300), .A2(n1437), .ZN(n302) );
  NR2D0 U729 ( .A1(n298), .A2(n1444), .ZN(n300) );
  ND2D0 U730 ( .A1(n1341), .A2(n1339), .ZN(n749) );
  XNR2D0 U731 ( .A1(n751), .A2(n750), .ZN(n752) );
  INVD0 U732 ( .I(n749), .ZN(n750) );
  OAI21D0 U733 ( .A1(n1359), .A2(n748), .B(n747), .ZN(n751) );
  INVD0 U734 ( .I(n100), .ZN(n101) );
  OAI21D0 U735 ( .A1(n1379), .A2(n1373), .B(n1374), .ZN(n90) );
  ND2D0 U736 ( .A1(n89), .A2(n142), .ZN(n100) );
  INVD0 U737 ( .I(n143), .ZN(n89) );
  ND2D0 U738 ( .A1(n1409), .A2(n1391), .ZN(n1392) );
  INVD0 U739 ( .I(n1262), .ZN(n1263) );
  ND2D0 U740 ( .A1(n285), .A2(n284), .ZN(n1394) );
  ND2D0 U741 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\x_reg[2][8] ), .ZN(
        n284) );
  OR2D0 U742 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\x_reg[2][8] ), .Z(
        n285) );
  NR2D0 U743 ( .A1(\y_reg[3][7] ), .A2(\x_reg[3][4] ), .ZN(n975) );
  XNR2D0 U744 ( .A1(n980), .A2(n31), .ZN(n981) );
  ND2D0 U745 ( .A1(n1357), .A2(n1356), .ZN(n1360) );
  INVD0 U746 ( .I(n1355), .ZN(n1357) );
  ND2D0 U747 ( .A1(n533), .A2(\x_reg[0][2] ), .ZN(n545) );
  NR2D0 U748 ( .A1(n533), .A2(\x_reg[0][2] ), .ZN(n542) );
  INVD0 U749 ( .I(n1409), .ZN(n779) );
  INVD0 U750 ( .I(\y_reg[0][0] ), .ZN(n555) );
  XNR2D0 U751 ( .A1(n914), .A2(n913), .ZN(n915) );
  ND2D0 U752 ( .A1(n43), .A2(n912), .ZN(n913) );
  OAI21D0 U753 ( .A1(n1359), .A2(n911), .B(n910), .ZN(n914) );
  OAI21D0 U754 ( .A1(n1361), .A2(n1355), .B(n1356), .ZN(n909) );
  ND2D0 U755 ( .A1(n1270), .A2(\x_reg[0][4] ), .ZN(n1307) );
  NR2D0 U756 ( .A1(n1270), .A2(\x_reg[0][4] ), .ZN(n1308) );
  ND2D0 U757 ( .A1(n172), .A2(\y_reg[0][2] ), .ZN(n527) );
  NR2D0 U758 ( .A1(n172), .A2(\y_reg[0][2] ), .ZN(n528) );
  INVD0 U759 ( .I(n530), .ZN(n535) );
  XNR2D0 U760 ( .A1(n526), .A2(n530), .ZN(n538) );
  OAI21D0 U761 ( .A1(n522), .A2(n521), .B(n520), .ZN(n526) );
  OAI21D0 U762 ( .A1(n1469), .A2(n133), .B(n132), .ZN(n138) );
  OAI21D0 U763 ( .A1(n1466), .A2(n1463), .B(n1464), .ZN(n131) );
  ND2D0 U764 ( .A1(n129), .A2(n128), .ZN(n130) );
  AOI21D0 U765 ( .A1(n200), .A2(n1262), .B(n199), .ZN(n201) );
  OAI21D0 U766 ( .A1(n198), .A2(n1244), .B(n197), .ZN(n199) );
  ND2D0 U767 ( .A1(n196), .A2(\y_reg[0][7] ), .ZN(n197) );
  ND2D0 U768 ( .A1(n434), .A2(n433), .ZN(n468) );
  ND2D0 U769 ( .A1(n38), .A2(\x_reg[4][8] ), .ZN(n433) );
  OR2D0 U770 ( .A1(n38), .A2(\x_reg[4][8] ), .Z(n434) );
  ND2D0 U771 ( .A1(n1426), .A2(n1425), .ZN(n1431) );
  INVD0 U772 ( .I(n1424), .ZN(n1426) );
  NR2D0 U773 ( .A1(\y_reg[2][6] ), .A2(\x_reg[2][4] ), .ZN(n1422) );
  XNR2D0 U774 ( .A1(n1433), .A2(n1432), .ZN(n1434) );
  INVD0 U775 ( .I(n1431), .ZN(n1432) );
  OAI21D0 U776 ( .A1(n1430), .A2(n1429), .B(n1428), .ZN(n1433) );
  OAI21D0 U777 ( .A1(n1469), .A2(n122), .B(n121), .ZN(n124) );
  INVD0 U778 ( .I(n1452), .ZN(n121) );
  ND2D0 U779 ( .A1(n1451), .A2(n1449), .ZN(n123) );
  INVD0 U780 ( .I(n1441), .ZN(n110) );
  ND2D0 U781 ( .A1(n1440), .A2(n1438), .ZN(n112) );
  ND2D0 U782 ( .A1(n178), .A2(\y_reg[0][4] ), .ZN(n193) );
  NR2D0 U783 ( .A1(n178), .A2(\y_reg[0][4] ), .ZN(n190) );
  INVD0 U784 ( .I(n179), .ZN(n1310) );
  ND2D0 U785 ( .A1(n960), .A2(n959), .ZN(n962) );
  INVD0 U786 ( .I(n958), .ZN(n960) );
  ND2D0 U787 ( .A1(\x_reg[4][8] ), .A2(\y_reg[4][7] ), .ZN(n838) );
  XNR2D0 U788 ( .A1(n854), .A2(n853), .ZN(n855) );
  ND2D0 U789 ( .A1(n852), .A2(n851), .ZN(n853) );
  OAI21D0 U790 ( .A1(n836), .A2(n835), .B(n834), .ZN(n841) );
  ND2D0 U791 ( .A1(n830), .A2(n829), .ZN(n836) );
  AOI21D0 U792 ( .A1(n339), .A2(n761), .B(n338), .ZN(n340) );
  OAI21D0 U793 ( .A1(n337), .A2(n1328), .B(n336), .ZN(n338) );
  ND2D0 U794 ( .A1(\x_reg[1][8] ), .A2(n342), .ZN(n336) );
  ND2D0 U795 ( .A1(n339), .A2(n760), .ZN(n341) );
  XNR2D0 U796 ( .A1(n160), .A2(n159), .ZN(n161) );
  ND2D0 U797 ( .A1(n158), .A2(n289), .ZN(n159) );
  INVD0 U798 ( .I(n290), .ZN(n158) );
  AOI21D0 U799 ( .A1(n1262), .A2(n1246), .B(n1245), .ZN(n1247) );
  INVD0 U800 ( .I(n1244), .ZN(n1245) );
  ND2D0 U801 ( .A1(n244), .A2(n243), .ZN(n303) );
  ND2D0 U802 ( .A1(n1167), .A2(\x_reg[3][8] ), .ZN(n243) );
  ND2D0 U803 ( .A1(n240), .A2(n985), .ZN(n241) );
  INVD0 U804 ( .I(n1361), .ZN(n211) );
  AN2D0 U805 ( .A1(n209), .A2(n1338), .Z(n60) );
  AOI21D0 U806 ( .A1(n209), .A2(n1342), .B(n208), .ZN(n210) );
  AN2D0 U807 ( .A1(n233), .A2(n232), .Z(n58) );
  ND2D0 U808 ( .A1(n335), .A2(\x_reg[1][8] ), .ZN(n232) );
  NR2D0 U809 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][3] ), .ZN(
        n589) );
  ND2D0 U810 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][3] ), .ZN(
        n590) );
  ND2D0 U811 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][7] ), .ZN(
        n1104) );
  INVD0 U812 ( .I(n1104), .ZN(n1105) );
  OR2D0 U813 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][7] ), .Z(
        n1106) );
  OR2D0 U814 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][8] ), .Z(
        n1109) );
  ND2D0 U815 ( .A1(n1113), .A2(n1115), .ZN(n598) );
  INVD0 U816 ( .I(n1114), .ZN(n596) );
  ND2D0 U817 ( .A1(n36), .A2(\z_reg[5][7] ), .ZN(n673) );
  OR2D0 U818 ( .A1(n36), .A2(\z_reg[5][7] ), .Z(n674) );
  OR2D0 U819 ( .A1(n36), .A2(\z_reg[5][8] ), .Z(n496) );
  NR2D1 U820 ( .A1(n38), .A2(\z_reg[4][3] ), .ZN(n564) );
  ND2D0 U821 ( .A1(n38), .A2(\z_reg[4][3] ), .ZN(n565) );
  ND2D0 U822 ( .A1(n38), .A2(\z_reg[4][7] ), .ZN(n641) );
  INVD0 U823 ( .I(n641), .ZN(n82) );
  OR2D0 U824 ( .A1(n38), .A2(\z_reg[4][7] ), .Z(n642) );
  OR2D0 U825 ( .A1(n38), .A2(\z_reg[4][8] ), .Z(n84) );
  OAI21D0 U826 ( .A1(n630), .A2(n81), .B(n80), .ZN(n644) );
  ND2D0 U827 ( .A1(n1140), .A2(n1142), .ZN(n81) );
  INVD0 U828 ( .I(n1141), .ZN(n79) );
  XNR2D0 U829 ( .A1(n801), .A2(n800), .ZN(n802) );
  ND2D0 U830 ( .A1(n799), .A2(n798), .ZN(n800) );
  INVD0 U831 ( .I(n797), .ZN(n799) );
  OAI21D0 U832 ( .A1(n835), .A2(n805), .B(n806), .ZN(n796) );
  ND2D0 U833 ( .A1(\x_reg[4][8] ), .A2(n32), .ZN(n831) );
  INVD0 U834 ( .I(n818), .ZN(n829) );
  XNR2D0 U835 ( .A1(n825), .A2(n824), .ZN(n826) );
  ND2D0 U836 ( .A1(n845), .A2(n843), .ZN(n824) );
  INVD0 U837 ( .I(n846), .ZN(n821) );
  OAI21D0 U838 ( .A1(n835), .A2(n817), .B(n816), .ZN(n820) );
  INVD0 U839 ( .I(n833), .ZN(n816) );
  NR2D0 U840 ( .A1(n1026), .A2(\z_reg[3][3] ), .ZN(n583) );
  ND2D0 U841 ( .A1(n1026), .A2(\z_reg[3][3] ), .ZN(n584) );
  INVD0 U842 ( .I(n604), .ZN(n1174) );
  INVD0 U843 ( .I(n1172), .ZN(n1173) );
  ND2D0 U844 ( .A1(n1167), .A2(\z_reg[3][6] ), .ZN(n623) );
  NR2D0 U845 ( .A1(n67), .A2(\z_reg[2][3] ), .ZN(n573) );
  ND2D0 U846 ( .A1(n67), .A2(\z_reg[2][3] ), .ZN(n574) );
  ND2D0 U847 ( .A1(n67), .A2(\z_reg[2][4] ), .ZN(n626) );
  NR2D0 U848 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][5] ), .ZN(
        n74) );
  INVD0 U849 ( .I(n72), .ZN(n627) );
  INVD0 U850 ( .I(n626), .ZN(n68) );
  ND2D0 U851 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][5] ), .ZN(
        n73) );
  ND2D0 U852 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][6] ), .ZN(
        n657) );
  OAI21D1 U853 ( .A1(n626), .A2(n74), .B(n73), .ZN(n660) );
  NR2D0 U854 ( .A1(n74), .A2(n72), .ZN(n656) );
  OR2D0 U855 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][6] ), .Z(
        n659) );
  NR2D1 U856 ( .A1(n649), .A2(\z_reg[1][3] ), .ZN(n648) );
  ND2D0 U857 ( .A1(n649), .A2(\z_reg[1][3] ), .ZN(n646) );
  OR2D0 U858 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(n650), .Z(n1222) );
  INVD0 U859 ( .I(\z_reg[1][4] ), .ZN(n650) );
  NR2D0 U860 ( .A1(n649), .A2(\z_reg[1][5] ), .ZN(n1226) );
  INVD0 U861 ( .I(n668), .ZN(n1224) );
  INVD0 U862 ( .I(n1222), .ZN(n1223) );
  ND2D0 U863 ( .A1(n649), .A2(\z_reg[1][5] ), .ZN(n1227) );
  ND2D0 U864 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(\z_reg[1][6] ), .ZN(
        n1218) );
  NR2D0 U865 ( .A1(n668), .A2(n1226), .ZN(n1217) );
  ND2D0 U866 ( .A1(n1227), .A2(n1222), .ZN(n1216) );
  OR2D0 U867 ( .A1(\A[1].CORDIC_element_inst1/N1 ), .A2(\z_reg[1][6] ), .Z(
        n1219) );
  IOA21D0 U868 ( .A1(n754), .A2(n28), .B(n753), .ZN(\x_w[1][6] ) );
  XNR2D0 U869 ( .A1(n745), .A2(n749), .ZN(n754) );
  ND2D0 U870 ( .A1(n752), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(n753) );
  OAI21D0 U871 ( .A1(n1361), .A2(n743), .B(n742), .ZN(n745) );
  IOA21D1 U872 ( .A1(n105), .A2(\A[2].CORDIC_element_inst1/N1 ), .B(n104), 
        .ZN(\y_w[2][5] ) );
  ND2D0 U873 ( .A1(n103), .A2(n67), .ZN(n104) );
  XNR2D0 U874 ( .A1(n90), .A2(n100), .ZN(n105) );
  XNR2D0 U875 ( .A1(n102), .A2(n101), .ZN(n103) );
  IOA21D0 U876 ( .A1(n983), .A2(n1470), .B(n982), .ZN(\x_w[3][5] ) );
  XNR2D0 U877 ( .A1(n976), .A2(n31), .ZN(n983) );
  ND2D0 U878 ( .A1(n981), .A2(\A[3].CORDIC_element_inst1/N1 ), .ZN(n982) );
  OAI21D0 U879 ( .A1(n988), .A2(n975), .B(n974), .ZN(n976) );
  INVD0 U880 ( .I(n725), .ZN(n719) );
  IOA21D0 U881 ( .A1(n1473), .A2(\A[3].CORDIC_element_inst1/N1 ), .B(n1472), 
        .ZN(\y_w[3][4] ) );
  ND2D0 U882 ( .A1(n1471), .A2(n1470), .ZN(n1472) );
  IOA21D1 U883 ( .A1(n402), .A2(n36), .B(n62), .ZN(\y_w[5][8] ) );
  XNR2D0 U884 ( .A1(n370), .A2(\x_reg[5][8] ), .ZN(n402) );
  OAI21D0 U885 ( .A1(n399), .A2(n398), .B(n397), .ZN(n401) );
  MUX2D0 U886 ( .I0(n538), .I1(n537), .S(\A[0].CORDIC_element_inst1/N1 ), .Z(
        \x_w[0][3] ) );
  XNR2D0 U887 ( .A1(n536), .A2(n535), .ZN(n537) );
  OAI21D0 U888 ( .A1(n534), .A2(n542), .B(n545), .ZN(n536) );
  XNR2D0 U889 ( .A1(n731), .A2(n736), .ZN(n741) );
  OAI21D0 U890 ( .A1(n1323), .A2(n1046), .B(n1047), .ZN(n731) );
  INVD0 U891 ( .I(n901), .ZN(n899) );
  XNR2D0 U892 ( .A1(n555), .A2(\x_reg[0][0] ), .ZN(
        \A[0].CORDIC_element_inst1/N3 ) );
  MUX2D0 U893 ( .I0(n519), .I1(n518), .S(n1314), .Z(\y_w[0][2] ) );
  IOA21D0 U894 ( .A1(n917), .A2(n28), .B(n916), .ZN(\x_w[1][5] ) );
  XNR2D0 U895 ( .A1(n909), .A2(n908), .ZN(n917) );
  ND2D0 U896 ( .A1(n915), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(n916) );
  ND2D0 U897 ( .A1(n907), .A2(n906), .ZN(n908) );
  ND2D0 U898 ( .A1(n1312), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n1313) );
  XNR2D0 U899 ( .A1(n1311), .A2(n1310), .ZN(n1312) );
  OAI21D0 U900 ( .A1(n1309), .A2(n1308), .B(n1307), .ZN(n1311) );
  INVD0 U901 ( .I(n1378), .ZN(n1376) );
  MUX2D0 U902 ( .I0(n538), .I1(n532), .S(n1314), .Z(\y_w[0][3] ) );
  XNR2D0 U903 ( .A1(n531), .A2(n535), .ZN(n532) );
  MUX2D0 U904 ( .I0(n554), .I1(n553), .S(n1314), .Z(\y_w[0][4] ) );
  MUX2D0 U905 ( .I0(n554), .I1(n551), .S(\A[0].CORDIC_element_inst1/N1 ), .Z(
        \x_w[0][4] ) );
  XNR2D0 U906 ( .A1(n1327), .A2(n1332), .ZN(n1337) );
  OAI21D0 U907 ( .A1(n1323), .A2(n1322), .B(n1321), .ZN(n1327) );
  IOA21D1 U908 ( .A1(n141), .A2(\A[3].CORDIC_element_inst1/N1 ), .B(n140), 
        .ZN(\y_w[3][5] ) );
  ND2D0 U909 ( .A1(n139), .A2(n1470), .ZN(n140) );
  XNR2D0 U910 ( .A1(n131), .A2(n130), .ZN(n141) );
  XNR2D0 U911 ( .A1(n138), .A2(n137), .ZN(n139) );
  MUX2D0 U912 ( .I0(n507), .I1(n506), .S(n1314), .Z(\y_w[0][1] ) );
  XNR2D0 U913 ( .A1(n692), .A2(n691), .ZN(n693) );
  XNR2D0 U914 ( .A1(n690), .A2(n689), .ZN(n694) );
  OAI21D0 U915 ( .A1(n933), .A2(n927), .B(n928), .ZN(n692) );
  ND2D0 U916 ( .A1(n767), .A2(n28), .ZN(n768) );
  XNR2D0 U917 ( .A1(n759), .A2(n758), .ZN(n769) );
  XNR2D0 U918 ( .A1(n1331), .A2(n766), .ZN(n767) );
  IOA21D0 U919 ( .A1(n973), .A2(n1470), .B(n972), .ZN(\x_w[3][4] ) );
  ND2D0 U920 ( .A1(n971), .A2(\A[3].CORDIC_element_inst1/N1 ), .ZN(n972) );
  IOA21D0 U921 ( .A1(n996), .A2(n1470), .B(n995), .ZN(\x_w[3][6] ) );
  ND2D0 U922 ( .A1(n994), .A2(\A[3].CORDIC_element_inst1/N1 ), .ZN(n995) );
  XNR2D0 U923 ( .A1(n989), .A2(n266), .ZN(n996) );
  IOA21D0 U924 ( .A1(n1462), .A2(\A[3].CORDIC_element_inst1/N1 ), .B(n1461), 
        .ZN(\y_w[3][7] ) );
  ND2D0 U925 ( .A1(n1460), .A2(n1470), .ZN(n1461) );
  XNR2D0 U926 ( .A1(n1459), .A2(n1458), .ZN(n1460) );
  IOA21D1 U927 ( .A1(n276), .A2(n1470), .B(n275), .ZN(\x_w[3][7] ) );
  ND2D1 U928 ( .A1(n274), .A2(\A[3].CORDIC_element_inst1/N1 ), .ZN(n275) );
  OAI21D0 U929 ( .A1(n268), .A2(n988), .B(n267), .ZN(n270) );
  IOA21D0 U930 ( .A1(n1436), .A2(n67), .B(n1435), .ZN(\x_w[2][5] ) );
  XNR2D0 U931 ( .A1(n1427), .A2(n1431), .ZN(n1436) );
  ND2D0 U932 ( .A1(n1434), .A2(\A[2].CORDIC_element_inst1/N1 ), .ZN(n1435) );
  OAI21D0 U933 ( .A1(n1423), .A2(n1422), .B(n1421), .ZN(n1427) );
  IOA21D0 U934 ( .A1(n1420), .A2(n67), .B(n1419), .ZN(\x_w[2][7] ) );
  ND2D0 U935 ( .A1(n1418), .A2(\A[2].CORDIC_element_inst1/N1 ), .ZN(n1419) );
  XNR2D0 U936 ( .A1(n1412), .A2(n1401), .ZN(n1420) );
  IOA21D1 U937 ( .A1(n127), .A2(\A[3].CORDIC_element_inst1/N1 ), .B(n126), 
        .ZN(\y_w[3][6] ) );
  ND2D0 U938 ( .A1(n125), .A2(n1470), .ZN(n126) );
  XNR2D0 U939 ( .A1(n113), .A2(n112), .ZN(n127) );
  XNR2D0 U940 ( .A1(n124), .A2(n123), .ZN(n125) );
  IOA21D0 U941 ( .A1(n815), .A2(n38), .B(n814), .ZN(\y_w[4][4] ) );
  ND2D0 U942 ( .A1(n813), .A2(n39), .ZN(n814) );
  ND2D0 U943 ( .A1(n807), .A2(n806), .ZN(n808) );
  IOA21D0 U944 ( .A1(n1297), .A2(n1314), .B(n1296), .ZN(\x_w[0][7] ) );
  ND2D0 U945 ( .A1(n1295), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n1296) );
  XNR2D0 U946 ( .A1(n1294), .A2(n1293), .ZN(n1295) );
  IOA21D0 U947 ( .A1(n1483), .A2(n39), .B(n1482), .ZN(\x_w[4][6] ) );
  XNR2D0 U948 ( .A1(n1476), .A2(n34), .ZN(n1483) );
  ND2D0 U949 ( .A1(n1481), .A2(n38), .ZN(n1482) );
  INVD0 U950 ( .I(n862), .ZN(n860) );
  INVD0 U951 ( .I(n869), .ZN(n871) );
  MUX2D0 U952 ( .I0(n519), .I1(n515), .S(\A[0].CORDIC_element_inst1/N1 ), .Z(
        \x_w[0][2] ) );
  INVD0 U953 ( .I(n680), .ZN(n679) );
  IOA21D0 U954 ( .A1(n1354), .A2(n28), .B(n1353), .ZN(\x_w[1][7] ) );
  XNR2D0 U955 ( .A1(n1348), .A2(n1349), .ZN(n1354) );
  OAI21D0 U956 ( .A1(n1361), .A2(n1344), .B(n1343), .ZN(n1348) );
  INVD0 U957 ( .I(n776), .ZN(n774) );
  XNR2D0 U958 ( .A1(n678), .A2(\x_reg[2][0] ), .ZN(n1498) );
  XNR2D0 U959 ( .A1(n878), .A2(n877), .ZN(n882) );
  XNR2D0 U960 ( .A1(n946), .A2(n945), .ZN(n947) );
  XNR2D0 U961 ( .A1(n941), .A2(n940), .ZN(n948) );
  OAI21D0 U962 ( .A1(n964), .A2(n944), .B(n943), .ZN(n946) );
  XNR2D0 U963 ( .A1(n893), .A2(n892), .ZN(n894) );
  XNR2D0 U964 ( .A1(n890), .A2(n889), .ZN(n895) );
  OAI21D0 U965 ( .A1(n902), .A2(n896), .B(n897), .ZN(n893) );
  XNR2D0 U966 ( .A1(n556), .A2(\y_reg[2][0] ), .ZN(n1499) );
  XNR2D0 U967 ( .A1(n30), .A2(\x_reg[1][0] ), .ZN(n1497) );
  INVD0 U968 ( .I(n955), .ZN(n953) );
  INVD0 U969 ( .I(n924), .ZN(n922) );
  INVD0 U970 ( .I(n932), .ZN(n930) );
  XNR2D0 U971 ( .A1(n1050), .A2(n1049), .ZN(n1053) );
  INVD0 U972 ( .I(n1051), .ZN(n1049) );
  XNR2D0 U973 ( .A1(n1066), .A2(n1065), .ZN(n1067) );
  XNR2D0 U974 ( .A1(n1061), .A2(n1060), .ZN(n1068) );
  OAI21D0 U975 ( .A1(n1064), .A2(n1063), .B(n1062), .ZN(n1066) );
  XNR2D0 U976 ( .A1(n1079), .A2(n1078), .ZN(n1080) );
  OAI21D0 U977 ( .A1(n1370), .A2(n1364), .B(n1365), .ZN(n1079) );
  XNR2D0 U978 ( .A1(n1368), .A2(n1367), .ZN(n1372) );
  INVD0 U979 ( .I(n1369), .ZN(n1367) );
  IOA21D0 U980 ( .A1(n1306), .A2(n1314), .B(n1305), .ZN(\x_w[0][6] ) );
  ND2D0 U981 ( .A1(n1304), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n1305) );
  XNR2D0 U982 ( .A1(n1303), .A2(n1302), .ZN(n1304) );
  XNR2D0 U983 ( .A1(n709), .A2(n708), .ZN(n710) );
  INVD0 U984 ( .I(n708), .ZN(n703) );
  IOA21D0 U985 ( .A1(n1286), .A2(n1314), .B(n1285), .ZN(\x_w[0][8] ) );
  ND2D0 U986 ( .A1(n1284), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n1285) );
  XNR2D0 U987 ( .A1(n1283), .A2(n1282), .ZN(n1284) );
  ND2D0 U988 ( .A1(n1133), .A2(n1132), .ZN(n1134) );
  INVD0 U989 ( .I(n1131), .ZN(n1133) );
  ND2D0 U990 ( .A1(n1128), .A2(n1127), .ZN(n1129) );
  INVD0 U991 ( .I(n1126), .ZN(n1128) );
  XNR2D0 U992 ( .A1(n571), .A2(n570), .ZN(\z_w[6][3] ) );
  ND2D0 U993 ( .A1(n569), .A2(n590), .ZN(n570) );
  OAI21D0 U994 ( .A1(n1130), .A2(n1126), .B(n1127), .ZN(n571) );
  INVD0 U995 ( .I(n589), .ZN(n569) );
  XNR2D0 U996 ( .A1(n1120), .A2(n594), .ZN(\z_w[6][4] ) );
  ND2D0 U997 ( .A1(n1119), .A2(n1118), .ZN(n594) );
  ND2D0 U998 ( .A1(n1123), .A2(n1122), .ZN(n1124) );
  INVD0 U999 ( .I(n1121), .ZN(n1123) );
  ND2D0 U1000 ( .A1(n1115), .A2(n1114), .ZN(n1116) );
  AOI21D0 U1001 ( .A1(n1120), .A2(n1113), .B(n1112), .ZN(n1117) );
  XNR2D0 U1002 ( .A1(n1107), .A2(n600), .ZN(\z_w[6][7] ) );
  ND2D0 U1003 ( .A1(n1106), .A2(n1104), .ZN(n600) );
  ND2D0 U1004 ( .A1(n1137), .A2(n1136), .ZN(n1138) );
  INVD0 U1005 ( .I(n1135), .ZN(n1137) );
  ND2D0 U1006 ( .A1(n602), .A2(n633), .ZN(n603) );
  INVD0 U1007 ( .I(n634), .ZN(n602) );
  XNR2D0 U1008 ( .A1(n640), .A2(n639), .ZN(\z_w[5][3] ) );
  ND2D0 U1009 ( .A1(n638), .A2(n637), .ZN(n639) );
  OAI21D0 U1010 ( .A1(n635), .A2(n634), .B(n633), .ZN(n640) );
  XNR2D0 U1011 ( .A1(n672), .A2(n671), .ZN(\z_w[5][4] ) );
  ND2D0 U1012 ( .A1(n670), .A2(n457), .ZN(n671) );
  XNR2D0 U1013 ( .A1(n454), .A2(n54), .ZN(\z_w[5][5] ) );
  AN2D0 U1014 ( .A1(n453), .A2(n458), .Z(n54) );
  INVD0 U1015 ( .I(n455), .ZN(n453) );
  XNR2D0 U1016 ( .A1(n459), .A2(n64), .ZN(\z_w[5][6] ) );
  AN2D0 U1017 ( .A1(n486), .A2(n488), .Z(n64) );
  XNR2D0 U1018 ( .A1(n676), .A2(n675), .ZN(\z_w[5][7] ) );
  ND2D0 U1019 ( .A1(n674), .A2(n673), .ZN(n675) );
  ND2D0 U1020 ( .A1(n1161), .A2(n1160), .ZN(n1162) );
  INVD0 U1021 ( .I(n1159), .ZN(n1161) );
  ND2D0 U1022 ( .A1(n1156), .A2(n1155), .ZN(n1157) );
  INVD0 U1023 ( .I(n1154), .ZN(n1156) );
  XNR2D0 U1024 ( .A1(n568), .A2(n567), .ZN(\z_w[4][3] ) );
  ND2D0 U1025 ( .A1(n566), .A2(n565), .ZN(n567) );
  OAI21D0 U1026 ( .A1(n1158), .A2(n1154), .B(n1155), .ZN(n568) );
  INVD0 U1027 ( .I(n564), .ZN(n566) );
  XNR2D0 U1028 ( .A1(n1148), .A2(n632), .ZN(\z_w[4][4] ) );
  ND2D0 U1029 ( .A1(n1147), .A2(n1145), .ZN(n632) );
  ND2D0 U1030 ( .A1(n1151), .A2(n1150), .ZN(n1152) );
  AOI21D0 U1031 ( .A1(n1148), .A2(n1147), .B(n1146), .ZN(n1153) );
  INVD0 U1032 ( .I(n1149), .ZN(n1151) );
  ND2D0 U1033 ( .A1(n1142), .A2(n1141), .ZN(n1143) );
  AOI21D0 U1034 ( .A1(n1148), .A2(n1140), .B(n1139), .ZN(n1144) );
  XNR2D0 U1035 ( .A1(n643), .A2(n644), .ZN(\z_w[4][7] ) );
  ND2D0 U1036 ( .A1(n642), .A2(n641), .ZN(n643) );
  ND2D0 U1037 ( .A1(n84), .A2(n83), .ZN(n85) );
  AOI21D0 U1038 ( .A1(n644), .A2(n642), .B(n82), .ZN(n86) );
  ND2D0 U1039 ( .A1(n38), .A2(\z_reg[4][8] ), .ZN(n83) );
  XNR2D0 U1040 ( .A1(n1484), .A2(\y_reg[4][0] ), .ZN(n1502) );
  IOA21D0 U1041 ( .A1(n1496), .A2(n39), .B(n1495), .ZN(\x_w[4][5] ) );
  XNR2D0 U1042 ( .A1(n1486), .A2(n470), .ZN(n1496) );
  ND2D0 U1043 ( .A1(n1494), .A2(n38), .ZN(n1495) );
  ND2D0 U1044 ( .A1(n1188), .A2(n1187), .ZN(n1189) );
  INVD0 U1045 ( .I(n1186), .ZN(n1188) );
  ND2D0 U1046 ( .A1(n1183), .A2(n1182), .ZN(n1184) );
  INVD0 U1047 ( .I(n1181), .ZN(n1183) );
  XNR2D0 U1048 ( .A1(n580), .A2(n579), .ZN(\z_w[3][3] ) );
  ND2D0 U1049 ( .A1(n578), .A2(n584), .ZN(n579) );
  OAI21D0 U1050 ( .A1(n1185), .A2(n1181), .B(n1182), .ZN(n580) );
  INVD0 U1051 ( .I(n583), .ZN(n578) );
  XNR2D0 U1052 ( .A1(n588), .A2(n1175), .ZN(\z_w[3][4] ) );
  ND2D0 U1053 ( .A1(n1174), .A2(n1172), .ZN(n588) );
  XNR2D0 U1054 ( .A1(n609), .A2(n1166), .ZN(\z_w[3][7] ) );
  ND2D0 U1055 ( .A1(n1169), .A2(n1168), .ZN(n1170) );
  ND2D0 U1056 ( .A1(n1167), .A2(\z_reg[3][8] ), .ZN(n1168) );
  XNR2D0 U1057 ( .A1(n557), .A2(\y_reg[3][0] ), .ZN(n1501) );
  XNR2D0 U1058 ( .A1(n558), .A2(\x_reg[3][0] ), .ZN(n1500) );
  INVD0 U1059 ( .I(n1017), .ZN(n1015) );
  XNR2D0 U1060 ( .A1(n1022), .A2(n1023), .ZN(n1028) );
  INVD0 U1061 ( .I(n1023), .ZN(n1024) );
  XNR2D0 U1062 ( .A1(n1008), .A2(n1007), .ZN(n1009) );
  OAI21D0 U1063 ( .A1(n1025), .A2(n1006), .B(n1005), .ZN(n1008) );
  ND2D0 U1064 ( .A1(n1200), .A2(n1199), .ZN(n1201) );
  INVD0 U1065 ( .I(n1198), .ZN(n1200) );
  XNR2D0 U1066 ( .A1(n577), .A2(n576), .ZN(\z_w[2][3] ) );
  ND2D0 U1067 ( .A1(n575), .A2(n574), .ZN(n576) );
  OAI21D0 U1068 ( .A1(n1202), .A2(n1198), .B(n1199), .ZN(n577) );
  INVD0 U1069 ( .I(n573), .ZN(n575) );
  XNR2D0 U1070 ( .A1(n629), .A2(n628), .ZN(\z_w[2][4] ) );
  ND2D0 U1071 ( .A1(n627), .A2(n626), .ZN(n628) );
  XNR2D0 U1072 ( .A1(n664), .A2(n1193), .ZN(\z_w[2][7] ) );
  ND2D0 U1073 ( .A1(n1192), .A2(n1190), .ZN(n664) );
  ND2D0 U1074 ( .A1(n1195), .A2(n1194), .ZN(n1196) );
  AOI21D1 U1075 ( .A1(n1193), .A2(n1192), .B(n1191), .ZN(n1197) );
  ND2D0 U1076 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\z_reg[2][8] ), .ZN(
        n1194) );
  INVD0 U1077 ( .I(n1231), .ZN(n1233) );
  ND2D0 U1078 ( .A1(n581), .A2(n647), .ZN(n582) );
  INVD0 U1079 ( .I(n645), .ZN(n581) );
  XNR2D0 U1080 ( .A1(n620), .A2(n619), .ZN(\z_w[1][3] ) );
  ND2D0 U1081 ( .A1(n618), .A2(n646), .ZN(n619) );
  OAI21D0 U1082 ( .A1(n617), .A2(n645), .B(n647), .ZN(n620) );
  INVD0 U1083 ( .I(n648), .ZN(n618) );
  XNR2D0 U1084 ( .A1(n1225), .A2(n669), .ZN(\z_w[1][4] ) );
  ND2D0 U1085 ( .A1(n1224), .A2(n1222), .ZN(n669) );
  XNR2D0 U1086 ( .A1(n1210), .A2(n655), .ZN(\z_w[1][7] ) );
  ND2D0 U1087 ( .A1(n1209), .A2(n1207), .ZN(n655) );
  ND2D0 U1088 ( .A1(n1213), .A2(n1212), .ZN(n1214) );
  AOI21D1 U1089 ( .A1(n1210), .A2(n1209), .B(n1208), .ZN(n1215) );
  ND2D0 U1090 ( .A1(n1211), .A2(\z_reg[1][8] ), .ZN(n1212) );
  XNR2D0 U1091 ( .A1(n559), .A2(\x_reg[1][0] ), .ZN(\C1/DATA1_0 ) );
  INVD0 U1092 ( .I(n1388), .ZN(n1386) );
  ND2D0 U1093 ( .A1(n1102), .A2(n1101), .ZN(n1103) );
  INVD0 U1094 ( .I(n1100), .ZN(n1102) );
  ND2D0 U1095 ( .A1(n1097), .A2(n1096), .ZN(n1098) );
  INVD0 U1096 ( .I(n1095), .ZN(n1097) );
  XNR2D0 U1097 ( .A1(n562), .A2(n561), .ZN(\z_w[0][5] ) );
  ND2D0 U1098 ( .A1(n560), .A2(n610), .ZN(n561) );
  OAI21D0 U1099 ( .A1(n1099), .A2(n1095), .B(n1096), .ZN(n562) );
  INVD0 U1100 ( .I(n611), .ZN(n560) );
  ND2D0 U1101 ( .A1(n1092), .A2(n1091), .ZN(n1093) );
  INVD0 U1102 ( .I(n1090), .ZN(n1092) );
  XNR2D0 U1103 ( .A1(n616), .A2(n1085), .ZN(\z_w[0][7] ) );
  ND2D0 U1104 ( .A1(n1084), .A2(n1082), .ZN(n616) );
  ND2D0 U1105 ( .A1(n1087), .A2(n1086), .ZN(n1088) );
  ND2D0 U1106 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][8] ), .ZN(
        n1086) );
  INVD0 U1107 ( .I(n1487), .ZN(n1488) );
  NR2D0 U1108 ( .A1(n1167), .A2(\z_reg[3][5] ), .ZN(n1176) );
  ND2D1 U1109 ( .A1(n1021), .A2(n250), .ZN(n254) );
  CKND3 U1110 ( .I(\A[2].CORDIC_element_inst1/N1 ), .ZN(n67) );
  INVD0 U1111 ( .I(\y_reg[1][6] ), .ZN(n225) );
  INVD2 U1112 ( .I(\A[3].CORDIC_element_inst1/N1 ), .ZN(n1026) );
  INVD1 U1113 ( .I(\y_reg[4][7] ), .ZN(n483) );
  INVD1 U1114 ( .I(\y_reg[2][5] ), .ZN(n712) );
  OR2D0 U1115 ( .A1(n700), .A2(\x_reg[2][2] ), .Z(n40) );
  OR2D0 U1116 ( .A1(n269), .A2(\x_reg[3][6] ), .Z(n41) );
  OR2XD1 U1117 ( .A1(n225), .A2(\x_reg[1][5] ), .Z(n43) );
  INVD0 U1118 ( .I(\x_reg[1][7] ), .ZN(n335) );
  OR2XD1 U1119 ( .A1(n712), .A2(\x_reg[2][3] ), .Z(n44) );
  OR2D0 U1120 ( .A1(n33), .A2(\x_reg[4][2] ), .Z(n45) );
  ND2D0 U1121 ( .A1(n251), .A2(\x_reg[3][3] ), .ZN(n252) );
  CKAN2D1 U1122 ( .A1(n41), .A2(n272), .Z(n48) );
  NR2D0 U1123 ( .A1(n470), .A2(\x_reg[4][4] ), .ZN(n1489) );
  CKAN2D1 U1124 ( .A1(n246), .A2(\x_reg[3][1] ), .Z(n49) );
  OR2D0 U1125 ( .A1(n246), .A2(\x_reg[3][1] ), .Z(n50) );
  OR2D0 U1126 ( .A1(n1167), .A2(\z_reg[3][6] ), .Z(n51) );
  CKXOR2D1 U1127 ( .A1(n484), .A2(\y_reg[4][7] ), .Z(n53) );
  CKXOR2D1 U1128 ( .A1(n312), .A2(\y_reg[3][7] ), .Z(n56) );
  INVD1 U1129 ( .I(\x_reg[3][7] ), .ZN(n269) );
  CKXOR2D1 U1130 ( .A1(n343), .A2(\y_reg[1][7] ), .Z(n57) );
  CKXOR2D1 U1131 ( .A1(n296), .A2(\y_reg[2][7] ), .Z(n59) );
  INVD1 U1132 ( .I(\x_reg[4][7] ), .ZN(n472) );
  CKXOR2D1 U1133 ( .A1(n401), .A2(\y_reg[5][4] ), .Z(n62) );
  INVD0 U1134 ( .I(\x_reg[5][5] ), .ZN(n372) );
  INVD0 U1135 ( .I(\x_reg[5][6] ), .ZN(n373) );
  ND2D0 U1136 ( .A1(n373), .A2(\y_reg[5][1] ), .ZN(n374) );
  ND2D0 U1137 ( .A1(n1401), .A2(\y_reg[2][5] ), .ZN(n151) );
  ND2D0 U1138 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][7] ), .ZN(n364) );
  NR2D0 U1139 ( .A1(n331), .A2(\y_reg[1][4] ), .ZN(n732) );
  INVD0 U1140 ( .I(\y_reg[0][3] ), .ZN(n543) );
  ND2D0 U1141 ( .A1(n269), .A2(\x_reg[3][6] ), .ZN(n272) );
  NR2D0 U1142 ( .A1(n288), .A2(n290), .ZN(n293) );
  NR2D0 U1143 ( .A1(\x_reg[3][8] ), .A2(\y_reg[3][7] ), .ZN(n1444) );
  OR2D0 U1144 ( .A1(n269), .A2(\x_reg[3][8] ), .Z(n262) );
  ND2D0 U1145 ( .A1(n390), .A2(n389), .ZN(n398) );
  ND2D0 U1146 ( .A1(n782), .A2(n786), .ZN(n1396) );
  NR2D0 U1147 ( .A1(n818), .A2(n837), .ZN(n460) );
  INVD0 U1148 ( .I(n134), .ZN(n136) );
  INVD0 U1149 ( .I(n1455), .ZN(n1457) );
  ND2D0 U1150 ( .A1(n311), .A2(\x_reg[3][4] ), .ZN(n977) );
  NR2D0 U1151 ( .A1(\x_reg[2][7] ), .A2(\y_reg[2][5] ), .ZN(n143) );
  ND2D0 U1152 ( .A1(n1298), .A2(n1290), .ZN(n1292) );
  NR2D0 U1153 ( .A1(n34), .A2(\x_reg[4][5] ), .ZN(n436) );
  INVD0 U1154 ( .I(n850), .ZN(n852) );
  NR2D1 U1155 ( .A1(\x_reg[4][7] ), .A2(\y_reg[4][3] ), .ZN(n1057) );
  NR2D0 U1156 ( .A1(\x_reg[0][7] ), .A2(\y_reg[0][7] ), .ZN(n1239) );
  OR2D0 U1157 ( .A1(n1167), .A2(\x_reg[3][8] ), .Z(n244) );
  NR2D0 U1158 ( .A1(n539), .A2(n184), .ZN(n1253) );
  INVD0 U1159 ( .I(n1489), .ZN(n1491) );
  INVD0 U1160 ( .I(n1422), .ZN(n718) );
  NR2D0 U1161 ( .A1(\x_reg[0][2] ), .A2(\y_reg[0][2] ), .ZN(n521) );
  ND2D0 U1162 ( .A1(n136), .A2(n135), .ZN(n137) );
  ND2D0 U1163 ( .A1(\y_reg[2][3] ), .A2(\x_reg[2][5] ), .ZN(n687) );
  NR2D0 U1164 ( .A1(\x_reg[0][4] ), .A2(\y_reg[0][4] ), .ZN(n539) );
  ND2D0 U1165 ( .A1(n325), .A2(\y_reg[1][2] ), .ZN(n884) );
  INVD0 U1166 ( .I(n1029), .ZN(n1032) );
  ND2D0 U1167 ( .A1(\x_reg[2][8] ), .A2(\y_reg[2][7] ), .ZN(n279) );
  NR2D0 U1168 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][1] ), .ZN(
        n1131) );
  NR2D0 U1169 ( .A1(n36), .A2(\z_reg[5][4] ), .ZN(n456) );
  ND2D0 U1170 ( .A1(n1465), .A2(n1464), .ZN(n1467) );
  INVD0 U1171 ( .I(n883), .ZN(n900) );
  ND2D0 U1172 ( .A1(n500), .A2(n499), .ZN(n502) );
  INVD0 U1173 ( .I(n962), .ZN(n963) );
  INVD0 U1174 ( .I(n879), .ZN(n877) );
  ND2D0 U1175 ( .A1(\x_reg[3][3] ), .A2(\y_reg[3][0] ), .ZN(n954) );
  INVD0 U1176 ( .I(n1360), .ZN(n1358) );
  ND2D0 U1177 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][1] ), .ZN(
        n1132) );
  INVD0 U1178 ( .I(n636), .ZN(n638) );
  INVD0 U1179 ( .I(n673), .ZN(n494) );
  ND2D0 U1180 ( .A1(n38), .A2(\z_reg[4][6] ), .ZN(n1141) );
  ND2D0 U1181 ( .A1(n1167), .A2(\z_reg[3][5] ), .ZN(n1177) );
  OR2D0 U1182 ( .A1(n1167), .A2(\z_reg[3][7] ), .Z(n1165) );
  INVD0 U1183 ( .I(n1203), .ZN(n1205) );
  ND2D0 U1184 ( .A1(n615), .A2(\z_reg[0][5] ), .ZN(n610) );
  ND2D0 U1185 ( .A1(n1352), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(n1353) );
  ND2D0 U1186 ( .A1(n1043), .A2(n67), .ZN(n1044) );
  ND2D0 U1187 ( .A1(n1165), .A2(n1163), .ZN(n609) );
  ND2D0 U1188 ( .A1(n1205), .A2(n1204), .ZN(n1206) );
  ND2D0 U1189 ( .A1(n1233), .A2(n1232), .ZN(n1234) );
  MUX2D0 U1190 ( .I0(n507), .I1(n503), .S(\A[0].CORDIC_element_inst1/N1 ), .Z(
        \x_w[0][1] ) );
  IND2D1 U1191 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .B1(\z_reg[2][2] ), .ZN(
        n1199) );
  AOI21D1 U1192 ( .A1(n629), .A2(n627), .B(n68), .ZN(n71) );
  XOR2D0 U1193 ( .A1(n71), .A2(n70), .Z(\z_w[2][5] ) );
  AOI21D1 U1194 ( .A1(n629), .A2(n656), .B(n660), .ZN(n76) );
  XOR2D0 U1195 ( .A1(n76), .A2(n75), .Z(\z_w[2][6] ) );
  ND2D1 U1196 ( .A1(n39), .A2(\z_reg[4][1] ), .ZN(n1160) );
  OAI21D1 U1197 ( .A1(n1159), .A2(\z_w[4][0] ), .B(n1160), .ZN(n563) );
  NR2D1 U1198 ( .A1(n39), .A2(\z_reg[4][2] ), .ZN(n1154) );
  ND2D1 U1199 ( .A1(n39), .A2(\z_reg[4][2] ), .ZN(n1155) );
  OAI21D1 U1200 ( .A1(n1155), .A2(n564), .B(n565), .ZN(n77) );
  AOI21D1 U1201 ( .A1(n563), .A2(n78), .B(n77), .ZN(n630) );
  NR2D1 U1202 ( .A1(n631), .A2(n1149), .ZN(n1140) );
  CKND2D1 U1203 ( .A1(n1150), .A2(n1145), .ZN(n1139) );
  NR2D0 U1204 ( .A1(n1139), .A2(n79), .ZN(n80) );
  NR2D1 U1205 ( .A1(\y_reg[2][2] ), .A2(\x_reg[2][4] ), .ZN(n927) );
  OR2D0 U1206 ( .A1(n927), .A2(n686), .Z(n88) );
  ND2D1 U1207 ( .A1(\x_reg[2][3] ), .A2(\y_reg[2][1] ), .ZN(n771) );
  OA21D1 U1208 ( .A1(n770), .A2(n775), .B(n771), .Z(n933) );
  OA21D1 U1209 ( .A1(n686), .A2(n928), .B(n687), .Z(n87) );
  OA21D2 U1210 ( .A1(n88), .A2(n933), .B(n87), .Z(n1379) );
  INVD1 U1211 ( .I(\x_reg[2][5] ), .ZN(n95) );
  OAI21D1 U1212 ( .A1(n97), .A2(n684), .B(n96), .ZN(n98) );
  AOI21D2 U1213 ( .A1(n99), .A2(n37), .B(n98), .ZN(n1377) );
  NR2D1 U1214 ( .A1(\x_reg[3][6] ), .A2(\y_reg[3][3] ), .ZN(n937) );
  NR2XD0 U1215 ( .A1(n937), .A2(n944), .ZN(n107) );
  NR2D1 U1216 ( .A1(\x_reg[3][4] ), .A2(\y_reg[3][1] ), .ZN(n949) );
  OAI21D1 U1217 ( .A1(n949), .A2(n954), .B(n950), .ZN(n942) );
  OAI21D1 U1218 ( .A1(n937), .A2(n943), .B(n938), .ZN(n106) );
  CKND1 U1219 ( .I(n129), .ZN(n109) );
  NR2D1 U1220 ( .A1(n109), .A2(n1463), .ZN(n1437) );
  INVD0 U1221 ( .I(n1437), .ZN(n111) );
  NR2D1 U1222 ( .A1(n31), .A2(\y_reg[3][2] ), .ZN(n958) );
  INVD1 U1223 ( .I(\x_reg[3][6] ), .ZN(n266) );
  NR2XD0 U1224 ( .A1(n266), .A2(\y_reg[3][3] ), .ZN(n118) );
  NR2D1 U1225 ( .A1(n958), .A2(n118), .ZN(n120) );
  INVD1 U1226 ( .I(\x_reg[3][3] ), .ZN(n557) );
  NR2D1 U1227 ( .A1(n557), .A2(\y_reg[3][0] ), .ZN(n952) );
  OAI21D1 U1228 ( .A1(n116), .A2(n952), .B(n115), .ZN(n936) );
  ND2D1 U1229 ( .A1(n31), .A2(\y_reg[3][2] ), .ZN(n959) );
  OAI21D1 U1230 ( .A1(n118), .A2(n959), .B(n117), .ZN(n119) );
  AOI21D2 U1231 ( .A1(n120), .A2(n936), .B(n119), .ZN(n1469) );
  NR2D1 U1232 ( .A1(\x_reg[3][8] ), .A2(n249), .ZN(n134) );
  INVD0 U1233 ( .I(n1448), .ZN(n122) );
  OAI21D1 U1234 ( .A1(n134), .A2(n132), .B(n135), .ZN(n1452) );
  INVD2 U1235 ( .I(n1026), .ZN(n1167) );
  ND2D0 U1236 ( .A1(n1029), .A2(n1034), .ZN(n146) );
  INVD0 U1237 ( .I(n1033), .ZN(n144) );
  AOI21D1 U1238 ( .A1(n1030), .A2(n1034), .B(n144), .ZN(n145) );
  OAI21D1 U1239 ( .A1(n1379), .A2(n146), .B(n145), .ZN(n149) );
  INVD0 U1240 ( .I(n277), .ZN(n147) );
  XNR2D1 U1241 ( .A1(n149), .A2(n148), .ZN(n163) );
  NR2D1 U1242 ( .A1(n150), .A2(n153), .ZN(n1036) );
  OAI21D1 U1243 ( .A1(n1377), .A2(n157), .B(n156), .ZN(n160) );
  ND2D1 U1244 ( .A1(n161), .A2(n67), .ZN(n162) );
  OAI21D1 U1245 ( .A1(n523), .A2(n520), .B(n524), .ZN(n164) );
  AOI21D2 U1246 ( .A1(n165), .A2(n508), .B(n164), .ZN(n1257) );
  OAI21D1 U1247 ( .A1(n1257), .A2(n539), .B(n540), .ZN(n167) );
  XNR2D1 U1248 ( .A1(n167), .A2(n179), .ZN(n1315) );
  NR2D1 U1249 ( .A1(n173), .A2(\y_reg[0][3] ), .ZN(n175) );
  NR2D1 U1250 ( .A1(n528), .A2(n175), .ZN(n177) );
  OAI21D1 U1251 ( .A1(n171), .A2(n504), .B(n170), .ZN(n516) );
  OAI21D1 U1252 ( .A1(n175), .A2(n527), .B(n174), .ZN(n176) );
  AOI21D2 U1253 ( .A1(n177), .A2(n516), .B(n176), .ZN(n1265) );
  OAI21D1 U1254 ( .A1(n1265), .A2(n190), .B(n193), .ZN(n180) );
  XNR2D1 U1255 ( .A1(n180), .A2(n1310), .ZN(n181) );
  ND2D0 U1256 ( .A1(n1253), .A2(n186), .ZN(n188) );
  AOI21D1 U1257 ( .A1(n186), .A2(n1254), .B(n185), .ZN(n187) );
  OAI21D1 U1258 ( .A1(n1257), .A2(n188), .B(n187), .ZN(n189) );
  CKXOR2D1 U1259 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\x_reg[0][8] ), 
        .Z(n1282) );
  CKXOR2D1 U1260 ( .A1(n189), .A2(n1282), .Z(n1286) );
  ND2D0 U1261 ( .A1(n1261), .A2(n200), .ZN(n202) );
  OAI21D1 U1262 ( .A1(n1265), .A2(n202), .B(n201), .ZN(n203) );
  NR2D1 U1263 ( .A1(\x_reg[1][2] ), .A2(\y_reg[1][3] ), .ZN(n1364) );
  NR2D2 U1264 ( .A1(\x_reg[1][3] ), .A2(\y_reg[1][4] ), .ZN(n1072) );
  NR2D1 U1265 ( .A1(n1364), .A2(n1072), .ZN(n207) );
  NR2D1 U1266 ( .A1(n29), .A2(\y_reg[1][2] ), .ZN(n1382) );
  ND2D1 U1267 ( .A1(\y_reg[1][1] ), .A2(\x_reg[1][0] ), .ZN(n1387) );
  OAI21D1 U1268 ( .A1(n1382), .A2(n1387), .B(n1383), .ZN(n1077) );
  ND2D1 U1269 ( .A1(\x_reg[1][2] ), .A2(\y_reg[1][3] ), .ZN(n1365) );
  OAI21D1 U1270 ( .A1(n1072), .A2(n1365), .B(n1073), .ZN(n206) );
  AOI21D2 U1271 ( .A1(n207), .A2(n1077), .B(n206), .ZN(n1361) );
  NR2D0 U1272 ( .A1(n1345), .A2(n1339), .ZN(n208) );
  IOA21D1 U1273 ( .A1(n211), .A2(n60), .B(n210), .ZN(n213) );
  CKBD1 U1274 ( .I(\A[1].CORDIC_element_inst1/N1 ), .Z(n1211) );
  ND2D1 U1275 ( .A1(n1211), .A2(\x_reg[1][8] ), .ZN(n212) );
  ND2D1 U1276 ( .A1(n26), .A2(n212), .ZN(n320) );
  XNR2D1 U1277 ( .A1(n213), .A2(n320), .ZN(n237) );
  OR2D1 U1278 ( .A1(n214), .A2(n29), .Z(n217) );
  NR2D2 U1279 ( .A1(n559), .A2(\x_reg[1][0] ), .ZN(n1385) );
  CKND1 U1280 ( .I(n1385), .ZN(n216) );
  AOI21D2 U1281 ( .A1(n217), .A2(n216), .B(n215), .ZN(n1069) );
  OR2D0 U1282 ( .A1(n218), .A2(\x_reg[1][2] ), .Z(n1071) );
  INVD1 U1283 ( .I(\y_reg[1][4] ), .ZN(n220) );
  INVD1 U1284 ( .I(n219), .ZN(n1070) );
  NR2D1 U1285 ( .A1(n748), .A2(n229), .ZN(n231) );
  ND2D1 U1286 ( .A1(n224), .A2(\x_reg[1][4] ), .ZN(n910) );
  INVD0 U1287 ( .I(n910), .ZN(n227) );
  ND2D1 U1288 ( .A1(n225), .A2(\x_reg[1][5] ), .ZN(n912) );
  INVD1 U1289 ( .I(n912), .ZN(n226) );
  CKND2D1 U1290 ( .A1(\x_reg[1][7] ), .A2(n1350), .ZN(n234) );
  OR2D0 U1291 ( .A1(n335), .A2(\x_reg[1][8] ), .Z(n233) );
  CKXOR2D1 U1292 ( .A1(n234), .A2(n58), .Z(n235) );
  ND2D1 U1293 ( .A1(n235), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(n236) );
  IOA21D2 U1294 ( .A1(n237), .A2(n28), .B(n236), .ZN(\x_w[1][8] ) );
  ND2D0 U1295 ( .A1(n240), .A2(n984), .ZN(n242) );
  NR2D1 U1296 ( .A1(\y_reg[3][6] ), .A2(\x_reg[3][3] ), .ZN(n999) );
  NR2D1 U1297 ( .A1(n999), .A2(n1006), .ZN(n239) );
  OAI21D1 U1298 ( .A1(n999), .A2(n1005), .B(n1000), .ZN(n238) );
  AOI21D2 U1299 ( .A1(n239), .A2(n1004), .B(n238), .ZN(n988) );
  NR2D0 U1300 ( .A1(n31), .A2(n974), .ZN(n985) );
  OAI21D1 U1301 ( .A1(n242), .A2(n988), .B(n241), .ZN(n245) );
  INVD0 U1302 ( .I(n978), .ZN(n256) );
  INVD1 U1303 ( .I(\y_reg[3][3] ), .ZN(n558) );
  NR2D2 U1304 ( .A1(n558), .A2(\x_reg[3][0] ), .ZN(n1014) );
  AOI21D2 U1305 ( .A1(n50), .A2(n247), .B(n49), .ZN(n997) );
  OR2XD1 U1306 ( .A1(n249), .A2(\x_reg[3][2] ), .Z(n1021) );
  NR2D1 U1307 ( .A1(n251), .A2(\x_reg[3][3] ), .ZN(n248) );
  INVD1 U1308 ( .I(n248), .ZN(n250) );
  ND2D1 U1309 ( .A1(n249), .A2(\x_reg[3][2] ), .ZN(n1020) );
  INVD1 U1310 ( .I(n1020), .ZN(n998) );
  ND2D1 U1311 ( .A1(n998), .A2(n250), .ZN(n253) );
  OAI211D2 U1312 ( .A1(n997), .A2(n254), .B(n253), .C(n252), .ZN(n968) );
  AOI21D2 U1313 ( .A1(n256), .A2(n968), .B(n255), .ZN(n993) );
  INVD0 U1314 ( .I(n990), .ZN(n258) );
  ND2D1 U1315 ( .A1(n269), .A2(\x_reg[3][8] ), .ZN(n261) );
  ND2D0 U1316 ( .A1(n984), .A2(\x_reg[3][6] ), .ZN(n268) );
  CKXOR2D1 U1317 ( .A1(n270), .A2(\x_reg[3][7] ), .Z(n276) );
  OAI21D2 U1318 ( .A1(n993), .A2(n271), .B(n990), .ZN(n273) );
  NR2XD0 U1319 ( .A1(n278), .A2(n277), .ZN(n281) );
  ND2D0 U1320 ( .A1(n281), .A2(n1029), .ZN(n283) );
  AOI21D1 U1321 ( .A1(n281), .A2(n1030), .B(n280), .ZN(n282) );
  OAI21D1 U1322 ( .A1(n283), .A2(n1379), .B(n282), .ZN(n287) );
  AOI21D1 U1323 ( .A1(n293), .A2(n1037), .B(n292), .ZN(n294) );
  OAI21D1 U1324 ( .A1(n295), .A2(n1377), .B(n294), .ZN(n296) );
  OAI21D1 U1325 ( .A1(n918), .A2(n923), .B(n919), .ZN(n891) );
  AOI21D2 U1326 ( .A1(n315), .A2(n891), .B(n314), .ZN(n1323) );
  NR2D1 U1327 ( .A1(\y_reg[1][5] ), .A2(\x_reg[1][6] ), .ZN(n728) );
  NR2XD0 U1328 ( .A1(n1324), .A2(n757), .ZN(n317) );
  ND2D0 U1329 ( .A1(n1316), .A2(n317), .ZN(n319) );
  AOI21D1 U1330 ( .A1(n317), .A2(n1320), .B(n316), .ZN(n318) );
  OAI21D1 U1331 ( .A1(n1323), .A2(n319), .B(n318), .ZN(n321) );
  XNR2D1 U1332 ( .A1(n321), .A2(n320), .ZN(n344) );
  INVD1 U1333 ( .I(\x_reg[1][3] ), .ZN(n325) );
  NR2D1 U1334 ( .A1(n326), .A2(\y_reg[1][3] ), .ZN(n328) );
  NR2D1 U1335 ( .A1(n885), .A2(n328), .ZN(n330) );
  OAI21D1 U1336 ( .A1(n328), .A2(n884), .B(n327), .ZN(n329) );
  AOI21D2 U1337 ( .A1(n330), .A2(n883), .B(n329), .ZN(n764) );
  OAI21D1 U1338 ( .A1(n341), .A2(n764), .B(n340), .ZN(n343) );
  NR2D0 U1339 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][3] ), .ZN(n351) );
  NR2D0 U1340 ( .A1(\x_reg[5][7] ), .A2(\y_reg[5][2] ), .ZN(n345) );
  NR2D0 U1341 ( .A1(n351), .A2(n345), .ZN(n354) );
  NR2D0 U1342 ( .A1(\x_reg[5][6] ), .A2(\y_reg[5][1] ), .ZN(n348) );
  ND2D0 U1343 ( .A1(\x_reg[5][5] ), .A2(\y_reg[5][0] ), .ZN(n347) );
  ND2D0 U1344 ( .A1(\x_reg[5][6] ), .A2(\y_reg[5][1] ), .ZN(n346) );
  OAI21D0 U1345 ( .A1(n348), .A2(n347), .B(n346), .ZN(n353) );
  ND2D0 U1346 ( .A1(\x_reg[5][7] ), .A2(\y_reg[5][2] ), .ZN(n350) );
  ND2D0 U1347 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][3] ), .ZN(n349) );
  OAI21D0 U1348 ( .A1(n351), .A2(n350), .B(n349), .ZN(n352) );
  NR2D0 U1349 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][4] ), .ZN(n356) );
  NR2D0 U1350 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][5] ), .ZN(n355) );
  NR2D0 U1351 ( .A1(n356), .A2(n355), .ZN(n360) );
  NR2D0 U1352 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][6] ), .ZN(n358) );
  NR2D0 U1353 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][7] ), .ZN(n357) );
  NR2D0 U1354 ( .A1(n358), .A2(n357), .ZN(n359) );
  ND2D0 U1355 ( .A1(n360), .A2(n359), .ZN(n368) );
  ND2D0 U1356 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][5] ), .ZN(n362) );
  ND2D0 U1357 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][4] ), .ZN(n361) );
  ND2D0 U1358 ( .A1(n362), .A2(n361), .ZN(n366) );
  ND2D0 U1359 ( .A1(\x_reg[5][8] ), .A2(\y_reg[5][6] ), .ZN(n363) );
  ND2D0 U1360 ( .A1(n364), .A2(n363), .ZN(n365) );
  NR2D0 U1361 ( .A1(n366), .A2(n365), .ZN(n367) );
  INVD0 U1362 ( .I(\y_reg[5][3] ), .ZN(n378) );
  NR2D0 U1363 ( .A1(\x_reg[5][8] ), .A2(n378), .ZN(n381) );
  INVD0 U1364 ( .I(\x_reg[5][7] ), .ZN(n377) );
  NR2D0 U1365 ( .A1(n377), .A2(\y_reg[5][2] ), .ZN(n371) );
  NR2D0 U1366 ( .A1(n381), .A2(n371), .ZN(n384) );
  NR2D0 U1367 ( .A1(n373), .A2(\y_reg[5][1] ), .ZN(n376) );
  NR2D0 U1368 ( .A1(n372), .A2(\y_reg[5][0] ), .ZN(n375) );
  OAI21D0 U1369 ( .A1(n376), .A2(n375), .B(n374), .ZN(n383) );
  ND2D0 U1370 ( .A1(n377), .A2(\y_reg[5][2] ), .ZN(n380) );
  ND2D0 U1371 ( .A1(\x_reg[5][8] ), .A2(n378), .ZN(n379) );
  NR2D0 U1372 ( .A1(n400), .A2(\y_reg[5][3] ), .ZN(n386) );
  NR2D0 U1373 ( .A1(n400), .A2(\y_reg[5][5] ), .ZN(n385) );
  NR2D0 U1374 ( .A1(n386), .A2(n385), .ZN(n390) );
  NR2D0 U1375 ( .A1(n400), .A2(\y_reg[5][6] ), .ZN(n388) );
  NR2D0 U1376 ( .A1(n400), .A2(\y_reg[5][7] ), .ZN(n387) );
  NR2D0 U1377 ( .A1(n388), .A2(n387), .ZN(n389) );
  NR2D0 U1378 ( .A1(n396), .A2(n395), .ZN(n397) );
  ND2D0 U1379 ( .A1(n1474), .A2(\x_reg[4][6] ), .ZN(n413) );
  NR2D0 U1380 ( .A1(n32), .A2(\x_reg[4][2] ), .ZN(n403) );
  NR2D0 U1381 ( .A1(\y_reg[4][5] ), .A2(\x_reg[4][1] ), .ZN(n406) );
  ND2D0 U1382 ( .A1(\y_reg[4][4] ), .A2(\x_reg[4][0] ), .ZN(n405) );
  ND2D0 U1383 ( .A1(\y_reg[4][5] ), .A2(\x_reg[4][1] ), .ZN(n404) );
  ND2D0 U1384 ( .A1(n32), .A2(\x_reg[4][2] ), .ZN(n408) );
  NR2D0 U1385 ( .A1(n413), .A2(n1485), .ZN(n414) );
  XNR2D1 U1386 ( .A1(n414), .A2(n472), .ZN(n430) );
  INVD1 U1387 ( .I(\x_reg[4][5] ), .ZN(n470) );
  OR2D0 U1388 ( .A1(n478), .A2(\x_reg[4][1] ), .Z(n417) );
  OR2D0 U1389 ( .A1(n477), .A2(\x_reg[4][0] ), .Z(n416) );
  AOI21D1 U1390 ( .A1(n417), .A2(n416), .B(n415), .ZN(n424) );
  NR2D1 U1391 ( .A1(n483), .A2(\x_reg[4][3] ), .ZN(n421) );
  INVD0 U1392 ( .I(n421), .ZN(n418) );
  ND2D0 U1393 ( .A1(n33), .A2(\x_reg[4][2] ), .ZN(n420) );
  OA21D1 U1394 ( .A1(n421), .A2(n420), .B(n419), .Z(n422) );
  OAI21D1 U1395 ( .A1(n424), .A2(n423), .B(n422), .ZN(n1487) );
  AOI21D2 U1396 ( .A1(n1491), .A2(n1487), .B(n425), .ZN(n1480) );
  OAI21D1 U1397 ( .A1(n1480), .A2(n436), .B(n1477), .ZN(n427) );
  XNR2D1 U1398 ( .A1(n427), .A2(n426), .ZN(n428) );
  NR2D0 U1399 ( .A1(n471), .A2(n472), .ZN(n431) );
  ND2D0 U1400 ( .A1(n1474), .A2(n431), .ZN(n432) );
  NR2D0 U1401 ( .A1(n432), .A2(n1485), .ZN(n435) );
  INVD0 U1402 ( .I(n1477), .ZN(n439) );
  OAI21D1 U1403 ( .A1(n1480), .A2(n442), .B(n441), .ZN(n446) );
  XNR2D1 U1404 ( .A1(n446), .A2(n445), .ZN(n447) );
  AOI21D1 U1405 ( .A1(n672), .A2(n670), .B(n452), .ZN(n454) );
  NR2D1 U1406 ( .A1(n456), .A2(n455), .ZN(n487) );
  AOI21D1 U1407 ( .A1(n672), .A2(n487), .B(n490), .ZN(n459) );
  ND2D0 U1408 ( .A1(n830), .A2(n460), .ZN(n467) );
  NR2D1 U1409 ( .A1(\x_reg[4][6] ), .A2(\y_reg[4][2] ), .ZN(n1063) );
  NR2XD0 U1410 ( .A1(n1063), .A2(n1057), .ZN(n464) );
  OAI21D1 U1411 ( .A1(n1057), .A2(n1062), .B(n1058), .ZN(n463) );
  AOI21D2 U1412 ( .A1(n464), .A2(n861), .B(n463), .ZN(n835) );
  CKND2D1 U1413 ( .A1(n793), .A2(n806), .ZN(n833) );
  ND2D0 U1414 ( .A1(n838), .A2(n831), .ZN(n465) );
  NR2D0 U1415 ( .A1(n833), .A2(n465), .ZN(n466) );
  ND2D0 U1416 ( .A1(n842), .A2(n480), .ZN(n482) );
  NR2D1 U1417 ( .A1(n470), .A2(\y_reg[4][1] ), .ZN(n865) );
  NR2D1 U1418 ( .A1(n1484), .A2(\y_reg[4][0] ), .ZN(n868) );
  OAI21D1 U1419 ( .A1(n865), .A2(n868), .B(n866), .ZN(n858) );
  OAI21D1 U1420 ( .A1(n474), .A2(n1054), .B(n473), .ZN(n475) );
  AOI21D2 U1421 ( .A1(n476), .A2(n858), .B(n475), .ZN(n848) );
  ND2D1 U1422 ( .A1(\x_reg[4][8] ), .A2(n477), .ZN(n810) );
  AOI21D1 U1423 ( .A1(n846), .A2(n480), .B(n479), .ZN(n481) );
  OAI21D1 U1424 ( .A1(n482), .A2(n848), .B(n481), .ZN(n484) );
  ND2D1 U1425 ( .A1(n487), .A2(n486), .ZN(n493) );
  NR2D0 U1426 ( .A1(n490), .A2(n489), .ZN(n491) );
  XNR2D1 U1427 ( .A1(n497), .A2(n63), .ZN(\z_w[5][8] ) );
  CKXOR2D1 U1428 ( .A1(n505), .A2(n512), .Z(n503) );
  INVD1 U1429 ( .I(n508), .ZN(n522) );
  OAI21D1 U1430 ( .A1(n513), .A2(n512), .B(n511), .ZN(n548) );
  INVD1 U1431 ( .I(n548), .ZN(n534) );
  CKXOR2D1 U1432 ( .A1(n534), .A2(n517), .Z(n515) );
  CKXOR2D1 U1433 ( .A1(n529), .A2(n517), .Z(n518) );
  NR2D1 U1434 ( .A1(n543), .A2(\x_reg[0][3] ), .ZN(n546) );
  AOI21D2 U1435 ( .A1(n549), .A2(n548), .B(n547), .ZN(n1309) );
  CKXOR2D1 U1436 ( .A1(n1309), .A2(n552), .Z(n551) );
  INVD1 U1437 ( .I(\y_reg[2][2] ), .ZN(n678) );
  NR2D1 U1438 ( .A1(n615), .A2(\z_reg[0][5] ), .ZN(n611) );
  NR2D1 U1439 ( .A1(n649), .A2(\z_reg[1][1] ), .ZN(n1231) );
  NR2D0 U1440 ( .A1(n1112), .A2(n596), .ZN(n597) );
  NR2D1 U1441 ( .A1(n604), .A2(n1176), .ZN(n622) );
  CKND2D1 U1442 ( .A1(n1177), .A2(n1172), .ZN(n621) );
  NR2D0 U1443 ( .A1(n621), .A2(n605), .ZN(n606) );
  OAI21D1 U1444 ( .A1(n608), .A2(n607), .B(n606), .ZN(n1166) );
  AOI21D1 U1445 ( .A1(n614), .A2(n613), .B(n612), .ZN(n1094) );
  OAI21D1 U1446 ( .A1(n1094), .A2(n1090), .B(n1091), .ZN(n1085) );
  AOI21D1 U1447 ( .A1(n1175), .A2(n622), .B(n621), .ZN(n625) );
  CKXOR2D1 U1448 ( .A1(n625), .A2(n624), .Z(\z_w[3][6] ) );
  AOI21D1 U1449 ( .A1(n667), .A2(n666), .B(n665), .ZN(n654) );
  AO21D1 U1450 ( .A1(n667), .A2(n666), .B(n665), .Z(n1225) );
  CKXOR2D1 U1451 ( .A1(n680), .A2(n706), .Z(n681) );
  AO22D0 U1452 ( .A1(n682), .A2(\A[2].CORDIC_element_inst1/N1 ), .B1(n681), 
        .B2(n67), .Z(\x_w[2][1] ) );
  AO22D0 U1453 ( .A1(n694), .A2(n67), .B1(n693), .B2(
        \A[2].CORDIC_element_inst1/N1 ), .Z(\y_w[2][3] ) );
  OR2XD1 U1454 ( .A1(n696), .A2(\x_reg[2][1] ), .Z(n699) );
  CKND1 U1455 ( .I(n695), .ZN(n698) );
  AN2XD1 U1456 ( .A1(n696), .A2(\x_reg[2][1] ), .Z(n697) );
  CKND2 U1457 ( .I(\y_reg[2][4] ), .ZN(n700) );
  ND2D1 U1458 ( .A1(n700), .A2(\x_reg[2][2] ), .ZN(n701) );
  INVD1 U1459 ( .I(n701), .ZN(n714) );
  CKXOR2D1 U1460 ( .A1(n704), .A2(n703), .Z(n711) );
  OAI21D1 U1461 ( .A1(n707), .A2(n706), .B(n705), .ZN(n723) );
  AO22D0 U1462 ( .A1(n711), .A2(\A[2].CORDIC_element_inst1/N1 ), .B1(n710), 
        .B2(n67), .Z(\x_w[2][3] ) );
  ND2D1 U1463 ( .A1(n40), .A2(n44), .ZN(n716) );
  AN2XD1 U1464 ( .A1(n712), .A2(\x_reg[2][3] ), .Z(n713) );
  AOI21D1 U1465 ( .A1(n44), .A2(n714), .B(n713), .ZN(n715) );
  CKXOR2D1 U1466 ( .A1(n1430), .A2(n719), .Z(n727) );
  NR2D1 U1467 ( .A1(n874), .A2(n721), .ZN(n724) );
  OAI21D1 U1468 ( .A1(n721), .A2(n875), .B(n720), .ZN(n722) );
  AOI21D2 U1469 ( .A1(n724), .A2(n723), .B(n722), .ZN(n1423) );
  CKXOR2D1 U1470 ( .A1(n1423), .A2(n725), .Z(n726) );
  AO22D0 U1471 ( .A1(n727), .A2(\A[2].CORDIC_element_inst1/N1 ), .B1(n726), 
        .B2(n67), .Z(\x_w[2][4] ) );
  INVD1 U1472 ( .I(n764), .ZN(n1050) );
  INVD0 U1473 ( .I(n732), .ZN(n735) );
  AOI21D1 U1474 ( .A1(n1050), .A2(n735), .B(n734), .ZN(n738) );
  CKXOR2D1 U1475 ( .A1(n738), .A2(n737), .Z(n739) );
  IOA21D1 U1476 ( .A1(n741), .A2(\A[1].CORDIC_element_inst1/N1 ), .B(n740), 
        .ZN(\y_w[1][5] ) );
  INVD0 U1477 ( .I(n1338), .ZN(n743) );
  INVD0 U1478 ( .I(n1342), .ZN(n742) );
  INVD0 U1479 ( .I(n1316), .ZN(n756) );
  INVD1 U1480 ( .I(n761), .ZN(n762) );
  OAI21D2 U1481 ( .A1(n764), .A2(n763), .B(n762), .ZN(n1331) );
  IOA21D1 U1482 ( .A1(n769), .A2(\A[1].CORDIC_element_inst1/N1 ), .B(n768), 
        .ZN(\y_w[1][6] ) );
  CKXOR2D1 U1483 ( .A1(n774), .A2(n773), .Z(n778) );
  CKXOR2D1 U1484 ( .A1(n776), .A2(n775), .Z(n777) );
  AO22D0 U1485 ( .A1(n778), .A2(n67), .B1(n777), .B2(
        \A[2].CORDIC_element_inst1/N1 ), .Z(\y_w[2][1] ) );
  INVD0 U1486 ( .I(n1408), .ZN(n780) );
  OAI21D1 U1487 ( .A1(n1423), .A2(n780), .B(n779), .ZN(n781) );
  XNR2D1 U1488 ( .A1(n781), .A2(n787), .ZN(n791) );
  INVD0 U1489 ( .I(n1429), .ZN(n782) );
  INVD1 U1490 ( .I(\y_reg[2][7] ), .ZN(n784) );
  CKND1 U1491 ( .I(n1428), .ZN(n785) );
  OAI21D1 U1492 ( .A1(n1430), .A2(n1396), .B(n1397), .ZN(n788) );
  XNR2D1 U1493 ( .A1(n788), .A2(n787), .ZN(n789) );
  ND2D1 U1494 ( .A1(n789), .A2(\A[2].CORDIC_element_inst1/N1 ), .ZN(n790) );
  IOA21D1 U1495 ( .A1(n791), .A2(n67), .B(n790), .ZN(\x_w[2][6] ) );
  INVD0 U1496 ( .I(n792), .ZN(n794) );
  XNR2D1 U1497 ( .A1(n796), .A2(n795), .ZN(n804) );
  OAI21D1 U1498 ( .A1(n848), .A2(n809), .B(n810), .ZN(n801) );
  IOA21D1 U1499 ( .A1(n804), .A2(n38), .B(n803), .ZN(\y_w[4][5] ) );
  INVD0 U1500 ( .I(n805), .ZN(n807) );
  CKXOR2D1 U1501 ( .A1(n848), .A2(n812), .Z(n813) );
  INVD0 U1502 ( .I(n830), .ZN(n817) );
  XNR2D1 U1503 ( .A1(n820), .A2(n819), .ZN(n828) );
  INVD0 U1504 ( .I(n842), .ZN(n822) );
  OAI21D1 U1505 ( .A1(n848), .A2(n822), .B(n821), .ZN(n825) );
  ND2D1 U1506 ( .A1(n826), .A2(n39), .ZN(n827) );
  IOA21D1 U1507 ( .A1(n828), .A2(n38), .B(n827), .ZN(\y_w[4][6] ) );
  INVD0 U1508 ( .I(n831), .ZN(n832) );
  NR2D0 U1509 ( .A1(n833), .A2(n832), .ZN(n834) );
  INVD0 U1510 ( .I(n837), .ZN(n839) );
  XNR2D1 U1511 ( .A1(n841), .A2(n840), .ZN(n857) );
  OAI21D1 U1512 ( .A1(n849), .A2(n848), .B(n847), .ZN(n854) );
  ND2D1 U1513 ( .A1(n855), .A2(n39), .ZN(n856) );
  IOA21D1 U1514 ( .A1(n857), .A2(n38), .B(n856), .ZN(\y_w[4][7] ) );
  INVD1 U1515 ( .I(n858), .ZN(n1056) );
  CKXOR2D1 U1516 ( .A1(n1064), .A2(n862), .Z(n863) );
  AO22D0 U1517 ( .A1(n864), .A2(n39), .B1(n863), .B2(n38), .Z(\y_w[4][2] ) );
  CKXOR2D1 U1518 ( .A1(n871), .A2(n870), .Z(n872) );
  AO22D0 U1519 ( .A1(n873), .A2(n39), .B1(n872), .B2(n38), .Z(\y_w[4][1] ) );
  CKXOR2D1 U1520 ( .A1(n880), .A2(n879), .Z(n881) );
  AO22D0 U1521 ( .A1(n882), .A2(\A[2].CORDIC_element_inst1/N1 ), .B1(n881), 
        .B2(n67), .Z(\x_w[2][2] ) );
  INVD1 U1522 ( .I(n891), .ZN(n902) );
  AO22D0 U1523 ( .A1(n895), .A2(n28), .B1(n894), .B2(n1211), .Z(\y_w[1][3] )
         );
  CKXOR2D1 U1524 ( .A1(n900), .A2(n899), .Z(n904) );
  CKXOR2D1 U1525 ( .A1(n902), .A2(n901), .Z(n903) );
  AO22D0 U1526 ( .A1(n904), .A2(n28), .B1(n903), .B2(n1211), .Z(\y_w[1][2] )
         );
  INVD0 U1527 ( .I(n905), .ZN(n907) );
  CKXOR2D1 U1528 ( .A1(n924), .A2(n923), .Z(n925) );
  AO22D0 U1529 ( .A1(n926), .A2(n28), .B1(n925), .B2(n1211), .Z(\y_w[1][1] )
         );
  CKXOR2D1 U1530 ( .A1(n931), .A2(n930), .Z(n935) );
  CKXOR2D1 U1531 ( .A1(n933), .A2(n932), .Z(n934) );
  AO22D0 U1532 ( .A1(n935), .A2(n67), .B1(n934), .B2(
        \A[2].CORDIC_element_inst1/N1 ), .Z(\y_w[2][2] ) );
  AO22D0 U1533 ( .A1(n948), .A2(n1470), .B1(n947), .B2(
        \A[3].CORDIC_element_inst1/N1 ), .Z(\y_w[3][3] ) );
  CKXOR2D1 U1534 ( .A1(n953), .A2(n952), .Z(n957) );
  CKXOR2D1 U1535 ( .A1(n955), .A2(n954), .Z(n956) );
  AO22D0 U1536 ( .A1(n957), .A2(n1470), .B1(n956), .B2(
        \A[3].CORDIC_element_inst1/N1 ), .Z(\y_w[3][1] ) );
  CKXOR2D1 U1537 ( .A1(n961), .A2(n962), .Z(n966) );
  CKXOR2D1 U1538 ( .A1(n964), .A2(n963), .Z(n965) );
  AO22D0 U1539 ( .A1(n966), .A2(n1470), .B1(n965), .B2(
        \A[3].CORDIC_element_inst1/N1 ), .Z(\y_w[3][2] ) );
  CKXOR2D1 U1540 ( .A1(n988), .A2(n969), .Z(n973) );
  INVD1 U1541 ( .I(n968), .ZN(n979) );
  CKXOR2D1 U1542 ( .A1(n979), .A2(n970), .Z(n971) );
  INVD0 U1543 ( .I(n984), .ZN(n987) );
  CKXOR2D1 U1544 ( .A1(n993), .A2(n992), .Z(n994) );
  CKXOR2D1 U1545 ( .A1(n1003), .A2(n1002), .Z(n1010) );
  AO22D0 U1546 ( .A1(n1010), .A2(\A[3].CORDIC_element_inst1/N1 ), .B1(n1009), 
        .B2(n1470), .Z(\x_w[3][3] ) );
  CKXOR2D1 U1547 ( .A1(n1015), .A2(n1014), .Z(n1019) );
  CKXOR2D1 U1548 ( .A1(n1017), .A2(n1016), .Z(n1018) );
  AO22D0 U1549 ( .A1(n1019), .A2(\A[3].CORDIC_element_inst1/N1 ), .B1(n1018), 
        .B2(n1470), .Z(\x_w[3][1] ) );
  CKXOR2D1 U1550 ( .A1(n1025), .A2(n1024), .Z(n1027) );
  AO22D0 U1551 ( .A1(n1028), .A2(\A[3].CORDIC_element_inst1/N1 ), .B1(n1027), 
        .B2(n1026), .Z(\x_w[3][2] ) );
  OAI21D1 U1552 ( .A1(n1379), .A2(n1032), .B(n1031), .ZN(n1035) );
  XNR2D1 U1553 ( .A1(n1035), .A2(n1040), .ZN(n1045) );
  INVD0 U1554 ( .I(n1036), .ZN(n1039) );
  OAI21D1 U1555 ( .A1(n1377), .A2(n1039), .B(n1038), .ZN(n1042) );
  XNR2D1 U1556 ( .A1(n1042), .A2(n1041), .ZN(n1043) );
  IOA21D1 U1557 ( .A1(n1045), .A2(\A[2].CORDIC_element_inst1/N1 ), .B(n1044), 
        .ZN(\y_w[2][6] ) );
  CKXOR2D1 U1558 ( .A1(n1323), .A2(n1051), .Z(n1052) );
  AO22D0 U1559 ( .A1(n1053), .A2(n28), .B1(n1052), .B2(
        \A[1].CORDIC_element_inst1/N1 ), .Z(\y_w[1][4] ) );
  OAI21D1 U1560 ( .A1(n1056), .A2(n1055), .B(n1054), .ZN(n1061) );
  CKXOR2D1 U1561 ( .A1(n1076), .A2(n1075), .Z(n1081) );
  AO22D0 U1562 ( .A1(n1081), .A2(\A[1].CORDIC_element_inst1/N1 ), .B1(n1080), 
        .B2(n28), .Z(\x_w[1][3] ) );
  AOI21D1 U1563 ( .A1(n1085), .A2(n1084), .B(n1083), .ZN(n1089) );
  CKXOR2D1 U1564 ( .A1(n1089), .A2(n1088), .Z(\z_w[0][8] ) );
  AOI21D1 U1565 ( .A1(n1107), .A2(n1106), .B(n1105), .ZN(n1111) );
  ND2D1 U1566 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(\z_reg[6][8] ), .ZN(
        n1108) );
  CKXOR2D1 U1567 ( .A1(n1116), .A2(n1117), .Z(\z_w[6][6] ) );
  CKXOR2D1 U1568 ( .A1(n1144), .A2(n1143), .Z(\z_w[4][6] ) );
  CKXOR2D1 U1569 ( .A1(n1153), .A2(n1152), .Z(\z_w[4][5] ) );
  AOI21D1 U1570 ( .A1(n1166), .A2(n1165), .B(n1164), .ZN(n1171) );
  CKXOR2D1 U1571 ( .A1(n1171), .A2(n1170), .Z(\z_w[3][8] ) );
  AOI21D1 U1572 ( .A1(n1175), .A2(n1174), .B(n1173), .ZN(n1180) );
  CKXOR2D1 U1573 ( .A1(n1180), .A2(n1179), .Z(\z_w[3][5] ) );
  CKXOR2D1 U1574 ( .A1(n1197), .A2(n1196), .Z(\z_w[2][8] ) );
  CKXOR2D1 U1575 ( .A1(n1215), .A2(n1214), .Z(\z_w[1][8] ) );
  AOI21D1 U1576 ( .A1(n1225), .A2(n1217), .B(n1216), .ZN(n1221) );
  CKXOR2D1 U1577 ( .A1(n1221), .A2(n1220), .Z(\z_w[1][6] ) );
  AOI21D1 U1578 ( .A1(n1225), .A2(n1224), .B(n1223), .ZN(n1230) );
  INVD1 U1579 ( .I(n1226), .ZN(n1228) );
  ND2D1 U1580 ( .A1(n1228), .A2(n1227), .ZN(n1229) );
  CKXOR2D1 U1581 ( .A1(n1230), .A2(n1229), .Z(\z_w[1][5] ) );
  ND2D0 U1582 ( .A1(n1253), .A2(n1259), .ZN(n1238) );
  OAI21D1 U1583 ( .A1(n1257), .A2(n1238), .B(n1237), .ZN(n1242) );
  XNR2D1 U1584 ( .A1(n1242), .A2(n1249), .ZN(n1297) );
  ND2D0 U1585 ( .A1(n1261), .A2(n1246), .ZN(n1248) );
  OAI21D1 U1586 ( .A1(n1265), .A2(n1248), .B(n1247), .ZN(n1250) );
  XNR2D1 U1587 ( .A1(n1250), .A2(n1293), .ZN(n1251) );
  IOA21D1 U1588 ( .A1(n1297), .A2(\A[0].CORDIC_element_inst1/N1 ), .B(n1252), 
        .ZN(\y_w[0][7] ) );
  INVD0 U1589 ( .I(n1253), .ZN(n1256) );
  OAI21D1 U1590 ( .A1(n1257), .A2(n1256), .B(n1255), .ZN(n1260) );
  INVD0 U1591 ( .I(n1261), .ZN(n1264) );
  OAI21D1 U1592 ( .A1(n1265), .A2(n1264), .B(n1263), .ZN(n1267) );
  XNR2D1 U1593 ( .A1(n1267), .A2(n1302), .ZN(n1268) );
  IOA21D1 U1594 ( .A1(n1306), .A2(\A[0].CORDIC_element_inst1/N1 ), .B(n1269), 
        .ZN(\y_w[0][6] ) );
  ND2D0 U1595 ( .A1(n1298), .A2(n1279), .ZN(n1281) );
  OAI21D1 U1596 ( .A1(n1309), .A2(n1281), .B(n1280), .ZN(n1283) );
  OAI21D1 U1597 ( .A1(n1309), .A2(n1292), .B(n1291), .ZN(n1294) );
  INVD0 U1598 ( .I(n1298), .ZN(n1301) );
  OAI21D1 U1599 ( .A1(n1309), .A2(n1301), .B(n1300), .ZN(n1303) );
  ND2D0 U1600 ( .A1(n1316), .A2(n1319), .ZN(n1322) );
  INVD0 U1601 ( .I(n1317), .ZN(n1318) );
  AOI21D1 U1602 ( .A1(n1331), .A2(n1330), .B(n1329), .ZN(n1334) );
  CKXOR2D1 U1603 ( .A1(n1334), .A2(n1333), .Z(n1335) );
  IOA21D1 U1604 ( .A1(n1337), .A2(\A[1].CORDIC_element_inst1/N1 ), .B(n1336), 
        .ZN(\y_w[1][7] ) );
  ND2D0 U1605 ( .A1(n1338), .A2(n1341), .ZN(n1344) );
  INVD0 U1606 ( .I(n1339), .ZN(n1340) );
  CKXOR2D1 U1607 ( .A1(n1351), .A2(n1350), .Z(n1352) );
  CKXOR2D1 U1608 ( .A1(n1359), .A2(n1358), .Z(n1363) );
  CKXOR2D1 U1609 ( .A1(n1361), .A2(n1360), .Z(n1362) );
  AO22D0 U1610 ( .A1(n1363), .A2(\A[1].CORDIC_element_inst1/N1 ), .B1(n1362), 
        .B2(n28), .Z(\x_w[1][4] ) );
  AO22D0 U1611 ( .A1(n1372), .A2(\A[1].CORDIC_element_inst1/N1 ), .B1(n1371), 
        .B2(n28), .Z(\x_w[1][2] ) );
  CKXOR2D1 U1612 ( .A1(n1377), .A2(n1376), .Z(n1381) );
  CKXOR2D1 U1613 ( .A1(n1379), .A2(n1378), .Z(n1380) );
  AO22D0 U1614 ( .A1(n1381), .A2(n67), .B1(n1380), .B2(
        \A[2].CORDIC_element_inst1/N1 ), .Z(\y_w[2][4] ) );
  CKXOR2D1 U1615 ( .A1(n1388), .A2(n1387), .Z(n1389) );
  AO22D0 U1616 ( .A1(n1390), .A2(\A[1].CORDIC_element_inst1/N1 ), .B1(n1389), 
        .B2(n28), .Z(\x_w[1][1] ) );
  ND2D0 U1617 ( .A1(n1391), .A2(n1408), .ZN(n1393) );
  OAI21D1 U1618 ( .A1(n1393), .A2(n1423), .B(n1392), .ZN(n1395) );
  CKND2D1 U1619 ( .A1(\x_reg[2][6] ), .A2(n1397), .ZN(n1398) );
  OR2D0 U1620 ( .A1(n1401), .A2(\x_reg[2][8] ), .Z(n1403) );
  CKXOR2D1 U1621 ( .A1(n1404), .A2(n52), .Z(n1405) );
  ND2D1 U1622 ( .A1(n1405), .A2(\A[2].CORDIC_element_inst1/N1 ), .ZN(n1406) );
  IOA21D1 U1623 ( .A1(n1407), .A2(n67), .B(n1406), .ZN(\x_w[2][8] ) );
  ND2D0 U1624 ( .A1(n1408), .A2(\x_reg[2][6] ), .ZN(n1411) );
  CKXOR2D1 U1625 ( .A1(n1417), .A2(n1416), .Z(n1418) );
  ND2D0 U1626 ( .A1(n1437), .A2(n1440), .ZN(n1443) );
  AOI21D1 U1627 ( .A1(n1441), .A2(n1440), .B(n1439), .ZN(n1442) );
  OAI21D1 U1628 ( .A1(n1466), .A2(n1443), .B(n1442), .ZN(n1447) );
  INVD0 U1629 ( .I(n1444), .ZN(n1446) );
  CKXOR2D1 U1630 ( .A1(n1447), .A2(n55), .Z(n1462) );
  ND2D0 U1631 ( .A1(n1448), .A2(n1451), .ZN(n1454) );
  OAI21D1 U1632 ( .A1(n1454), .A2(n1469), .B(n1453), .ZN(n1459) );
  CKXOR2D1 U1633 ( .A1(n1466), .A2(n1467), .Z(n1473) );
  CKXOR2D1 U1634 ( .A1(n1469), .A2(n1468), .Z(n1471) );
  INVD0 U1635 ( .I(n1474), .ZN(n1475) );
  NR2D0 U1636 ( .A1(n1485), .A2(n1475), .ZN(n1476) );
  CKXOR2D1 U1637 ( .A1(n1480), .A2(n1479), .Z(n1481) );
  NR2D0 U1638 ( .A1(n1485), .A2(n1484), .ZN(n1486) );
endmodule

