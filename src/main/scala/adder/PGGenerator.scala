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
}