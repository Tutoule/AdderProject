package adder

import chisel3._

class CarryGen extends Module {
	val io = IO(new Bundle{
		val pIn = Input(Vec(4, Bool()))
		val gIn = Input(Vec(4, Bool()))
		val cIn = Input(Bool())
		val pOut = Output(Vec(4, Bool()))
		val cOut = Output(Vec(5, Bool()))
	})
	io.pOut := io.pIn
	io.cOut(0) := io.cIn
	for (i <- 0 until 3) {
		io.cOut(i + 1) := io.gIn(i) + (io.cOut(i) & io.pIn(i))
	}
	val cpass = Wire(Bool())
	val ispass = io.pIn.reduce(_ & _)
	cpass := io.gIn(3) + (io.cOut(3) & io.pIn(3))
	io.cOut(4) := Mux(ispass, io.cIn, cpass)
//	io.cOut(1) := io.gIn(0) +
//									(io.cOut(0) & io.pIn(0))
//	io.cOut(2) := io.gIn(1) +
//									(io.gIn(0) & io.pIn(1)) +
//									(io.cOut(0) & io.pIn(1) & io.pIn(0))
//	io.cOut(3) := io.gIn(2) +
//									(io.gIn(1) & io.pIn(2)) +
//									(io.gIn(0) & io.pIn(2) & io.pIn(1)) +
//									(io.cOut(0) & io.pIn(2) & io.pIn(1) & io.pIn(0))
//	io.cOut(4) := io.gIn(3) +
//									(io.gIn(2) & io.pIn(3)) +
//									(io.gIn(1) & io.pIn(3) & io.pIn(2)) +
//									(io.gIn(0) & io.pIn(3) & io.pIn(2) & io.pIn(1)) +
//									(io.cOut(0) & io.pIn(3) & io.pIn(2) & io.pIn(1) & io.pIn(0))
}