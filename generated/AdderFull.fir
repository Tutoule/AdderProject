circuit AdderFull :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

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

  module Adder4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_1 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_2 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_3 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_1 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_1 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_4 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_5 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_6 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_7 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_2 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_2 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_8 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_9 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_10 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_11 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_3 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_3 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_12 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_13 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_14 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_15 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_4 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_4 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_16 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_17 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_18 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_19 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_5 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_5 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_20 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_21 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_22 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_23 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_6 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_6 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_24 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_25 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_26 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_27 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module CarryGen_7 :
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
    wire cpass : UInt<1> @[CarryGenerator.scala 18:25]
    node _ispass_T = and(io.pIn[0], io.pIn[1]) @[CarryGenerator.scala 19:38]
    node _ispass_T_1 = and(_ispass_T, io.pIn[2]) @[CarryGenerator.scala 19:38]
    node ispass = and(_ispass_T_1, io.pIn[3]) @[CarryGenerator.scala 19:38]
    node _cpass_T = and(io.cOut[3], io.pIn[3]) @[CarryGenerator.scala 20:42]
    node _cpass_T_1 = add(io.gIn[3], _cpass_T) @[CarryGenerator.scala 20:28]
    node _cpass_T_2 = tail(_cpass_T_1, 1) @[CarryGenerator.scala 20:28]
    cpass <= _cpass_T_2 @[CarryGenerator.scala 20:15]
    node _io_cOut_4_T = mux(ispass, io.cIn, cpass) @[CarryGenerator.scala 21:26]
    io.cOut[4] <= _io_cOut_4_T @[CarryGenerator.scala 21:20]

  module PGGen_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module PGGen_31 :
    input clock : Clock
    input reset : Reset
    output io : { flip in1 : UInt<1>, flip in2 : UInt<1>, p : UInt<1>, g : UInt<1>}

    node _io_p_T = xor(io.in1, io.in2) @[PGGenerator.scala 13:24]
    io.p <= _io_p_T @[PGGenerator.scala 13:14]
    node _io_g_T = and(io.in1, io.in2) @[PGGenerator.scala 14:24]
    io.g <= _io_g_T @[PGGenerator.scala 14:14]

  module Adder4_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, s : UInt<4>, cOut : UInt<1>}

    inst CarryGen of CarryGen_7 @[Adder4.scala 16:30]
    CarryGen.clock <= clock
    CarryGen.reset <= reset
    CarryGen.io.cIn <= io.cIn @[Adder4.scala 18:22]
    node _T = bits(io.a, 0, 0) @[Adder4.scala 27:36]
    node _T_1 = bits(_T, 0, 0) @[Adder4.scala 27:40]
    node _T_2 = bits(io.b, 0, 0) @[Adder4.scala 27:52]
    node _T_3 = bits(_T_2, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator of PGGen_28 @[PGGenerator.scala 20:41]
    pggenerator.clock <= clock
    pggenerator.reset <= reset
    pggenerator.io.in1 <= _T_1 @[PGGenerator.scala 21:36]
    pggenerator.io.in2 <= _T_3 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[0] <= pggenerator.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[0] <= pggenerator.io.g @[Adder4.scala 29:33]
    node _T_4 = bits(io.a, 1, 1) @[Adder4.scala 27:36]
    node _T_5 = bits(_T_4, 0, 0) @[Adder4.scala 27:40]
    node _T_6 = bits(io.b, 1, 1) @[Adder4.scala 27:52]
    node _T_7 = bits(_T_6, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_1 of PGGen_29 @[PGGenerator.scala 20:41]
    pggenerator_1.clock <= clock
    pggenerator_1.reset <= reset
    pggenerator_1.io.in1 <= _T_5 @[PGGenerator.scala 21:36]
    pggenerator_1.io.in2 <= _T_7 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[1] <= pggenerator_1.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[1] <= pggenerator_1.io.g @[Adder4.scala 29:33]
    node _T_8 = bits(io.a, 2, 2) @[Adder4.scala 27:36]
    node _T_9 = bits(_T_8, 0, 0) @[Adder4.scala 27:40]
    node _T_10 = bits(io.b, 2, 2) @[Adder4.scala 27:52]
    node _T_11 = bits(_T_10, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_2 of PGGen_30 @[PGGenerator.scala 20:41]
    pggenerator_2.clock <= clock
    pggenerator_2.reset <= reset
    pggenerator_2.io.in1 <= _T_9 @[PGGenerator.scala 21:36]
    pggenerator_2.io.in2 <= _T_11 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[2] <= pggenerator_2.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[2] <= pggenerator_2.io.g @[Adder4.scala 29:33]
    node _T_12 = bits(io.a, 3, 3) @[Adder4.scala 27:36]
    node _T_13 = bits(_T_12, 0, 0) @[Adder4.scala 27:40]
    node _T_14 = bits(io.b, 3, 3) @[Adder4.scala 27:52]
    node _T_15 = bits(_T_14, 0, 0) @[Adder4.scala 27:56]
    inst pggenerator_3 of PGGen_31 @[PGGenerator.scala 20:41]
    pggenerator_3.clock <= clock
    pggenerator_3.reset <= reset
    pggenerator_3.io.in1 <= _T_13 @[PGGenerator.scala 21:36]
    pggenerator_3.io.in2 <= _T_15 @[PGGenerator.scala 22:36]
    CarryGen.io.pIn[3] <= pggenerator_3.io.p @[Adder4.scala 28:33]
    CarryGen.io.gIn[3] <= pggenerator_3.io.g @[Adder4.scala 29:33]
    wire sum : UInt<1>[4] @[Adder4.scala 31:23]
    node _sum_0_T = xor(CarryGen.io.pOut[0], CarryGen.io.cOut[0]) @[Adder4.scala 34:44]
    sum[0] <= _sum_0_T @[Adder4.scala 34:24]
    node _sum_1_T = xor(CarryGen.io.pOut[1], CarryGen.io.cOut[1]) @[Adder4.scala 34:44]
    sum[1] <= _sum_1_T @[Adder4.scala 34:24]
    node _sum_2_T = xor(CarryGen.io.pOut[2], CarryGen.io.cOut[2]) @[Adder4.scala 34:44]
    sum[2] <= _sum_2_T @[Adder4.scala 34:24]
    node _sum_3_T = xor(CarryGen.io.pOut[3], CarryGen.io.cOut[3]) @[Adder4.scala 34:44]
    sum[3] <= _sum_3_T @[Adder4.scala 34:24]
    node io_s_lo = cat(sum[1], sum[0]) @[Adder4.scala 36:21]
    node io_s_hi = cat(sum[3], sum[2]) @[Adder4.scala 36:21]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[Adder4.scala 36:21]
    io.s <= _io_s_T @[Adder4.scala 36:14]
    io.cOut <= CarryGen.io.cOut[4] @[Adder4.scala 37:17]

  module AdderFull :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<32>, flip b : UInt<32>, flip cIn : UInt<1>, s : UInt<32>, cOut : UInt<1>}

    inst Adder4 of Adder4 @[AdderFull.scala 29:37]
    Adder4.clock <= clock
    Adder4.reset <= reset
    inst Adder4_1 of Adder4_1 @[AdderFull.scala 29:37]
    Adder4_1.clock <= clock
    Adder4_1.reset <= reset
    inst Adder4_2 of Adder4_2 @[AdderFull.scala 29:37]
    Adder4_2.clock <= clock
    Adder4_2.reset <= reset
    inst Adder4_3 of Adder4_3 @[AdderFull.scala 29:37]
    Adder4_3.clock <= clock
    Adder4_3.reset <= reset
    inst Adder4_4 of Adder4_4 @[AdderFull.scala 29:37]
    Adder4_4.clock <= clock
    Adder4_4.reset <= reset
    inst Adder4_5 of Adder4_5 @[AdderFull.scala 29:37]
    Adder4_5.clock <= clock
    Adder4_5.reset <= reset
    inst Adder4_6 of Adder4_6 @[AdderFull.scala 29:37]
    Adder4_6.clock <= clock
    Adder4_6.reset <= reset
    inst Adder4_7 of Adder4_7 @[AdderFull.scala 29:37]
    Adder4_7.clock <= clock
    Adder4_7.reset <= reset
    wire sum : UInt<4>[8] @[AdderFull.scala 30:17]
    Adder4_1.io.cIn <= Adder4.io.cOut @[AdderFull.scala 32:24]
    Adder4_2.io.cIn <= Adder4_1.io.cOut @[AdderFull.scala 32:24]
    Adder4_3.io.cIn <= Adder4_2.io.cOut @[AdderFull.scala 32:24]
    Adder4_4.io.cIn <= Adder4_3.io.cOut @[AdderFull.scala 32:24]
    Adder4_5.io.cIn <= Adder4_4.io.cOut @[AdderFull.scala 32:24]
    Adder4_6.io.cIn <= Adder4_5.io.cOut @[AdderFull.scala 32:24]
    Adder4_7.io.cIn <= Adder4_6.io.cOut @[AdderFull.scala 32:24]
    node _T = bits(io.a, 3, 0) @[AdderFull.scala 35:25]
    Adder4.io.a <= _T @[AdderFull.scala 35:18]
    node _T_1 = bits(io.b, 3, 0) @[AdderFull.scala 36:25]
    Adder4.io.b <= _T_1 @[AdderFull.scala 36:18]
    sum[0] <= Adder4.io.s @[AdderFull.scala 37:12]
    node _T_2 = bits(io.a, 7, 4) @[AdderFull.scala 35:25]
    Adder4_1.io.a <= _T_2 @[AdderFull.scala 35:18]
    node _T_3 = bits(io.b, 7, 4) @[AdderFull.scala 36:25]
    Adder4_1.io.b <= _T_3 @[AdderFull.scala 36:18]
    sum[1] <= Adder4_1.io.s @[AdderFull.scala 37:12]
    node _T_4 = bits(io.a, 11, 8) @[AdderFull.scala 35:25]
    Adder4_2.io.a <= _T_4 @[AdderFull.scala 35:18]
    node _T_5 = bits(io.b, 11, 8) @[AdderFull.scala 36:25]
    Adder4_2.io.b <= _T_5 @[AdderFull.scala 36:18]
    sum[2] <= Adder4_2.io.s @[AdderFull.scala 37:12]
    node _T_6 = bits(io.a, 15, 12) @[AdderFull.scala 35:25]
    Adder4_3.io.a <= _T_6 @[AdderFull.scala 35:18]
    node _T_7 = bits(io.b, 15, 12) @[AdderFull.scala 36:25]
    Adder4_3.io.b <= _T_7 @[AdderFull.scala 36:18]
    sum[3] <= Adder4_3.io.s @[AdderFull.scala 37:12]
    node _T_8 = bits(io.a, 19, 16) @[AdderFull.scala 35:25]
    Adder4_4.io.a <= _T_8 @[AdderFull.scala 35:18]
    node _T_9 = bits(io.b, 19, 16) @[AdderFull.scala 36:25]
    Adder4_4.io.b <= _T_9 @[AdderFull.scala 36:18]
    sum[4] <= Adder4_4.io.s @[AdderFull.scala 37:12]
    node _T_10 = bits(io.a, 23, 20) @[AdderFull.scala 35:25]
    Adder4_5.io.a <= _T_10 @[AdderFull.scala 35:18]
    node _T_11 = bits(io.b, 23, 20) @[AdderFull.scala 36:25]
    Adder4_5.io.b <= _T_11 @[AdderFull.scala 36:18]
    sum[5] <= Adder4_5.io.s @[AdderFull.scala 37:12]
    node _T_12 = bits(io.a, 27, 24) @[AdderFull.scala 35:25]
    Adder4_6.io.a <= _T_12 @[AdderFull.scala 35:18]
    node _T_13 = bits(io.b, 27, 24) @[AdderFull.scala 36:25]
    Adder4_6.io.b <= _T_13 @[AdderFull.scala 36:18]
    sum[6] <= Adder4_6.io.s @[AdderFull.scala 37:12]
    node _T_14 = bits(io.a, 31, 28) @[AdderFull.scala 35:25]
    Adder4_7.io.a <= _T_14 @[AdderFull.scala 35:18]
    node _T_15 = bits(io.b, 31, 28) @[AdderFull.scala 36:25]
    Adder4_7.io.b <= _T_15 @[AdderFull.scala 36:18]
    sum[7] <= Adder4_7.io.s @[AdderFull.scala 37:12]
    Adder4.io.cIn <= io.cIn @[AdderFull.scala 39:18]
    node io_s_lo_lo = cat(sum[1], sum[0]) @[AdderFull.scala 40:15]
    node io_s_lo_hi = cat(sum[3], sum[2]) @[AdderFull.scala 40:15]
    node io_s_lo = cat(io_s_lo_hi, io_s_lo_lo) @[AdderFull.scala 40:15]
    node io_s_hi_lo = cat(sum[5], sum[4]) @[AdderFull.scala 40:15]
    node io_s_hi_hi = cat(sum[7], sum[6]) @[AdderFull.scala 40:15]
    node io_s_hi = cat(io_s_hi_hi, io_s_hi_lo) @[AdderFull.scala 40:15]
    node _io_s_T = cat(io_s_hi, io_s_lo) @[AdderFull.scala 40:15]
    io.s <= _io_s_T @[AdderFull.scala 40:8]
    io.cOut <= Adder4_7.io.cOut @[AdderFull.scala 41:11]
    node _T_16 = bits(reset, 0, 0) @[AdderFull.scala 42:9]
    node _T_17 = eq(_T_16, UInt<1>("h0")) @[AdderFull.scala 42:9]
    when _T_17 : @[AdderFull.scala 42:9]
      printf(clock, UInt<1>("h1"), "a = %d\t", io.a) : printf @[AdderFull.scala 42:9]
    node _T_18 = bits(reset, 0, 0) @[AdderFull.scala 43:9]
    node _T_19 = eq(_T_18, UInt<1>("h0")) @[AdderFull.scala 43:9]
    when _T_19 : @[AdderFull.scala 43:9]
      printf(clock, UInt<1>("h1"), "b = %d\t", io.b) : printf_1 @[AdderFull.scala 43:9]
    node _T_20 = bits(reset, 0, 0) @[AdderFull.scala 44:9]
    node _T_21 = eq(_T_20, UInt<1>("h0")) @[AdderFull.scala 44:9]
    when _T_21 : @[AdderFull.scala 44:9]
      printf(clock, UInt<1>("h1"), "cin = %d\t", io.cIn) : printf_2 @[AdderFull.scala 44:9]
    node _T_22 = bits(reset, 0, 0) @[AdderFull.scala 45:9]
    node _T_23 = eq(_T_22, UInt<1>("h0")) @[AdderFull.scala 45:9]
    when _T_23 : @[AdderFull.scala 45:9]
      printf(clock, UInt<1>("h1"), "s = %d\t", io.s) : printf_3 @[AdderFull.scala 45:9]
    node _T_24 = bits(reset, 0, 0) @[AdderFull.scala 46:9]
    node _T_25 = eq(_T_24, UInt<1>("h0")) @[AdderFull.scala 46:9]
    when _T_25 : @[AdderFull.scala 46:9]
      printf(clock, UInt<1>("h1"), "cout = %d\n", io.cOut) : printf_4 @[AdderFull.scala 46:9]

