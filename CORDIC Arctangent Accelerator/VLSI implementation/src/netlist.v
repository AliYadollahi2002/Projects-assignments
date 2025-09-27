/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu Feb  6 02:41:33 2025
/////////////////////////////////////////////////////////////


module CORDIC_ip ( clk, x_in, y_in, z_in, z_out );
  input [8:0] x_in;
  input [8:0] y_in;
  input [8:0] z_in;
  output [8:0] z_out;
  input clk;
  wire   \x_reg[0][8] , \x_reg[0][7] , \x_reg[0][6] , \x_reg[0][5] ,
         \x_reg[0][4] , \x_reg[0][3] , \x_reg[0][2] , \x_reg[0][1] ,
         \x_reg[0][0] , \x_reg[1][7] , \x_reg[1][5] , \x_reg[1][4] ,
         \x_reg[1][3] , \x_reg[1][2] , \x_reg[1][1] , \x_reg[1][0] ,
         \x_reg[2][6] , \x_reg[2][4] , \x_reg[2][3] , \x_reg[2][2] ,
         \x_reg[2][1] , \x_reg[2][0] , \x_reg[3][7] , \x_reg[3][6] ,
         \x_reg[3][5] , \x_reg[3][4] , \x_reg[3][3] , \x_reg[3][2] ,
         \x_reg[3][1] , \x_reg[3][0] , \x_reg[4][7] , \x_reg[4][6] ,
         \x_reg[4][5] , \x_reg[4][4] , \x_reg[4][3] , \x_reg[4][2] ,
         \x_reg[4][1] , \x_reg[4][0] , \x_reg[5][8] , \x_reg[5][7] ,
         \x_reg[5][6] , \x_reg[5][5] , \y_reg[0][7] , \y_reg[0][6] ,
         \y_reg[0][5] , \y_reg[0][4] , \y_reg[0][3] , \y_reg[0][2] ,
         \y_reg[0][1] , \y_reg[0][0] , \y_reg[1][7] , \y_reg[1][6] ,
         \y_reg[1][5] , \y_reg[1][4] , \y_reg[1][3] , \y_reg[1][2] ,
         \y_reg[1][1] , \y_reg[2][6] , \y_reg[2][5] , \y_reg[2][4] ,
         \y_reg[2][3] , \y_reg[2][2] , \y_reg[2][1] , \y_reg[2][0] ,
         \y_reg[3][6] , \y_reg[3][5] , \y_reg[3][4] , \y_reg[3][3] ,
         \y_reg[3][2] , \y_reg[3][1] , \y_reg[3][0] , \y_reg[4][7] ,
         \y_reg[4][6] , \y_reg[4][5] , \y_reg[4][4] , \y_reg[4][3] ,
         \y_reg[4][2] , \y_reg[4][1] , \y_reg[4][0] , \y_reg[5][6] ,
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
         \z_w[0][4] , \z_w[0][3] , \z_w[0][1] , \z_w[0][0] , \z_w[1][8] ,
         \z_w[2][8] , \z_w[2][7] , \z_w[2][6] , \z_w[2][5] , \z_w[2][4] ,
         \z_w[2][3] , \z_w[2][2] , \z_w[2][1] , \z_w[3][8] , \z_w[3][7] ,
         \z_w[3][6] , \z_w[3][5] , \z_w[3][4] , \z_w[3][3] , \z_w[3][2] ,
         \z_w[3][1] , \z_w[4][8] , \z_w[4][7] , \z_w[4][6] , \z_w[4][5] ,
         \z_w[4][4] , \z_w[4][3] , \z_w[4][2] , \z_w[4][1] , \z_w[5][8] ,
         \z_w[5][7] , \z_w[5][6] , \z_w[5][5] , \z_w[5][4] , \z_w[5][3] ,
         \z_w[5][2] , \z_w[5][1] , \z_w[6][8] , \z_w[6][6] , \z_w[6][5] ,
         \z_w[6][4] , \z_w[6][3] , \z_w[6][2] , \z_w[6][1] , \x_w[0][8] ,
         \x_w[0][7] , \x_w[0][6] , \x_w[0][5] , \x_w[0][4] , \x_w[0][3] ,
         \x_w[0][2] , \x_w[0][1] , \x_w[1][8] , \x_w[1][0] , \x_w[2][8] ,
         \x_w[2][0] , \x_w[3][8] , \x_w[3][6] , \x_w[3][3] , \x_w[3][0] ,
         \x_w[4][8] , \x_w[4][5] , \y_w[0][8] , \y_w[0][7] , \y_w[0][6] ,
         \y_w[0][5] , \y_w[0][4] , \y_w[0][3] , \y_w[0][2] , \y_w[0][1] ,
         \y_w[0][0] , \y_w[1][6] , \y_w[1][5] , \y_w[1][4] , \y_w[1][3] ,
         \y_w[1][2] , \y_w[1][0] , \y_w[2][4] , \y_w[2][3] , \y_w[2][2] ,
         \y_w[2][0] , \y_w[3][4] , \y_w[3][3] , \y_w[3][2] , \y_w[3][0] ,
         \y_w[4][7] , \y_w[4][5] , \y_w[4][4] , \y_w[4][3] , \y_w[4][2] ,
         \y_w[4][0] , \A[0].CORDIC_element_inst1/N1 ,
         \A[1].CORDIC_element_inst1/N1 , \A[2].CORDIC_element_inst1/N1 ,
         \A[3].CORDIC_element_inst1/N1 , \A[4].CORDIC_element_inst1/N1 ,
         \A[5].CORDIC_element_inst1/N1 , \A[6].CORDIC_element_inst1/N1 ,
         \DP_OP_22J2_125_2411/n1 , \DP_OP_42J2_143_9341/n1 ,
         \DP_OP_52J2_152_3351/n1 , n230, n232, n234, n238, n877, n1686, n1690,
         \intadd_0/SUM[5] , \intadd_10/SUM[1] , \intadd_10/SUM[0] ,
         \intadd_9/SUM[2] , \intadd_9/SUM[1] , n1708, n1714, n1715, n1716,
         n1717, n2492, n2493, n2494, n2495, n2496, n2884, \intadd_16/SUM[3] ,
         n3825, n4353, n4354, n4355, n4364, n4372, n4378, n4419, n5263, n5270,
         n5271, n5272, n5273, n5780, n5782, n5791, n5792, n5793, n5794, n5795,
         n5796, n5797, n5798, n5799, n5800, n5801, n5802, n5803, n5804, n5805,
         n5806, n5807, n5808, n5809, n5810, n5811, n5812, n5813, n5814, n5815,
         n5816, n5817, n5818, n5819, n5820, n5821, n5822, n5823, n5824, n5825,
         n5826, n5827, n5828, n5829, n5830, n5831, n5832, n5833, n5834, n5835,
         n5836, n5837, n5838, n5839, n5840, n5841, n5842, n5843, n5844, n5845,
         n5846, n5847, n5848, n5849, n5850, n5851, n5852, n5853, n5854, n5855,
         n5856, n5857, n5858, n5859, n5860, n5861, n5862, n5863, n5864, n5865,
         n5866, n5867, n5868, n5869, n5870, n5871, n5872, n5873, n5874, n5875,
         n5876, n5877, n5878, n5879, n5880, n5881, n5882, n5883, n5884, n5885,
         n5886, n5887, n5888, n5889, n5890, n5891, n5892, n5893, n5894, n5895,
         n5896, n5897, n5898, n5899, n5900, n5901, n5902, n5903, n5904, n5905,
         n5906, n5907, n5908, n5909, n5910, n5911, n5912, n5913, n5914, n5915,
         n5916, n5917, n5918, n5919, n5920, n5921, n5922, n5923, n5924, n5925,
         n5926, n5927, n5928, n5929, n5930, n5931, n5932, n5933, n5934, n5935,
         n5936, n5937, n5938, n5939, n5940, n5941, n5942, n5943, n5944, n5945,
         n5946, n5947, n5948, n5949, n5950, n5951, n5952, n5953, n5954, n5955,
         n5956, n5957, n5958, n5959, n5960, n5961, n5962, n5963, n5964, n5965,
         n5966, n5967, n5968, n5969, n5970, n5971, n5972, n5973, n5974, n5975,
         n5976, n5977, n5978, n5979, n5980, n5981, n5982, n5983, n5984, n5985,
         n5986, n5987, n5988, n5989, n5990, n5991, n5992, n5993, n5994, n5995,
         n5996, n5997, n5998, n5999, n6000, n6001, n6002, n6003, n6004, n6005,
         n6006, n6007, n6008, n6009, n6010, n6011, n6012, n6013, n6014, n6015,
         n6016, n6017, n6018, n6019, n6020, n6021, n6022, n6023, n6024, n6025,
         n6026, n6027, n6028, n6029, n6030, n6031, n6032, n6033, n6034, n6035,
         n6036, n6037, n6038, n6039, n6040, n6041, n6042, n6043, n6044, n6045,
         n6046, n6047, n6048, n6049, n6050, n6051, n6052, n6053, n6054, n6055,
         n6056, n6057, n6058, n6059, n6060, n6061, n6062, n6063, n6064, n6065,
         n6066, n6067, n6068, n6069, n6070, n6071, n6072, n6073, n6074, n6075,
         n6076, n6077, n6078, n6079, n6080, n6081, n6082, n6083, n6084, n6085,
         n6086, n6087, n6088, n6089, n6090, n6091, n6092, n6093, n6094, n6095,
         n6096, n6097, n6098, n6099, n6100, n6101, n6102, n6103, n6104, n6105,
         n6106, n6107, n6108, n6109, n6110, n6111, n6112, n6113, n6114, n6115,
         n6116, n6117, n6118, n6119, n6120, n6121, n6122, n6123, n6124, n6125,
         n6126, n6127, n6128, n6129, n6130, n6131, n6132, n6133, n6134, n6135,
         n6136, n6137, n6138, n6139, n6140, n6141, n6142, n6143, n6144, n6145,
         n6146, n6147, n6148, n6149, n6150, n6151, n6152, n6153, n6154, n6155,
         n6156, n6157, n6158, n6159, n6160, n6161, n6162, n6163, n6164, n6165,
         n6166, n6167, n6168, n6169, n6170, n6171, n6172, n6173, n6174, n6175,
         n6176, n6177, n6178, n6179, n6180, n6181, n6182, n6183, n6184, n6185,
         n6186, n6187, n6188, n6189, n6190, n6191, n6192, n6193, n6194, n6195,
         n6196, n6197, n6198, n6199, n6200, n6201, n6202, n6203, n6204, n6205,
         n6206, n6207, n6208, n6209, n6210, n6211, n6212, n6213, n6214, n6215,
         n6216, n6217, n6218, n6219, n6220, n6221, n6222, n6223, n6224, n6225,
         n6226, n6227, n6228, n6229, n6230, n6231, n6232, n6233, n6234, n6235,
         n6236, n6237, n6238, n6239, n6240, n6241, n6242, n6243, n6244, n6245,
         n6246, n6247, n6248, n6249, n6250, n6251, n6252, n6253, n6254, n6255,
         n6256, n6257, n6258, n6259, n6260, n6261, n6262, n6263, n6264, n6265,
         n6266, n6267, n6268, n6269, n6270, n6271, n6272, n6273, n6274, n6275,
         n6276, n6277, n6278, n6279, n6280, n6281, n6282, n6283, n6284, n6285,
         n6286, n6287, n6288, n6289, n6290, n6291, n6292, n6293, n6294, n6295,
         n6296, n6297, n6298, n6299, n6300, n6301, n6302, n6303, n6304, n6305,
         n6306, n6307, n6308, n6309, n6310, n6311, n6312, n6313, n6314, n6315,
         n6316, n6317, n6318, n6319, n6320, n6321, n6322, n6323, n6324, n6325,
         n6326, n6327, n6328, n6329, n6330, n6331, n6332, n6333, n6334, n6335,
         n6336, n6337, n6338, n6339, n6340, n6341, n6342, n6343, n6344, n6345,
         n6346, n6347, n6348, n6349, n6350, n6351, n6352, n6353, n6354, n6355,
         n6356, n6357, n6358, n6359, n6360, n6361, n6362, n6363, n6364, n6365,
         n6366, n6367, n6368, n6369, n6370, n6371, n6372, n6373, n6374, n6375,
         n6376, n6377, n6378, n6379, n6380, n6381, n6382, n6383, n6384, n6385,
         n6386, n6387, n6388, n6389, n6390, n6391, n6392, n6393, n6394, n6395,
         n6396, n6397, n6398, n6399, n6400, n6401, n6402, n6403, n6404, n6405,
         n6406, n6407, n6408, n6409, n6410, n6411, n6412, n6413, n6414, n6415,
         n6416, n6417, n6418, n6419, n6420, n6421, n6422, n6423, n6424, n6425,
         n6426, n6427, n6428, n6429, n6430, n6431, n6432, n6433, n6434, n6435,
         n6436, n6437, n6438, n6439, n6440, n6441, n6442, n6443, n6444, n6445,
         n6446, n6447, n6448, n6449, n6450, n6451, n6452, n6453, n6454, n6455,
         n6456, n6457, n6458, n6459, n6460, n6461, n6462, n6463, n6464, n6465,
         n6466, n6467, n6468, n6469, n6470, n6471, n6472, n6473, n6474, n6475,
         n6476, n6477, n6478, n6479, n6480, n6481, n6482, n6483, n6484, n6485,
         n6486, n6487, n6488, n6489, n6490, n6491, n6492, n6493, n6494, n6495,
         n6496, n6497, n6498, n6499, n6500, n6501, n6502, n6503, n6504, n6505,
         n6506, n6507, n6508, n6509, n6510, n6511, n6512, n6513, n6514, n6515,
         n6516, n6517, n6518, n6519, n6520, n6521, n6522, n6523, n6524, n6525,
         n6526, n6527, n6528, n6529, n6530, n6531, n6532, n6533, n6534, n6535,
         n6536, n6537, n6538, n6539, n6540, n6541, n6542, n6543, n6544, n6545,
         n6546, n6547, n6548, n6549, n6550, n6551, n6552, n6553, n6554, n6555,
         n6556, n6557, n6558, n6559, n6560, n6561, n6562, n6563, n6564, n6565,
         n6566, n6567, n6568, n6569, n6570, n6571, n6572, n6573, n6574, n6575,
         n6576, n6577, n6578, n6579, n6580, n6581, n6582, n6583, n6584, n6585,
         n6586, n6587, n6588, n6589, n6590, n6591, n6592, n6593, n6594, n6595,
         n6596, n6597, n6598, n6599, n6600, n6601, n6602, n6603, n6604, n6605,
         n6606, n6607, n6608, n6609, n6610, n6611, n6612, n6613, n6614, n6615,
         n6616, n6617, n6618, n6619, n6620, n6621, n6622, n6623, n6624, n6625,
         n6626, n6627, n6628, n6629, n6630, n6631, n6632, n6633, n6634, n6635,
         n6636, n6637, n6638, n6639, n6640, n6641, n6642, n6643, n6644, n6645,
         n6646, n6647, n6648, n6649, n6650, n6651, n6652, n6653, n6654, n6655,
         n6656, n6657, n6658, n6659, n6660, n6661, n6662, n6663, n6664, n6665,
         n6666, n6667, n6668, n6669, n6670, n6671, n6672, n6673, n6674, n6675,
         n6676, n6677, n6678, n6679, n6680, n6681, n6682, n6683, n6684, n6685,
         n6686, n6687, n6688, n6689, n6690, n6691, n6692;

  DFQD1 \x_reg_reg[0][8]  ( .D(x_in[8]), .CP(clk), .Q(\x_reg[0][8] ) );
  DFQD1 \x_reg_reg[0][7]  ( .D(x_in[7]), .CP(clk), .Q(\x_reg[0][7] ) );
  DFQD1 \x_reg_reg[0][6]  ( .D(x_in[6]), .CP(clk), .Q(\x_reg[0][6] ) );
  DFQD4 \x_reg_reg[0][4]  ( .D(x_in[4]), .CP(clk), .Q(\x_reg[0][4] ) );
  DFQD4 \x_reg_reg[0][2]  ( .D(x_in[2]), .CP(clk), .Q(\x_reg[0][2] ) );
  DFQD1 \y_reg_reg[0][7]  ( .D(y_in[7]), .CP(clk), .Q(\y_reg[0][7] ) );
  DFQD1 \y_reg_reg[0][6]  ( .D(y_in[6]), .CP(clk), .Q(\y_reg[0][6] ) );
  DFQD1 \y_reg_reg[0][4]  ( .D(y_in[4]), .CP(clk), .Q(\y_reg[0][4] ) );
  DFQD1 \z_reg_reg[0][8]  ( .D(z_in[8]), .CP(clk), .Q(\z_reg[0][8] ) );
  DFQD1 \z_reg_reg[0][7]  ( .D(z_in[7]), .CP(clk), .Q(\z_reg[0][7] ) );
  DFQD1 \z_reg_reg[0][6]  ( .D(z_in[6]), .CP(clk), .Q(\z_reg[0][6] ) );
  DFQD1 \z_reg_reg[0][5]  ( .D(z_in[5]), .CP(clk), .Q(\z_reg[0][5] ) );
  DFQD1 \z_reg_reg[0][4]  ( .D(z_in[4]), .CP(clk), .Q(\z_reg[0][4] ) );
  DFQD1 \z_reg_reg[0][3]  ( .D(z_in[3]), .CP(clk), .Q(\z_reg[0][3] ) );
  DFQD1 \z_reg_reg[0][2]  ( .D(z_in[2]), .CP(clk), .Q(\z_reg[0][2] ) );
  DFQD1 \z_reg_reg[0][1]  ( .D(z_in[1]), .CP(clk), .Q(\z_w[0][1] ) );
  DFQD1 \z_reg_reg[0][0]  ( .D(z_in[0]), .CP(clk), .Q(\z_w[0][0] ) );
  DFQD1 \x_reg_reg[1][8]  ( .D(\x_w[0][8] ), .CP(clk), .Q(
        \DP_OP_22J2_125_2411/n1 ) );
  DFQD1 \x_reg_reg[1][3]  ( .D(\x_w[0][3] ), .CP(clk), .Q(\x_reg[1][3] ) );
  DFQD1 \x_reg_reg[1][2]  ( .D(\x_w[0][2] ), .CP(clk), .Q(\x_reg[1][2] ) );
  DFQD1 \x_reg_reg[1][0]  ( .D(\y_w[0][0] ), .CP(clk), .Q(\x_reg[1][0] ) );
  DFQD1 \y_reg_reg[1][5]  ( .D(\y_w[0][5] ), .CP(clk), .Q(\y_reg[1][5] ) );
  DFQD1 \y_reg_reg[1][4]  ( .D(\y_w[0][4] ), .CP(clk), .Q(\y_reg[1][4] ) );
  DFQD1 \y_reg_reg[1][3]  ( .D(\y_w[0][3] ), .CP(clk), .Q(\y_reg[1][3] ) );
  DFQD1 \y_reg_reg[1][2]  ( .D(\y_w[0][2] ), .CP(clk), .Q(\y_reg[1][2] ) );
  DFQD1 \z_reg_reg[1][8]  ( .D(\z_w[0][8] ), .CP(clk), .Q(\z_reg[1][8] ) );
  DFQD1 \z_reg_reg[1][7]  ( .D(\z_w[0][7] ), .CP(clk), .Q(\z_reg[1][7] ) );
  DFQD1 \z_reg_reg[1][6]  ( .D(\z_w[0][6] ), .CP(clk), .Q(\z_reg[1][6] ) );
  DFQD1 \z_reg_reg[1][5]  ( .D(\z_w[0][5] ), .CP(clk), .Q(\z_reg[1][5] ) );
  DFQD1 \z_reg_reg[1][4]  ( .D(\z_w[0][4] ), .CP(clk), .Q(\z_reg[1][4] ) );
  DFQD1 \z_reg_reg[1][3]  ( .D(\z_w[0][3] ), .CP(clk), .Q(\z_reg[1][3] ) );
  DFQD1 \z_reg_reg[1][2]  ( .D(n6686), .CP(clk), .Q(\z_reg[1][2] ) );
  DFQD1 \z_reg_reg[1][1]  ( .D(\z_w[0][1] ), .CP(clk), .Q(\z_reg[1][1] ) );
  DFQD1 \x_reg_reg[2][1]  ( .D(n1690), .CP(clk), .Q(\x_reg[2][1] ) );
  DFQD1 \x_reg_reg[2][0]  ( .D(\x_w[1][0] ), .CP(clk), .Q(\x_reg[2][0] ) );
  DFQD1 \y_reg_reg[2][2]  ( .D(\y_w[1][2] ), .CP(clk), .Q(\y_reg[2][2] ) );
  DFQD1 \y_reg_reg[2][1]  ( .D(n6684), .CP(clk), .Q(\y_reg[2][1] ) );
  DFQD1 \z_reg_reg[2][7]  ( .D(n2884), .CP(clk), .Q(\z_reg[2][7] ) );
  DFQD1 \z_reg_reg[2][6]  ( .D(n1716), .CP(clk), .Q(\z_reg[2][6] ) );
  DFQD1 \z_reg_reg[2][5]  ( .D(n1714), .CP(clk), .Q(\z_reg[2][5] ) );
  DFQD1 \x_reg_reg[3][8]  ( .D(\x_w[2][8] ), .CP(clk), .Q(
        \DP_OP_42J2_143_9341/n1 ) );
  DFQD1 \x_reg_reg[3][7]  ( .D(n1708), .CP(clk), .Q(\x_reg[3][7] ) );
  DFQD1 \x_reg_reg[3][6]  ( .D(n4419), .CP(clk), .Q(\x_reg[3][6] ) );
  DFQD1 \x_reg_reg[3][1]  ( .D(n6679), .CP(clk), .Q(\x_reg[3][1] ) );
  DFQD1 \x_reg_reg[3][0]  ( .D(\x_w[2][0] ), .CP(clk), .Q(\x_reg[3][0] ) );
  DFQD1 \y_reg_reg[3][4]  ( .D(\y_w[2][4] ), .CP(clk), .Q(\y_reg[3][4] ) );
  DFQD1 \y_reg_reg[3][2]  ( .D(\y_w[2][2] ), .CP(clk), .Q(\y_reg[3][2] ) );
  DFQD1 \y_reg_reg[3][1]  ( .D(n6685), .CP(clk), .Q(\y_reg[3][1] ) );
  DFQD1 \z_reg_reg[3][8]  ( .D(\z_w[2][8] ), .CP(clk), .Q(\z_reg[3][8] ) );
  DFQD1 \z_reg_reg[3][7]  ( .D(\z_w[2][7] ), .CP(clk), .Q(\z_reg[3][7] ) );
  DFQD1 \z_reg_reg[3][6]  ( .D(\z_w[2][6] ), .CP(clk), .Q(\z_reg[3][6] ) );
  DFQD1 \z_reg_reg[3][5]  ( .D(\z_w[2][5] ), .CP(clk), .Q(\z_reg[3][5] ) );
  DFQD1 \z_reg_reg[3][4]  ( .D(\z_w[2][4] ), .CP(clk), .Q(\z_reg[3][4] ) );
  DFQD1 \z_reg_reg[3][3]  ( .D(\z_w[2][3] ), .CP(clk), .Q(\z_reg[3][3] ) );
  DFQD1 \z_reg_reg[3][2]  ( .D(\z_w[2][2] ), .CP(clk), .Q(\z_reg[3][2] ) );
  DFQD1 \x_reg_reg[4][8]  ( .D(\x_w[3][8] ), .CP(clk), .Q(
        \DP_OP_52J2_152_3351/n1 ) );
  DFQD1 \x_reg_reg[4][7]  ( .D(n2493), .CP(clk), .Q(\x_reg[4][7] ) );
  DFQD1 \x_reg_reg[4][3]  ( .D(\x_w[3][3] ), .CP(clk), .Q(\x_reg[4][3] ) );
  DFQD1 \x_reg_reg[4][2]  ( .D(\intadd_10/SUM[1] ), .CP(clk), .Q(\x_reg[4][2] ) );
  DFQD1 \x_reg_reg[4][1]  ( .D(\intadd_10/SUM[0] ), .CP(clk), .Q(\x_reg[4][1] ) );
  DFQD1 \x_reg_reg[4][0]  ( .D(\x_w[3][0] ), .CP(clk), .Q(\x_reg[4][0] ) );
  DFQD1 \y_reg_reg[4][3]  ( .D(\y_w[3][3] ), .CP(clk), .Q(\y_reg[4][3] ) );
  DFQD1 \y_reg_reg[4][2]  ( .D(\y_w[3][2] ), .CP(clk), .Q(\y_reg[4][2] ) );
  DFQD1 \y_reg_reg[4][1]  ( .D(n6683), .CP(clk), .Q(\y_reg[4][1] ) );
  DFQD1 \y_reg_reg[4][0]  ( .D(\y_w[3][0] ), .CP(clk), .Q(\y_reg[4][0] ) );
  DFQD1 \z_reg_reg[4][8]  ( .D(\z_w[3][8] ), .CP(clk), .Q(\z_reg[4][8] ) );
  DFQD1 \z_reg_reg[4][7]  ( .D(\z_w[3][7] ), .CP(clk), .Q(\z_reg[4][7] ) );
  DFQD1 \z_reg_reg[4][6]  ( .D(\z_w[3][6] ), .CP(clk), .Q(\z_reg[4][6] ) );
  DFQD1 \z_reg_reg[4][5]  ( .D(\z_w[3][5] ), .CP(clk), .Q(\z_reg[4][5] ) );
  DFQD1 \z_reg_reg[4][4]  ( .D(\z_w[3][4] ), .CP(clk), .Q(\z_reg[4][4] ) );
  DFQD1 \z_reg_reg[4][3]  ( .D(\z_w[3][3] ), .CP(clk), .Q(\z_reg[4][3] ) );
  DFQD1 \x_reg_reg[5][8]  ( .D(\x_w[4][8] ), .CP(clk), .Q(\x_reg[5][8] ) );
  DFQD1 \x_reg_reg[5][7]  ( .D(n2492), .CP(clk), .Q(\x_reg[5][7] ) );
  DFQD1 \x_reg_reg[5][5]  ( .D(\x_w[4][5] ), .CP(clk), .Q(\x_reg[5][5] ) );
  DFQD1 \y_reg_reg[5][6]  ( .D(\intadd_0/SUM[5] ), .CP(clk), .Q(\y_reg[5][6] )
         );
  DFQD1 \y_reg_reg[5][5]  ( .D(\y_w[4][5] ), .CP(clk), .Q(\y_reg[5][5] ) );
  DFQD1 \y_reg_reg[5][4]  ( .D(\y_w[4][4] ), .CP(clk), .Q(\y_reg[5][4] ) );
  DFQD1 \y_reg_reg[5][3]  ( .D(\y_w[4][3] ), .CP(clk), .Q(\y_reg[5][3] ) );
  DFQD1 \y_reg_reg[5][2]  ( .D(\y_w[4][2] ), .CP(clk), .Q(\y_reg[5][2] ) );
  DFQD1 \y_reg_reg[5][1]  ( .D(n6682), .CP(clk), .Q(\y_reg[5][1] ) );
  DFQD1 \y_reg_reg[5][0]  ( .D(\y_w[4][0] ), .CP(clk), .Q(\y_reg[5][0] ) );
  DFQD1 \z_reg_reg[5][8]  ( .D(\z_w[4][8] ), .CP(clk), .Q(\z_reg[5][8] ) );
  DFQD1 \z_reg_reg[5][7]  ( .D(\z_w[4][7] ), .CP(clk), .Q(\z_reg[5][7] ) );
  DFQD1 \z_reg_reg[5][6]  ( .D(\z_w[4][6] ), .CP(clk), .Q(\z_reg[5][6] ) );
  DFQD1 \z_reg_reg[5][5]  ( .D(\z_w[4][5] ), .CP(clk), .Q(\z_reg[5][5] ) );
  DFQD1 \z_reg_reg[5][4]  ( .D(\z_w[4][4] ), .CP(clk), .Q(\z_reg[5][4] ) );
  DFQD1 \z_reg_reg[5][3]  ( .D(\z_w[4][3] ), .CP(clk), .Q(\z_reg[5][3] ) );
  DFQD1 \z_reg_reg[5][2]  ( .D(\z_w[4][2] ), .CP(clk), .Q(\z_reg[5][2] ) );
  DFQD1 \z_reg_reg[6][8]  ( .D(\z_w[5][8] ), .CP(clk), .Q(\z_reg[6][8] ) );
  DFQD1 \z_reg_reg[6][7]  ( .D(\z_w[5][7] ), .CP(clk), .Q(\z_reg[6][7] ) );
  DFQD1 \z_reg_reg[6][6]  ( .D(\z_w[5][6] ), .CP(clk), .Q(\z_reg[6][6] ) );
  DFQD1 \z_reg_reg[6][5]  ( .D(\z_w[5][5] ), .CP(clk), .Q(\z_reg[6][5] ) );
  DFQD1 \z_reg_reg[6][4]  ( .D(\z_w[5][4] ), .CP(clk), .Q(\z_reg[6][4] ) );
  DFQD1 \z_reg_reg[6][3]  ( .D(\z_w[5][3] ), .CP(clk), .Q(\z_reg[6][3] ) );
  DFQD1 \z_reg_reg[6][1]  ( .D(\z_w[5][1] ), .CP(clk), .Q(\z_reg[6][1] ) );
  DFQD1 \z_reg_reg[6][0]  ( .D(n6688), .CP(clk), .Q(\z_reg[6][0] ) );
  DFQD1 \z_reg_reg[7][7]  ( .D(n4364), .CP(clk), .Q(\z_reg[7][7] ) );
  DFQD1 \z_reg_reg[7][6]  ( .D(\z_w[6][6] ), .CP(clk), .Q(\z_reg[7][6] ) );
  DFQD1 \z_reg_reg[7][5]  ( .D(\z_w[6][5] ), .CP(clk), .Q(\z_reg[7][5] ) );
  DFQD1 \z_reg_reg[7][4]  ( .D(\z_w[6][4] ), .CP(clk), .Q(\z_reg[7][4] ) );
  DFQD1 \z_reg_reg[7][3]  ( .D(\z_w[6][3] ), .CP(clk), .Q(\z_reg[7][3] ) );
  DFQD1 \z_reg_reg[7][2]  ( .D(\z_w[6][2] ), .CP(clk), .Q(\z_reg[7][2] ) );
  DFQD1 \z_reg_reg[7][1]  ( .D(\z_w[6][1] ), .CP(clk), .Q(\z_reg[7][1] ) );
  DFQD1 \z_reg_reg[7][0]  ( .D(n6687), .CP(clk), .Q(\z_reg[7][0] ) );
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
  DFQD4 \y_reg_reg[1][8]  ( .D(\y_w[0][8] ), .CP(clk), .Q(
        \A[1].CORDIC_element_inst1/N1 ) );
  DFQD1 \x_reg_reg[5][6]  ( .D(n6676), .CP(clk), .Q(\x_reg[5][6] ) );
  DFQD4 \y_reg_reg[0][0]  ( .D(y_in[0]), .CP(clk), .Q(\y_reg[0][0] ) );
  DFQD4 \y_reg_reg[3][8]  ( .D(n232), .CP(clk), .Q(
        \A[3].CORDIC_element_inst1/N1 ) );
  DFQD4 \y_reg_reg[4][8]  ( .D(n234), .CP(clk), .Q(
        \A[4].CORDIC_element_inst1/N1 ) );
  DFQD1 \y_reg_reg[6][8]  ( .D(n238), .CP(clk), .Q(
        \A[6].CORDIC_element_inst1/N1 ) );
  DFQD4 \y_reg_reg[0][2]  ( .D(y_in[2]), .CP(clk), .Q(\y_reg[0][2] ) );
  DFQD4 \y_reg_reg[0][1]  ( .D(y_in[1]), .CP(clk), .Q(\y_reg[0][1] ) );
  DFQD4 \x_reg_reg[0][1]  ( .D(x_in[1]), .CP(clk), .Q(\x_reg[0][1] ) );
  DFQD1 \x_reg_reg[3][2]  ( .D(n6677), .CP(clk), .Q(\x_reg[3][2] ) );
  DFQD1 \z_reg_reg[2][4]  ( .D(n2495), .CP(clk), .Q(\z_reg[2][4] ) );
  DFQD1 \x_reg_reg[3][4]  ( .D(n6678), .CP(clk), .Q(\x_reg[3][4] ) );
  DFQD1 \x_reg_reg[4][5]  ( .D(n1717), .CP(clk), .Q(\x_reg[4][5] ) );
  DFQD1 \x_reg_reg[1][7]  ( .D(\x_w[0][7] ), .CP(clk), .Q(\x_reg[1][7] ) );
  DFQD1 \y_reg_reg[2][3]  ( .D(\y_w[1][3] ), .CP(clk), .Q(\y_reg[2][3] ) );
  DFQD1 \y_reg_reg[2][0]  ( .D(\y_w[1][0] ), .CP(clk), .Q(\y_reg[2][0] ) );
  DFQD1 \y_reg_reg[1][6]  ( .D(\y_w[0][6] ), .CP(clk), .Q(\y_reg[1][6] ) );
  DFQD1 \y_reg_reg[1][7]  ( .D(\y_w[0][7] ), .CP(clk), .Q(\y_reg[1][7] ) );
  DFQD1 \z_reg_reg[4][2]  ( .D(\z_w[3][2] ), .CP(clk), .Q(\z_reg[4][2] ) );
  DFQD1 \z_reg_reg[3][1]  ( .D(\z_w[2][1] ), .CP(clk), .Q(\z_reg[3][1] ) );
  DFQD1 \y_reg_reg[3][3]  ( .D(\y_w[2][3] ), .CP(clk), .Q(\y_reg[3][3] ) );
  DFQD1 \z_reg_reg[3][0]  ( .D(n6691), .CP(clk), .Q(\z_reg[3][0] ) );
  DFQD1 \y_reg_reg[4][5]  ( .D(n5782), .CP(clk), .Q(\y_reg[4][5] ) );
  DFQD1 \y_reg_reg[2][5]  ( .D(\y_w[1][5] ), .CP(clk), .Q(\y_reg[2][5] ) );
  DFQD1 \y_reg_reg[3][7]  ( .D(n4354), .CP(clk), .Q(n5263) );
  DFQD1 \z_reg_reg[7][8]  ( .D(\z_w[6][8] ), .CP(clk), .Q(\z_reg[7][8] ) );
  DFQD1 \y_reg_reg[2][4]  ( .D(\y_w[1][4] ), .CP(clk), .Q(\y_reg[2][4] ) );
  DFQD1 \x_reg_reg[2][6]  ( .D(n5272), .CP(clk), .Q(\x_reg[2][6] ) );
  DFQD1 \x_reg_reg[2][4]  ( .D(n5270), .CP(clk), .Q(\x_reg[2][4] ) );
  DFQD1 \y_reg_reg[4][4]  ( .D(\y_w[3][4] ), .CP(clk), .Q(\y_reg[4][4] ) );
  DFQD1 \z_reg_reg[2][2]  ( .D(n2494), .CP(clk), .Q(\z_reg[2][2] ) );
  DFQD1 \z_reg_reg[2][3]  ( .D(n2496), .CP(clk), .Q(\z_reg[2][3] ) );
  DFQD2 \y_reg_reg[5][8]  ( .D(n3825), .CP(clk), .Q(
        \A[5].CORDIC_element_inst1/N1 ) );
  DFQD4 \x_reg_reg[3][3]  ( .D(n6681), .CP(clk), .Q(\x_reg[3][3] ) );
  DFQD1 \y_reg_reg[4][7]  ( .D(\intadd_9/SUM[2] ), .CP(clk), .Q(\y_reg[4][7] )
         );
  DFQD4 \z_reg_reg[5][0]  ( .D(n6689), .CP(clk), .Q(\z_reg[5][0] ) );
  DFQD1 \y_reg_reg[4][6]  ( .D(\intadd_9/SUM[1] ), .CP(clk), .Q(\y_reg[4][6] )
         );
  DFQD1 \x_reg_reg[1][5]  ( .D(\x_w[0][5] ), .CP(clk), .Q(\x_reg[1][5] ) );
  DFQD4 \y_reg_reg[1][1]  ( .D(\y_w[0][1] ), .CP(clk), .Q(\y_reg[1][1] ) );
  DFQD4 \y_reg_reg[0][8]  ( .D(y_in[8]), .CP(clk), .Q(
        \A[0].CORDIC_element_inst1/N1 ) );
  DFQD4 \y_reg_reg[3][5]  ( .D(n4353), .CP(clk), .Q(\y_reg[3][5] ) );
  DFD1 \z_reg_reg[2][8]  ( .D(\z_w[1][8] ), .CP(clk), .Q(\z_reg[2][8] ) );
  DFQD2 \x_reg_reg[2][2]  ( .D(n5780), .CP(clk), .Q(\x_reg[2][2] ) );
  DFQD4 \y_reg_reg[2][8]  ( .D(n230), .CP(clk), .Q(
        \A[2].CORDIC_element_inst1/N1 ) );
  DFQD4 \x_reg_reg[0][3]  ( .D(x_in[3]), .CP(clk), .Q(\x_reg[0][3] ) );
  DFD2 \x_reg_reg[2][8]  ( .D(\x_w[1][8] ), .CP(clk), .Q(n5817) );
  DFQD2 \x_reg_reg[4][4]  ( .D(\intadd_16/SUM[3] ), .CP(clk), .Q(\x_reg[4][4] ) );
  DFQD1 \x_reg_reg[3][5]  ( .D(n6680), .CP(clk), .Q(\x_reg[3][5] ) );
  DFD1 \y_reg_reg[2][7]  ( .D(n1686), .CP(clk), .Q(n4372), .QN(n5940) );
  DFQD1 \y_reg_reg[2][6]  ( .D(\y_w[1][6] ), .CP(clk), .Q(\y_reg[2][6] ) );
  DFQD1 \x_reg_reg[1][4]  ( .D(\x_w[0][4] ), .CP(clk), .Q(\x_reg[1][4] ) );
  DFQD4 \y_reg_reg[0][3]  ( .D(y_in[3]), .CP(clk), .Q(\y_reg[0][3] ) );
  DFQD4 \z_reg_reg[2][0]  ( .D(n6692), .CP(clk), .Q(\z_reg[2][0] ) );
  DFQD4 \x_reg_reg[1][1]  ( .D(\x_w[0][1] ), .CP(clk), .Q(\x_reg[1][1] ) );
  DFQD4 \y_reg_reg[0][5]  ( .D(y_in[5]), .CP(clk), .Q(\y_reg[0][5] ) );
  DFQD4 \z_reg_reg[2][1]  ( .D(n1715), .CP(clk), .Q(\z_reg[2][1] ) );
  DFQD2 \y_reg_reg[3][6]  ( .D(n4355), .CP(clk), .Q(\y_reg[3][6] ) );
  DFQD1 \x_reg_reg[2][3]  ( .D(n5273), .CP(clk), .Q(\x_reg[2][3] ) );
  DFD1 \x_reg_reg[1][6]  ( .D(\x_w[0][6] ), .CP(clk), .Q(n5805) );
  DFQD1 \z_reg_reg[4][1]  ( .D(\z_w[3][1] ), .CP(clk), .Q(\z_reg[4][1] ) );
  DFQD1 \z_reg_reg[5][1]  ( .D(\z_w[4][1] ), .CP(clk), .Q(\z_reg[5][1] ) );
  DFQD1 \y_reg_reg[3][0]  ( .D(\y_w[2][0] ), .CP(clk), .Q(\y_reg[3][0] ) );
  DFQD2 \x_reg_reg[0][0]  ( .D(x_in[0]), .CP(clk), .Q(\x_reg[0][0] ) );
  DFQD2 \x_reg_reg[0][5]  ( .D(x_in[5]), .CP(clk), .Q(\x_reg[0][5] ) );
  DFD1 \x_reg_reg[2][5]  ( .D(n5271), .CP(clk), .Q(n5815), .QN(n5814) );
  DFQD1 \z_reg_reg[1][0]  ( .D(\z_w[0][0] ), .CP(clk), .Q(\z_reg[1][0] ) );
  DFQD1 \x_reg_reg[4][6]  ( .D(\x_w[3][6] ), .CP(clk), .Q(\x_reg[4][6] ) );
  DFQD1 \z_reg_reg[4][0]  ( .D(n6690), .CP(clk), .Q(\z_reg[4][0] ) );
  DFCND1 \x_reg_reg[2][7]  ( .D(n877), .CP(clk), .CDN(n6674), .Q(n4378), .QN(
        n6675) );
  DFQD1 \z_reg_reg[6][2]  ( .D(\z_w[5][2] ), .CP(clk), .Q(\z_reg[6][2] ) );
  DFD1 \y_reg_reg[5][7]  ( .D(\y_w[4][7] ), .CP(clk), .Q(n5818) );
  IAO21D1 U2914 ( .A1(n6624), .A2(n5907), .B(n5906), .ZN(n5905) );
  CKND2D1 U2915 ( .A1(n5838), .A2(n5837), .ZN(n5836) );
  OAI22D1 U2916 ( .A1(n6428), .A2(n6551), .B1(n5825), .B2(n5927), .ZN(n6430)
         );
  MAOI22D1 U2917 ( .A1(n6225), .A2(n6224), .B1(n5830), .B2(n6224), .ZN(n6226)
         );
  CKND1 U2918 ( .I(n6428), .ZN(n6085) );
  NR2D1 U2919 ( .A1(n5911), .A2(n5263), .ZN(n5906) );
  NR3D0 U2920 ( .A1(n5848), .A2(n5847), .A3(n6480), .ZN(n5846) );
  ND2D1 U2921 ( .A1(n6432), .A2(n6627), .ZN(n5889) );
  OAI31D1 U2922 ( .A1(n6436), .A2(n6437), .A3(n5916), .B(n6435), .ZN(n5888) );
  ND2D1 U2923 ( .A1(n6374), .A2(n5994), .ZN(n5995) );
  INVD1 U2924 ( .I(\A[0].CORDIC_element_inst1/N1 ), .ZN(n6551) );
  CKND2D2 U2925 ( .A1(n5912), .A2(n6627), .ZN(n5911) );
  AOI21D1 U2926 ( .A1(n5952), .A2(n5953), .B(n5951), .ZN(n6379) );
  ND2D1 U2927 ( .A1(n6659), .A2(\z_reg[5][6] ), .ZN(n6473) );
  AOI31D1 U2928 ( .A1(n6213), .A2(n6177), .A3(n6212), .B(n6176), .ZN(n6218) );
  OAI21D2 U2929 ( .A1(n6042), .A2(n6449), .B(n6043), .ZN(n6050) );
  CKND3 U2930 ( .I(n6388), .ZN(n5993) );
  INVD1 U2931 ( .I(n6479), .ZN(n6464) );
  NR3D0 U2932 ( .A1(n6556), .A2(n5988), .A3(n6566), .ZN(n5989) );
  CKND2D1 U2933 ( .A1(n6656), .A2(n5892), .ZN(n6659) );
  CKND2D1 U2934 ( .A1(n5916), .A2(n5915), .ZN(n5917) );
  NR2D1 U2935 ( .A1(n5914), .A2(n5913), .ZN(n5912) );
  CKXOR2D1 U2936 ( .A1(\y_reg[4][7] ), .A2(\A[4].CORDIC_element_inst1/N1 ), 
        .Z(n6215) );
  INR2XD0 U2937 ( .A1(\z_reg[6][2] ), .B1(\A[6].CORDIC_element_inst1/N1 ), 
        .ZN(n6139) );
  INR2XD0 U2938 ( .A1(\z_reg[5][3] ), .B1(n6133), .ZN(n6656) );
  ND2D0 U2939 ( .A1(n6554), .A2(n6558), .ZN(n6566) );
  ND2D1 U2940 ( .A1(n6120), .A2(n6121), .ZN(n6125) );
  INVD1 U2941 ( .I(\z_reg[6][2] ), .ZN(n6121) );
  ND2D2 U2942 ( .A1(n6037), .A2(n6036), .ZN(n5930) );
  ND2D1 U2943 ( .A1(n6466), .A2(n5805), .ZN(n6018) );
  ND2D1 U2944 ( .A1(n6448), .A2(n6041), .ZN(n5857) );
  NR2D1 U2945 ( .A1(n5986), .A2(\x_reg[2][1] ), .ZN(n6608) );
  ND2D1 U2946 ( .A1(n5986), .A2(\x_reg[2][1] ), .ZN(n6609) );
  NR2D2 U2947 ( .A1(n6037), .A2(n6036), .ZN(n5828) );
  INVD1 U2948 ( .I(n6267), .ZN(n5971) );
  CKND1 U2949 ( .I(n6401), .ZN(n6402) );
  AOI211XD0 U2950 ( .A1(\y_reg[1][1] ), .A2(\x_reg[1][0] ), .B(n5955), .C(
        \x_reg[1][1] ), .ZN(n5956) );
  ND2D1 U2951 ( .A1(n6335), .A2(\x_reg[1][3] ), .ZN(n5830) );
  INR2D1 U2952 ( .A1(\y_reg[4][3] ), .B1(n5802), .ZN(n6647) );
  INR2D2 U2953 ( .A1(\y_reg[2][5] ), .B1(n6448), .ZN(n5922) );
  XNR2D2 U2954 ( .A1(n6035), .A2(\x_reg[2][4] ), .ZN(n6037) );
  CKXOR2D1 U2955 ( .A1(\y_reg[3][6] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n5973) );
  CKXOR2D1 U2956 ( .A1(\y_reg[3][4] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n5970) );
  CKMUX2D1 U2957 ( .I0(n6484), .I1(\x_reg[3][0] ), .S(\y_reg[3][3] ), .Z(n6267) );
  ND2D1 U2958 ( .A1(n5983), .A2(n5816), .ZN(n6572) );
  CKXOR2D1 U2959 ( .A1(\x_reg[3][5] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n6004) );
  CKXOR2D1 U2960 ( .A1(n4372), .A2(\A[2].CORDIC_element_inst1/N1 ), .Z(n5983)
         );
  CKXOR2D1 U2961 ( .A1(\y_reg[2][6] ), .A2(\A[2].CORDIC_element_inst1/N1 ), 
        .Z(n5982) );
  CKXOR2D1 U2962 ( .A1(\x_reg[3][4] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n6616) );
  CKXOR2D1 U2963 ( .A1(\x_reg[3][7] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n5885) );
  XNR2D1 U2964 ( .A1(\x_reg[4][6] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n5948) );
  CKND3 U2965 ( .I(\y_reg[0][3] ), .ZN(n6077) );
  INVD1 U2966 ( .I(\y_reg[0][2] ), .ZN(n6078) );
  CKND2 U2967 ( .I(\y_reg[0][1] ), .ZN(n6075) );
  ND2D1 U2968 ( .A1(n5850), .A2(n5857), .ZN(n5873) );
  ND3D1 U2969 ( .A1(n6079), .A2(n5792), .A3(n6524), .ZN(n5933) );
  ND2D0 U2970 ( .A1(n6182), .A2(n6418), .ZN(n6008) );
  NR2D1 U2971 ( .A1(n5807), .A2(\z_reg[4][4] ), .ZN(n6394) );
  NR2D1 U2972 ( .A1(n6078), .A2(\x_reg[0][2] ), .ZN(n6546) );
  ND2D0 U2973 ( .A1(n6508), .A2(n6494), .ZN(n6357) );
  ND2D1 U2974 ( .A1(n5932), .A2(n5933), .ZN(n6534) );
  ND3D0 U2975 ( .A1(n6139), .A2(n6138), .A3(\z_reg[6][3] ), .ZN(n6665) );
  NR2D1 U2976 ( .A1(n5860), .A2(\z_reg[3][7] ), .ZN(n5859) );
  INVD1 U2977 ( .I(n5990), .ZN(n5794) );
  CKXOR2D0 U2978 ( .A1(\y_reg[2][5] ), .A2(n6448), .Z(n6453) );
  ND2D1 U2979 ( .A1(n5889), .A2(n5888), .ZN(n5887) );
  MOAI22D0 U2980 ( .A1(n6455), .A2(n6454), .B1(\z_reg[0][7] ), .B2(
        \A[0].CORDIC_element_inst1/N1 ), .ZN(n6457) );
  INVD0 U2981 ( .I(\z_reg[3][0] ), .ZN(n6690) );
  CKXOR2D0 U2982 ( .A1(n6634), .A2(n6633), .Z(\z_w[4][3] ) );
  CKXOR2D0 U2983 ( .A1(n6308), .A2(n6311), .Z(\intadd_10/SUM[1] ) );
  CKXOR2D0 U2984 ( .A1(\x_reg[2][0] ), .A2(\y_reg[2][2] ), .Z(\x_w[2][0] ) );
  CKXOR2D0 U2985 ( .A1(n6457), .A2(n6456), .Z(\z_w[0][8] ) );
  CKAN2D1 U2986 ( .A1(n5920), .A2(n5794), .Z(n5791) );
  CKAN2D1 U2987 ( .A1(n6523), .A2(n6501), .Z(n5792) );
  CKAN2D1 U2988 ( .A1(n5911), .A2(n5263), .Z(n5793) );
  CKXOR2D1 U2989 ( .A1(\x_reg[1][3] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n6276) );
  CKND4 U2990 ( .I(\A[1].CORDIC_element_inst1/N1 ), .ZN(n6277) );
  CKXOR2D1 U2991 ( .A1(\x_reg[1][4] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n6294) );
  IND2D1 U2992 ( .A1(n6630), .B1(n5793), .ZN(n5869) );
  CKND2D1 U2993 ( .A1(n5833), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n5832)
         );
  CKXOR2D1 U2994 ( .A1(n5960), .A2(n5959), .Z(n5271) );
  AO31D1 U2995 ( .A1(n6167), .A2(n6166), .A3(n6164), .B(n6165), .Z(\y_w[2][4] ) );
  XNR2D1 U2996 ( .A1(n5881), .A2(n5880), .ZN(\z_w[4][6] ) );
  XOR2D0 U2997 ( .A1(n6637), .A2(\z_reg[4][5] ), .Z(\z_w[4][5] ) );
  AO21D1 U2998 ( .A1(\z_reg[2][6] ), .A2(n6373), .B(n6372), .Z(\z_w[2][6] ) );
  AOI21D1 U2999 ( .A1(n6642), .A2(n6641), .B(n6640), .ZN(n2492) );
  XNR2D1 U3000 ( .A1(n6289), .A2(\z_reg[1][3] ), .ZN(n2496) );
  XNR2D1 U3001 ( .A1(n6286), .A2(n6285), .ZN(\y_w[2][3] ) );
  NR2XD0 U3002 ( .A1(n6288), .A2(n6287), .ZN(n6289) );
  XOR2D0 U3003 ( .A1(n6511), .A2(n6510), .Z(n6512) );
  XOR2D0 U3004 ( .A1(n6673), .A2(\z_reg[6][7] ), .Z(n4364) );
  CKND2D1 U3005 ( .A1(n6636), .A2(n6635), .ZN(n6638) );
  XOR2D0 U3006 ( .A1(n6670), .A2(\z_reg[6][5] ), .Z(\z_w[6][5] ) );
  CKND2D1 U3007 ( .A1(n6669), .A2(n6668), .ZN(n6670) );
  CKBD1 U3008 ( .I(n5821), .Z(n6621) );
  CKND2D1 U3009 ( .A1(n6672), .A2(n6671), .ZN(n6673) );
  CKND2D2 U3010 ( .A1(n5985), .A2(n5984), .ZN(n5990) );
  XOR2D0 U3011 ( .A1(n6612), .A2(n6611), .Z(n6679) );
  CKND1 U3012 ( .I(n6565), .ZN(n5863) );
  ND3D1 U3013 ( .A1(n6667), .A2(\z_reg[6][5] ), .A3(\z_reg[6][6] ), .ZN(n6671)
         );
  CKND2D1 U3014 ( .A1(n5937), .A2(n6368), .ZN(n6325) );
  CKND2D1 U3015 ( .A1(n6129), .A2(n6343), .ZN(n6340) );
  NR2D1 U3016 ( .A1(n6593), .A2(\z_reg[1][5] ), .ZN(n6601) );
  CKND2D1 U3017 ( .A1(n6610), .A2(n6609), .ZN(n6612) );
  XNR2D1 U3018 ( .A1(n6495), .A2(n6510), .ZN(n6513) );
  XOR2D0 U3019 ( .A1(n6520), .A2(n6549), .Z(n6553) );
  IOA21D1 U3020 ( .A1(n6502), .A2(n6411), .B(n6410), .ZN(n6414) );
  CKND1 U3021 ( .I(n6656), .ZN(n6137) );
  ND2D1 U3022 ( .A1(n6287), .A2(n6159), .ZN(n6593) );
  NR2D1 U3023 ( .A1(n5893), .A2(n5795), .ZN(n6167) );
  NR2XD0 U3024 ( .A1(n6284), .A2(n6283), .ZN(n6285) );
  CKND2D1 U3025 ( .A1(n6567), .A2(n6570), .ZN(n6568) );
  ND2D2 U3026 ( .A1(n6180), .A2(n6260), .ZN(n6182) );
  OR2D0 U3027 ( .A1(n6125), .A2(n6124), .Z(n5810) );
  CKXOR2D0 U3028 ( .A1(n6302), .A2(n6147), .Z(n6146) );
  ND2D1 U3029 ( .A1(n6425), .A2(n6352), .ZN(n6406) );
  CKND1 U3030 ( .I(n6019), .ZN(n6013) );
  CKND2D1 U3031 ( .A1(n6652), .A2(\z_reg[5][2] ), .ZN(n6133) );
  CKND2D1 U3032 ( .A1(n6073), .A2(\y_reg[0][0] ), .ZN(n6252) );
  ND2D1 U3033 ( .A1(n6083), .A2(\x_reg[0][7] ), .ZN(n6425) );
  ND2D0 U3034 ( .A1(n6010), .A2(n5908), .ZN(n5907) );
  CKND2D1 U3035 ( .A1(n6517), .A2(n6064), .ZN(n6490) );
  ND2D1 U3036 ( .A1(n6323), .A2(n6145), .ZN(n6302) );
  INVD1 U3037 ( .I(\z_reg[3][4] ), .ZN(n6590) );
  CKND1 U3038 ( .I(\y_reg[3][4] ), .ZN(n5999) );
  CKND1 U3039 ( .I(\z_reg[4][6] ), .ZN(n5880) );
  CKND1 U3040 ( .I(\y_reg[4][5] ), .ZN(n6380) );
  INVD1 U3041 ( .I(\z_reg[4][4] ), .ZN(n6155) );
  CKXOR2D0 U3042 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][8] ), 
        .Z(n6456) );
  INVD0 U3043 ( .I(\z_reg[3][3] ), .ZN(n6205) );
  INVD1 U3044 ( .I(\z_reg[4][3] ), .ZN(n6633) );
  INVD0 U3045 ( .I(\z_reg[3][6] ), .ZN(n6211) );
  CKND1 U3046 ( .I(\x_reg[0][8] ), .ZN(n6429) );
  INVD1 U3047 ( .I(\y_reg[2][2] ), .ZN(n6036) );
  INVD1 U3048 ( .I(\y_reg[2][3] ), .ZN(n6038) );
  CKND1 U3049 ( .I(\x_reg[4][7] ), .ZN(n6642) );
  INVD1 U3050 ( .I(\DP_OP_22J2_125_2411/n1 ), .ZN(n6483) );
  CKND2D1 U3051 ( .A1(\z_reg[0][3] ), .A2(\z_reg[0][2] ), .ZN(n6323) );
  CKND1 U3052 ( .I(\y_reg[1][5] ), .ZN(n6400) );
  ND2D0 U3053 ( .A1(\x_reg[3][6] ), .A2(\x_reg[3][5] ), .ZN(n6231) );
  CKND1 U3054 ( .I(\x_reg[0][7] ), .ZN(n6081) );
  CKND1 U3055 ( .I(\x_reg[1][5] ), .ZN(n5899) );
  INVD1 U3056 ( .I(\z_reg[5][2] ), .ZN(n6653) );
  CKND1 U3057 ( .I(\z_reg[6][0] ), .ZN(n6687) );
  CKND1 U3058 ( .I(\y_reg[1][3] ), .ZN(n6293) );
  CKND1 U3059 ( .I(\z_reg[6][3] ), .ZN(n6123) );
  INVD1 U3060 ( .I(\x_reg[3][6] ), .ZN(n5977) );
  AN2D0 U3061 ( .A1(n5263), .A2(\y_reg[3][6] ), .Z(n6431) );
  INVD1 U3062 ( .I(n5814), .ZN(n5816) );
  INVD1 U3063 ( .I(n5817), .ZN(n5991) );
  ND2D1 U3064 ( .A1(n5905), .A2(n5869), .ZN(\intadd_9/SUM[2] ) );
  CKND1 U3065 ( .I(n6028), .ZN(n4419) );
  AOI21D1 U3066 ( .A1(n6030), .A2(n6675), .B(n5791), .ZN(n1708) );
  IND3D1 U3067 ( .A1(n5806), .B1(n6629), .B2(n6628), .ZN(\intadd_9/SUM[1] ) );
  INVD1 U3068 ( .I(n5978), .ZN(n5979) );
  NR2XD0 U3069 ( .A1(n6219), .A2(n6218), .ZN(\x_w[4][5] ) );
  OAI22D1 U3070 ( .A1(n6193), .A2(n6192), .B1(n6191), .B2(n6338), .ZN(n2884)
         );
  AOI21D1 U3071 ( .A1(n6166), .A2(n6164), .B(n6167), .ZN(n6165) );
  CKND1 U3072 ( .I(n5798), .ZN(n5799) );
  XNR3D0 U3073 ( .A1(\y_reg[1][3] ), .A2(n6563), .A3(n6258), .ZN(n5780) );
  OAI22D1 U3074 ( .A1(n6132), .A2(n6288), .B1(n6131), .B2(n6130), .ZN(n2494)
         );
  XOR2D0 U3075 ( .A1(n6658), .A2(n6657), .Z(\z_w[5][5] ) );
  CKND1 U3076 ( .I(n6660), .ZN(n6470) );
  XOR2D0 U3077 ( .A1(n6564), .A2(n6563), .Z(n6684) );
  ND2D3 U3078 ( .A1(n5952), .A2(n5953), .ZN(n6388) );
  OAI211D1 U3079 ( .A1(\z_reg[5][4] ), .A2(n6137), .B(n6136), .C(n6135), .ZN(
        \z_w[5][4] ) );
  OAI211D1 U3080 ( .A1(n6144), .A2(n6143), .B(n6672), .C(n6142), .ZN(
        \z_w[6][6] ) );
  XOR2D0 U3081 ( .A1(n6550), .A2(n6549), .Z(n6552) );
  NR2D3 U3082 ( .A1(n6332), .A2(n6331), .ZN(n6476) );
  ND3D3 U3083 ( .A1(n6645), .A2(n5950), .A3(n6644), .ZN(n5953) );
  NR2D2 U3084 ( .A1(n5894), .A2(n6464), .ZN(n5843) );
  XOR2D0 U3085 ( .A1(n6666), .A2(\z_reg[6][4] ), .Z(\z_w[6][4] ) );
  ND2D1 U3086 ( .A1(n6272), .A2(n6205), .ZN(n6206) );
  XOR2D0 U3087 ( .A1(n6654), .A2(n6653), .Z(\z_w[5][2] ) );
  CKND2 U3088 ( .I(n6182), .ZN(n6009) );
  XOR2D0 U3089 ( .A1(n6617), .A2(n6616), .Z(n6683) );
  XOR2D0 U3090 ( .A1(n6542), .A2(n6538), .Z(n6545) );
  AN2D0 U3091 ( .A1(n6639), .A2(n5883), .Z(n5882) );
  OAI21D2 U3092 ( .A1(n5919), .A2(n5925), .B(n6557), .ZN(n6565) );
  INVD0 U3093 ( .I(n6225), .ZN(n6230) );
  NR2XD0 U3094 ( .A1(n6574), .A2(n6573), .ZN(n6575) );
  CKND2D1 U3095 ( .A1(n6141), .A2(n6140), .ZN(n6668) );
  XOR2D0 U3096 ( .A1(n6241), .A2(n6240), .Z(\z_w[6][2] ) );
  CKND1 U3097 ( .I(n6179), .ZN(n6181) );
  ND2D2 U3098 ( .A1(n6250), .A2(n5923), .ZN(n6034) );
  XOR2D0 U3099 ( .A1(n6239), .A2(n6635), .Z(\z_w[4][1] ) );
  CKND1 U3100 ( .I(n6459), .ZN(n6403) );
  CKND2D2 U3101 ( .A1(n6117), .A2(n6116), .ZN(n6134) );
  CKND1 U3102 ( .I(n6224), .ZN(n6229) );
  ND2D2 U3103 ( .A1(n6402), .A2(\y_reg[1][5] ), .ZN(n6459) );
  INVD0 U3104 ( .I(n6412), .ZN(n6359) );
  NR2XD0 U3105 ( .A1(n6246), .A2(n5811), .ZN(n6239) );
  ND2D0 U3106 ( .A1(n6425), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n5934) );
  CKND2 U3107 ( .I(n5865), .ZN(n5864) );
  CKND2D1 U3108 ( .A1(n6175), .A2(\x_reg[4][2] ), .ZN(n6212) );
  NR2D3 U3109 ( .A1(n5922), .A2(n6053), .ZN(n6040) );
  NR2D2 U3110 ( .A1(n6075), .A2(\x_reg[0][1] ), .ZN(n6355) );
  INR2D1 U3111 ( .A1(\x_reg[3][7] ), .B1(n6231), .ZN(n6232) );
  CKND2D2 U3112 ( .A1(n6004), .A2(n6003), .ZN(n6618) );
  INR2D1 U3113 ( .A1(\z_reg[1][2] ), .B1(n6235), .ZN(n6160) );
  CKND2D1 U3114 ( .A1(n6081), .A2(\y_reg[0][7] ), .ZN(n6352) );
  CKND2D1 U3115 ( .A1(n6147), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(n6148)
         );
  CKND2D1 U3116 ( .A1(n6247), .A2(n6150), .ZN(n6631) );
  CKND2D1 U3117 ( .A1(n6215), .A2(\x_reg[4][3] ), .ZN(n6177) );
  CKND1 U3118 ( .I(n6449), .ZN(n5795) );
  CKND2D1 U3119 ( .A1(\y_reg[0][2] ), .A2(\x_reg[0][2] ), .ZN(n6517) );
  CKND1 U3120 ( .I(\z_reg[2][4] ), .ZN(n6200) );
  CKND1 U3121 ( .I(\y_reg[4][7] ), .ZN(n5997) );
  CKND1 U3122 ( .I(\z_reg[0][2] ), .ZN(n6686) );
  CKND1 U3123 ( .I(\y_reg[1][2] ), .ZN(n6275) );
  NR2XD0 U3124 ( .A1(\z_reg[3][6] ), .A2(\z_reg[3][5] ), .ZN(n5861) );
  CKND1 U3125 ( .I(\z_reg[3][1] ), .ZN(n6203) );
  CKND1 U3126 ( .I(\y_reg[4][2] ), .ZN(n5949) );
  INVD0 U3127 ( .I(\z_reg[5][6] ), .ZN(n6471) );
  CKND1 U3128 ( .I(\y_reg[3][2] ), .ZN(n6003) );
  CKND1 U3129 ( .I(\z_reg[5][3] ), .ZN(n6116) );
  CKND1 U3130 ( .I(\y_reg[3][3] ), .ZN(n6002) );
  CKND1 U3131 ( .I(\z_reg[5][5] ), .ZN(n6657) );
  XOR2D0 U3132 ( .A1(\x_reg[3][0] ), .A2(\y_reg[3][3] ), .Z(\x_w[3][0] ) );
  CKND1 U3133 ( .I(\z_reg[0][4] ), .ZN(n6147) );
  NR2D0 U3134 ( .A1(\z_reg[0][7] ), .A2(\A[0].CORDIC_element_inst1/N1 ), .ZN(
        n6454) );
  AN2D0 U3135 ( .A1(\z_reg[4][6] ), .A2(\z_reg[4][5] ), .Z(n6396) );
  CKND1 U3136 ( .I(\y_reg[0][7] ), .ZN(n6083) );
  CKND1 U3137 ( .I(\z_reg[1][7] ), .ZN(n6348) );
  CKND1 U3138 ( .I(\y_reg[4][4] ), .ZN(n5951) );
  AOI21D1 U3139 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(n6324), .B(n6321), 
        .ZN(n6368) );
  OAI31D0 U3140 ( .A1(n6366), .A2(n6597), .A3(n6211), .B(n6210), .ZN(
        \z_w[3][6] ) );
  NR2D1 U3141 ( .A1(n5804), .A2(n6023), .ZN(n5796) );
  NR2D2 U3142 ( .A1(n5804), .A2(n6023), .ZN(n6364) );
  XOR2D0 U3143 ( .A1(\x_reg[4][7] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .Z(
        n5802) );
  XOR2D0 U3144 ( .A1(\x_reg[4][6] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .Z(
        n5801) );
  ND2D0 U3145 ( .A1(n6258), .A2(\x_reg[1][2] ), .ZN(n5797) );
  CKXOR2D2 U3146 ( .A1(\x_reg[1][5] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n6439) );
  XNR2D2 U3147 ( .A1(\x_reg[1][2] ), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(
        n6563) );
  IAO21D1 U3148 ( .A1(n6217), .A2(n6216), .B(\x_reg[4][5] ), .ZN(n6219) );
  ND2D2 U3149 ( .A1(n6233), .A2(n6232), .ZN(n6469) );
  CKXOR2D1 U3150 ( .A1(n6223), .A2(\x_reg[1][4] ), .Z(n6224) );
  ND2D1 U3151 ( .A1(n5943), .A2(n5944), .ZN(n6242) );
  NR2D2 U3152 ( .A1(n6646), .A2(n6643), .ZN(n5942) );
  NR2D1 U3153 ( .A1(n6534), .A2(n6405), .ZN(n6084) );
  ND2D1 U3154 ( .A1(n5920), .A2(n5794), .ZN(n6029) );
  ND3D3 U3155 ( .A1(n6281), .A2(n5930), .A3(n6282), .ZN(n6164) );
  ND2D3 U3156 ( .A1(n6164), .A2(n6163), .ZN(n5876) );
  INVD0 U3157 ( .I(n6488), .ZN(n5798) );
  ND2D1 U3158 ( .A1(\y_reg[4][0] ), .A2(\x_reg[4][4] ), .ZN(n5944) );
  ND2D3 U3159 ( .A1(n6009), .A2(n5890), .ZN(n6627) );
  AOI21D1 U3160 ( .A1(n6611), .A2(n6609), .B(n6608), .ZN(n5800) );
  AOI21D1 U3161 ( .A1(n6611), .A2(n6609), .B(n6608), .ZN(n6556) );
  AN2D2 U3162 ( .A1(n5966), .A2(n5964), .Z(n5804) );
  INVD0 U3163 ( .I(n6342), .ZN(n6349) );
  AOI21D2 U3164 ( .A1(n5963), .A2(n6023), .B(n6020), .ZN(n6011) );
  INVD2 U3165 ( .I(n6477), .ZN(n6334) );
  OAI21D2 U3166 ( .A1(n6327), .A2(n6328), .B(n6326), .ZN(n6477) );
  ND2D1 U3167 ( .A1(n6058), .A2(n5822), .ZN(n4355) );
  NR2D1 U3168 ( .A1(n6277), .A2(\y_reg[1][1] ), .ZN(n5955) );
  ND2D2 U3169 ( .A1(n5902), .A2(n5897), .ZN(n6047) );
  AOI211D2 U3170 ( .A1(n5901), .A2(n6020), .B(n6022), .C(n6021), .ZN(n5897) );
  ND2D1 U3171 ( .A1(n6071), .A2(\x_reg[0][4] ), .ZN(n6527) );
  AOI31D1 U3172 ( .A1(n6600), .A2(n6598), .A3(\z_reg[3][5] ), .B(n6597), .ZN(
        n6599) );
  INVD1 U3173 ( .I(\A[1].CORDIC_element_inst1/N1 ), .ZN(n5803) );
  CKXOR2D2 U3174 ( .A1(n4378), .A2(\A[2].CORDIC_element_inst1/N1 ), .Z(n6448)
         );
  CKND2D3 U3175 ( .A1(n6223), .A2(\x_reg[1][4] ), .ZN(n5957) );
  ND2D2 U3176 ( .A1(n5831), .A2(\y_reg[1][2] ), .ZN(n6328) );
  ND3D2 U3177 ( .A1(n6458), .A2(n6461), .A3(n6459), .ZN(n5896) );
  XNR2D1 U3178 ( .A1(\y_reg[1][2] ), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(
        n6254) );
  ND2D3 U3179 ( .A1(n6034), .A2(n6249), .ZN(n6281) );
  ND2D2 U3180 ( .A1(n5876), .A2(n5850), .ZN(n6450) );
  AN2XD1 U3181 ( .A1(n5876), .A2(n6049), .Z(n5875) );
  OAI21D2 U3182 ( .A1(n6033), .A2(n5864), .B(\y_reg[2][1] ), .ZN(n6249) );
  OR2XD1 U3183 ( .A1(\x_reg[0][5] ), .A2(n6072), .Z(n6501) );
  CKND3 U3184 ( .I(\y_reg[0][5] ), .ZN(n6072) );
  ND2D1 U3185 ( .A1(n6528), .A2(n6527), .ZN(n6530) );
  ND2D2 U3186 ( .A1(n6543), .A2(n6547), .ZN(n6525) );
  NR2D1 U3187 ( .A1(n6624), .A2(\y_reg[3][6] ), .ZN(n5806) );
  NR2D2 U3188 ( .A1(\x_reg[4][4] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n5945) );
  XNR2D1 U3189 ( .A1(\y_reg[4][5] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n6171) );
  INVD2 U3190 ( .I(n6476), .ZN(n6333) );
  NR2D1 U3191 ( .A1(n6355), .A2(n6354), .ZN(n6540) );
  CKND4 U3192 ( .I(n6208), .ZN(n6484) );
  CKXOR2D1 U3193 ( .A1(n6208), .A2(n6419), .Z(n5972) );
  AOI31D1 U3194 ( .A1(n6271), .A2(\z_reg[3][3] ), .A3(\z_reg[3][2] ), .B(n6208), .ZN(n6589) );
  CKND3 U3195 ( .I(\A[3].CORDIC_element_inst1/N1 ), .ZN(n6208) );
  ND3D1 U3196 ( .A1(n5794), .A2(n5921), .A3(\x_reg[2][6] ), .ZN(n6030) );
  OAI21D1 U3197 ( .A1(\z_reg[3][5] ), .A2(n6600), .B(n6599), .ZN(\z_w[3][5] )
         );
  INVD1 U3198 ( .I(n6128), .ZN(n6129) );
  NR2D1 U3199 ( .A1(n6236), .A2(\z_reg[1][2] ), .ZN(n6128) );
  ND2D2 U3200 ( .A1(n6334), .A2(n6333), .ZN(n6465) );
  MUX2ND0 U3201 ( .I0(n6417), .I1(n6535), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(\y_w[0][6] ) );
  NR2D1 U3202 ( .A1(n5989), .A2(n5823), .ZN(n5920) );
  CKXOR2D2 U3203 ( .A1(\y_reg[1][5] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n6223) );
  OAI22D2 U3204 ( .A1(n5935), .A2(n5934), .B1(n6085), .B2(
        \A[0].CORDIC_element_inst1/N1 ), .ZN(n6086) );
  ND2D1 U3205 ( .A1(\y_reg[0][3] ), .A2(\x_reg[0][3] ), .ZN(n6064) );
  ND3D3 U3206 ( .A1(n5993), .A2(n5992), .A3(n6380), .ZN(n6375) );
  NR2D1 U3207 ( .A1(n6385), .A2(\y_reg[4][4] ), .ZN(n5992) );
  NR2D1 U3208 ( .A1(n5945), .A2(\y_reg[4][1] ), .ZN(n5943) );
  AN2XD1 U3209 ( .A1(n6151), .A2(n6631), .Z(n5807) );
  ND2D2 U3210 ( .A1(n6632), .A2(n6633), .ZN(n6151) );
  ND2D0 U3211 ( .A1(n6652), .A2(\z_reg[5][2] ), .ZN(n5808) );
  NR2D1 U3212 ( .A1(n6115), .A2(\A[5].CORDIC_element_inst1/N1 ), .ZN(n6652) );
  NR2D1 U3213 ( .A1(\y_reg[0][3] ), .A2(\x_reg[0][3] ), .ZN(n6491) );
  AN2D2 U3214 ( .A1(n6497), .A2(n6496), .Z(n6543) );
  ND2D1 U3215 ( .A1(n6074), .A2(n6252), .ZN(n6497) );
  INVD1 U3216 ( .I(n6646), .ZN(n5950) );
  NR2D2 U3217 ( .A1(n6220), .A2(n5977), .ZN(n6234) );
  ND2D2 U3218 ( .A1(n6233), .A2(\x_reg[3][5] ), .ZN(n6220) );
  AOI21D2 U3219 ( .A1(n5975), .A2(n6307), .B(n5974), .ZN(n6488) );
  OAI21D2 U3220 ( .A1(n6312), .A2(n6309), .B(n6313), .ZN(n5974) );
  NR2D2 U3221 ( .A1(n6312), .A2(n6310), .ZN(n5975) );
  INVD1 U3222 ( .I(n5860), .ZN(n6468) );
  ND2D2 U3223 ( .A1(n6589), .A2(n6590), .ZN(n6598) );
  NR2D0 U3224 ( .A1(n6385), .A2(\y_reg[4][4] ), .ZN(n5809) );
  CKXOR2D2 U3225 ( .A1(\DP_OP_52J2_152_3351/n1 ), .A2(n6398), .Z(n6385) );
  NR2D1 U3226 ( .A1(n6125), .A2(n6124), .ZN(n6141) );
  ND2D1 U3227 ( .A1(n6201), .A2(n6200), .ZN(n6586) );
  ND2D1 U3228 ( .A1(n5929), .A2(n6583), .ZN(n6201) );
  NR2D0 U3229 ( .A1(\z_reg[4][1] ), .A2(\z_reg[4][0] ), .ZN(n5811) );
  CKND1 U3230 ( .I(\x_reg[0][0] ), .ZN(n6073) );
  NR2D1 U3231 ( .A1(n6084), .A2(n6426), .ZN(n5935) );
  ND4D1 U3232 ( .A1(n6497), .A2(n6547), .A3(n6496), .A4(n6507), .ZN(n6079) );
  ND3D1 U3233 ( .A1(n6446), .A2(n6445), .A3(n6444), .ZN(n6447) );
  ND2D1 U3234 ( .A1(n6604), .A2(\z_reg[2][5] ), .ZN(n6445) );
  BUFFD2 U3235 ( .I(\A[2].CORDIC_element_inst1/N1 ), .Z(n6199) );
  ND2D2 U3236 ( .A1(\z_reg[5][1] ), .A2(\z_reg[5][0] ), .ZN(n6113) );
  INR2D2 U3237 ( .A1(n6653), .B1(n6650), .ZN(n6117) );
  NR2D2 U3238 ( .A1(n6134), .A2(\z_reg[5][4] ), .ZN(n6655) );
  NR2D2 U3239 ( .A1(n5942), .A2(n6647), .ZN(n5952) );
  INVD0 U3240 ( .I(n6496), .ZN(n6539) );
  ND2D0 U3241 ( .A1(n6516), .A2(n6515), .ZN(n6538) );
  INVD0 U3242 ( .I(n6514), .ZN(n6515) );
  NR2D1 U3243 ( .A1(n6077), .A2(\x_reg[0][3] ), .ZN(n6519) );
  NR2D0 U3244 ( .A1(n6539), .A2(n6355), .ZN(n6320) );
  OA21D0 U3245 ( .A1(n6343), .A2(n6235), .B(n6128), .Z(n6184) );
  ND2D1 U3246 ( .A1(\z_reg[3][1] ), .A2(n6208), .ZN(n6204) );
  INVD0 U3247 ( .I(n6507), .ZN(n6526) );
  ND2D0 U3248 ( .A1(n6494), .A2(n6527), .ZN(n6510) );
  NR2D0 U3249 ( .A1(n6526), .A2(n6519), .ZN(n6549) );
  XNR2D0 U3250 ( .A1(\A[5].CORDIC_element_inst1/N1 ), .A2(\x_reg[5][7] ), .ZN(
        n6097) );
  INVD0 U3251 ( .I(\x_reg[0][5] ), .ZN(n6070) );
  ND2D1 U3252 ( .A1(n6441), .A2(n6440), .ZN(n6458) );
  XNR2D0 U3253 ( .A1(\x_reg[1][7] ), .A2(\A[1].CORDIC_element_inst1/N1 ), .ZN(
        n6442) );
  NR2D0 U3254 ( .A1(n5829), .A2(n5904), .ZN(n5903) );
  NR2D0 U3255 ( .A1(n6466), .A2(n5805), .ZN(n6022) );
  INVD0 U3256 ( .I(n6625), .ZN(n5914) );
  INVD0 U3257 ( .I(\y_reg[4][6] ), .ZN(n6381) );
  ND2D1 U3258 ( .A1(n5900), .A2(n5899), .ZN(n5898) );
  INVD0 U3259 ( .I(n5967), .ZN(n5900) );
  XNR2D0 U3260 ( .A1(\y_reg[1][3] ), .A2(n6343), .ZN(n5964) );
  CKXOR2D1 U3261 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(n5815), .Z(n6039)
         );
  ND2D0 U3262 ( .A1(n6097), .A2(\y_reg[5][2] ), .ZN(n6105) );
  NR2D2 U3263 ( .A1(n5922), .A2(\y_reg[2][6] ), .ZN(n6043) );
  INVD0 U3264 ( .I(n6063), .ZN(n6066) );
  ND2D0 U3265 ( .A1(n6123), .A2(\A[6].CORDIC_element_inst1/N1 ), .ZN(n6124) );
  ND2D0 U3266 ( .A1(n6151), .A2(n6631), .ZN(n6152) );
  INVD0 U3267 ( .I(n6174), .ZN(n6175) );
  NR2D0 U3268 ( .A1(\z_reg[2][1] ), .A2(\z_reg[2][0] ), .ZN(n6256) );
  OAI21D0 U3269 ( .A1(n6581), .A2(n6198), .B(\A[2].CORDIC_element_inst1/N1 ), 
        .ZN(n5929) );
  ND2D0 U3270 ( .A1(\z_reg[2][3] ), .A2(\z_reg[2][2] ), .ZN(n6198) );
  OAI21D0 U3271 ( .A1(n6201), .A2(n6200), .B(n6582), .ZN(n6370) );
  INVD0 U3272 ( .I(\z_reg[1][6] ), .ZN(n6190) );
  ND2D0 U3273 ( .A1(\z_reg[1][5] ), .A2(\z_reg[1][4] ), .ZN(n6339) );
  ND2D1 U3274 ( .A1(n5851), .A2(n6277), .ZN(n6279) );
  INVD0 U3275 ( .I(\z_reg[0][5] ), .ZN(n6324) );
  OAI21D0 U3276 ( .A1(n6507), .A2(n6358), .B(n6527), .ZN(n5819) );
  INVD0 U3277 ( .I(n6546), .ZN(n6537) );
  ND2D0 U3278 ( .A1(n6080), .A2(\x_reg[0][6] ), .ZN(n6413) );
  INVD0 U3279 ( .I(n6413), .ZN(n6405) );
  AN2D0 U3280 ( .A1(n6481), .A2(n6483), .Z(n5936) );
  ND2D0 U3281 ( .A1(n5843), .A2(\y_reg[1][7] ), .ZN(n5839) );
  NR2D0 U3282 ( .A1(n6483), .A2(n6481), .ZN(n5841) );
  NR2D0 U3283 ( .A1(n6460), .A2(n5855), .ZN(n5854) );
  INVD0 U3284 ( .I(n6441), .ZN(n5855) );
  NR2D0 U3285 ( .A1(n6442), .A2(\y_reg[1][6] ), .ZN(n6463) );
  ND2D1 U3286 ( .A1(n5842), .A2(n5843), .ZN(n6482) );
  ND2D0 U3287 ( .A1(n6317), .A2(\x_reg[0][0] ), .ZN(n6354) );
  INVD0 U3288 ( .I(\y_reg[0][0] ), .ZN(n6317) );
  NR2D0 U3289 ( .A1(n5914), .A2(n5910), .ZN(n5909) );
  NR2D1 U3290 ( .A1(n6624), .A2(\y_reg[3][6] ), .ZN(n6630) );
  INVD0 U3291 ( .I(\x_reg[2][3] ), .ZN(n5981) );
  INVD0 U3292 ( .I(n5829), .ZN(n5963) );
  ND2D0 U3293 ( .A1(\z_reg[2][1] ), .A2(\z_reg[2][0] ), .ZN(n6581) );
  ND2D0 U3294 ( .A1(n6082), .A2(\y_reg[0][6] ), .ZN(n6412) );
  INVD0 U3295 ( .I(\x_reg[0][6] ), .ZN(n6082) );
  AOI21D1 U3296 ( .A1(n6534), .A2(n6412), .B(n6405), .ZN(n5834) );
  OAI21D1 U3297 ( .A1(n5800), .A2(n6566), .B(n5863), .ZN(n6571) );
  IND2D2 U3298 ( .A1(n5987), .B1(n5866), .ZN(n5925) );
  NR2D0 U3299 ( .A1(n6119), .A2(n6138), .ZN(n6240) );
  AOI21D0 U3300 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .A2(n6121), .B(n6139), 
        .ZN(n6241) );
  INVD0 U3301 ( .I(\z_reg[6][4] ), .ZN(n6140) );
  OR3XD1 U3302 ( .A1(\z_reg[6][5] ), .A2(\z_reg[6][6] ), .A3(n6668), .Z(n6672)
         );
  NR2D0 U3303 ( .A1(\z_reg[5][1] ), .A2(\z_reg[5][0] ), .ZN(n6115) );
  ND2D1 U3304 ( .A1(n6113), .A2(\A[5].CORDIC_element_inst1/N1 ), .ZN(n6650) );
  ND2D1 U3305 ( .A1(n6655), .A2(n6657), .ZN(n6660) );
  CKAN2D1 U3306 ( .A1(\z_reg[5][5] ), .A2(\z_reg[5][4] ), .Z(n5892) );
  NR2D0 U3307 ( .A1(\z_reg[4][1] ), .A2(\z_reg[4][0] ), .ZN(n6247) );
  INVD0 U3308 ( .I(n6238), .ZN(n6246) );
  NR2D0 U3309 ( .A1(\z_reg[4][2] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n6150) );
  IND4D0 U3310 ( .A1(\z_reg[4][3] ), .B1(n6156), .B2(n6398), .B3(n6155), .ZN(
        n6639) );
  NR2D0 U3311 ( .A1(\z_reg[4][6] ), .A2(\z_reg[4][5] ), .ZN(n6393) );
  INVD0 U3312 ( .I(n6398), .ZN(n6635) );
  BUFFD4 U3313 ( .I(\A[4].CORDIC_element_inst1/N1 ), .Z(n6398) );
  NR2D1 U3314 ( .A1(n6152), .A2(n6155), .ZN(n6636) );
  INVD0 U3315 ( .I(n5944), .ZN(n5946) );
  INVD0 U3316 ( .I(n6588), .ZN(n6596) );
  NR2D0 U3317 ( .A1(\z_reg[3][5] ), .A2(n6598), .ZN(n6597) );
  ND2D2 U3318 ( .A1(n6005), .A2(n6002), .ZN(n6261) );
  INVD0 U3319 ( .I(n6307), .ZN(n6311) );
  OAI21D0 U3320 ( .A1(n6256), .A2(n6582), .B(n6581), .ZN(n6300) );
  INVD0 U3321 ( .I(n6582), .ZN(n6585) );
  CKBD1 U3322 ( .I(n6199), .Z(n6582) );
  ND2D1 U3323 ( .A1(n6586), .A2(n5867), .ZN(n6604) );
  NR2D0 U3324 ( .A1(\z_reg[1][4] ), .A2(\z_reg[1][3] ), .ZN(n6159) );
  NR2D0 U3325 ( .A1(n6340), .A2(n6339), .ZN(n6602) );
  BUFFD0 U3326 ( .I(n6329), .Z(n6291) );
  ND2D0 U3327 ( .A1(n6302), .A2(\z_reg[0][4] ), .ZN(n6303) );
  NR2D0 U3328 ( .A1(n6540), .A2(n6539), .ZN(n6548) );
  AOI21D0 U3329 ( .A1(n6493), .A2(n6492), .B(n6491), .ZN(n6495) );
  ND2D0 U3330 ( .A1(n6501), .A2(n6500), .ZN(n6529) );
  ND2D0 U3331 ( .A1(n6537), .A2(n6547), .ZN(n6542) );
  OAI21D0 U3332 ( .A1(n6538), .A2(n6518), .B(n6517), .ZN(n6520) );
  ND2D0 U3333 ( .A1(n6413), .A2(n6412), .ZN(n6533) );
  INVD0 U3334 ( .I(n6056), .ZN(n5812) );
  XNR2D0 U3335 ( .A1(n6320), .A2(n6253), .ZN(\x_w[0][1] ) );
  INVD0 U3336 ( .I(n6485), .ZN(n6487) );
  NR2D0 U3337 ( .A1(n6236), .A2(n6235), .ZN(n6237) );
  ND2D0 U3338 ( .A1(n6236), .A2(n6343), .ZN(n6130) );
  OA21D0 U3339 ( .A1(n6184), .A2(n6160), .B(n6480), .Z(n6132) );
  AOI22D1 U3340 ( .A1(n6420), .A2(n6419), .B1(n6627), .B2(n6625), .ZN(n6421)
         );
  OAI21D0 U3341 ( .A1(n5916), .A2(n6437), .B(n6418), .ZN(n6420) );
  INVD0 U3342 ( .I(n6269), .ZN(n6270) );
  XNR2D0 U3343 ( .A1(n6271), .A2(\z_reg[3][2] ), .ZN(n6269) );
  OA21D0 U3344 ( .A1(\x_reg[3][5] ), .A2(n6233), .B(n6220), .Z(n1717) );
  OAI211D0 U3345 ( .A1(\z_reg[1][4] ), .A2(n6162), .B(n6593), .C(n6161), .ZN(
        n2495) );
  OAI211D0 U3346 ( .A1(n6343), .A2(n6341), .B(n6162), .C(\z_reg[1][4] ), .ZN(
        n6161) );
  INVD0 U3347 ( .I(n6592), .ZN(n6162) );
  XNR2D0 U3348 ( .A1(\A[5].CORDIC_element_inst1/N1 ), .A2(\x_reg[5][6] ), .ZN(
        n6098) );
  ND2D0 U3349 ( .A1(n6098), .A2(\y_reg[5][1] ), .ZN(n6100) );
  ND2D0 U3350 ( .A1(n6411), .A2(n6059), .ZN(n6063) );
  ND2D0 U3351 ( .A1(\x_reg[0][6] ), .A2(\y_reg[0][6] ), .ZN(n6059) );
  NR2D0 U3352 ( .A1(n6408), .A2(n6063), .ZN(n6061) );
  OAI22D0 U3353 ( .A1(n6063), .A2(n6410), .B1(\x_reg[0][6] ), .B2(
        \y_reg[0][6] ), .ZN(n6060) );
  ND3D2 U3354 ( .A1(n6459), .A2(n6461), .A3(n6460), .ZN(n6478) );
  INVD0 U3355 ( .I(n6434), .ZN(n5915) );
  NR2D1 U3356 ( .A1(n6335), .A2(\x_reg[1][3] ), .ZN(n6221) );
  ND2D2 U3357 ( .A1(n6619), .A2(n6261), .ZN(n6180) );
  NR2D2 U3358 ( .A1(n5924), .A2(\y_reg[2][4] ), .ZN(n5893) );
  XNR2D1 U3359 ( .A1(n6035), .A2(\y_reg[2][3] ), .ZN(n5986) );
  INVD0 U3360 ( .I(n6381), .ZN(n5994) );
  ND2D2 U3361 ( .A1(n5857), .A2(\y_reg[2][6] ), .ZN(n6055) );
  NR2D0 U3362 ( .A1(n5795), .A2(n5922), .ZN(n6057) );
  INVD0 U3363 ( .I(n5873), .ZN(n6051) );
  OAI21D0 U3364 ( .A1(\z_reg[1][7] ), .A2(n6343), .B(\z_reg[1][8] ), .ZN(n6344) );
  ND2D0 U3365 ( .A1(n5976), .A2(\x_reg[3][4] ), .ZN(n6486) );
  NR2D0 U3366 ( .A1(n5976), .A2(\x_reg[3][4] ), .ZN(n6485) );
  INVD0 U3367 ( .I(n6385), .ZN(n6386) );
  INVD0 U3368 ( .I(n6384), .ZN(n6387) );
  NR2D0 U3369 ( .A1(\y_reg[4][7] ), .A2(\y_reg[4][4] ), .ZN(n6383) );
  INVD0 U3370 ( .I(n6340), .ZN(n6288) );
  BUFFD0 U3371 ( .I(n6221), .Z(n6225) );
  ND2D0 U3372 ( .A1(n6424), .A2(n6501), .ZN(n6361) );
  INVD0 U3373 ( .I(n6501), .ZN(n6415) );
  OAI21D2 U3374 ( .A1(n6488), .A2(n6485), .B(n6486), .ZN(n6233) );
  INVD0 U3375 ( .I(n6188), .ZN(n6341) );
  ND2D0 U3376 ( .A1(\y_reg[5][5] ), .A2(\y_reg[5][6] ), .ZN(n6104) );
  ND3D0 U3377 ( .A1(n5818), .A2(\y_reg[5][3] ), .A3(\y_reg[5][4] ), .ZN(n6103)
         );
  XNR2D0 U3378 ( .A1(\x_reg[5][8] ), .A2(\A[5].CORDIC_element_inst1/N1 ), .ZN(
        n6108) );
  INVD0 U3379 ( .I(n6105), .ZN(n6093) );
  INVD0 U3380 ( .I(\z_reg[4][5] ), .ZN(n5883) );
  NR2D1 U3381 ( .A1(n6271), .A2(\z_reg[3][2] ), .ZN(n6272) );
  ND2D0 U3382 ( .A1(\z_reg[3][5] ), .A2(\z_reg[3][4] ), .ZN(n6207) );
  INVD0 U3383 ( .I(n5989), .ZN(n5921) );
  NR2D0 U3384 ( .A1(n6340), .A2(n6158), .ZN(n6592) );
  INVD0 U3385 ( .I(\z_reg[1][3] ), .ZN(n6158) );
  ND2D0 U3386 ( .A1(n6190), .A2(n6343), .ZN(n6338) );
  NR2D0 U3387 ( .A1(\z_reg[1][5] ), .A2(\z_reg[1][4] ), .ZN(n6187) );
  NR2D0 U3388 ( .A1(n6348), .A2(\z_reg[1][6] ), .ZN(n6186) );
  NR2D0 U3389 ( .A1(\z_reg[0][5] ), .A2(\z_reg[0][4] ), .ZN(n6322) );
  IOA21D1 U3390 ( .A1(n6369), .A2(n5937), .B(n6368), .ZN(n6455) );
  INVD0 U3391 ( .I(\z_reg[0][6] ), .ZN(n6369) );
  ND2D0 U3392 ( .A1(n6352), .A2(n6412), .ZN(n6426) );
  CKXOR2D1 U3393 ( .A1(n6047), .A2(n6483), .Z(\x_w[1][8] ) );
  XNR3D0 U3394 ( .A1(n6365), .A2(\x_reg[1][3] ), .A3(n5796), .ZN(n5273) );
  INVD0 U3395 ( .I(n6335), .ZN(n6365) );
  OAI21D1 U3396 ( .A1(n5849), .A2(n5845), .B(n5844), .ZN(n230) );
  NR2D0 U3397 ( .A1(n5840), .A2(n5839), .ZN(n5849) );
  AOI21D1 U3398 ( .A1(n6482), .A2(n5936), .B(n5846), .ZN(n5845) );
  OAI21D0 U3399 ( .A1(n6521), .A2(n6519), .B(n6507), .ZN(n6498) );
  AOI21D1 U3400 ( .A1(n6465), .A2(n5854), .B(n5872), .ZN(n5853) );
  INVD0 U3401 ( .I(n6461), .ZN(n6443) );
  XNR3D1 U3402 ( .A1(n6466), .A2(n6483), .A3(n6482), .ZN(n1686) );
  AOI21D1 U3403 ( .A1(n6571), .A2(n6570), .B(n6569), .ZN(n5862) );
  INVD0 U3404 ( .I(n6572), .ZN(n6574) );
  XNR2D0 U3405 ( .A1(n6320), .A2(n6319), .ZN(\y_w[0][1] ) );
  OAI211D0 U3406 ( .A1(n6526), .A2(n6525), .B(n6524), .C(n6523), .ZN(n6528) );
  ND4D0 U3407 ( .A1(n6627), .A2(n6626), .A3(n6625), .A4(n5908), .ZN(n6628) );
  ND3D0 U3408 ( .A1(n6624), .A2(n6623), .A3(\y_reg[3][6] ), .ZN(n6629) );
  INVD0 U3409 ( .I(\z_reg[4][0] ), .ZN(n6689) );
  ND2D0 U3410 ( .A1(n6558), .A2(n6557), .ZN(n6559) );
  OAI31D0 U3411 ( .A1(n6434), .A2(n5916), .A3(n6437), .B(n6183), .ZN(
        \y_w[3][4] ) );
  OAI22D0 U3412 ( .A1(n5916), .A2(n6182), .B1(n6434), .B2(n6181), .ZN(n6183)
         );
  XNR3D0 U3413 ( .A1(n6484), .A2(\z_reg[3][0] ), .A3(\z_reg[3][1] ), .ZN(
        \z_w[3][1] ) );
  XNR2D0 U3414 ( .A1(n6466), .A2(n5805), .ZN(n5968) );
  XNR3D0 U3415 ( .A1(n6335), .A2(\x_reg[1][5] ), .A3(n6465), .ZN(\y_w[1][4] )
         );
  INVD0 U3416 ( .I(\z_reg[6][7] ), .ZN(n5856) );
  INVD0 U3417 ( .I(\z_reg[2][0] ), .ZN(n6691) );
  INVD0 U3418 ( .I(n6282), .ZN(n6284) );
  OAI21D0 U3419 ( .A1(n6582), .A2(n6581), .B(n6580), .ZN(\z_w[2][1] ) );
  NR2D0 U3420 ( .A1(n6585), .A2(\z_reg[2][0] ), .ZN(n6578) );
  XNR2D0 U3421 ( .A1(\z_reg[2][0] ), .A2(n6582), .ZN(n6579) );
  XNR2D0 U3422 ( .A1(n6297), .A2(n6296), .ZN(\y_w[1][3] ) );
  ND2D0 U3423 ( .A1(n6330), .A2(n6326), .ZN(n6296) );
  OAI21D0 U3424 ( .A1(n6332), .A2(n6292), .B(n6328), .ZN(n6297) );
  INVD0 U3425 ( .I(n6291), .ZN(n6292) );
  IOA21D1 U3426 ( .A1(n5835), .A2(n6551), .B(n5832), .ZN(\x_w[0][7] ) );
  INVD0 U3427 ( .I(n6407), .ZN(n5835) );
  INVD0 U3428 ( .I(n6569), .ZN(n6567) );
  XNR2D0 U3429 ( .A1(n6290), .A2(n5800), .ZN(n6677) );
  ND2D0 U3430 ( .A1(n6425), .A2(n6551), .ZN(n5927) );
  INVD0 U3431 ( .I(n6664), .ZN(n6663) );
  XNR2D0 U3432 ( .A1(\z_reg[6][1] ), .A2(\z_reg[6][0] ), .ZN(n6664) );
  OAI211D0 U3433 ( .A1(n6240), .A2(n6127), .B(n6126), .C(n5810), .ZN(
        \z_w[6][3] ) );
  OAI21D0 U3434 ( .A1(n6122), .A2(n6241), .B(\z_reg[6][3] ), .ZN(n6126) );
  ND2D0 U3435 ( .A1(n5810), .A2(n6665), .ZN(n6666) );
  INVD0 U3436 ( .I(n6667), .ZN(n6669) );
  ND3D0 U3437 ( .A1(n6668), .A2(\z_reg[6][6] ), .A3(n6144), .ZN(n6142) );
  XNR2D0 U3438 ( .A1(n6667), .A2(\z_reg[6][6] ), .ZN(n6143) );
  INVD0 U3439 ( .I(\z_reg[6][5] ), .ZN(n6144) );
  INVD0 U3440 ( .I(\z_reg[5][0] ), .ZN(n6688) );
  OAI22D0 U3441 ( .A1(n6114), .A2(\A[5].CORDIC_element_inst1/N1 ), .B1(n6115), 
        .B2(n6650), .ZN(\z_w[5][1] ) );
  NR2D0 U3442 ( .A1(n6112), .A2(n6115), .ZN(n6114) );
  INVD0 U3443 ( .I(n6650), .ZN(n6651) );
  OAI211D0 U3444 ( .A1(\z_reg[5][3] ), .A2(n5808), .B(n6134), .C(n6118), .ZN(
        \z_w[5][3] ) );
  IND3D0 U3445 ( .A1(n6117), .B1(\z_reg[5][3] ), .B2(n5808), .ZN(n6118) );
  INVD0 U3446 ( .I(n6655), .ZN(n6135) );
  ND3D0 U3447 ( .A1(n6137), .A2(\z_reg[5][4] ), .A3(n6134), .ZN(n6136) );
  AOI21D0 U3448 ( .A1(\z_reg[5][4] ), .A2(n6656), .B(n6655), .ZN(n6658) );
  ND2D0 U3449 ( .A1(n6660), .A2(n6659), .ZN(n6661) );
  XNR2D0 U3450 ( .A1(n6475), .A2(\z_reg[5][8] ), .ZN(\z_w[5][8] ) );
  ND2D1 U3451 ( .A1(n6662), .A2(n6474), .ZN(n6475) );
  XNR2D0 U3452 ( .A1(\z_reg[4][2] ), .A2(n6248), .ZN(\z_w[4][2] ) );
  ND2D0 U3453 ( .A1(n6632), .A2(n6631), .ZN(n6634) );
  ND2D0 U3454 ( .A1(n6157), .A2(n6639), .ZN(\z_w[4][4] ) );
  MUX2ND0 U3455 ( .I0(n6153), .I1(n6398), .S(n6636), .ZN(n6157) );
  NR2D0 U3456 ( .A1(n6394), .A2(n6398), .ZN(n6153) );
  ND2D0 U3457 ( .A1(n6638), .A2(n6639), .ZN(n6637) );
  AOI21D1 U3458 ( .A1(\z_reg[4][5] ), .A2(n6638), .B(n5882), .ZN(n5881) );
  XNR3D0 U3459 ( .A1(n6398), .A2(\z_reg[4][7] ), .A3(n6337), .ZN(\z_w[4][7] )
         );
  AOI22D0 U3460 ( .A1(n6336), .A2(n6398), .B1(n6636), .B2(n6396), .ZN(n6337)
         );
  ND2D0 U3461 ( .A1(n6394), .A2(n6393), .ZN(n6336) );
  XNR3D0 U3462 ( .A1(n6398), .A2(\z_reg[4][8] ), .A3(n6397), .ZN(\z_w[4][8] )
         );
  AOI31D1 U3463 ( .A1(n6394), .A2(n6393), .A3(n6392), .B(n6635), .ZN(n6395) );
  INVD0 U3464 ( .I(\z_reg[4][7] ), .ZN(n6392) );
  CKXOR2D0 U3465 ( .A1(\y_reg[4][0] ), .A2(\x_reg[4][4] ), .Z(\y_w[4][0] ) );
  ND2D0 U3466 ( .A1(n6644), .A2(n6643), .ZN(n6257) );
  IOA21D0 U3467 ( .A1(n6645), .A2(n6644), .B(n6643), .ZN(n6649) );
  NR2D0 U3468 ( .A1(n6647), .A2(n6646), .ZN(n6648) );
  IOA21D1 U3469 ( .A1(n6379), .A2(n6385), .B(n6195), .ZN(n5954) );
  INVD0 U3470 ( .I(\x_reg[4][4] ), .ZN(n6216) );
  MAOI222D0 U3471 ( .A(n6215), .B(n6214), .C(\x_reg[4][3] ), .ZN(n6217) );
  XNR3D0 U3472 ( .A1(n6484), .A2(\z_reg[3][3] ), .A3(n6274), .ZN(\z_w[3][3] )
         );
  AOI21D0 U3473 ( .A1(n6484), .A2(n6273), .B(n6272), .ZN(n6274) );
  ND2D0 U3474 ( .A1(n6271), .A2(\z_reg[3][2] ), .ZN(n6273) );
  NR2D0 U3475 ( .A1(n6596), .A2(n6589), .ZN(n6591) );
  ND2D0 U3476 ( .A1(n6596), .A2(\z_reg[3][4] ), .ZN(n6600) );
  NR2D0 U3477 ( .A1(n6620), .A2(n6619), .ZN(n6622) );
  INVD0 U3478 ( .I(n6618), .ZN(n6620) );
  ND2D0 U3479 ( .A1(n6261), .A2(n6260), .ZN(n6262) );
  AOI21D0 U3480 ( .A1(n6618), .A2(n6621), .B(n6619), .ZN(n6263) );
  XNR2D0 U3481 ( .A1(n6268), .A2(n6267), .ZN(\intadd_10/SUM[0] ) );
  INVD0 U3482 ( .I(n6264), .ZN(n6266) );
  ND2D0 U3483 ( .A1(n6306), .A2(n6309), .ZN(n6308) );
  INVD0 U3484 ( .I(n6310), .ZN(n6306) );
  XNR2D0 U3485 ( .A1(n6316), .A2(n6315), .ZN(\x_w[3][3] ) );
  OAI21D0 U3486 ( .A1(n6311), .A2(n6310), .B(n6309), .ZN(n6316) );
  INVD0 U3487 ( .I(n6312), .ZN(n6314) );
  XNR2D0 U3488 ( .A1(n6469), .A2(\DP_OP_42J2_143_9341/n1 ), .ZN(\x_w[3][8] )
         );
  XNR3D0 U3489 ( .A1(n6582), .A2(\z_reg[2][2] ), .A3(n6300), .ZN(\z_w[2][2] )
         );
  XNR3D0 U3490 ( .A1(\z_reg[2][3] ), .A2(n6585), .A3(n6301), .ZN(\z_w[2][3] )
         );
  AOI22D0 U3491 ( .A1(n6300), .A2(n6299), .B1(\z_reg[2][2] ), .B2(n6585), .ZN(
        n6301) );
  IOA21D0 U3492 ( .A1(\z_reg[2][4] ), .A2(n6583), .B(n6586), .ZN(n6584) );
  OAI22D0 U3493 ( .A1(n6202), .A2(\z_reg[2][5] ), .B1(n6587), .B2(n6445), .ZN(
        \z_w[2][5] ) );
  OAI21D0 U3494 ( .A1(n6587), .A2(\z_reg[2][5] ), .B(n6445), .ZN(n6373) );
  OAI31D0 U3495 ( .A1(\z_reg[2][6] ), .A2(n6371), .A3(n6604), .B(n6606), .ZN(
        n6372) );
  XNR2D0 U3496 ( .A1(n6447), .A2(\z_reg[2][7] ), .ZN(\z_w[2][7] ) );
  ND3D0 U3497 ( .A1(\z_reg[2][7] ), .A2(\z_reg[2][6] ), .A3(\z_reg[2][5] ), 
        .ZN(n6605) );
  NR2D0 U3498 ( .A1(n6576), .A2(n5828), .ZN(n6577) );
  INVD0 U3499 ( .I(n5930), .ZN(n6576) );
  CKBD1 U3500 ( .I(n6163), .Z(n6166) );
  INVD0 U3501 ( .I(n6608), .ZN(n6610) );
  IOA21D1 U3502 ( .A1(n6027), .A2(n6026), .B(n6030), .ZN(n6028) );
  INVD0 U3503 ( .I(\x_reg[2][6] ), .ZN(n6026) );
  ND2D0 U3504 ( .A1(n5794), .A2(n5921), .ZN(n6027) );
  CKXOR2D1 U3505 ( .A1(n6029), .A2(n5991), .Z(\x_w[2][8] ) );
  OAI21D0 U3506 ( .A1(\z_reg[1][5] ), .A2(n6595), .B(n6594), .ZN(n1714) );
  AOI31D0 U3507 ( .A1(n6595), .A2(\z_reg[1][5] ), .A3(n6593), .B(n6601), .ZN(
        n6594) );
  ND2D0 U3508 ( .A1(n6592), .A2(\z_reg[1][4] ), .ZN(n6595) );
  AOI21D0 U3509 ( .A1(n6602), .A2(\z_reg[1][3] ), .B(n6601), .ZN(n6603) );
  NR2D0 U3510 ( .A1(n6189), .A2(n6480), .ZN(n6193) );
  XNR2D0 U3511 ( .A1(n6342), .A2(\z_reg[1][7] ), .ZN(n6192) );
  INVD0 U3512 ( .I(n6189), .ZN(n6191) );
  CKXOR2D0 U3513 ( .A1(n6280), .A2(n6332), .Z(\y_w[1][2] ) );
  XOR3D0 U3514 ( .A1(\x_reg[1][1] ), .A2(n5813), .A3(n6254), .Z(n1690) );
  XOR3D0 U3515 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][2] ), .A3(
        \z_reg[0][3] ), .Z(\z_w[0][3] ) );
  OR2D0 U3516 ( .A1(n6149), .A2(n6321), .Z(\z_w[0][4] ) );
  XNR3D0 U3517 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][5] ), .A3(
        n6305), .ZN(\z_w[0][5] ) );
  ND2D0 U3518 ( .A1(n6304), .A2(n6303), .ZN(n6305) );
  OAI21D0 U3519 ( .A1(n6302), .A2(\z_reg[0][4] ), .B(
        \A[0].CORDIC_element_inst1/N1 ), .ZN(n6304) );
  XNR2D0 U3520 ( .A1(n6325), .A2(\z_reg[0][6] ), .ZN(\z_w[0][6] ) );
  XNR3D0 U3521 ( .A1(\A[0].CORDIC_element_inst1/N1 ), .A2(\z_reg[0][7] ), .A3(
        n6455), .ZN(\z_w[0][7] ) );
  AOI21D0 U3522 ( .A1(n6548), .A2(n6547), .B(n6546), .ZN(n6550) );
  AOI21D0 U3523 ( .A1(n6509), .A2(n6508), .B(n6526), .ZN(n6511) );
  INVD0 U3524 ( .I(n6504), .ZN(n6505) );
  XNR2D0 U3525 ( .A1(n6543), .A2(n6542), .ZN(n6544) );
  INVD0 U3526 ( .I(n6370), .ZN(n6587) );
  ND2D0 U3527 ( .A1(n6604), .A2(n6370), .ZN(n6446) );
  OAI21D1 U3528 ( .A1(n6023), .A2(n5804), .B(n5903), .ZN(n5902) );
  INVD0 U3529 ( .I(\y_reg[0][6] ), .ZN(n6080) );
  IOA21D2 U3530 ( .A1(n6083), .A2(n6081), .B(n6069), .ZN(n6428) );
  CKBD1 U3531 ( .I(n6255), .Z(n5813) );
  MUX2ND0 U3532 ( .I0(\A[1].CORDIC_element_inst1/N1 ), .I1(\x_reg[1][0] ), .S(
        \y_reg[1][1] ), .ZN(n6255) );
  NR2D2 U3533 ( .A1(n6039), .A2(n6038), .ZN(n6283) );
  NR2D0 U3534 ( .A1(n6562), .A2(n6561), .ZN(n6564) );
  CKND2 U3535 ( .I(n5896), .ZN(n5878) );
  ND2D1 U3536 ( .A1(n5993), .A2(n5809), .ZN(n6195) );
  ND3D2 U3537 ( .A1(n6259), .A2(n6618), .A3(n6261), .ZN(n6178) );
  XNR2D2 U3538 ( .A1(n6199), .A2(n5817), .ZN(n6053) );
  NR2D1 U3539 ( .A1(n6423), .A2(n6501), .ZN(n6427) );
  ND2D2 U3540 ( .A1(n5947), .A2(n6243), .ZN(n6645) );
  ND2D1 U3541 ( .A1(n6244), .A2(n6242), .ZN(n5947) );
  AOI21D1 U3542 ( .A1(n6011), .A2(n6014), .B(n6013), .ZN(n5969) );
  ND2D1 U3543 ( .A1(n6546), .A2(n6507), .ZN(n6523) );
  ND2D2 U3544 ( .A1(n6077), .A2(\x_reg[0][3] ), .ZN(n6507) );
  INVD0 U3545 ( .I(n6560), .ZN(n6562) );
  NR2D2 U3546 ( .A1(n5941), .A2(\y_reg[4][3] ), .ZN(n6646) );
  INVD0 U3547 ( .I(n6259), .ZN(n5820) );
  INVD0 U3548 ( .I(n5820), .ZN(n5821) );
  INR2D2 U3549 ( .A1(\y_reg[3][2] ), .B1(n6004), .ZN(n6619) );
  AOI22D2 U3550 ( .A1(n6204), .A2(n6690), .B1(n6203), .B2(n6484), .ZN(n6271)
         );
  OA21D0 U3551 ( .A1(\x_reg[4][6] ), .A2(n6218), .B(n6641), .Z(n6676) );
  ND2D2 U3552 ( .A1(n6218), .A2(\x_reg[4][6] ), .ZN(n6641) );
  OAI31D1 U3553 ( .A1(\y_reg[1][4] ), .A2(n6476), .A3(n6477), .B(n6438), .ZN(
        n5837) );
  XNR2D1 U3554 ( .A1(\x_reg[2][3] ), .A2(\A[2].CORDIC_element_inst1/N1 ), .ZN(
        n6250) );
  CKXOR2D1 U3555 ( .A1(\y_reg[2][4] ), .A2(\A[2].CORDIC_element_inst1/N1 ), 
        .Z(n5987) );
  INVD0 U3556 ( .I(\y_reg[2][5] ), .ZN(n6041) );
  INVD0 U3557 ( .I(\x_reg[1][7] ), .ZN(n6021) );
  ND2D1 U3558 ( .A1(n5967), .A2(\x_reg[1][5] ), .ZN(n6019) );
  INVD0 U3559 ( .I(n5829), .ZN(n5965) );
  INVD0 U3560 ( .I(n5263), .ZN(n6010) );
  CKXOR2D1 U3561 ( .A1(\DP_OP_42J2_143_9341/n1 ), .A2(n6484), .Z(n6626) );
  AO211D0 U3562 ( .A1(n6450), .A2(n6057), .B(n6056), .C(n6055), .Z(n5822) );
  INVD0 U3563 ( .I(\y_reg[3][6] ), .ZN(n5908) );
  ND2D0 U3564 ( .A1(n4378), .A2(\x_reg[2][6] ), .ZN(n5823) );
  INVD0 U3565 ( .I(\y_reg[1][1] ), .ZN(n5852) );
  OR2D0 U3566 ( .A1(n6422), .A2(n6423), .Z(n5824) );
  INVD0 U3567 ( .I(\x_reg[1][4] ), .ZN(n6222) );
  OA21D0 U3568 ( .A1(n6424), .A2(n5824), .B(n5928), .Z(n5825) );
  OR2D0 U3569 ( .A1(n6443), .A2(n6463), .Z(n5826) );
  AN2XD1 U3570 ( .A1(n6279), .A2(n5852), .Z(n5827) );
  ND2D0 U3571 ( .A1(n6458), .A2(n6459), .ZN(n5872) );
  AOI21D4 U3572 ( .A1(n5828), .A2(n6282), .B(n6283), .ZN(n6163) );
  AOI21D0 U3573 ( .A1(n6281), .A2(n5930), .B(n5828), .ZN(n6286) );
  INVD0 U3574 ( .I(n5830), .ZN(n6227) );
  ND2D2 U3575 ( .A1(n5830), .A2(n5957), .ZN(n5829) );
  CKXOR2D2 U3576 ( .A1(\y_reg[1][4] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n6335) );
  CKND2 U3577 ( .I(n6276), .ZN(n5831) );
  CKXOR2D1 U3578 ( .A1(n5834), .A2(n6406), .Z(n5833) );
  CKXOR2D1 U3579 ( .A1(n5836), .A2(n6404), .Z(\y_w[1][5] ) );
  CKND2D1 U3580 ( .A1(n6465), .A2(\y_reg[1][4] ), .ZN(n5838) );
  INVD0 U3581 ( .I(n5842), .ZN(n5840) );
  ND3D0 U3582 ( .A1(n5843), .A2(n5842), .A3(n5841), .ZN(n5844) );
  ND3D2 U3583 ( .A1(n5878), .A2(n6334), .A3(n6333), .ZN(n5842) );
  AOI31D1 U3584 ( .A1(n6478), .A2(n6479), .A3(n5939), .B(\y_reg[1][7] ), .ZN(
        n5847) );
  NR4D1 U3585 ( .A1(n5896), .A2(n6477), .A3(n6476), .A4(\y_reg[1][7] ), .ZN(
        n5848) );
  CKND2 U3586 ( .I(\A[2].CORDIC_element_inst1/N1 ), .ZN(n6035) );
  CKND2 U3587 ( .I(n5893), .ZN(n5850) );
  CKND2 U3588 ( .I(\x_reg[1][1] ), .ZN(n5851) );
  CKXOR2D1 U3589 ( .A1(n5853), .A2(n5826), .Z(\y_w[1][6] ) );
  AOI22D1 U3590 ( .A1(n6171), .A2(n6170), .B1(n6174), .B2(n6168), .ZN(n6173)
         );
  NR2D2 U3591 ( .A1(n5973), .A2(\x_reg[3][3] ), .ZN(n6312) );
  INVD0 U3592 ( .I(n5885), .ZN(n5884) );
  MUX2ND0 U3593 ( .I0(n6671), .I1(n6672), .S(n5856), .ZN(n6399) );
  CKND1 U3594 ( .I(n5857), .ZN(n6042) );
  CKXOR2D1 U3595 ( .A1(n5858), .A2(\z_reg[3][8] ), .Z(\z_w[3][8] ) );
  AOI21D2 U3596 ( .A1(n6467), .A2(\z_reg[3][7] ), .B(n5859), .ZN(n5858) );
  INR2D2 U3597 ( .A1(n5861), .B1(n6598), .ZN(n5860) );
  ND2D2 U3598 ( .A1(n6366), .A2(\z_reg[3][6] ), .ZN(n6467) );
  NR2XD1 U3599 ( .A1(n6588), .A2(n6207), .ZN(n6366) );
  CKXOR2D1 U3600 ( .A1(n6430), .A2(n6429), .Z(\y_w[0][8] ) );
  CKXOR2D1 U3601 ( .A1(n5862), .A2(n6575), .Z(n6680) );
  ND2D2 U3602 ( .A1(n5938), .A2(n5865), .ZN(n5923) );
  ND2D2 U3603 ( .A1(n5867), .A2(n5866), .ZN(n5865) );
  CKND2 U3604 ( .I(\x_reg[2][2] ), .ZN(n5866) );
  CKND1 U3605 ( .I(\A[2].CORDIC_element_inst1/N1 ), .ZN(n5867) );
  ND2D2 U3606 ( .A1(n6055), .A2(n6056), .ZN(n6088) );
  CKND2D1 U3607 ( .A1(n6088), .A2(n5874), .ZN(n6089) );
  NR2D2 U3608 ( .A1(n6438), .A2(\y_reg[1][4] ), .ZN(n6460) );
  XNR2D1 U3609 ( .A1(\x_reg[4][7] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n5941) );
  INVD0 U3610 ( .I(n6022), .ZN(n5868) );
  OA21D1 U3611 ( .A1(n6014), .A2(n6013), .B(n5868), .Z(n6016) );
  NR2D2 U3612 ( .A1(n6025), .A2(n6024), .ZN(n877) );
  CKXOR2D1 U3613 ( .A1(n5954), .A2(\y_reg[4][5] ), .Z(\y_w[4][5] ) );
  INVD2 U3614 ( .I(n5803), .ZN(n6343) );
  NR3D1 U3615 ( .A1(n6181), .A2(\y_reg[3][5] ), .A3(n6626), .ZN(n6007) );
  ND2D2 U3616 ( .A1(n6178), .A2(n6179), .ZN(n5891) );
  OAI21D1 U3617 ( .A1(n6057), .A2(n6055), .B(n6056), .ZN(n6048) );
  ND2D2 U3618 ( .A1(n5924), .A2(\y_reg[2][4] ), .ZN(n6449) );
  ND2D1 U3619 ( .A1(n6388), .A2(n5870), .ZN(n6374) );
  CKND1 U3620 ( .I(n5871), .ZN(n5870) );
  ND3D1 U3621 ( .A1(n6385), .A2(\y_reg[4][5] ), .A3(\y_reg[4][4] ), .ZN(n5871)
         );
  ND2D2 U3622 ( .A1(n6276), .A2(n6275), .ZN(n6329) );
  ND2D2 U3623 ( .A1(n6091), .A2(n5879), .ZN(n6092) );
  ND2D2 U3624 ( .A1(n5873), .A2(n6043), .ZN(n6044) );
  CKND2D2 U3625 ( .A1(n5874), .A2(n4372), .ZN(n5926) );
  ND2D2 U3626 ( .A1(n6040), .A2(n5893), .ZN(n5874) );
  AOI21D1 U3627 ( .A1(n6051), .A2(n5876), .B(n6050), .ZN(n6052) );
  OAI211D4 U3628 ( .A1(n6050), .A2(n5876), .B(n6053), .C(n6044), .ZN(n5879) );
  NR2XD0 U3629 ( .A1(n5875), .A2(n6048), .ZN(n6054) );
  CKND2 U3630 ( .I(n6418), .ZN(n6434) );
  ND2D2 U3631 ( .A1(n5885), .A2(n5999), .ZN(n6418) );
  CKXOR2D1 U3632 ( .A1(n5877), .A2(n6559), .Z(n6681) );
  OAI21D0 U3633 ( .A1(n5800), .A2(n6555), .B(n5925), .ZN(n5877) );
  ND2D2 U3634 ( .A1(n6045), .A2(n5879), .ZN(n6046) );
  INR2D2 U3635 ( .A1(\z_reg[4][2] ), .B1(n6238), .ZN(n6154) );
  ND2D2 U3636 ( .A1(n5884), .A2(\y_reg[3][4] ), .ZN(n6179) );
  CKXOR2D2 U3637 ( .A1(\x_reg[3][6] ), .A2(\A[3].CORDIC_element_inst1/N1 ), 
        .Z(n6005) );
  OAI21D2 U3638 ( .A1(n6613), .A2(n6616), .B(n6614), .ZN(n6259) );
  OAI21D1 U3639 ( .A1(n6000), .A2(n6001), .B(\y_reg[3][1] ), .ZN(n6614) );
  NR3D1 U3640 ( .A1(n6001), .A2(n6000), .A3(\y_reg[3][1] ), .ZN(n6613) );
  CKXOR2D1 U3641 ( .A1(n5887), .A2(n5886), .Z(n234) );
  INVD0 U3642 ( .I(\DP_OP_42J2_143_9341/n1 ), .ZN(n5886) );
  ND3D2 U3643 ( .A1(n6180), .A2(n6179), .A3(n6260), .ZN(n6437) );
  CKND2 U3644 ( .I(n5891), .ZN(n5890) );
  XNR2D2 U3645 ( .A1(\A[2].CORDIC_element_inst1/N1 ), .A2(\x_reg[2][6] ), .ZN(
        n5924) );
  ND2D2 U3646 ( .A1(n6478), .A2(n5895), .ZN(n5894) );
  CKND1 U3647 ( .I(n6463), .ZN(n5895) );
  ND3D2 U3648 ( .A1(n5962), .A2(n5961), .A3(n5898), .ZN(n6020) );
  ND2D2 U3649 ( .A1(n5958), .A2(n6222), .ZN(n5961) );
  ND2D2 U3650 ( .A1(n6221), .A2(n5957), .ZN(n5962) );
  CKND1 U3651 ( .I(n5904), .ZN(n5901) );
  ND2D1 U3652 ( .A1(n6018), .A2(n6019), .ZN(n5904) );
  NR2XD1 U3653 ( .A1(n6258), .A2(\x_reg[1][2] ), .ZN(n6023) );
  OAI22D2 U3654 ( .A1(n5956), .A2(n6254), .B1(n6255), .B2(n5851), .ZN(n6258)
         );
  ND2D0 U3655 ( .A1(n5909), .A2(n6627), .ZN(n6623) );
  INVD0 U3656 ( .I(n6626), .ZN(n5910) );
  ND2D0 U3657 ( .A1(n6626), .A2(\y_reg[3][6] ), .ZN(n5913) );
  CKND2 U3658 ( .I(n6178), .ZN(n5916) );
  ND3D2 U3659 ( .A1(n6008), .A2(n6007), .A3(n5917), .ZN(n6624) );
  ND2D2 U3660 ( .A1(n6565), .A2(n5918), .ZN(n5985) );
  CKND2 U3661 ( .I(n5988), .ZN(n5918) );
  ND2D2 U3662 ( .A1(n6572), .A2(n6570), .ZN(n5988) );
  ND2D2 U3663 ( .A1(n5982), .A2(\x_reg[2][4] ), .ZN(n6570) );
  IND2D2 U3664 ( .A1(n5980), .B1(n5981), .ZN(n6557) );
  CKND1 U3665 ( .I(n6558), .ZN(n5919) );
  ND2D2 U3666 ( .A1(n5980), .A2(\x_reg[2][3] ), .ZN(n6558) );
  ND2D0 U3667 ( .A1(n6249), .A2(n5923), .ZN(n6251) );
  ND2D0 U3668 ( .A1(n5925), .A2(n6554), .ZN(n6290) );
  CKND2 U3669 ( .I(n5926), .ZN(n5931) );
  NR2XD0 U3670 ( .A1(n6427), .A2(n6426), .ZN(n5928) );
  NR2XD1 U3671 ( .A1(n6357), .A2(n6506), .ZN(n6424) );
  NR2XD0 U3672 ( .A1(n6546), .A2(n6519), .ZN(n6508) );
  CKND2D3 U3673 ( .A1(n6039), .A2(n6038), .ZN(n6282) );
  INR2D4 U3674 ( .A1(n6473), .B1(n6472), .ZN(n6662) );
  ND3D2 U3675 ( .A1(n6087), .A2(n5931), .A3(n6088), .ZN(n6045) );
  OA21D1 U3676 ( .A1(n6415), .A2(n6527), .B(n6500), .Z(n5932) );
  CKND2D2 U3677 ( .A1(n6330), .A2(n6329), .ZN(n6331) );
  ND2D2 U3678 ( .A1(n5801), .A2(n5949), .ZN(n6644) );
  AO211D0 U3679 ( .A1(n6324), .A2(n6323), .B(n6322), .C(
        \A[0].CORDIC_element_inst1/N1 ), .Z(n5937) );
  CKAN2D1 U3680 ( .A1(n6032), .A2(n6031), .Z(n5938) );
  OR2D0 U3681 ( .A1(\x_reg[1][7] ), .A2(\y_reg[1][6] ), .Z(n5939) );
  INVD0 U3682 ( .I(\y_reg[1][7] ), .ZN(n6481) );
  NR2D1 U3683 ( .A1(\A[3].CORDIC_element_inst1/N1 ), .A2(\x_reg[3][3] ), .ZN(
        n6000) );
  INVD0 U3684 ( .I(\z_reg[2][2] ), .ZN(n6298) );
  INVD1 U3685 ( .I(n6018), .ZN(n6015) );
  INVD0 U3686 ( .I(n6113), .ZN(n6112) );
  ND2D0 U3687 ( .A1(n6298), .A2(n6582), .ZN(n6299) );
  INVD0 U3688 ( .I(n6453), .ZN(n6452) );
  ND2D0 U3689 ( .A1(n6487), .A2(n6486), .ZN(n6489) );
  NR2D0 U3690 ( .A1(n6652), .A2(n6651), .ZN(n6654) );
  INVD0 U3691 ( .I(n6379), .ZN(n6196) );
  ND2D0 U3692 ( .A1(n6266), .A2(n6265), .ZN(n6268) );
  INVD0 U3693 ( .I(n6446), .ZN(n6202) );
  ND2D0 U3694 ( .A1(n6291), .A2(n6328), .ZN(n6280) );
  INVD0 U3695 ( .I(n6529), .ZN(n6503) );
  TIEH U3696 ( .Z(n6674) );
  ND2D2 U3697 ( .A1(n5948), .A2(\y_reg[4][2] ), .ZN(n6643) );
  XNR2D1 U3698 ( .A1(\x_reg[4][5] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n6244) );
  OAI21D1 U3699 ( .A1(n5946), .A2(n5945), .B(\y_reg[4][1] ), .ZN(n6243) );
  ND2D2 U3700 ( .A1(n6258), .A2(\x_reg[1][2] ), .ZN(n5966) );
  INVD1 U3701 ( .I(n6223), .ZN(n5958) );
  OAI211D2 U3702 ( .A1(n5829), .A2(n6364), .B(n5962), .C(n5961), .ZN(n5960) );
  CKXOR2D2 U3703 ( .A1(\y_reg[1][6] ), .A2(\A[1].CORDIC_element_inst1/N1 ), 
        .Z(n5967) );
  CKXOR2D1 U3704 ( .A1(n5967), .A2(n5899), .Z(n5959) );
  ND3D1 U3705 ( .A1(n5964), .A2(n5965), .A3(n5797), .ZN(n6014) );
  XNR2D1 U3706 ( .A1(\y_reg[1][7] ), .A2(n6277), .ZN(n6466) );
  CKXOR2D1 U3707 ( .A1(n5969), .A2(n5968), .Z(n5272) );
  INVD2 U3708 ( .I(\y_reg[3][5] ), .ZN(n6419) );
  NR2D2 U3709 ( .A1(n5972), .A2(\x_reg[3][2] ), .ZN(n6310) );
  NR2D1 U3710 ( .A1(n5970), .A2(\x_reg[3][1] ), .ZN(n6264) );
  ND2D1 U3711 ( .A1(n5970), .A2(\x_reg[3][1] ), .ZN(n6265) );
  OAI21D2 U3712 ( .A1(n5971), .A2(n6264), .B(n6265), .ZN(n6307) );
  ND2D2 U3713 ( .A1(n5972), .A2(\x_reg[3][2] ), .ZN(n6309) );
  ND2D1 U3714 ( .A1(n5973), .A2(\x_reg[3][3] ), .ZN(n6313) );
  CKXOR2D1 U3715 ( .A1(n5263), .A2(n6484), .Z(n5976) );
  ND2D1 U3716 ( .A1(n6220), .A2(n5977), .ZN(n5978) );
  NR2XD0 U3717 ( .A1(n6234), .A2(n5979), .ZN(\x_w[3][6] ) );
  CKXOR2D2 U3718 ( .A1(\y_reg[2][5] ), .A2(\A[2].CORDIC_element_inst1/N1 ), 
        .Z(n5980) );
  NR2D1 U3719 ( .A1(n5982), .A2(\x_reg[2][4] ), .ZN(n6569) );
  NR2D1 U3720 ( .A1(n5983), .A2(n5816), .ZN(n6573) );
  AOI21D1 U3721 ( .A1(n6569), .A2(n6572), .B(n6573), .ZN(n5984) );
  MUX2ND0 U3722 ( .I0(n6199), .I1(\x_reg[2][0] ), .S(\y_reg[2][2] ), .ZN(n6611) );
  ND2D1 U3723 ( .A1(n5987), .A2(\x_reg[2][2] ), .ZN(n6554) );
  ND2D2 U3724 ( .A1(n6375), .A2(n6381), .ZN(n5996) );
  ND2D2 U3725 ( .A1(n5996), .A2(n5995), .ZN(n5998) );
  CKXOR2D2 U3726 ( .A1(n5998), .A2(n5997), .Z(\y_w[4][7] ) );
  AN2XD1 U3727 ( .A1(\y_reg[3][0] ), .A2(\x_reg[3][3] ), .Z(n6001) );
  CKND1 U3728 ( .I(n6005), .ZN(n6006) );
  ND2D2 U3729 ( .A1(n6006), .A2(\y_reg[3][3] ), .ZN(n6260) );
  NR2D2 U3730 ( .A1(n6434), .A2(n6419), .ZN(n6625) );
  INVD1 U3731 ( .I(n6011), .ZN(n6012) );
  ND2D1 U3732 ( .A1(n6012), .A2(n6019), .ZN(n6017) );
  AOI211D2 U3733 ( .A1(n6017), .A2(n6016), .B(\x_reg[1][7] ), .C(n6015), .ZN(
        n6025) );
  INVD1 U3734 ( .I(n6047), .ZN(n6024) );
  ND2D1 U3735 ( .A1(\y_reg[2][0] ), .A2(\x_reg[2][2] ), .ZN(n6032) );
  CKND1 U3736 ( .I(\y_reg[2][1] ), .ZN(n6031) );
  INVD0 U3737 ( .I(n6032), .ZN(n6033) );
  ND4D2 U3738 ( .A1(n6164), .A2(n6163), .A3(n6040), .A4(n6449), .ZN(n6087) );
  INVD2 U3739 ( .I(n6053), .ZN(n6056) );
  CKXOR2D2 U3740 ( .A1(n6046), .A2(n5991), .Z(n232) );
  NR2D1 U3741 ( .A1(n6055), .A2(n5893), .ZN(n6049) );
  MUX2ND0 U3742 ( .I0(n6054), .I1(n5812), .S(n6052), .ZN(n6058) );
  ND2D1 U3743 ( .A1(\x_reg[0][4] ), .A2(\y_reg[0][4] ), .ZN(n6065) );
  INVD1 U3744 ( .I(\x_reg[0][4] ), .ZN(n6076) );
  INVD1 U3745 ( .I(\y_reg[0][4] ), .ZN(n6071) );
  AOI22D1 U3746 ( .A1(n6491), .A2(n6065), .B1(n6076), .B2(n6071), .ZN(n6408)
         );
  ND2D1 U3747 ( .A1(\y_reg[0][5] ), .A2(\x_reg[0][5] ), .ZN(n6411) );
  ND2D1 U3748 ( .A1(n6072), .A2(n6070), .ZN(n6410) );
  NR2D1 U3749 ( .A1(n6061), .A2(n6060), .ZN(n6068) );
  NR2XD0 U3750 ( .A1(\y_reg[0][2] ), .A2(\x_reg[0][2] ), .ZN(n6518) );
  NR2D1 U3751 ( .A1(\y_reg[0][1] ), .A2(\x_reg[0][1] ), .ZN(n6514) );
  NR2D1 U3752 ( .A1(n6518), .A2(n6514), .ZN(n6062) );
  ND2D1 U3753 ( .A1(\x_reg[0][0] ), .A2(\y_reg[0][0] ), .ZN(n6318) );
  IOA21D1 U3754 ( .A1(\y_reg[0][1] ), .A2(\x_reg[0][1] ), .B(n6318), .ZN(n6516) );
  ND2D1 U3755 ( .A1(n6062), .A2(n6516), .ZN(n6493) );
  INR2XD0 U3756 ( .A1(n6065), .B1(n6490), .ZN(n6409) );
  ND3D1 U3757 ( .A1(n6493), .A2(n6066), .A3(n6409), .ZN(n6067) );
  ND2D1 U3758 ( .A1(n6068), .A2(n6067), .ZN(n6353) );
  IOA21D1 U3759 ( .A1(\y_reg[0][7] ), .A2(\x_reg[0][7] ), .B(n6353), .ZN(n6069) );
  ND2D1 U3760 ( .A1(n6072), .A2(\x_reg[0][5] ), .ZN(n6500) );
  INVD1 U3761 ( .I(n6355), .ZN(n6074) );
  ND2D1 U3762 ( .A1(n6078), .A2(\x_reg[0][2] ), .ZN(n6547) );
  ND2D1 U3763 ( .A1(n6075), .A2(\x_reg[0][1] ), .ZN(n6496) );
  ND2D1 U3764 ( .A1(n6076), .A2(\y_reg[0][4] ), .ZN(n6494) );
  INVD1 U3765 ( .I(n6494), .ZN(n6358) );
  NR2D1 U3766 ( .A1(n6358), .A2(n6519), .ZN(n6524) );
  XNR2D1 U3767 ( .A1(n6086), .A2(\x_reg[0][8] ), .ZN(\x_w[0][8] ) );
  CKND2 U3768 ( .I(n6087), .ZN(n6090) );
  NR2D2 U3769 ( .A1(n6090), .A2(n6089), .ZN(n6091) );
  CKXOR2D1 U3770 ( .A1(n6092), .A2(n5940), .Z(n4354) );
  CKND1 U3771 ( .I(\A[5].CORDIC_element_inst1/N1 ), .ZN(n6096) );
  NR3D0 U3772 ( .A1(n5818), .A2(\y_reg[5][3] ), .A3(\y_reg[5][4] ), .ZN(n6094)
         );
  INR4D0 U3773 ( .A1(n6094), .B1(\y_reg[5][5] ), .B2(\y_reg[5][6] ), .B3(n6093), .ZN(n6095) );
  MUX2ND0 U3774 ( .I0(n6096), .I1(\x_reg[5][8] ), .S(n6095), .ZN(n6111) );
  OA22D0 U3775 ( .A1(\y_reg[5][2] ), .A2(n6097), .B1(n6098), .B2(\y_reg[5][1] ), .Z(n6102) );
  ND2D0 U3776 ( .A1(\x_reg[5][5] ), .A2(\y_reg[5][0] ), .ZN(n6099) );
  OAI211D1 U3777 ( .A1(\A[5].CORDIC_element_inst1/N1 ), .A2(\x_reg[5][5] ), 
        .B(n6100), .C(n6099), .ZN(n6101) );
  ND2D1 U3778 ( .A1(n6102), .A2(n6101), .ZN(n6106) );
  INVD0 U3779 ( .I(n6106), .ZN(n6109) );
  AOI211D1 U3780 ( .A1(n6106), .A2(n6105), .B(n6104), .C(n6103), .ZN(n6107) );
  AOI21D1 U3781 ( .A1(n6109), .A2(n6108), .B(n6107), .ZN(n6110) );
  CKMUX2D1 U3782 ( .I0(\x_reg[5][8] ), .I1(n6111), .S(n6110), .Z(n238) );
  NR2D1 U3783 ( .A1(\z_reg[6][1] ), .A2(\z_reg[6][0] ), .ZN(n6120) );
  INR2XD0 U3784 ( .A1(\A[6].CORDIC_element_inst1/N1 ), .B1(n6120), .ZN(n6119)
         );
  INR2XD0 U3785 ( .A1(\z_reg[6][1] ), .B1(n6687), .ZN(n6138) );
  ND2D0 U3786 ( .A1(n6139), .A2(n6123), .ZN(n6127) );
  OA21D0 U3787 ( .A1(n6240), .A2(n6121), .B(n6125), .Z(n6122) );
  INVD1 U3788 ( .I(\z_reg[1][0] ), .ZN(n6692) );
  NR2D1 U3789 ( .A1(\z_reg[1][1] ), .A2(\z_reg[1][0] ), .ZN(n6235) );
  INR2XD0 U3790 ( .A1(\z_reg[1][1] ), .B1(n6692), .ZN(n6236) );
  CKBD3 U3791 ( .I(n5803), .Z(n6480) );
  INVD0 U3792 ( .I(n6160), .ZN(n6131) );
  INR2XD0 U3793 ( .A1(\z_reg[6][4] ), .B1(n6665), .ZN(n6667) );
  OAI21D1 U3794 ( .A1(\z_reg[0][3] ), .A2(\z_reg[0][2] ), .B(
        \A[0].CORDIC_element_inst1/N1 ), .ZN(n6145) );
  MUX2ND0 U3795 ( .I0(n6303), .I1(n6146), .S(n6551), .ZN(n6149) );
  NR2D1 U3796 ( .A1(n6302), .A2(n6148), .ZN(n6321) );
  ND2D1 U3797 ( .A1(\z_reg[4][1] ), .A2(\z_reg[4][0] ), .ZN(n6238) );
  ND2D2 U3798 ( .A1(n6154), .A2(n6398), .ZN(n6632) );
  INVD0 U3799 ( .I(n6154), .ZN(n6156) );
  NR2D1 U3800 ( .A1(n6160), .A2(n6343), .ZN(n6287) );
  AOI21D1 U3801 ( .A1(n6160), .A2(n6480), .B(\z_reg[1][3] ), .ZN(n6188) );
  CKND1 U3802 ( .I(\x_reg[4][1] ), .ZN(n6170) );
  XNR2D1 U3803 ( .A1(\y_reg[4][6] ), .A2(\A[4].CORDIC_element_inst1/N1 ), .ZN(
        n6174) );
  INVD0 U3804 ( .I(\x_reg[4][2] ), .ZN(n6168) );
  MUX2ND0 U3805 ( .I0(n6398), .I1(\x_reg[4][0] ), .S(\y_reg[4][4] ), .ZN(n6169) );
  OAI21D1 U3806 ( .A1(n6171), .A2(n6170), .B(n6169), .ZN(n6172) );
  ND2D1 U3807 ( .A1(n6173), .A2(n6172), .ZN(n6213) );
  OAI211D1 U3808 ( .A1(\x_reg[4][3] ), .A2(n6215), .B(\x_reg[4][5] ), .C(
        \x_reg[4][4] ), .ZN(n6176) );
  NR3D0 U3809 ( .A1(n6184), .A2(n6188), .A3(n6339), .ZN(n6185) );
  MUX2ND0 U3810 ( .I0(n6186), .I1(n6348), .S(n6185), .ZN(n6189) );
  AOI211D1 U3811 ( .A1(n6188), .A2(n6187), .B(n6343), .C(n6190), .ZN(n6342) );
  OAI211D1 U3812 ( .A1(\y_reg[4][4] ), .A2(n6388), .B(n6196), .C(n6385), .ZN(
        n6194) );
  OAI211D1 U3813 ( .A1(n6385), .A2(n6196), .B(n6195), .C(n6194), .ZN(
        \y_w[4][4] ) );
  NR2D1 U3814 ( .A1(\z_reg[2][3] ), .A2(\z_reg[2][2] ), .ZN(n6197) );
  ND2D1 U3815 ( .A1(n6256), .A2(n6197), .ZN(n6583) );
  ND2D1 U3816 ( .A1(n6206), .A2(n6208), .ZN(n6588) );
  INVD1 U3817 ( .I(n6468), .ZN(n6209) );
  AOI21D1 U3818 ( .A1(n6366), .A2(n6211), .B(n6209), .ZN(n6210) );
  ND2D1 U3819 ( .A1(n6213), .A2(n6212), .ZN(n6214) );
  OAI31D1 U3820 ( .A1(n6227), .A2(n6229), .A3(n6364), .B(n6226), .ZN(n6228) );
  AO31D1 U3821 ( .A1(n6230), .A2(n5796), .A3(n6229), .B(n6228), .Z(n5270) );
  OA21D1 U3822 ( .A1(n6234), .A2(\x_reg[3][7] ), .B(n6469), .Z(n2493) );
  CKXOR2D1 U3823 ( .A1(\y_reg[3][0] ), .A2(\x_reg[3][3] ), .Z(\y_w[3][0] ) );
  CKXOR2D1 U3824 ( .A1(\x_reg[0][0] ), .A2(\y_reg[0][0] ), .Z(\y_w[0][0] ) );
  CKXOR2D1 U3825 ( .A1(\y_reg[2][0] ), .A2(\x_reg[2][2] ), .Z(\y_w[2][0] ) );
  CKXOR2D1 U3826 ( .A1(\x_reg[1][0] ), .A2(\x_reg[1][1] ), .Z(\y_w[1][0] ) );
  CKXOR2D1 U3827 ( .A1(\x_reg[1][0] ), .A2(\y_reg[1][1] ), .Z(\x_w[1][0] ) );
  CKXOR2D1 U3828 ( .A1(n6237), .A2(n6480), .Z(n1715) );
  ND2D0 U3829 ( .A1(n6243), .A2(n6242), .ZN(n6245) );
  XNR2D0 U3830 ( .A1(n6245), .A2(n6244), .ZN(n6682) );
  MUX2ND0 U3831 ( .I0(n5811), .I1(n6246), .S(n6398), .ZN(n6248) );
  XNR2D0 U3832 ( .A1(n6251), .A2(n6250), .ZN(n6685) );
  MUX2ND0 U3833 ( .I0(n6318), .I1(n6252), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(n6253) );
  XNR2D0 U3834 ( .A1(n6257), .A2(n6645), .ZN(\y_w[4][2] ) );
  CKXOR2D1 U3835 ( .A1(n6263), .A2(n6262), .Z(\y_w[3][3] ) );
  MUX2ND0 U3836 ( .I0(n6270), .I1(n6269), .S(n6484), .ZN(\z_w[3][2] ) );
  ND2D1 U3837 ( .A1(\x_reg[1][0] ), .A2(\x_reg[1][1] ), .ZN(n6278) );
  CKND2D2 U3838 ( .A1(n5827), .A2(n6278), .ZN(n6560) );
  AOI21D1 U3839 ( .A1(n6279), .A2(n6278), .B(n5852), .ZN(n6561) );
  AOI21D2 U3840 ( .A1(n6560), .A2(n6563), .B(n6561), .ZN(n6332) );
  ND2D2 U3841 ( .A1(n6294), .A2(n6293), .ZN(n6330) );
  INVD1 U3842 ( .I(n6294), .ZN(n6295) );
  ND2D2 U3843 ( .A1(n6295), .A2(\y_reg[1][3] ), .ZN(n6326) );
  ND2D0 U3844 ( .A1(n6314), .A2(n6313), .ZN(n6315) );
  MUX2ND0 U3845 ( .I0(n6318), .I1(n6354), .S(n6551), .ZN(n6319) );
  CKND2 U3846 ( .I(n6330), .ZN(n6327) );
  INR2XD0 U3847 ( .A1(n6348), .B1(n6338), .ZN(n6346) );
  ND2D1 U3848 ( .A1(n6602), .A2(n6341), .ZN(n6345) );
  OAI21D0 U3849 ( .A1(n6342), .A2(n6346), .B(n6345), .ZN(n6351) );
  OAI211D1 U3850 ( .A1(n6346), .A2(\z_reg[1][8] ), .B(n6345), .C(n6344), .ZN(
        n6347) );
  OAI31D1 U3851 ( .A1(\z_reg[1][8] ), .A2(n6349), .A3(n6348), .B(n6347), .ZN(
        n6350) );
  AO21D1 U3852 ( .A1(\z_reg[1][8] ), .A2(n6351), .B(n6350), .Z(\z_w[1][8] ) );
  CKXOR2D1 U3853 ( .A1(n6406), .A2(n6353), .Z(n6407) );
  ND2D1 U3854 ( .A1(n6547), .A2(n6496), .ZN(n6356) );
  NR2D1 U3855 ( .A1(n6356), .A2(n6540), .ZN(n6506) );
  OAI21D1 U3856 ( .A1(n6507), .A2(n6358), .B(n6527), .ZN(n6422) );
  ND2D1 U3857 ( .A1(n6413), .A2(n6500), .ZN(n6423) );
  AOI21D0 U3858 ( .A1(n5819), .A2(n6501), .B(n6423), .ZN(n6360) );
  AOI21D1 U3859 ( .A1(n6361), .A2(n6360), .B(n6359), .ZN(n6362) );
  XNR2D1 U3860 ( .A1(n6362), .A2(n6406), .ZN(n6363) );
  MUX2ND0 U3861 ( .I0(n6407), .I1(n6363), .S(n6551), .ZN(\y_w[0][7] ) );
  ND2D1 U3862 ( .A1(n6467), .A2(n6468), .ZN(n6367) );
  CKXOR2D1 U3863 ( .A1(n6367), .A2(\z_reg[3][7] ), .Z(\z_w[3][7] ) );
  INVD0 U3864 ( .I(\z_reg[2][5] ), .ZN(n6371) );
  OR3XD1 U3865 ( .A1(\z_reg[2][5] ), .A2(\z_reg[2][6] ), .A3(n6370), .Z(n6606)
         );
  ND2D1 U3866 ( .A1(n6375), .A2(n6374), .ZN(n6376) );
  CKXOR2D1 U3867 ( .A1(n6376), .A2(\y_reg[4][6] ), .Z(\intadd_0/SUM[5] ) );
  NR2D2 U3868 ( .A1(n6641), .A2(n6642), .ZN(n6640) );
  CKXOR2D1 U3869 ( .A1(n6640), .A2(\DP_OP_52J2_152_3351/n1 ), .Z(\x_w[4][8] )
         );
  ND2D0 U3870 ( .A1(\y_reg[4][7] ), .A2(\y_reg[4][5] ), .ZN(n6377) );
  INR2XD0 U3871 ( .A1(\y_reg[4][6] ), .B1(n6377), .ZN(n6378) );
  ND2D0 U3872 ( .A1(n6379), .A2(n6378), .ZN(n6390) );
  ND2D0 U3873 ( .A1(n6381), .A2(n6380), .ZN(n6382) );
  INR2XD0 U3874 ( .A1(n6383), .B1(n6382), .ZN(n6384) );
  OAI21D1 U3875 ( .A1(n6388), .A2(n6387), .B(n6386), .ZN(n6389) );
  ND2D1 U3876 ( .A1(n6390), .A2(n6389), .ZN(n6391) );
  XNR2D1 U3877 ( .A1(n6391), .A2(\DP_OP_52J2_152_3351/n1 ), .ZN(n3825) );
  AOI31D1 U3878 ( .A1(\z_reg[4][7] ), .A2(n6636), .A3(n6396), .B(n6395), .ZN(
        n6397) );
  CKXOR2D1 U3879 ( .A1(n6399), .A2(\z_reg[6][8] ), .Z(\z_w[6][8] ) );
  INVD1 U3880 ( .I(n6439), .ZN(n6438) );
  CKXOR2D2 U3881 ( .A1(n5805), .A2(\A[1].CORDIC_element_inst1/N1 ), .Z(n6401)
         );
  ND2D2 U3882 ( .A1(n6401), .A2(n6400), .ZN(n6441) );
  INVD1 U3883 ( .I(n6441), .ZN(n6462) );
  NR2D1 U3884 ( .A1(n6462), .A2(n6403), .ZN(n6404) );
  IOA21D1 U3885 ( .A1(n6409), .A2(n6493), .B(n6408), .ZN(n6502) );
  CKXOR2D1 U3886 ( .A1(n6414), .A2(n6533), .Z(n6535) );
  NR2D1 U3887 ( .A1(n6424), .A2(n5819), .ZN(n6504) );
  AOI21D1 U3888 ( .A1(n6504), .A2(n6500), .B(n6415), .ZN(n6416) );
  XNR2D1 U3889 ( .A1(n6416), .A2(n6533), .ZN(n6417) );
  CKXOR2D1 U3890 ( .A1(n6421), .A2(n5910), .Z(n5782) );
  AN2XD1 U3891 ( .A1(n6625), .A2(n6431), .Z(n6432) );
  NR3D0 U3892 ( .A1(n5263), .A2(\y_reg[3][5] ), .A3(\y_reg[3][6] ), .ZN(n6433)
         );
  INVD0 U3893 ( .I(n6433), .ZN(n6436) );
  AOI21D1 U3894 ( .A1(n6434), .A2(n6433), .B(n6626), .ZN(n6435) );
  INR2XD0 U3895 ( .A1(\y_reg[1][4] ), .B1(n6439), .ZN(n6440) );
  ND2D2 U3896 ( .A1(n6442), .A2(\y_reg[1][6] ), .ZN(n6461) );
  MUX2D0 U3897 ( .I0(n6582), .I1(\z_reg[2][5] ), .S(\z_reg[2][6] ), .Z(n6444)
         );
  ND2D1 U3898 ( .A1(n6450), .A2(n6449), .ZN(n6451) );
  MUX2ND0 U3899 ( .I0(n6453), .I1(n6452), .S(n6451), .ZN(n4353) );
  ND2D2 U3900 ( .A1(n6462), .A2(n6461), .ZN(n6479) );
  INR2D2 U3901 ( .A1(n6471), .B1(n6470), .ZN(n6472) );
  CKXOR2D1 U3902 ( .A1(\z_reg[5][7] ), .A2(\A[5].CORDIC_element_inst1/N1 ), 
        .Z(n6474) );
  CKXOR2D1 U3903 ( .A1(n6489), .A2(n5799), .Z(\intadd_16/SUM[3] ) );
  INVD0 U3904 ( .I(n6490), .ZN(n6492) );
  ND2D1 U3905 ( .A1(n6525), .A2(n6537), .ZN(n6521) );
  CKXOR2D1 U3906 ( .A1(n6498), .A2(n6510), .Z(n6499) );
  MUX2ND0 U3907 ( .I0(n6513), .I1(n6499), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(\x_w[0][4] ) );
  CKXOR2D1 U3908 ( .A1(n6502), .A2(n6529), .Z(n6532) );
  MUX3ND0 U3909 ( .I0(n6505), .I1(n6504), .I2(n6532), .S0(n6503), .S1(
        \A[0].CORDIC_element_inst1/N1 ), .ZN(\y_w[0][5] ) );
  INVD0 U3910 ( .I(n6506), .ZN(n6509) );
  MUX2ND0 U3911 ( .I0(n6513), .I1(n6512), .S(n6551), .ZN(\y_w[0][4] ) );
  CKXOR2D1 U3912 ( .A1(n6521), .A2(n6549), .Z(n6522) );
  MUX2ND0 U3913 ( .I0(n6553), .I1(n6522), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(\x_w[0][3] ) );
  CKXOR2D1 U3914 ( .A1(n6530), .A2(n6529), .Z(n6531) );
  MUX2ND0 U3915 ( .I0(n6532), .I1(n6531), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(\x_w[0][5] ) );
  CKXOR2D1 U3916 ( .A1(n6534), .A2(n6533), .Z(n6536) );
  MUX2ND0 U3917 ( .I0(n6536), .I1(n6535), .S(n6551), .ZN(\x_w[0][6] ) );
  CKXOR2D1 U3918 ( .A1(n6548), .A2(n6542), .Z(n6541) );
  MUX2ND0 U3919 ( .I0(n6545), .I1(n6541), .S(n6551), .ZN(\y_w[0][2] ) );
  MUX2ND0 U3920 ( .I0(n6545), .I1(n6544), .S(\A[0].CORDIC_element_inst1/N1 ), 
        .ZN(\x_w[0][2] ) );
  MUX2ND0 U3921 ( .I0(n6553), .I1(n6552), .S(n6551), .ZN(\y_w[0][3] ) );
  INVD0 U3922 ( .I(n6554), .ZN(n6555) );
  CKXOR2D1 U3923 ( .A1(n6571), .A2(n6568), .Z(n6678) );
  CKXOR2D1 U3924 ( .A1(n6577), .A2(n6281), .Z(\y_w[2][2] ) );
  MUX2ND0 U3925 ( .I0(n6579), .I1(n6578), .S(\z_reg[2][1] ), .ZN(n6580) );
  AO22D0 U3926 ( .A1(n6587), .A2(n6586), .B1(n6585), .B2(n6584), .Z(
        \z_w[2][4] ) );
  CKXOR2D1 U3927 ( .A1(n6591), .A2(n6590), .Z(\z_w[3][4] ) );
  CKXOR2D1 U3928 ( .A1(n6603), .A2(\z_reg[1][6] ), .Z(n1716) );
  OAI22D1 U3929 ( .A1(n6606), .A2(\z_reg[2][7] ), .B1(n6605), .B2(n6604), .ZN(
        n6607) );
  CKXOR2D1 U3930 ( .A1(n6607), .A2(\z_reg[2][8] ), .Z(\z_w[2][8] ) );
  INVD0 U3931 ( .I(n6613), .ZN(n6615) );
  ND2D0 U3932 ( .A1(n6615), .A2(n6614), .ZN(n6617) );
  CKXOR2D1 U3933 ( .A1(n6622), .A2(n6621), .Z(\y_w[3][2] ) );
  CKXOR2D1 U3934 ( .A1(n6649), .A2(n6648), .Z(\y_w[4][3] ) );
  CKXOR2D1 U3935 ( .A1(n6661), .A2(\z_reg[5][6] ), .Z(\z_w[5][6] ) );
  CKXOR2D1 U3936 ( .A1(n6662), .A2(\z_reg[5][7] ), .Z(\z_w[5][7] ) );
  MUX2ND0 U3937 ( .I0(n6664), .I1(n6663), .S(\A[6].CORDIC_element_inst1/N1 ), 
        .ZN(\z_w[6][1] ) );
endmodule

