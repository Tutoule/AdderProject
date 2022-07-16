package adder

import chisel3._


class PGGen extends Module {
	val io = IO(new Bundle{
		val in1 = Input(Bool())
		val in2 = Input(Bool())
		val p 	= Output(Bool())
		val g 	= Output(Bool())
	})
	io.p := io.in1 ^ io.in2
	io.g := io.in1 & io.in2
}

object PGGen {
	def apply(): PGGen = new PGGen()
	def apply(in1: Bool, in2: Bool): (Bool, Bool) = {
		val pggenerator = Module(new PGGen)
		pggenerator.io.in1 := in1
		pggenerator.io.in2 := in2
		(pggenerator.io.p , pggenerator.io.g)
	}
}