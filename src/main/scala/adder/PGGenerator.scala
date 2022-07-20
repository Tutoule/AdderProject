package adder

import chisel3._

class PGBundle extends Bundle {
	val p = new Bool()
	val g = new Bool()
}

object PGBundle {
	def apply(pg: PGBundle) = {
		pg
	}
	def apply(p: Bool, g: Bool): PGBundle = {
		val pg = new PGBundle()
		pg.p := p
		pg.g := g
		pg
	}
	def apply(): PGBundle = new PGBundle()
}

class PGGen extends Module {
	val io = IO(new Bundle{
		val in1 = Input(Bool())
		val in2 = Input(Bool())
		val pg 	= Output(PGBundle())
	})
	io.pg.p := io.in1 ^ io.in2
	io.pg.g := io.in1 & io.in2
}

object PGGen {
	def apply(): PGGen = new PGGen()
	def apply(in1: Bool, in2: Bool): PGBundle = {
		val pggenerator = Module(new PGGen)
		pggenerator.io.in1 := in1
		pggenerator.io.in2 := in2
		pggenerator.io.pg
	}
}