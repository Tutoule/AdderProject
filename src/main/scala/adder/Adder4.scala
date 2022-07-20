package adder

import chisel3.DontCare.:=
import chisel3._

class Adder4 extends Module {
	val io = IO(new Bundle{
		val a = Input(UInt(4.W))
		val b = Input(UInt(4.W))
		val cIn = Input(Bool())
		val s = Output(UInt(4.W))
		val cOut = Output(Bool())
	})

	val carryGen = Module(new CarryGen(4)).io
	val pgIn = Wire(Vec(5, PGBundle()))
	pgIn(0).p := false.B
	pgIn(0).g := io.cIn
	for (i <- 0 until 4) {
		pgIn(i + 1) := PGGen(io.a(i).asBool, io.b(i).asBool)
	}
	carryGen.pgIn := pgIn

	val sum = Wire(Vec(4, Bool()))

	for (i <- 0 until 4) {
		sum(i) := pgIn(i + 1).p ^ carryGen.cOut(i)
	}
	io.s := sum.asUInt
	io.cOut := carryGen.cOut(4)

}

object Adder4 {
	def apply(): Adder4 = new Adder4()
}