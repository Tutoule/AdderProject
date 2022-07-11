package adder

import chisel3._

class Adder4 extends Module {
	val io = IO(new Bundle{
		val a = Input(UInt(4.W))
		val b = Input(UInt(4.W))
		val cIn = Input(Bool())
		val s = Output(UInt(4.W))
		val cOut = Output(Bool())
	})

	val pgGens = Seq.fill(4)(Module(PGGen()).io)
	val carryGen = Module(new CarryGen()).io

	carryGen.cIn := io.cIn

	for (i <- 0 until 4) {
		pgGens(i).in1 := io.a(i).asBool
		pgGens(i).in2 := io.b(i).asBool
		carryGen.pIn(i) := pgGens(i).p
		carryGen.gIn(i) := pgGens(i).g
	}
	val sum = Wire(Vec(4, Bool()))

	for (i <- 0 until 4) {
		sum(i) := carryGen.pOut(i) ^ carryGen.cOut(i)
	}
	io.s := sum.asUInt
	io.cOut := carryGen.cOut(4)

}

object Adder4 {
	def apply(): Adder4 = new Adder4()
}