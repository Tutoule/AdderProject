module PGGen(
  input   io_in1,
  input   io_in2,
  output  io_p,
  output  io_g
);
  assign io_p = io_in1 ^ io_in2; // @[PGGenerator.scala 13:24]
  assign io_g = io_in1 & io_in2; // @[PGGenerator.scala 14:24]
endmodule
module CarryGen(
  input   io_pIn_0,
  input   io_pIn_1,
  input   io_pIn_2,
  input   io_pIn_3,
  input   io_gIn_0,
  input   io_gIn_1,
  input   io_gIn_2,
  input   io_gIn_3,
  input   io_cIn,
  output  io_pOut_0,
  output  io_pOut_1,
  output  io_pOut_2,
  output  io_pOut_3,
  output  io_cOut_0,
  output  io_cOut_1,
  output  io_cOut_2,
  output  io_cOut_3,
  output  io_cOut_4
);
  wire  _io_cOut_1_T = io_cOut_0 & io_pIn_0; // @[CarryGenerator.scala 16:59]
  wire  _io_cOut_2_T = io_cOut_1 & io_pIn_1; // @[CarryGenerator.scala 16:59]
  wire  _io_cOut_3_T = io_cOut_2 & io_pIn_2; // @[CarryGenerator.scala 16:59]
  wire  _io_cOut_4_T = io_cOut_3 & io_pIn_3; // @[CarryGenerator.scala 16:59]
  assign io_pOut_0 = io_pIn_0; // @[CarryGenerator.scala 13:17]
  assign io_pOut_1 = io_pIn_1; // @[CarryGenerator.scala 13:17]
  assign io_pOut_2 = io_pIn_2; // @[CarryGenerator.scala 13:17]
  assign io_pOut_3 = io_pIn_3; // @[CarryGenerator.scala 13:17]
  assign io_cOut_0 = io_cIn; // @[CarryGenerator.scala 14:20]
  assign io_cOut_1 = io_gIn_0 + _io_cOut_1_T; // @[CarryGenerator.scala 16:45]
  assign io_cOut_2 = io_gIn_1 + _io_cOut_2_T; // @[CarryGenerator.scala 16:45]
  assign io_cOut_3 = io_gIn_2 + _io_cOut_3_T; // @[CarryGenerator.scala 16:45]
  assign io_cOut_4 = io_gIn_3 + _io_cOut_4_T; // @[CarryGenerator.scala 16:45]
endmodule
module Adder4(
  input        clock,
  input        reset,
  input  [3:0] io_a,
  input  [3:0] io_b,
  input        io_cIn,
  output [3:0] io_s,
  output       io_cOut
);
  wire  PGGen_io_in1; // @[Adder4.scala 14:40]
  wire  PGGen_io_in2; // @[Adder4.scala 14:40]
  wire  PGGen_io_p; // @[Adder4.scala 14:40]
  wire  PGGen_io_g; // @[Adder4.scala 14:40]
  wire  PGGen_1_io_in1; // @[Adder4.scala 14:40]
  wire  PGGen_1_io_in2; // @[Adder4.scala 14:40]
  wire  PGGen_1_io_p; // @[Adder4.scala 14:40]
  wire  PGGen_1_io_g; // @[Adder4.scala 14:40]
  wire  PGGen_2_io_in1; // @[Adder4.scala 14:40]
  wire  PGGen_2_io_in2; // @[Adder4.scala 14:40]
  wire  PGGen_2_io_p; // @[Adder4.scala 14:40]
  wire  PGGen_2_io_g; // @[Adder4.scala 14:40]
  wire  PGGen_3_io_in1; // @[Adder4.scala 14:40]
  wire  PGGen_3_io_in2; // @[Adder4.scala 14:40]
  wire  PGGen_3_io_p; // @[Adder4.scala 14:40]
  wire  PGGen_3_io_g; // @[Adder4.scala 14:40]
  wire  CarryGen_io_pIn_0; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pIn_1; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pIn_2; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pIn_3; // @[Adder4.scala 15:30]
  wire  CarryGen_io_gIn_0; // @[Adder4.scala 15:30]
  wire  CarryGen_io_gIn_1; // @[Adder4.scala 15:30]
  wire  CarryGen_io_gIn_2; // @[Adder4.scala 15:30]
  wire  CarryGen_io_gIn_3; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cIn; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pOut_0; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pOut_1; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pOut_2; // @[Adder4.scala 15:30]
  wire  CarryGen_io_pOut_3; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cOut_0; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cOut_1; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cOut_2; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cOut_3; // @[Adder4.scala 15:30]
  wire  CarryGen_io_cOut_4; // @[Adder4.scala 15:30]
  wire  sum_0 = CarryGen_io_pOut_0 ^ CarryGen_io_cOut_0; // @[Adder4.scala 28:44]
  wire  sum_1 = CarryGen_io_pOut_1 ^ CarryGen_io_cOut_1; // @[Adder4.scala 28:44]
  wire  sum_2 = CarryGen_io_pOut_2 ^ CarryGen_io_cOut_2; // @[Adder4.scala 28:44]
  wire  sum_3 = CarryGen_io_pOut_3 ^ CarryGen_io_cOut_3; // @[Adder4.scala 28:44]
  wire [1:0] io_s_lo = {sum_1,sum_0}; // @[Adder4.scala 30:21]
  wire [1:0] io_s_hi = {sum_3,sum_2}; // @[Adder4.scala 30:21]
  PGGen PGGen ( // @[Adder4.scala 14:40]
    .io_in1(PGGen_io_in1),
    .io_in2(PGGen_io_in2),
    .io_p(PGGen_io_p),
    .io_g(PGGen_io_g)
  );
  PGGen PGGen_1 ( // @[Adder4.scala 14:40]
    .io_in1(PGGen_1_io_in1),
    .io_in2(PGGen_1_io_in2),
    .io_p(PGGen_1_io_p),
    .io_g(PGGen_1_io_g)
  );
  PGGen PGGen_2 ( // @[Adder4.scala 14:40]
    .io_in1(PGGen_2_io_in1),
    .io_in2(PGGen_2_io_in2),
    .io_p(PGGen_2_io_p),
    .io_g(PGGen_2_io_g)
  );
  PGGen PGGen_3 ( // @[Adder4.scala 14:40]
    .io_in1(PGGen_3_io_in1),
    .io_in2(PGGen_3_io_in2),
    .io_p(PGGen_3_io_p),
    .io_g(PGGen_3_io_g)
  );
  CarryGen CarryGen ( // @[Adder4.scala 15:30]
    .io_pIn_0(CarryGen_io_pIn_0),
    .io_pIn_1(CarryGen_io_pIn_1),
    .io_pIn_2(CarryGen_io_pIn_2),
    .io_pIn_3(CarryGen_io_pIn_3),
    .io_gIn_0(CarryGen_io_gIn_0),
    .io_gIn_1(CarryGen_io_gIn_1),
    .io_gIn_2(CarryGen_io_gIn_2),
    .io_gIn_3(CarryGen_io_gIn_3),
    .io_cIn(CarryGen_io_cIn),
    .io_pOut_0(CarryGen_io_pOut_0),
    .io_pOut_1(CarryGen_io_pOut_1),
    .io_pOut_2(CarryGen_io_pOut_2),
    .io_pOut_3(CarryGen_io_pOut_3),
    .io_cOut_0(CarryGen_io_cOut_0),
    .io_cOut_1(CarryGen_io_cOut_1),
    .io_cOut_2(CarryGen_io_cOut_2),
    .io_cOut_3(CarryGen_io_cOut_3),
    .io_cOut_4(CarryGen_io_cOut_4)
  );
  assign io_s = {io_s_hi,io_s_lo}; // @[Adder4.scala 30:21]
  assign io_cOut = CarryGen_io_cOut_4; // @[Adder4.scala 31:17]
  assign PGGen_io_in1 = io_a[0]; // @[Adder4.scala 20:38]
  assign PGGen_io_in2 = io_b[0]; // @[Adder4.scala 21:38]
  assign PGGen_1_io_in1 = io_a[1]; // @[Adder4.scala 20:38]
  assign PGGen_1_io_in2 = io_b[1]; // @[Adder4.scala 21:38]
  assign PGGen_2_io_in1 = io_a[2]; // @[Adder4.scala 20:38]
  assign PGGen_2_io_in2 = io_b[2]; // @[Adder4.scala 21:38]
  assign PGGen_3_io_in1 = io_a[3]; // @[Adder4.scala 20:38]
  assign PGGen_3_io_in2 = io_b[3]; // @[Adder4.scala 21:38]
  assign CarryGen_io_pIn_0 = PGGen_io_p; // @[Adder4.scala 22:33]
  assign CarryGen_io_pIn_1 = PGGen_1_io_p; // @[Adder4.scala 22:33]
  assign CarryGen_io_pIn_2 = PGGen_2_io_p; // @[Adder4.scala 22:33]
  assign CarryGen_io_pIn_3 = PGGen_3_io_p; // @[Adder4.scala 22:33]
  assign CarryGen_io_gIn_0 = PGGen_io_g; // @[Adder4.scala 23:33]
  assign CarryGen_io_gIn_1 = PGGen_1_io_g; // @[Adder4.scala 23:33]
  assign CarryGen_io_gIn_2 = PGGen_2_io_g; // @[Adder4.scala 23:33]
  assign CarryGen_io_gIn_3 = PGGen_3_io_g; // @[Adder4.scala 23:33]
  assign CarryGen_io_cIn = io_cIn; // @[Adder4.scala 17:22]
endmodule
