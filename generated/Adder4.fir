circuit Adder4 :
  module PGGen :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module CarryGen :
    input clock : Clock
    input reset : Reset
    output io : { flip pIn : UInt<1>[4], flip gIn : UInt<1>[4], flip cIn : UInt<1>, pOut : UInt<1>[4], cOut : UInt<1>[5]}

    io.pOut[0] <= io.pIn[0] @[CarryGenerator.scala 13:17]
    io.pOut[1] <= io.pIn[1] @[CarryGenerator.scala 13:17]
    io.pOut[2] <= io.pIn[2] @[CarryGenerator.scala 13:17]
    io.pOut[3] <= io.pIn[3] @[CarryGenerator.scala 13:17]
    io.cOut[0] <= io.cIn @[CarryGenerator.scala 14:20]
    node _io_cOut_1_T = and(io.cOut[0], io.pIn[0]) @[CarryGenerator.scala 16:59]
    node _io_cOut_1_T_1 = add(io.gIn[0], _io_cOut_1_T) @[CarryGenerator.scala 16:45]
    node _io_cOut_1_T_2 = tail(_io_cOut_1_T_1, 1) @[CarryGenerator.scala 16:45]
    io.cOut[1] <= _io_cOut_1_T_2 @[CarryGenerator.scala 16:32]
    node _io_cOut_2_T = and(io.cOut[1], io.pIn[1]) @[CarryGenerator.scala 16:59]
    node _io_cOut_2_T_1 = add(io.gIn[1], _io_cOut_2_T) @[CarryGenerator.scala 16:45]
    node _io_cOut_2_T_2 = tail(_io_cOut_2_T_1, 1) @[CarryGenerator.scala 16:45]
    io.cOut[2] <= _io_cOut_2_T_2 @[CarryGenerator.scala 16:32]
    node _io_cOut_3_T = and(io.cOut[2], io.pIn[2]) @[CarryGenerator.scala 16:59]
    node _io_cOut_3_T_1 = add(io.gIn[2], _io_cOut_3_T) @[CarryGenerator.scala 16:45]
    node _io_cOut_3_T_2 = tail(_io_cOut_3_T_1, 1) @[CarryGenerator.scala 16:45]
    io.cOut[3] <= _io_cOut_3_T_2 @[CarryGenerator.scala 16:32]
    node _io_cOut_4_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 16:59]
    node _io_cOut_4_T_1 = add(io.gIn[3], _io_cOut_4_T) @[CarryGenerator.scala 16:45]
    node _io_cOut_4_T_2 = tail(_io_cOut_4_T_1, 1) @[CarryGenerator.scala 16:45]
    io.cOut[4] <= _io_cOut_4_T_2 @[CarryGenerator.scala 16:32]

  module Adder4 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst PGGen of PGGen @[Adder4.scala 14:40]
    PGGen.clock <= clock
    PGGen.reset <= reset
    inst PGGen_1 of PGGen_1 @[Adder4.scala 14:40]
    PGGen_1.clock <= clock
    PGGen_1.reset <= reset
    inst PGGen_2 of PGGen_2 @[Adder4.scala 14:40]
    PGGen_2.clock <= clock
    PGGen_2.reset <= reset
    inst PGGen_3 of PGGen_3 @[Adder4.scala 14:40]
    PGGen_3.clock <= clock
    PGGen_3.reset <= reset
    inst CarryGen of CarryGen @[Adder4.scala 15:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 17:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 20:38]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 20:42]
    PGGen.io.in1 <= _T_1 @[Adder4.scala 20:31]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 21:38]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 21:42]
    PGGen.io.in2 <= _T_3 @[Adder4.scala 21:31]
    CarryGen.io.pIn[0] <= PGGen.io.p @[Adder4.scala 22:33]
    CarryGen.io.gIn[0] <= PGGen.io.g @[Adder4.scala 23:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 20:38]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 20:42]
    PGGen_1.io.in1 <= _T_5 @[Adder4.scala 20:31]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 21:38]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 21:42]
    PGGen_1.io.in2 <= _T_7 @[Adder4.scala 21:31]
    CarryGen.io.pIn[1] <= PGGen_1.io.p @[Adder4.scala 22:33]
    CarryGen.io.gIn[1] <= PGGen_1.io.g @[Adder4.scala 23:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 20:38]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 20:42]
    PGGen_2.io.in1 <= _T_9 @[Adder4.scala 20:31]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 21:38]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 21:42]
    PGGen_2.io.in2 <= _T_11 @[Adder4.scala 21:31]
    CarryGen.io.pIn[2] <= PGGen_2.io.p @[Adder4.scala 22:33]
    CarryGen.io.gIn[2] <= PGGen_2.io.g @[Adder4.scala 23:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 20:38]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 20:42]
    PGGen_3.io.in1 <= _T_13 @[Adder4.scala 20:31]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 21:38]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 21:42]
    PGGen_3.io.in2 <= _T_15 @[Adder4.scala 21:31]
    CarryGen.io.pIn[3] <= PGGen_3.io.p @[Adder4.scala 22:33]
    CarryGen.io.gIn[3] <= PGGen_3.io.g @[Adder4.scala 23:33]
    wire sum : UInt<1>[4] @[Adder4.scala 25:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 28:44]
    sum[0] <= _sum_0_T @[Adder4.scala 28:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 28:44]
    sum[1] <= _sum_1_T @[Adder4.scala 28:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 28:44]
    sum[2] <= _sum_2_T @[Adder4.scala 28:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 28:44]
    sum[3] <= _sum_3_T @[Adder4.scala 28:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 30:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 30:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 30:21]
    io.s <= _io_s_T @[Adder4.scala 30:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 31:17]

