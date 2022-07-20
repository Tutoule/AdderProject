module GConnect(
  input   io_pInH,
  input   io_gInH,
  input   io_gInL,
  output  io_pgOut_p,
  output  io_pgOut_g
);
  assign io_pgOut_p = io_pInH; // @[CarryGenerator.scala 33:20]
  assign io_pgOut_g = io_gInH | io_pInH & io_gInL; // @[CarryGenerator.scala 32:31]
endmodule
module PGConnect(
  input   io_pgInH_p,
  input   io_pgInH_g,
  input   io_pgInL_p,
  input   io_pgInL_g,
  output  io_pgOut_p,
  output  io_pgOut_g
);
  assign io_pgOut_p = io_pgInH_p & io_pgInL_p; // @[CarryGenerator.scala 12:34]
  assign io_pgOut_g = io_pgInH_g | io_pgInH_p & io_pgInL_g; // @[CarryGenerator.scala 13:34]
endmodule
module CarryGen(
  input   io_pgIn_0_g,
  input   io_pgIn_1_p,
  input   io_pgIn_1_g,
  input   io_pgIn_2_p,
  input   io_pgIn_2_g,
  input   io_pgIn_3_p,
  input   io_pgIn_3_g,
  input   io_pgIn_4_p,
  input   io_pgIn_4_g,
  input   io_pgIn_5_p,
  input   io_pgIn_5_g,
  input   io_pgIn_6_p,
  input   io_pgIn_6_g,
  input   io_pgIn_7_p,
  input   io_pgIn_7_g,
  input   io_pgIn_8_p,
  input   io_pgIn_8_g,
  input   io_pgIn_9_p,
  input   io_pgIn_9_g,
  input   io_pgIn_10_p,
  input   io_pgIn_10_g,
  input   io_pgIn_11_p,
  input   io_pgIn_11_g,
  input   io_pgIn_12_p,
  input   io_pgIn_12_g,
  input   io_pgIn_13_p,
  input   io_pgIn_13_g,
  input   io_pgIn_14_p,
  input   io_pgIn_14_g,
  input   io_pgIn_15_p,
  input   io_pgIn_15_g,
  input   io_pgIn_16_p,
  input   io_pgIn_16_g,
  input   io_pgIn_17_p,
  input   io_pgIn_17_g,
  input   io_pgIn_18_p,
  input   io_pgIn_18_g,
  input   io_pgIn_19_p,
  input   io_pgIn_19_g,
  input   io_pgIn_20_p,
  input   io_pgIn_20_g,
  input   io_pgIn_21_p,
  input   io_pgIn_21_g,
  input   io_pgIn_22_p,
  input   io_pgIn_22_g,
  input   io_pgIn_23_p,
  input   io_pgIn_23_g,
  input   io_pgIn_24_p,
  input   io_pgIn_24_g,
  input   io_pgIn_25_p,
  input   io_pgIn_25_g,
  input   io_pgIn_26_p,
  input   io_pgIn_26_g,
  input   io_pgIn_27_p,
  input   io_pgIn_27_g,
  input   io_pgIn_28_p,
  input   io_pgIn_28_g,
  input   io_pgIn_29_p,
  input   io_pgIn_29_g,
  input   io_pgIn_30_p,
  input   io_pgIn_30_g,
  input   io_pgIn_31_p,
  input   io_pgIn_31_g,
  input   io_pgIn_32_p,
  input   io_pgIn_32_g,
  output  io_cOut_0,
  output  io_cOut_1,
  output  io_cOut_2,
  output  io_cOut_3,
  output  io_cOut_4,
  output  io_cOut_5,
  output  io_cOut_6,
  output  io_cOut_7,
  output  io_cOut_8,
  output  io_cOut_9,
  output  io_cOut_10,
  output  io_cOut_11,
  output  io_cOut_12,
  output  io_cOut_13,
  output  io_cOut_14,
  output  io_cOut_15,
  output  io_cOut_16,
  output  io_cOut_17,
  output  io_cOut_18,
  output  io_cOut_19,
  output  io_cOut_20,
  output  io_cOut_21,
  output  io_cOut_22,
  output  io_cOut_23,
  output  io_cOut_24,
  output  io_cOut_25,
  output  io_cOut_26,
  output  io_cOut_27,
  output  io_cOut_28,
  output  io_cOut_29,
  output  io_cOut_30,
  output  io_cOut_31,
  output  io_cOut_32
);
  wire  flow_1_1_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_1_1_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_1_1_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_1_1_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_1_1_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_1_3_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_3_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_3_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_3_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_3_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_3_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_5_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_7_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_9_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_11_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_13_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_15_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_17_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_19_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_21_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_23_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_25_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_27_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_29_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_1_31_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_3_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_2_3_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_2_3_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_2_3_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_2_3_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_2_5_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_5_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_5_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_5_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_5_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_5_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_7_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_9_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_11_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_13_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_15_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_17_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_19_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_21_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_23_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_25_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_27_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_29_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_2_31_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_5_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_3_5_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_3_5_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_3_5_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_3_5_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_3_7_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_3_7_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_3_7_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_3_7_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_3_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_3_9_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_9_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_9_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_9_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_9_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_9_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_11_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_13_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_15_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_17_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_19_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_21_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_23_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_25_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_27_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_29_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_3_31_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_7_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_7_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_7_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_4_7_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_4_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_4_9_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_9_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_9_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_4_9_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_4_9_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_4_11_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_11_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_11_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_4_11_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_4_11_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_4_13_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_13_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_13_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_4_13_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_4_13_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_4_15_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_15_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_4_15_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_4_15_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_4_15_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_4_17_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_17_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_17_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_17_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_17_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_17_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_19_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_21_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_23_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_25_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_27_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_29_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgInH_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgInH_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgInL_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgInL_g; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgOut_p; // @[CarryGenerator.scala 18:37]
  wire  flow_4_31_connect_io_pgOut_g; // @[CarryGenerator.scala 18:37]
  wire  flow_5_9_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_9_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_9_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_9_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_9_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_11_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_11_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_11_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_11_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_11_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_13_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_13_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_13_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_13_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_13_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_15_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_15_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_15_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_15_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_15_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_17_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_17_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_17_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_17_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_17_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_19_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_19_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_19_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_19_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_19_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_21_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_21_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_21_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_21_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_21_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_23_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_23_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_23_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_23_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_23_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_25_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_25_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_25_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_25_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_25_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_27_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_27_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_27_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_27_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_27_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_29_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_29_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_29_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_29_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_29_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  flow_5_31_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_31_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  flow_5_31_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  flow_5_31_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  flow_5_31_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_2_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_2_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_2_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_2_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_2_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_4_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_4_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_4_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_4_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_4_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_6_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_6_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_6_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_6_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_6_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_8_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_8_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_8_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_8_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_8_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_10_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_10_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_10_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_10_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_10_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_12_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_12_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_12_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_12_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_12_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_14_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_14_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_14_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_14_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_14_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_16_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_16_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_16_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_16_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_16_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_18_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_18_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_18_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_18_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_18_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_20_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_20_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_20_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_20_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_20_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_22_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_22_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_22_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_22_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_22_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_24_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_24_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_24_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_24_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_24_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_26_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_26_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_26_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_26_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_26_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_28_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_28_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_28_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_28_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_28_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_30_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_30_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_30_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_30_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_30_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  wire  gOut_32_gConnect_io_pInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_32_gConnect_io_gInH; // @[CarryGenerator.scala 38:38]
  wire  gOut_32_gConnect_io_gInL; // @[CarryGenerator.scala 38:38]
  wire  gOut_32_gConnect_io_pgOut_p; // @[CarryGenerator.scala 38:38]
  wire  gOut_32_gConnect_io_pgOut_g; // @[CarryGenerator.scala 38:38]
  GConnect flow_1_1_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_1_1_gConnect_io_pInH),
    .io_gInH(flow_1_1_gConnect_io_gInH),
    .io_gInL(flow_1_1_gConnect_io_gInL),
    .io_pgOut_p(flow_1_1_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_1_1_gConnect_io_pgOut_g)
  );
  PGConnect flow_1_3_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_3_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_3_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_3_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_3_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_3_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_3_connect_io_pgOut_g)
  );
  PGConnect flow_1_5_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_5_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_5_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_5_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_5_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_5_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_5_connect_io_pgOut_g)
  );
  PGConnect flow_1_7_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_7_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_7_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_7_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_7_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_7_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_7_connect_io_pgOut_g)
  );
  PGConnect flow_1_9_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_9_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_9_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_9_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_9_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_9_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_9_connect_io_pgOut_g)
  );
  PGConnect flow_1_11_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_11_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_11_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_11_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_11_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_11_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_11_connect_io_pgOut_g)
  );
  PGConnect flow_1_13_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_13_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_13_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_13_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_13_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_13_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_13_connect_io_pgOut_g)
  );
  PGConnect flow_1_15_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_15_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_15_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_15_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_15_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_15_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_15_connect_io_pgOut_g)
  );
  PGConnect flow_1_17_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_17_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_17_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_17_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_17_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_17_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_17_connect_io_pgOut_g)
  );
  PGConnect flow_1_19_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_19_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_19_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_19_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_19_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_19_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_19_connect_io_pgOut_g)
  );
  PGConnect flow_1_21_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_21_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_21_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_21_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_21_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_21_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_21_connect_io_pgOut_g)
  );
  PGConnect flow_1_23_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_23_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_23_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_23_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_23_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_23_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_23_connect_io_pgOut_g)
  );
  PGConnect flow_1_25_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_25_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_25_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_25_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_25_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_25_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_25_connect_io_pgOut_g)
  );
  PGConnect flow_1_27_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_27_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_27_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_27_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_27_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_27_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_27_connect_io_pgOut_g)
  );
  PGConnect flow_1_29_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_29_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_29_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_29_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_29_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_29_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_29_connect_io_pgOut_g)
  );
  PGConnect flow_1_31_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_1_31_connect_io_pgInH_p),
    .io_pgInH_g(flow_1_31_connect_io_pgInH_g),
    .io_pgInL_p(flow_1_31_connect_io_pgInL_p),
    .io_pgInL_g(flow_1_31_connect_io_pgInL_g),
    .io_pgOut_p(flow_1_31_connect_io_pgOut_p),
    .io_pgOut_g(flow_1_31_connect_io_pgOut_g)
  );
  GConnect flow_2_3_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_2_3_gConnect_io_pInH),
    .io_gInH(flow_2_3_gConnect_io_gInH),
    .io_gInL(flow_2_3_gConnect_io_gInL),
    .io_pgOut_p(flow_2_3_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_2_3_gConnect_io_pgOut_g)
  );
  PGConnect flow_2_5_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_5_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_5_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_5_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_5_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_5_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_5_connect_io_pgOut_g)
  );
  PGConnect flow_2_7_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_7_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_7_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_7_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_7_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_7_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_7_connect_io_pgOut_g)
  );
  PGConnect flow_2_9_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_9_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_9_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_9_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_9_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_9_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_9_connect_io_pgOut_g)
  );
  PGConnect flow_2_11_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_11_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_11_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_11_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_11_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_11_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_11_connect_io_pgOut_g)
  );
  PGConnect flow_2_13_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_13_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_13_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_13_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_13_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_13_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_13_connect_io_pgOut_g)
  );
  PGConnect flow_2_15_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_15_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_15_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_15_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_15_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_15_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_15_connect_io_pgOut_g)
  );
  PGConnect flow_2_17_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_17_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_17_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_17_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_17_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_17_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_17_connect_io_pgOut_g)
  );
  PGConnect flow_2_19_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_19_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_19_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_19_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_19_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_19_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_19_connect_io_pgOut_g)
  );
  PGConnect flow_2_21_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_21_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_21_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_21_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_21_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_21_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_21_connect_io_pgOut_g)
  );
  PGConnect flow_2_23_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_23_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_23_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_23_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_23_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_23_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_23_connect_io_pgOut_g)
  );
  PGConnect flow_2_25_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_25_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_25_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_25_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_25_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_25_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_25_connect_io_pgOut_g)
  );
  PGConnect flow_2_27_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_27_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_27_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_27_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_27_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_27_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_27_connect_io_pgOut_g)
  );
  PGConnect flow_2_29_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_29_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_29_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_29_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_29_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_29_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_29_connect_io_pgOut_g)
  );
  PGConnect flow_2_31_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_2_31_connect_io_pgInH_p),
    .io_pgInH_g(flow_2_31_connect_io_pgInH_g),
    .io_pgInL_p(flow_2_31_connect_io_pgInL_p),
    .io_pgInL_g(flow_2_31_connect_io_pgInL_g),
    .io_pgOut_p(flow_2_31_connect_io_pgOut_p),
    .io_pgOut_g(flow_2_31_connect_io_pgOut_g)
  );
  GConnect flow_3_5_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_3_5_gConnect_io_pInH),
    .io_gInH(flow_3_5_gConnect_io_gInH),
    .io_gInL(flow_3_5_gConnect_io_gInL),
    .io_pgOut_p(flow_3_5_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_3_5_gConnect_io_pgOut_g)
  );
  GConnect flow_3_7_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_3_7_gConnect_io_pInH),
    .io_gInH(flow_3_7_gConnect_io_gInH),
    .io_gInL(flow_3_7_gConnect_io_gInL),
    .io_pgOut_p(flow_3_7_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_3_7_gConnect_io_pgOut_g)
  );
  PGConnect flow_3_9_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_9_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_9_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_9_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_9_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_9_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_9_connect_io_pgOut_g)
  );
  PGConnect flow_3_11_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_11_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_11_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_11_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_11_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_11_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_11_connect_io_pgOut_g)
  );
  PGConnect flow_3_13_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_13_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_13_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_13_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_13_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_13_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_13_connect_io_pgOut_g)
  );
  PGConnect flow_3_15_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_15_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_15_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_15_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_15_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_15_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_15_connect_io_pgOut_g)
  );
  PGConnect flow_3_17_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_17_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_17_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_17_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_17_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_17_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_17_connect_io_pgOut_g)
  );
  PGConnect flow_3_19_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_19_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_19_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_19_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_19_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_19_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_19_connect_io_pgOut_g)
  );
  PGConnect flow_3_21_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_21_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_21_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_21_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_21_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_21_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_21_connect_io_pgOut_g)
  );
  PGConnect flow_3_23_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_23_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_23_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_23_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_23_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_23_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_23_connect_io_pgOut_g)
  );
  PGConnect flow_3_25_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_25_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_25_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_25_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_25_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_25_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_25_connect_io_pgOut_g)
  );
  PGConnect flow_3_27_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_27_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_27_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_27_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_27_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_27_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_27_connect_io_pgOut_g)
  );
  PGConnect flow_3_29_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_29_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_29_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_29_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_29_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_29_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_29_connect_io_pgOut_g)
  );
  PGConnect flow_3_31_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_3_31_connect_io_pgInH_p),
    .io_pgInH_g(flow_3_31_connect_io_pgInH_g),
    .io_pgInL_p(flow_3_31_connect_io_pgInL_p),
    .io_pgInL_g(flow_3_31_connect_io_pgInL_g),
    .io_pgOut_p(flow_3_31_connect_io_pgOut_p),
    .io_pgOut_g(flow_3_31_connect_io_pgOut_g)
  );
  GConnect flow_4_7_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_4_7_gConnect_io_pInH),
    .io_gInH(flow_4_7_gConnect_io_gInH),
    .io_gInL(flow_4_7_gConnect_io_gInL),
    .io_pgOut_p(flow_4_7_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_4_7_gConnect_io_pgOut_g)
  );
  GConnect flow_4_9_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_4_9_gConnect_io_pInH),
    .io_gInH(flow_4_9_gConnect_io_gInH),
    .io_gInL(flow_4_9_gConnect_io_gInL),
    .io_pgOut_p(flow_4_9_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_4_9_gConnect_io_pgOut_g)
  );
  GConnect flow_4_11_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_4_11_gConnect_io_pInH),
    .io_gInH(flow_4_11_gConnect_io_gInH),
    .io_gInL(flow_4_11_gConnect_io_gInL),
    .io_pgOut_p(flow_4_11_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_4_11_gConnect_io_pgOut_g)
  );
  GConnect flow_4_13_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_4_13_gConnect_io_pInH),
    .io_gInH(flow_4_13_gConnect_io_gInH),
    .io_gInL(flow_4_13_gConnect_io_gInL),
    .io_pgOut_p(flow_4_13_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_4_13_gConnect_io_pgOut_g)
  );
  GConnect flow_4_15_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_4_15_gConnect_io_pInH),
    .io_gInH(flow_4_15_gConnect_io_gInH),
    .io_gInL(flow_4_15_gConnect_io_gInL),
    .io_pgOut_p(flow_4_15_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_4_15_gConnect_io_pgOut_g)
  );
  PGConnect flow_4_17_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_17_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_17_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_17_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_17_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_17_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_17_connect_io_pgOut_g)
  );
  PGConnect flow_4_19_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_19_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_19_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_19_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_19_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_19_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_19_connect_io_pgOut_g)
  );
  PGConnect flow_4_21_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_21_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_21_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_21_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_21_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_21_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_21_connect_io_pgOut_g)
  );
  PGConnect flow_4_23_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_23_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_23_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_23_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_23_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_23_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_23_connect_io_pgOut_g)
  );
  PGConnect flow_4_25_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_25_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_25_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_25_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_25_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_25_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_25_connect_io_pgOut_g)
  );
  PGConnect flow_4_27_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_27_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_27_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_27_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_27_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_27_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_27_connect_io_pgOut_g)
  );
  PGConnect flow_4_29_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_29_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_29_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_29_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_29_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_29_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_29_connect_io_pgOut_g)
  );
  PGConnect flow_4_31_connect ( // @[CarryGenerator.scala 18:37]
    .io_pgInH_p(flow_4_31_connect_io_pgInH_p),
    .io_pgInH_g(flow_4_31_connect_io_pgInH_g),
    .io_pgInL_p(flow_4_31_connect_io_pgInL_p),
    .io_pgInL_g(flow_4_31_connect_io_pgInL_g),
    .io_pgOut_p(flow_4_31_connect_io_pgOut_p),
    .io_pgOut_g(flow_4_31_connect_io_pgOut_g)
  );
  GConnect flow_5_9_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_9_gConnect_io_pInH),
    .io_gInH(flow_5_9_gConnect_io_gInH),
    .io_gInL(flow_5_9_gConnect_io_gInL),
    .io_pgOut_p(flow_5_9_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_9_gConnect_io_pgOut_g)
  );
  GConnect flow_5_11_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_11_gConnect_io_pInH),
    .io_gInH(flow_5_11_gConnect_io_gInH),
    .io_gInL(flow_5_11_gConnect_io_gInL),
    .io_pgOut_p(flow_5_11_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_11_gConnect_io_pgOut_g)
  );
  GConnect flow_5_13_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_13_gConnect_io_pInH),
    .io_gInH(flow_5_13_gConnect_io_gInH),
    .io_gInL(flow_5_13_gConnect_io_gInL),
    .io_pgOut_p(flow_5_13_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_13_gConnect_io_pgOut_g)
  );
  GConnect flow_5_15_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_15_gConnect_io_pInH),
    .io_gInH(flow_5_15_gConnect_io_gInH),
    .io_gInL(flow_5_15_gConnect_io_gInL),
    .io_pgOut_p(flow_5_15_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_15_gConnect_io_pgOut_g)
  );
  GConnect flow_5_17_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_17_gConnect_io_pInH),
    .io_gInH(flow_5_17_gConnect_io_gInH),
    .io_gInL(flow_5_17_gConnect_io_gInL),
    .io_pgOut_p(flow_5_17_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_17_gConnect_io_pgOut_g)
  );
  GConnect flow_5_19_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_19_gConnect_io_pInH),
    .io_gInH(flow_5_19_gConnect_io_gInH),
    .io_gInL(flow_5_19_gConnect_io_gInL),
    .io_pgOut_p(flow_5_19_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_19_gConnect_io_pgOut_g)
  );
  GConnect flow_5_21_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_21_gConnect_io_pInH),
    .io_gInH(flow_5_21_gConnect_io_gInH),
    .io_gInL(flow_5_21_gConnect_io_gInL),
    .io_pgOut_p(flow_5_21_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_21_gConnect_io_pgOut_g)
  );
  GConnect flow_5_23_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_23_gConnect_io_pInH),
    .io_gInH(flow_5_23_gConnect_io_gInH),
    .io_gInL(flow_5_23_gConnect_io_gInL),
    .io_pgOut_p(flow_5_23_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_23_gConnect_io_pgOut_g)
  );
  GConnect flow_5_25_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_25_gConnect_io_pInH),
    .io_gInH(flow_5_25_gConnect_io_gInH),
    .io_gInL(flow_5_25_gConnect_io_gInL),
    .io_pgOut_p(flow_5_25_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_25_gConnect_io_pgOut_g)
  );
  GConnect flow_5_27_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_27_gConnect_io_pInH),
    .io_gInH(flow_5_27_gConnect_io_gInH),
    .io_gInL(flow_5_27_gConnect_io_gInL),
    .io_pgOut_p(flow_5_27_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_27_gConnect_io_pgOut_g)
  );
  GConnect flow_5_29_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_29_gConnect_io_pInH),
    .io_gInH(flow_5_29_gConnect_io_gInH),
    .io_gInL(flow_5_29_gConnect_io_gInL),
    .io_pgOut_p(flow_5_29_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_29_gConnect_io_pgOut_g)
  );
  GConnect flow_5_31_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(flow_5_31_gConnect_io_pInH),
    .io_gInH(flow_5_31_gConnect_io_gInH),
    .io_gInL(flow_5_31_gConnect_io_gInL),
    .io_pgOut_p(flow_5_31_gConnect_io_pgOut_p),
    .io_pgOut_g(flow_5_31_gConnect_io_pgOut_g)
  );
  GConnect gOut_2_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_2_gConnect_io_pInH),
    .io_gInH(gOut_2_gConnect_io_gInH),
    .io_gInL(gOut_2_gConnect_io_gInL),
    .io_pgOut_p(gOut_2_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_2_gConnect_io_pgOut_g)
  );
  GConnect gOut_4_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_4_gConnect_io_pInH),
    .io_gInH(gOut_4_gConnect_io_gInH),
    .io_gInL(gOut_4_gConnect_io_gInL),
    .io_pgOut_p(gOut_4_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_4_gConnect_io_pgOut_g)
  );
  GConnect gOut_6_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_6_gConnect_io_pInH),
    .io_gInH(gOut_6_gConnect_io_gInH),
    .io_gInL(gOut_6_gConnect_io_gInL),
    .io_pgOut_p(gOut_6_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_6_gConnect_io_pgOut_g)
  );
  GConnect gOut_8_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_8_gConnect_io_pInH),
    .io_gInH(gOut_8_gConnect_io_gInH),
    .io_gInL(gOut_8_gConnect_io_gInL),
    .io_pgOut_p(gOut_8_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_8_gConnect_io_pgOut_g)
  );
  GConnect gOut_10_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_10_gConnect_io_pInH),
    .io_gInH(gOut_10_gConnect_io_gInH),
    .io_gInL(gOut_10_gConnect_io_gInL),
    .io_pgOut_p(gOut_10_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_10_gConnect_io_pgOut_g)
  );
  GConnect gOut_12_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_12_gConnect_io_pInH),
    .io_gInH(gOut_12_gConnect_io_gInH),
    .io_gInL(gOut_12_gConnect_io_gInL),
    .io_pgOut_p(gOut_12_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_12_gConnect_io_pgOut_g)
  );
  GConnect gOut_14_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_14_gConnect_io_pInH),
    .io_gInH(gOut_14_gConnect_io_gInH),
    .io_gInL(gOut_14_gConnect_io_gInL),
    .io_pgOut_p(gOut_14_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_14_gConnect_io_pgOut_g)
  );
  GConnect gOut_16_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_16_gConnect_io_pInH),
    .io_gInH(gOut_16_gConnect_io_gInH),
    .io_gInL(gOut_16_gConnect_io_gInL),
    .io_pgOut_p(gOut_16_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_16_gConnect_io_pgOut_g)
  );
  GConnect gOut_18_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_18_gConnect_io_pInH),
    .io_gInH(gOut_18_gConnect_io_gInH),
    .io_gInL(gOut_18_gConnect_io_gInL),
    .io_pgOut_p(gOut_18_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_18_gConnect_io_pgOut_g)
  );
  GConnect gOut_20_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_20_gConnect_io_pInH),
    .io_gInH(gOut_20_gConnect_io_gInH),
    .io_gInL(gOut_20_gConnect_io_gInL),
    .io_pgOut_p(gOut_20_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_20_gConnect_io_pgOut_g)
  );
  GConnect gOut_22_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_22_gConnect_io_pInH),
    .io_gInH(gOut_22_gConnect_io_gInH),
    .io_gInL(gOut_22_gConnect_io_gInL),
    .io_pgOut_p(gOut_22_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_22_gConnect_io_pgOut_g)
  );
  GConnect gOut_24_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_24_gConnect_io_pInH),
    .io_gInH(gOut_24_gConnect_io_gInH),
    .io_gInL(gOut_24_gConnect_io_gInL),
    .io_pgOut_p(gOut_24_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_24_gConnect_io_pgOut_g)
  );
  GConnect gOut_26_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_26_gConnect_io_pInH),
    .io_gInH(gOut_26_gConnect_io_gInH),
    .io_gInL(gOut_26_gConnect_io_gInL),
    .io_pgOut_p(gOut_26_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_26_gConnect_io_pgOut_g)
  );
  GConnect gOut_28_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_28_gConnect_io_pInH),
    .io_gInH(gOut_28_gConnect_io_gInH),
    .io_gInL(gOut_28_gConnect_io_gInL),
    .io_pgOut_p(gOut_28_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_28_gConnect_io_pgOut_g)
  );
  GConnect gOut_30_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_30_gConnect_io_pInH),
    .io_gInH(gOut_30_gConnect_io_gInH),
    .io_gInL(gOut_30_gConnect_io_gInL),
    .io_pgOut_p(gOut_30_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_30_gConnect_io_pgOut_g)
  );
  GConnect gOut_32_gConnect ( // @[CarryGenerator.scala 38:38]
    .io_pInH(gOut_32_gConnect_io_pInH),
    .io_gInH(gOut_32_gConnect_io_gInH),
    .io_gInL(gOut_32_gConnect_io_gInL),
    .io_pgOut_p(gOut_32_gConnect_io_pgOut_p),
    .io_pgOut_g(gOut_32_gConnect_io_pgOut_g)
  );
  assign io_cOut_0 = io_pgIn_0_g; // @[CarryGenerator.scala 56:24 60:25]
  assign io_cOut_1 = flow_1_1_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_2 = gOut_2_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_3 = flow_2_3_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_4 = gOut_4_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_5 = flow_3_5_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_6 = gOut_6_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_7 = flow_4_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_8 = gOut_8_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_9 = flow_5_9_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_10 = gOut_10_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_11 = flow_5_11_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_12 = gOut_12_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_13 = flow_5_13_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_14 = gOut_14_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_15 = flow_5_15_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_16 = gOut_16_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_17 = flow_5_17_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_18 = gOut_18_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_19 = flow_5_19_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_20 = gOut_20_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_21 = flow_5_21_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_22 = gOut_22_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_23 = flow_5_23_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_24 = gOut_24_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_25 = flow_5_25_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_26 = gOut_26_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_27 = flow_5_27_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_28 = gOut_28_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_29 = flow_5_29_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_30 = gOut_30_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign io_cOut_31 = flow_5_31_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign io_cOut_32 = gOut_32_gConnect_io_pgOut_g; // @[CarryGenerator.scala 57:24 82:33]
  assign flow_1_1_gConnect_io_pInH = io_pgIn_1_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_1_gConnect_io_gInH = io_pgIn_1_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_1_gConnect_io_gInL = io_pgIn_0_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_3_connect_io_pgInH_p = io_pgIn_3_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_3_connect_io_pgInH_g = io_pgIn_3_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_3_connect_io_pgInL_p = io_pgIn_2_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_3_connect_io_pgInL_g = io_pgIn_2_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_5_connect_io_pgInH_p = io_pgIn_5_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_5_connect_io_pgInH_g = io_pgIn_5_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_5_connect_io_pgInL_p = io_pgIn_4_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_5_connect_io_pgInL_g = io_pgIn_4_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_7_connect_io_pgInH_p = io_pgIn_7_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_7_connect_io_pgInH_g = io_pgIn_7_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_7_connect_io_pgInL_p = io_pgIn_6_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_7_connect_io_pgInL_g = io_pgIn_6_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_9_connect_io_pgInH_p = io_pgIn_9_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_9_connect_io_pgInH_g = io_pgIn_9_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_9_connect_io_pgInL_p = io_pgIn_8_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_9_connect_io_pgInL_g = io_pgIn_8_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_11_connect_io_pgInH_p = io_pgIn_11_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_11_connect_io_pgInH_g = io_pgIn_11_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_11_connect_io_pgInL_p = io_pgIn_10_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_11_connect_io_pgInL_g = io_pgIn_10_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_13_connect_io_pgInH_p = io_pgIn_13_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_13_connect_io_pgInH_g = io_pgIn_13_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_13_connect_io_pgInL_p = io_pgIn_12_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_13_connect_io_pgInL_g = io_pgIn_12_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_15_connect_io_pgInH_p = io_pgIn_15_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_15_connect_io_pgInH_g = io_pgIn_15_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_15_connect_io_pgInL_p = io_pgIn_14_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_15_connect_io_pgInL_g = io_pgIn_14_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_17_connect_io_pgInH_p = io_pgIn_17_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_17_connect_io_pgInH_g = io_pgIn_17_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_17_connect_io_pgInL_p = io_pgIn_16_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_17_connect_io_pgInL_g = io_pgIn_16_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_19_connect_io_pgInH_p = io_pgIn_19_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_19_connect_io_pgInH_g = io_pgIn_19_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_19_connect_io_pgInL_p = io_pgIn_18_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_19_connect_io_pgInL_g = io_pgIn_18_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_21_connect_io_pgInH_p = io_pgIn_21_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_21_connect_io_pgInH_g = io_pgIn_21_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_21_connect_io_pgInL_p = io_pgIn_20_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_21_connect_io_pgInL_g = io_pgIn_20_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_23_connect_io_pgInH_p = io_pgIn_23_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_23_connect_io_pgInH_g = io_pgIn_23_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_23_connect_io_pgInL_p = io_pgIn_22_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_23_connect_io_pgInL_g = io_pgIn_22_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_25_connect_io_pgInH_p = io_pgIn_25_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_25_connect_io_pgInH_g = io_pgIn_25_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_25_connect_io_pgInL_p = io_pgIn_24_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_25_connect_io_pgInL_g = io_pgIn_24_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_27_connect_io_pgInH_p = io_pgIn_27_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_27_connect_io_pgInH_g = io_pgIn_27_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_27_connect_io_pgInL_p = io_pgIn_26_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_27_connect_io_pgInL_g = io_pgIn_26_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_29_connect_io_pgInH_p = io_pgIn_29_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_29_connect_io_pgInH_g = io_pgIn_29_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_29_connect_io_pgInL_p = io_pgIn_28_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_29_connect_io_pgInL_g = io_pgIn_28_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_31_connect_io_pgInH_p = io_pgIn_31_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_31_connect_io_pgInH_g = io_pgIn_31_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_31_connect_io_pgInL_p = io_pgIn_30_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_1_31_connect_io_pgInL_g = io_pgIn_30_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_2_3_gConnect_io_pInH = flow_1_3_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_3_gConnect_io_gInH = flow_1_3_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_3_gConnect_io_gInL = flow_1_1_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_2_5_connect_io_pgInH_p = flow_1_5_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_5_connect_io_pgInH_g = flow_1_5_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_5_connect_io_pgInL_p = flow_1_3_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_5_connect_io_pgInL_g = flow_1_3_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_7_connect_io_pgInH_p = flow_1_7_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_7_connect_io_pgInH_g = flow_1_7_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_7_connect_io_pgInL_p = flow_1_5_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_7_connect_io_pgInL_g = flow_1_5_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_9_connect_io_pgInH_p = flow_1_9_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_9_connect_io_pgInH_g = flow_1_9_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_9_connect_io_pgInL_p = flow_1_7_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_9_connect_io_pgInL_g = flow_1_7_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_11_connect_io_pgInH_p = flow_1_11_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_11_connect_io_pgInH_g = flow_1_11_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_11_connect_io_pgInL_p = flow_1_9_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_11_connect_io_pgInL_g = flow_1_9_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_13_connect_io_pgInH_p = flow_1_13_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_13_connect_io_pgInH_g = flow_1_13_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_13_connect_io_pgInL_p = flow_1_11_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_13_connect_io_pgInL_g = flow_1_11_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_15_connect_io_pgInH_p = flow_1_15_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_15_connect_io_pgInH_g = flow_1_15_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_15_connect_io_pgInL_p = flow_1_13_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_15_connect_io_pgInL_g = flow_1_13_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_17_connect_io_pgInH_p = flow_1_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_17_connect_io_pgInH_g = flow_1_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_17_connect_io_pgInL_p = flow_1_15_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_17_connect_io_pgInL_g = flow_1_15_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_19_connect_io_pgInH_p = flow_1_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_19_connect_io_pgInH_g = flow_1_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_19_connect_io_pgInL_p = flow_1_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_19_connect_io_pgInL_g = flow_1_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_21_connect_io_pgInH_p = flow_1_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_21_connect_io_pgInH_g = flow_1_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_21_connect_io_pgInL_p = flow_1_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_21_connect_io_pgInL_g = flow_1_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_23_connect_io_pgInH_p = flow_1_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_23_connect_io_pgInH_g = flow_1_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_23_connect_io_pgInL_p = flow_1_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_23_connect_io_pgInL_g = flow_1_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_25_connect_io_pgInH_p = flow_1_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_25_connect_io_pgInH_g = flow_1_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_25_connect_io_pgInL_p = flow_1_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_25_connect_io_pgInL_g = flow_1_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_27_connect_io_pgInH_p = flow_1_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_27_connect_io_pgInH_g = flow_1_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_27_connect_io_pgInL_p = flow_1_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_27_connect_io_pgInL_g = flow_1_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_29_connect_io_pgInH_p = flow_1_29_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_29_connect_io_pgInH_g = flow_1_29_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_29_connect_io_pgInL_p = flow_1_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_29_connect_io_pgInL_g = flow_1_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_31_connect_io_pgInH_p = flow_1_31_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_31_connect_io_pgInH_g = flow_1_31_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_31_connect_io_pgInL_p = flow_1_29_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_2_31_connect_io_pgInL_g = flow_1_29_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_5_gConnect_io_pInH = flow_2_5_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_5_gConnect_io_gInH = flow_2_5_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_5_gConnect_io_gInL = io_pgIn_2_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_7_gConnect_io_pInH = flow_2_7_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_7_gConnect_io_gInH = flow_2_7_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_7_gConnect_io_gInL = io_pgIn_4_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_9_connect_io_pgInH_p = flow_2_9_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_9_connect_io_pgInH_g = flow_2_9_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_9_connect_io_pgInL_p = io_pgIn_6_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_9_connect_io_pgInL_g = io_pgIn_6_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_11_connect_io_pgInH_p = flow_2_11_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_11_connect_io_pgInH_g = flow_2_11_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_11_connect_io_pgInL_p = io_pgIn_8_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_11_connect_io_pgInL_g = io_pgIn_8_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_13_connect_io_pgInH_p = flow_2_13_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_13_connect_io_pgInH_g = flow_2_13_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_13_connect_io_pgInL_p = io_pgIn_10_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_13_connect_io_pgInL_g = io_pgIn_10_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_15_connect_io_pgInH_p = flow_2_15_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_15_connect_io_pgInH_g = flow_2_15_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_15_connect_io_pgInL_p = io_pgIn_12_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_15_connect_io_pgInL_g = io_pgIn_12_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_17_connect_io_pgInH_p = flow_2_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_17_connect_io_pgInH_g = flow_2_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_17_connect_io_pgInL_p = io_pgIn_14_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_17_connect_io_pgInL_g = io_pgIn_14_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_19_connect_io_pgInH_p = flow_2_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_19_connect_io_pgInH_g = flow_2_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_19_connect_io_pgInL_p = io_pgIn_16_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_19_connect_io_pgInL_g = io_pgIn_16_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_21_connect_io_pgInH_p = flow_2_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_21_connect_io_pgInH_g = flow_2_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_21_connect_io_pgInL_p = io_pgIn_18_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_21_connect_io_pgInL_g = io_pgIn_18_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_23_connect_io_pgInH_p = flow_2_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_23_connect_io_pgInH_g = flow_2_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_23_connect_io_pgInL_p = io_pgIn_20_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_23_connect_io_pgInL_g = io_pgIn_20_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_25_connect_io_pgInH_p = flow_2_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_25_connect_io_pgInH_g = flow_2_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_25_connect_io_pgInL_p = io_pgIn_22_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_25_connect_io_pgInL_g = io_pgIn_22_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_27_connect_io_pgInH_p = flow_2_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_27_connect_io_pgInH_g = flow_2_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_27_connect_io_pgInL_p = io_pgIn_24_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_27_connect_io_pgInL_g = io_pgIn_24_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_29_connect_io_pgInH_p = flow_2_29_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_29_connect_io_pgInH_g = flow_2_29_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_29_connect_io_pgInL_p = io_pgIn_26_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_29_connect_io_pgInL_g = io_pgIn_26_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_31_connect_io_pgInH_p = flow_2_31_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_31_connect_io_pgInH_g = flow_2_31_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_3_31_connect_io_pgInL_p = io_pgIn_28_p; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_3_31_connect_io_pgInL_g = io_pgIn_28_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_4_7_gConnect_io_pInH = flow_3_7_gConnect_io_pgOut_p; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_4_7_gConnect_io_gInH = flow_3_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_4_7_gConnect_io_gInL = flow_2_3_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_4_9_gConnect_io_pInH = flow_3_9_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_9_gConnect_io_gInH = flow_3_9_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_9_gConnect_io_gInL = flow_3_5_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_4_11_gConnect_io_pInH = flow_3_11_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_11_gConnect_io_gInH = flow_3_11_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_11_gConnect_io_gInL = flow_3_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_4_13_gConnect_io_pInH = flow_3_13_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_13_gConnect_io_gInH = flow_3_13_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_13_gConnect_io_gInL = flow_3_9_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_15_gConnect_io_pInH = flow_3_15_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_15_gConnect_io_gInH = flow_3_15_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_15_gConnect_io_gInL = flow_3_11_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_17_connect_io_pgInH_p = flow_3_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_17_connect_io_pgInH_g = flow_3_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_17_connect_io_pgInL_p = flow_3_13_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_17_connect_io_pgInL_g = flow_3_13_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_19_connect_io_pgInH_p = flow_3_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_19_connect_io_pgInH_g = flow_3_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_19_connect_io_pgInL_p = flow_3_15_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_19_connect_io_pgInL_g = flow_3_15_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_21_connect_io_pgInH_p = flow_3_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_21_connect_io_pgInH_g = flow_3_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_21_connect_io_pgInL_p = flow_3_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_21_connect_io_pgInL_g = flow_3_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_23_connect_io_pgInH_p = flow_3_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_23_connect_io_pgInH_g = flow_3_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_23_connect_io_pgInL_p = flow_3_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_23_connect_io_pgInL_g = flow_3_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_25_connect_io_pgInH_p = flow_3_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_25_connect_io_pgInH_g = flow_3_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_25_connect_io_pgInL_p = flow_3_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_25_connect_io_pgInL_g = flow_3_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_27_connect_io_pgInH_p = flow_3_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_27_connect_io_pgInH_g = flow_3_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_27_connect_io_pgInL_p = flow_3_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_27_connect_io_pgInL_g = flow_3_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_29_connect_io_pgInH_p = flow_3_29_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_29_connect_io_pgInH_g = flow_3_29_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_29_connect_io_pgInL_p = flow_3_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_29_connect_io_pgInL_g = flow_3_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_31_connect_io_pgInH_p = flow_3_31_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_31_connect_io_pgInH_g = flow_3_31_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_31_connect_io_pgInL_p = flow_3_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_4_31_connect_io_pgInL_g = flow_3_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_9_gConnect_io_pInH = flow_4_9_gConnect_io_pgOut_p; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_9_gConnect_io_gInH = flow_4_9_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_9_gConnect_io_gInL = io_pgIn_4_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_11_gConnect_io_pInH = flow_4_11_gConnect_io_pgOut_p; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_11_gConnect_io_gInH = flow_4_11_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_11_gConnect_io_gInL = io_pgIn_6_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_13_gConnect_io_pInH = flow_4_13_gConnect_io_pgOut_p; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_13_gConnect_io_gInH = flow_4_13_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_13_gConnect_io_gInL = io_pgIn_8_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_15_gConnect_io_pInH = flow_4_15_gConnect_io_pgOut_p; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_15_gConnect_io_gInH = flow_4_15_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign flow_5_15_gConnect_io_gInL = io_pgIn_10_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_17_gConnect_io_pInH = flow_4_17_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_17_gConnect_io_gInH = flow_4_17_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_17_gConnect_io_gInL = io_pgIn_12_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_19_gConnect_io_pInH = flow_4_19_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_19_gConnect_io_gInH = flow_4_19_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_19_gConnect_io_gInL = io_pgIn_14_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_21_gConnect_io_pInH = flow_4_21_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_21_gConnect_io_gInH = flow_4_21_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_21_gConnect_io_gInL = io_pgIn_16_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_23_gConnect_io_pInH = flow_4_23_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_23_gConnect_io_gInH = flow_4_23_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_23_gConnect_io_gInL = io_pgIn_18_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_25_gConnect_io_pInH = flow_4_25_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_25_gConnect_io_gInH = flow_4_25_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_25_gConnect_io_gInL = io_pgIn_20_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_27_gConnect_io_pInH = flow_4_27_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_27_gConnect_io_gInH = flow_4_27_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_27_gConnect_io_gInL = io_pgIn_22_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_29_gConnect_io_pInH = flow_4_29_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_29_gConnect_io_gInH = flow_4_29_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_29_gConnect_io_gInL = io_pgIn_24_g; // @[CarryGenerator.scala 56:24 60:25]
  assign flow_5_31_gConnect_io_pInH = flow_4_31_connect_io_pgOut_p; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_31_gConnect_io_gInH = flow_4_31_connect_io_pgOut_g; // @[CarryGenerator.scala 56:24 70:52]
  assign flow_5_31_gConnect_io_gInL = io_pgIn_26_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_2_gConnect_io_pInH = io_pgIn_2_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_2_gConnect_io_gInH = io_pgIn_2_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_2_gConnect_io_gInL = flow_1_1_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_4_gConnect_io_pInH = io_pgIn_4_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_4_gConnect_io_gInH = io_pgIn_4_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_4_gConnect_io_gInL = flow_2_3_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_6_gConnect_io_pInH = io_pgIn_6_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_6_gConnect_io_gInH = io_pgIn_6_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_6_gConnect_io_gInL = flow_3_5_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_8_gConnect_io_pInH = io_pgIn_8_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_8_gConnect_io_gInH = io_pgIn_8_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_8_gConnect_io_gInL = flow_4_7_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_10_gConnect_io_pInH = io_pgIn_10_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_10_gConnect_io_gInH = io_pgIn_10_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_10_gConnect_io_gInL = flow_5_9_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_12_gConnect_io_pInH = io_pgIn_12_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_12_gConnect_io_gInH = io_pgIn_12_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_12_gConnect_io_gInL = flow_5_11_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_14_gConnect_io_pInH = io_pgIn_14_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_14_gConnect_io_gInH = io_pgIn_14_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_14_gConnect_io_gInL = flow_5_13_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_16_gConnect_io_pInH = io_pgIn_16_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_16_gConnect_io_gInH = io_pgIn_16_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_16_gConnect_io_gInL = flow_5_15_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_18_gConnect_io_pInH = io_pgIn_18_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_18_gConnect_io_gInH = io_pgIn_18_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_18_gConnect_io_gInL = flow_5_17_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_20_gConnect_io_pInH = io_pgIn_20_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_20_gConnect_io_gInH = io_pgIn_20_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_20_gConnect_io_gInL = flow_5_19_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_22_gConnect_io_pInH = io_pgIn_22_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_22_gConnect_io_gInH = io_pgIn_22_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_22_gConnect_io_gInL = flow_5_21_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_24_gConnect_io_pInH = io_pgIn_24_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_24_gConnect_io_gInH = io_pgIn_24_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_24_gConnect_io_gInL = flow_5_23_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_26_gConnect_io_pInH = io_pgIn_26_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_26_gConnect_io_gInH = io_pgIn_26_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_26_gConnect_io_gInL = flow_5_25_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_28_gConnect_io_pInH = io_pgIn_28_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_28_gConnect_io_gInH = io_pgIn_28_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_28_gConnect_io_gInL = flow_5_27_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_30_gConnect_io_pInH = io_pgIn_30_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_30_gConnect_io_gInH = io_pgIn_30_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_30_gConnect_io_gInL = flow_5_29_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
  assign gOut_32_gConnect_io_pInH = io_pgIn_32_p; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_32_gConnect_io_gInH = io_pgIn_32_g; // @[CarryGenerator.scala 56:24 60:25]
  assign gOut_32_gConnect_io_gInL = flow_5_31_gConnect_io_pgOut_g; // @[CarryGenerator.scala 56:24 67:52]
endmodule
module PGGen(
  input   io_in1,
  input   io_in2,
  output  io_pg_p,
  output  io_pg_g
);
  assign io_pg_p = io_in1 ^ io_in2; // @[PGGenerator.scala 29:27]
  assign io_pg_g = io_in1 & io_in2; // @[PGGenerator.scala 30:27]
endmodule
module AdderFull(
  input         clock,
  input         reset,
  input  [31:0] io_dIn_a,
  input  [31:0] io_dIn_b,
  input         io_dIn_cIn,
  output [31:0] io_dOut_s,
  output        io_dOut_cOut
);
  wire  CarryGen_io_pgIn_0_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_1_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_1_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_2_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_2_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_3_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_3_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_4_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_4_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_5_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_5_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_6_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_6_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_7_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_7_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_8_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_8_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_9_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_9_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_10_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_10_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_11_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_11_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_12_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_12_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_13_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_13_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_14_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_14_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_15_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_15_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_16_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_16_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_17_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_17_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_18_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_18_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_19_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_19_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_20_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_20_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_21_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_21_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_22_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_22_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_23_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_23_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_24_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_24_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_25_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_25_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_26_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_26_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_27_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_27_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_28_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_28_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_29_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_29_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_30_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_30_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_31_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_31_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_32_p; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_pgIn_32_g; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_0; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_1; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_2; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_3; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_4; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_5; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_6; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_7; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_8; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_9; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_10; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_11; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_12; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_13; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_14; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_15; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_16; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_17; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_18; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_19; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_20; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_21; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_22; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_23; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_24; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_25; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_26; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_27; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_28; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_29; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_30; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_31; // @[AdderFull.scala 33:24]
  wire  CarryGen_io_cOut_32; // @[AdderFull.scala 33:24]
  wire  pgIn_1_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_1_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_1_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_1_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_2_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_2_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_2_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_2_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_3_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_3_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_3_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_3_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_4_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_4_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_4_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_4_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_5_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_5_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_5_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_5_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_6_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_6_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_6_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_6_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_7_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_7_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_7_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_7_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_8_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_8_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_8_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_8_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_9_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_9_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_9_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_9_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_10_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_10_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_10_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_10_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_11_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_11_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_11_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_11_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_12_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_12_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_12_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_12_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_13_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_13_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_13_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_13_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_14_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_14_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_14_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_14_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_15_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_15_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_15_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_15_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_16_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_16_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_16_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_16_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_17_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_17_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_17_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_17_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_18_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_18_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_18_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_18_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_19_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_19_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_19_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_19_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_20_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_20_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_20_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_20_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_21_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_21_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_21_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_21_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_22_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_22_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_22_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_22_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_23_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_23_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_23_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_23_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_24_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_24_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_24_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_24_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_25_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_25_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_25_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_25_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_26_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_26_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_26_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_26_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_27_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_27_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_27_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_27_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_28_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_28_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_28_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_28_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_29_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_29_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_29_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_29_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_30_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_30_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_30_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_30_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_31_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_31_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_31_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_31_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_32_pggenerator_io_in1; // @[PGGenerator.scala 36:41]
  wire  pgIn_32_pggenerator_io_in2; // @[PGGenerator.scala 36:41]
  wire  pgIn_32_pggenerator_io_pg_p; // @[PGGenerator.scala 36:41]
  wire  pgIn_32_pggenerator_io_pg_g; // @[PGGenerator.scala 36:41]
  wire  pgIn_1_p = pgIn_1_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_0 = pgIn_1_p ^ CarryGen_io_cOut_0; // @[AdderFull.scala 43:29]
  wire  pgIn_2_p = pgIn_2_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_1 = pgIn_2_p ^ CarryGen_io_cOut_1; // @[AdderFull.scala 43:29]
  wire  pgIn_3_p = pgIn_3_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_2 = pgIn_3_p ^ CarryGen_io_cOut_2; // @[AdderFull.scala 43:29]
  wire  pgIn_4_p = pgIn_4_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_3 = pgIn_4_p ^ CarryGen_io_cOut_3; // @[AdderFull.scala 43:29]
  wire  pgIn_5_p = pgIn_5_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_4 = pgIn_5_p ^ CarryGen_io_cOut_4; // @[AdderFull.scala 43:29]
  wire  pgIn_6_p = pgIn_6_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_5 = pgIn_6_p ^ CarryGen_io_cOut_5; // @[AdderFull.scala 43:29]
  wire  pgIn_7_p = pgIn_7_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_6 = pgIn_7_p ^ CarryGen_io_cOut_6; // @[AdderFull.scala 43:29]
  wire  pgIn_8_p = pgIn_8_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_7 = pgIn_8_p ^ CarryGen_io_cOut_7; // @[AdderFull.scala 43:29]
  wire  pgIn_9_p = pgIn_9_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_8 = pgIn_9_p ^ CarryGen_io_cOut_8; // @[AdderFull.scala 43:29]
  wire  pgIn_10_p = pgIn_10_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_9 = pgIn_10_p ^ CarryGen_io_cOut_9; // @[AdderFull.scala 43:29]
  wire  pgIn_11_p = pgIn_11_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_10 = pgIn_11_p ^ CarryGen_io_cOut_10; // @[AdderFull.scala 43:29]
  wire  pgIn_12_p = pgIn_12_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_11 = pgIn_12_p ^ CarryGen_io_cOut_11; // @[AdderFull.scala 43:29]
  wire  pgIn_13_p = pgIn_13_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_12 = pgIn_13_p ^ CarryGen_io_cOut_12; // @[AdderFull.scala 43:29]
  wire  pgIn_14_p = pgIn_14_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_13 = pgIn_14_p ^ CarryGen_io_cOut_13; // @[AdderFull.scala 43:29]
  wire  pgIn_15_p = pgIn_15_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_14 = pgIn_15_p ^ CarryGen_io_cOut_14; // @[AdderFull.scala 43:29]
  wire  pgIn_16_p = pgIn_16_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_15 = pgIn_16_p ^ CarryGen_io_cOut_15; // @[AdderFull.scala 43:29]
  wire  pgIn_17_p = pgIn_17_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_16 = pgIn_17_p ^ CarryGen_io_cOut_16; // @[AdderFull.scala 43:29]
  wire  pgIn_18_p = pgIn_18_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_17 = pgIn_18_p ^ CarryGen_io_cOut_17; // @[AdderFull.scala 43:29]
  wire  pgIn_19_p = pgIn_19_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_18 = pgIn_19_p ^ CarryGen_io_cOut_18; // @[AdderFull.scala 43:29]
  wire  pgIn_20_p = pgIn_20_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_19 = pgIn_20_p ^ CarryGen_io_cOut_19; // @[AdderFull.scala 43:29]
  wire  pgIn_21_p = pgIn_21_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_20 = pgIn_21_p ^ CarryGen_io_cOut_20; // @[AdderFull.scala 43:29]
  wire  pgIn_22_p = pgIn_22_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_21 = pgIn_22_p ^ CarryGen_io_cOut_21; // @[AdderFull.scala 43:29]
  wire  pgIn_23_p = pgIn_23_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_22 = pgIn_23_p ^ CarryGen_io_cOut_22; // @[AdderFull.scala 43:29]
  wire  pgIn_24_p = pgIn_24_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_23 = pgIn_24_p ^ CarryGen_io_cOut_23; // @[AdderFull.scala 43:29]
  wire  pgIn_25_p = pgIn_25_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_24 = pgIn_25_p ^ CarryGen_io_cOut_24; // @[AdderFull.scala 43:29]
  wire  pgIn_26_p = pgIn_26_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_25 = pgIn_26_p ^ CarryGen_io_cOut_25; // @[AdderFull.scala 43:29]
  wire  pgIn_27_p = pgIn_27_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_26 = pgIn_27_p ^ CarryGen_io_cOut_26; // @[AdderFull.scala 43:29]
  wire  pgIn_28_p = pgIn_28_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_27 = pgIn_28_p ^ CarryGen_io_cOut_27; // @[AdderFull.scala 43:29]
  wire  pgIn_29_p = pgIn_29_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_28 = pgIn_29_p ^ CarryGen_io_cOut_28; // @[AdderFull.scala 43:29]
  wire  pgIn_30_p = pgIn_30_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_29 = pgIn_30_p ^ CarryGen_io_cOut_29; // @[AdderFull.scala 43:29]
  wire  pgIn_31_p = pgIn_31_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_30 = pgIn_31_p ^ CarryGen_io_cOut_30; // @[AdderFull.scala 43:29]
  wire  pgIn_32_p = pgIn_32_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  wire  sum_31 = pgIn_32_p ^ CarryGen_io_cOut_31; // @[AdderFull.scala 43:29]
  wire [7:0] io_dOut_s_lo_lo = {sum_7,sum_6,sum_5,sum_4,sum_3,sum_2,sum_1,sum_0}; // @[AdderFull.scala 46:20]
  wire [15:0] io_dOut_s_lo = {sum_15,sum_14,sum_13,sum_12,sum_11,sum_10,sum_9,sum_8,io_dOut_s_lo_lo}; // @[AdderFull.scala 46:20]
  wire [7:0] io_dOut_s_hi_lo = {sum_23,sum_22,sum_21,sum_20,sum_19,sum_18,sum_17,sum_16}; // @[AdderFull.scala 46:20]
  wire [15:0] io_dOut_s_hi = {sum_31,sum_30,sum_29,sum_28,sum_27,sum_26,sum_25,sum_24,io_dOut_s_hi_lo}; // @[AdderFull.scala 46:20]
  wire  _T_1 = ~reset; // @[AdderFull.scala 49:9]
  CarryGen CarryGen ( // @[AdderFull.scala 33:24]
    .io_pgIn_0_g(CarryGen_io_pgIn_0_g),
    .io_pgIn_1_p(CarryGen_io_pgIn_1_p),
    .io_pgIn_1_g(CarryGen_io_pgIn_1_g),
    .io_pgIn_2_p(CarryGen_io_pgIn_2_p),
    .io_pgIn_2_g(CarryGen_io_pgIn_2_g),
    .io_pgIn_3_p(CarryGen_io_pgIn_3_p),
    .io_pgIn_3_g(CarryGen_io_pgIn_3_g),
    .io_pgIn_4_p(CarryGen_io_pgIn_4_p),
    .io_pgIn_4_g(CarryGen_io_pgIn_4_g),
    .io_pgIn_5_p(CarryGen_io_pgIn_5_p),
    .io_pgIn_5_g(CarryGen_io_pgIn_5_g),
    .io_pgIn_6_p(CarryGen_io_pgIn_6_p),
    .io_pgIn_6_g(CarryGen_io_pgIn_6_g),
    .io_pgIn_7_p(CarryGen_io_pgIn_7_p),
    .io_pgIn_7_g(CarryGen_io_pgIn_7_g),
    .io_pgIn_8_p(CarryGen_io_pgIn_8_p),
    .io_pgIn_8_g(CarryGen_io_pgIn_8_g),
    .io_pgIn_9_p(CarryGen_io_pgIn_9_p),
    .io_pgIn_9_g(CarryGen_io_pgIn_9_g),
    .io_pgIn_10_p(CarryGen_io_pgIn_10_p),
    .io_pgIn_10_g(CarryGen_io_pgIn_10_g),
    .io_pgIn_11_p(CarryGen_io_pgIn_11_p),
    .io_pgIn_11_g(CarryGen_io_pgIn_11_g),
    .io_pgIn_12_p(CarryGen_io_pgIn_12_p),
    .io_pgIn_12_g(CarryGen_io_pgIn_12_g),
    .io_pgIn_13_p(CarryGen_io_pgIn_13_p),
    .io_pgIn_13_g(CarryGen_io_pgIn_13_g),
    .io_pgIn_14_p(CarryGen_io_pgIn_14_p),
    .io_pgIn_14_g(CarryGen_io_pgIn_14_g),
    .io_pgIn_15_p(CarryGen_io_pgIn_15_p),
    .io_pgIn_15_g(CarryGen_io_pgIn_15_g),
    .io_pgIn_16_p(CarryGen_io_pgIn_16_p),
    .io_pgIn_16_g(CarryGen_io_pgIn_16_g),
    .io_pgIn_17_p(CarryGen_io_pgIn_17_p),
    .io_pgIn_17_g(CarryGen_io_pgIn_17_g),
    .io_pgIn_18_p(CarryGen_io_pgIn_18_p),
    .io_pgIn_18_g(CarryGen_io_pgIn_18_g),
    .io_pgIn_19_p(CarryGen_io_pgIn_19_p),
    .io_pgIn_19_g(CarryGen_io_pgIn_19_g),
    .io_pgIn_20_p(CarryGen_io_pgIn_20_p),
    .io_pgIn_20_g(CarryGen_io_pgIn_20_g),
    .io_pgIn_21_p(CarryGen_io_pgIn_21_p),
    .io_pgIn_21_g(CarryGen_io_pgIn_21_g),
    .io_pgIn_22_p(CarryGen_io_pgIn_22_p),
    .io_pgIn_22_g(CarryGen_io_pgIn_22_g),
    .io_pgIn_23_p(CarryGen_io_pgIn_23_p),
    .io_pgIn_23_g(CarryGen_io_pgIn_23_g),
    .io_pgIn_24_p(CarryGen_io_pgIn_24_p),
    .io_pgIn_24_g(CarryGen_io_pgIn_24_g),
    .io_pgIn_25_p(CarryGen_io_pgIn_25_p),
    .io_pgIn_25_g(CarryGen_io_pgIn_25_g),
    .io_pgIn_26_p(CarryGen_io_pgIn_26_p),
    .io_pgIn_26_g(CarryGen_io_pgIn_26_g),
    .io_pgIn_27_p(CarryGen_io_pgIn_27_p),
    .io_pgIn_27_g(CarryGen_io_pgIn_27_g),
    .io_pgIn_28_p(CarryGen_io_pgIn_28_p),
    .io_pgIn_28_g(CarryGen_io_pgIn_28_g),
    .io_pgIn_29_p(CarryGen_io_pgIn_29_p),
    .io_pgIn_29_g(CarryGen_io_pgIn_29_g),
    .io_pgIn_30_p(CarryGen_io_pgIn_30_p),
    .io_pgIn_30_g(CarryGen_io_pgIn_30_g),
    .io_pgIn_31_p(CarryGen_io_pgIn_31_p),
    .io_pgIn_31_g(CarryGen_io_pgIn_31_g),
    .io_pgIn_32_p(CarryGen_io_pgIn_32_p),
    .io_pgIn_32_g(CarryGen_io_pgIn_32_g),
    .io_cOut_0(CarryGen_io_cOut_0),
    .io_cOut_1(CarryGen_io_cOut_1),
    .io_cOut_2(CarryGen_io_cOut_2),
    .io_cOut_3(CarryGen_io_cOut_3),
    .io_cOut_4(CarryGen_io_cOut_4),
    .io_cOut_5(CarryGen_io_cOut_5),
    .io_cOut_6(CarryGen_io_cOut_6),
    .io_cOut_7(CarryGen_io_cOut_7),
    .io_cOut_8(CarryGen_io_cOut_8),
    .io_cOut_9(CarryGen_io_cOut_9),
    .io_cOut_10(CarryGen_io_cOut_10),
    .io_cOut_11(CarryGen_io_cOut_11),
    .io_cOut_12(CarryGen_io_cOut_12),
    .io_cOut_13(CarryGen_io_cOut_13),
    .io_cOut_14(CarryGen_io_cOut_14),
    .io_cOut_15(CarryGen_io_cOut_15),
    .io_cOut_16(CarryGen_io_cOut_16),
    .io_cOut_17(CarryGen_io_cOut_17),
    .io_cOut_18(CarryGen_io_cOut_18),
    .io_cOut_19(CarryGen_io_cOut_19),
    .io_cOut_20(CarryGen_io_cOut_20),
    .io_cOut_21(CarryGen_io_cOut_21),
    .io_cOut_22(CarryGen_io_cOut_22),
    .io_cOut_23(CarryGen_io_cOut_23),
    .io_cOut_24(CarryGen_io_cOut_24),
    .io_cOut_25(CarryGen_io_cOut_25),
    .io_cOut_26(CarryGen_io_cOut_26),
    .io_cOut_27(CarryGen_io_cOut_27),
    .io_cOut_28(CarryGen_io_cOut_28),
    .io_cOut_29(CarryGen_io_cOut_29),
    .io_cOut_30(CarryGen_io_cOut_30),
    .io_cOut_31(CarryGen_io_cOut_31),
    .io_cOut_32(CarryGen_io_cOut_32)
  );
  PGGen pgIn_1_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_1_pggenerator_io_in1),
    .io_in2(pgIn_1_pggenerator_io_in2),
    .io_pg_p(pgIn_1_pggenerator_io_pg_p),
    .io_pg_g(pgIn_1_pggenerator_io_pg_g)
  );
  PGGen pgIn_2_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_2_pggenerator_io_in1),
    .io_in2(pgIn_2_pggenerator_io_in2),
    .io_pg_p(pgIn_2_pggenerator_io_pg_p),
    .io_pg_g(pgIn_2_pggenerator_io_pg_g)
  );
  PGGen pgIn_3_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_3_pggenerator_io_in1),
    .io_in2(pgIn_3_pggenerator_io_in2),
    .io_pg_p(pgIn_3_pggenerator_io_pg_p),
    .io_pg_g(pgIn_3_pggenerator_io_pg_g)
  );
  PGGen pgIn_4_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_4_pggenerator_io_in1),
    .io_in2(pgIn_4_pggenerator_io_in2),
    .io_pg_p(pgIn_4_pggenerator_io_pg_p),
    .io_pg_g(pgIn_4_pggenerator_io_pg_g)
  );
  PGGen pgIn_5_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_5_pggenerator_io_in1),
    .io_in2(pgIn_5_pggenerator_io_in2),
    .io_pg_p(pgIn_5_pggenerator_io_pg_p),
    .io_pg_g(pgIn_5_pggenerator_io_pg_g)
  );
  PGGen pgIn_6_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_6_pggenerator_io_in1),
    .io_in2(pgIn_6_pggenerator_io_in2),
    .io_pg_p(pgIn_6_pggenerator_io_pg_p),
    .io_pg_g(pgIn_6_pggenerator_io_pg_g)
  );
  PGGen pgIn_7_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_7_pggenerator_io_in1),
    .io_in2(pgIn_7_pggenerator_io_in2),
    .io_pg_p(pgIn_7_pggenerator_io_pg_p),
    .io_pg_g(pgIn_7_pggenerator_io_pg_g)
  );
  PGGen pgIn_8_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_8_pggenerator_io_in1),
    .io_in2(pgIn_8_pggenerator_io_in2),
    .io_pg_p(pgIn_8_pggenerator_io_pg_p),
    .io_pg_g(pgIn_8_pggenerator_io_pg_g)
  );
  PGGen pgIn_9_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_9_pggenerator_io_in1),
    .io_in2(pgIn_9_pggenerator_io_in2),
    .io_pg_p(pgIn_9_pggenerator_io_pg_p),
    .io_pg_g(pgIn_9_pggenerator_io_pg_g)
  );
  PGGen pgIn_10_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_10_pggenerator_io_in1),
    .io_in2(pgIn_10_pggenerator_io_in2),
    .io_pg_p(pgIn_10_pggenerator_io_pg_p),
    .io_pg_g(pgIn_10_pggenerator_io_pg_g)
  );
  PGGen pgIn_11_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_11_pggenerator_io_in1),
    .io_in2(pgIn_11_pggenerator_io_in2),
    .io_pg_p(pgIn_11_pggenerator_io_pg_p),
    .io_pg_g(pgIn_11_pggenerator_io_pg_g)
  );
  PGGen pgIn_12_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_12_pggenerator_io_in1),
    .io_in2(pgIn_12_pggenerator_io_in2),
    .io_pg_p(pgIn_12_pggenerator_io_pg_p),
    .io_pg_g(pgIn_12_pggenerator_io_pg_g)
  );
  PGGen pgIn_13_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_13_pggenerator_io_in1),
    .io_in2(pgIn_13_pggenerator_io_in2),
    .io_pg_p(pgIn_13_pggenerator_io_pg_p),
    .io_pg_g(pgIn_13_pggenerator_io_pg_g)
  );
  PGGen pgIn_14_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_14_pggenerator_io_in1),
    .io_in2(pgIn_14_pggenerator_io_in2),
    .io_pg_p(pgIn_14_pggenerator_io_pg_p),
    .io_pg_g(pgIn_14_pggenerator_io_pg_g)
  );
  PGGen pgIn_15_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_15_pggenerator_io_in1),
    .io_in2(pgIn_15_pggenerator_io_in2),
    .io_pg_p(pgIn_15_pggenerator_io_pg_p),
    .io_pg_g(pgIn_15_pggenerator_io_pg_g)
  );
  PGGen pgIn_16_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_16_pggenerator_io_in1),
    .io_in2(pgIn_16_pggenerator_io_in2),
    .io_pg_p(pgIn_16_pggenerator_io_pg_p),
    .io_pg_g(pgIn_16_pggenerator_io_pg_g)
  );
  PGGen pgIn_17_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_17_pggenerator_io_in1),
    .io_in2(pgIn_17_pggenerator_io_in2),
    .io_pg_p(pgIn_17_pggenerator_io_pg_p),
    .io_pg_g(pgIn_17_pggenerator_io_pg_g)
  );
  PGGen pgIn_18_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_18_pggenerator_io_in1),
    .io_in2(pgIn_18_pggenerator_io_in2),
    .io_pg_p(pgIn_18_pggenerator_io_pg_p),
    .io_pg_g(pgIn_18_pggenerator_io_pg_g)
  );
  PGGen pgIn_19_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_19_pggenerator_io_in1),
    .io_in2(pgIn_19_pggenerator_io_in2),
    .io_pg_p(pgIn_19_pggenerator_io_pg_p),
    .io_pg_g(pgIn_19_pggenerator_io_pg_g)
  );
  PGGen pgIn_20_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_20_pggenerator_io_in1),
    .io_in2(pgIn_20_pggenerator_io_in2),
    .io_pg_p(pgIn_20_pggenerator_io_pg_p),
    .io_pg_g(pgIn_20_pggenerator_io_pg_g)
  );
  PGGen pgIn_21_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_21_pggenerator_io_in1),
    .io_in2(pgIn_21_pggenerator_io_in2),
    .io_pg_p(pgIn_21_pggenerator_io_pg_p),
    .io_pg_g(pgIn_21_pggenerator_io_pg_g)
  );
  PGGen pgIn_22_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_22_pggenerator_io_in1),
    .io_in2(pgIn_22_pggenerator_io_in2),
    .io_pg_p(pgIn_22_pggenerator_io_pg_p),
    .io_pg_g(pgIn_22_pggenerator_io_pg_g)
  );
  PGGen pgIn_23_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_23_pggenerator_io_in1),
    .io_in2(pgIn_23_pggenerator_io_in2),
    .io_pg_p(pgIn_23_pggenerator_io_pg_p),
    .io_pg_g(pgIn_23_pggenerator_io_pg_g)
  );
  PGGen pgIn_24_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_24_pggenerator_io_in1),
    .io_in2(pgIn_24_pggenerator_io_in2),
    .io_pg_p(pgIn_24_pggenerator_io_pg_p),
    .io_pg_g(pgIn_24_pggenerator_io_pg_g)
  );
  PGGen pgIn_25_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_25_pggenerator_io_in1),
    .io_in2(pgIn_25_pggenerator_io_in2),
    .io_pg_p(pgIn_25_pggenerator_io_pg_p),
    .io_pg_g(pgIn_25_pggenerator_io_pg_g)
  );
  PGGen pgIn_26_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_26_pggenerator_io_in1),
    .io_in2(pgIn_26_pggenerator_io_in2),
    .io_pg_p(pgIn_26_pggenerator_io_pg_p),
    .io_pg_g(pgIn_26_pggenerator_io_pg_g)
  );
  PGGen pgIn_27_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_27_pggenerator_io_in1),
    .io_in2(pgIn_27_pggenerator_io_in2),
    .io_pg_p(pgIn_27_pggenerator_io_pg_p),
    .io_pg_g(pgIn_27_pggenerator_io_pg_g)
  );
  PGGen pgIn_28_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_28_pggenerator_io_in1),
    .io_in2(pgIn_28_pggenerator_io_in2),
    .io_pg_p(pgIn_28_pggenerator_io_pg_p),
    .io_pg_g(pgIn_28_pggenerator_io_pg_g)
  );
  PGGen pgIn_29_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_29_pggenerator_io_in1),
    .io_in2(pgIn_29_pggenerator_io_in2),
    .io_pg_p(pgIn_29_pggenerator_io_pg_p),
    .io_pg_g(pgIn_29_pggenerator_io_pg_g)
  );
  PGGen pgIn_30_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_30_pggenerator_io_in1),
    .io_in2(pgIn_30_pggenerator_io_in2),
    .io_pg_p(pgIn_30_pggenerator_io_pg_p),
    .io_pg_g(pgIn_30_pggenerator_io_pg_g)
  );
  PGGen pgIn_31_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_31_pggenerator_io_in1),
    .io_in2(pgIn_31_pggenerator_io_in2),
    .io_pg_p(pgIn_31_pggenerator_io_pg_p),
    .io_pg_g(pgIn_31_pggenerator_io_pg_g)
  );
  PGGen pgIn_32_pggenerator ( // @[PGGenerator.scala 36:41]
    .io_in1(pgIn_32_pggenerator_io_in1),
    .io_in2(pgIn_32_pggenerator_io_in2),
    .io_pg_p(pgIn_32_pggenerator_io_pg_p),
    .io_pg_g(pgIn_32_pggenerator_io_pg_g)
  );
  assign io_dOut_s = {io_dOut_s_hi,io_dOut_s_lo}; // @[AdderFull.scala 46:20]
  assign io_dOut_cOut = CarryGen_io_cOut_32; // @[AdderFull.scala 47:16]
  assign CarryGen_io_pgIn_0_g = io_dIn_cIn; // @[AdderFull.scala 34:18 36:13]
  assign CarryGen_io_pgIn_1_p = pgIn_1_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_1_g = pgIn_1_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_2_p = pgIn_2_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_2_g = pgIn_2_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_3_p = pgIn_3_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_3_g = pgIn_3_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_4_p = pgIn_4_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_4_g = pgIn_4_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_5_p = pgIn_5_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_5_g = pgIn_5_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_6_p = pgIn_6_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_6_g = pgIn_6_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_7_p = pgIn_7_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_7_g = pgIn_7_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_8_p = pgIn_8_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_8_g = pgIn_8_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_9_p = pgIn_9_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_9_g = pgIn_9_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_10_p = pgIn_10_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_10_g = pgIn_10_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_11_p = pgIn_11_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_11_g = pgIn_11_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_12_p = pgIn_12_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_12_g = pgIn_12_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_13_p = pgIn_13_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_13_g = pgIn_13_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_14_p = pgIn_14_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_14_g = pgIn_14_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_15_p = pgIn_15_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_15_g = pgIn_15_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_16_p = pgIn_16_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_16_g = pgIn_16_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_17_p = pgIn_17_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_17_g = pgIn_17_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_18_p = pgIn_18_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_18_g = pgIn_18_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_19_p = pgIn_19_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_19_g = pgIn_19_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_20_p = pgIn_20_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_20_g = pgIn_20_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_21_p = pgIn_21_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_21_g = pgIn_21_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_22_p = pgIn_22_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_22_g = pgIn_22_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_23_p = pgIn_23_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_23_g = pgIn_23_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_24_p = pgIn_24_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_24_g = pgIn_24_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_25_p = pgIn_25_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_25_g = pgIn_25_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_26_p = pgIn_26_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_26_g = pgIn_26_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_27_p = pgIn_27_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_27_g = pgIn_27_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_28_p = pgIn_28_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_28_g = pgIn_28_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_29_p = pgIn_29_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_29_g = pgIn_29_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_30_p = pgIn_30_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_30_g = pgIn_30_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_31_p = pgIn_31_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_31_g = pgIn_31_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_32_p = pgIn_32_pggenerator_io_pg_p; // @[AdderFull.scala 34:18 38:17]
  assign CarryGen_io_pgIn_32_g = pgIn_32_pggenerator_io_pg_g; // @[AdderFull.scala 34:18 38:17]
  assign pgIn_1_pggenerator_io_in1 = io_dIn_a[0]; // @[AdderFull.scala 38:34]
  assign pgIn_1_pggenerator_io_in2 = io_dIn_b[0]; // @[AdderFull.scala 38:54]
  assign pgIn_2_pggenerator_io_in1 = io_dIn_a[1]; // @[AdderFull.scala 38:34]
  assign pgIn_2_pggenerator_io_in2 = io_dIn_b[1]; // @[AdderFull.scala 38:54]
  assign pgIn_3_pggenerator_io_in1 = io_dIn_a[2]; // @[AdderFull.scala 38:34]
  assign pgIn_3_pggenerator_io_in2 = io_dIn_b[2]; // @[AdderFull.scala 38:54]
  assign pgIn_4_pggenerator_io_in1 = io_dIn_a[3]; // @[AdderFull.scala 38:34]
  assign pgIn_4_pggenerator_io_in2 = io_dIn_b[3]; // @[AdderFull.scala 38:54]
  assign pgIn_5_pggenerator_io_in1 = io_dIn_a[4]; // @[AdderFull.scala 38:34]
  assign pgIn_5_pggenerator_io_in2 = io_dIn_b[4]; // @[AdderFull.scala 38:54]
  assign pgIn_6_pggenerator_io_in1 = io_dIn_a[5]; // @[AdderFull.scala 38:34]
  assign pgIn_6_pggenerator_io_in2 = io_dIn_b[5]; // @[AdderFull.scala 38:54]
  assign pgIn_7_pggenerator_io_in1 = io_dIn_a[6]; // @[AdderFull.scala 38:34]
  assign pgIn_7_pggenerator_io_in2 = io_dIn_b[6]; // @[AdderFull.scala 38:54]
  assign pgIn_8_pggenerator_io_in1 = io_dIn_a[7]; // @[AdderFull.scala 38:34]
  assign pgIn_8_pggenerator_io_in2 = io_dIn_b[7]; // @[AdderFull.scala 38:54]
  assign pgIn_9_pggenerator_io_in1 = io_dIn_a[8]; // @[AdderFull.scala 38:34]
  assign pgIn_9_pggenerator_io_in2 = io_dIn_b[8]; // @[AdderFull.scala 38:54]
  assign pgIn_10_pggenerator_io_in1 = io_dIn_a[9]; // @[AdderFull.scala 38:34]
  assign pgIn_10_pggenerator_io_in2 = io_dIn_b[9]; // @[AdderFull.scala 38:54]
  assign pgIn_11_pggenerator_io_in1 = io_dIn_a[10]; // @[AdderFull.scala 38:34]
  assign pgIn_11_pggenerator_io_in2 = io_dIn_b[10]; // @[AdderFull.scala 38:54]
  assign pgIn_12_pggenerator_io_in1 = io_dIn_a[11]; // @[AdderFull.scala 38:34]
  assign pgIn_12_pggenerator_io_in2 = io_dIn_b[11]; // @[AdderFull.scala 38:54]
  assign pgIn_13_pggenerator_io_in1 = io_dIn_a[12]; // @[AdderFull.scala 38:34]
  assign pgIn_13_pggenerator_io_in2 = io_dIn_b[12]; // @[AdderFull.scala 38:54]
  assign pgIn_14_pggenerator_io_in1 = io_dIn_a[13]; // @[AdderFull.scala 38:34]
  assign pgIn_14_pggenerator_io_in2 = io_dIn_b[13]; // @[AdderFull.scala 38:54]
  assign pgIn_15_pggenerator_io_in1 = io_dIn_a[14]; // @[AdderFull.scala 38:34]
  assign pgIn_15_pggenerator_io_in2 = io_dIn_b[14]; // @[AdderFull.scala 38:54]
  assign pgIn_16_pggenerator_io_in1 = io_dIn_a[15]; // @[AdderFull.scala 38:34]
  assign pgIn_16_pggenerator_io_in2 = io_dIn_b[15]; // @[AdderFull.scala 38:54]
  assign pgIn_17_pggenerator_io_in1 = io_dIn_a[16]; // @[AdderFull.scala 38:34]
  assign pgIn_17_pggenerator_io_in2 = io_dIn_b[16]; // @[AdderFull.scala 38:54]
  assign pgIn_18_pggenerator_io_in1 = io_dIn_a[17]; // @[AdderFull.scala 38:34]
  assign pgIn_18_pggenerator_io_in2 = io_dIn_b[17]; // @[AdderFull.scala 38:54]
  assign pgIn_19_pggenerator_io_in1 = io_dIn_a[18]; // @[AdderFull.scala 38:34]
  assign pgIn_19_pggenerator_io_in2 = io_dIn_b[18]; // @[AdderFull.scala 38:54]
  assign pgIn_20_pggenerator_io_in1 = io_dIn_a[19]; // @[AdderFull.scala 38:34]
  assign pgIn_20_pggenerator_io_in2 = io_dIn_b[19]; // @[AdderFull.scala 38:54]
  assign pgIn_21_pggenerator_io_in1 = io_dIn_a[20]; // @[AdderFull.scala 38:34]
  assign pgIn_21_pggenerator_io_in2 = io_dIn_b[20]; // @[AdderFull.scala 38:54]
  assign pgIn_22_pggenerator_io_in1 = io_dIn_a[21]; // @[AdderFull.scala 38:34]
  assign pgIn_22_pggenerator_io_in2 = io_dIn_b[21]; // @[AdderFull.scala 38:54]
  assign pgIn_23_pggenerator_io_in1 = io_dIn_a[22]; // @[AdderFull.scala 38:34]
  assign pgIn_23_pggenerator_io_in2 = io_dIn_b[22]; // @[AdderFull.scala 38:54]
  assign pgIn_24_pggenerator_io_in1 = io_dIn_a[23]; // @[AdderFull.scala 38:34]
  assign pgIn_24_pggenerator_io_in2 = io_dIn_b[23]; // @[AdderFull.scala 38:54]
  assign pgIn_25_pggenerator_io_in1 = io_dIn_a[24]; // @[AdderFull.scala 38:34]
  assign pgIn_25_pggenerator_io_in2 = io_dIn_b[24]; // @[AdderFull.scala 38:54]
  assign pgIn_26_pggenerator_io_in1 = io_dIn_a[25]; // @[AdderFull.scala 38:34]
  assign pgIn_26_pggenerator_io_in2 = io_dIn_b[25]; // @[AdderFull.scala 38:54]
  assign pgIn_27_pggenerator_io_in1 = io_dIn_a[26]; // @[AdderFull.scala 38:34]
  assign pgIn_27_pggenerator_io_in2 = io_dIn_b[26]; // @[AdderFull.scala 38:54]
  assign pgIn_28_pggenerator_io_in1 = io_dIn_a[27]; // @[AdderFull.scala 38:34]
  assign pgIn_28_pggenerator_io_in2 = io_dIn_b[27]; // @[AdderFull.scala 38:54]
  assign pgIn_29_pggenerator_io_in1 = io_dIn_a[28]; // @[AdderFull.scala 38:34]
  assign pgIn_29_pggenerator_io_in2 = io_dIn_b[28]; // @[AdderFull.scala 38:54]
  assign pgIn_30_pggenerator_io_in1 = io_dIn_a[29]; // @[AdderFull.scala 38:34]
  assign pgIn_30_pggenerator_io_in2 = io_dIn_b[29]; // @[AdderFull.scala 38:54]
  assign pgIn_31_pggenerator_io_in1 = io_dIn_a[30]; // @[AdderFull.scala 38:34]
  assign pgIn_31_pggenerator_io_in2 = io_dIn_b[30]; // @[AdderFull.scala 38:54]
  assign pgIn_32_pggenerator_io_in1 = io_dIn_a[31]; // @[AdderFull.scala 38:34]
  assign pgIn_32_pggenerator_io_in2 = io_dIn_b[31]; // @[AdderFull.scala 38:54]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,"a = %d\t",io_dIn_a); // @[AdderFull.scala 49:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"b = %d\t",io_dIn_b); // @[AdderFull.scala 50:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"cin = %d\t",io_dIn_cIn); // @[AdderFull.scala 51:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"s = %d\t",io_dOut_s); // @[AdderFull.scala 52:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"cout = %d\n",io_dOut_cOut); // @[AdderFull.scala 53:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
