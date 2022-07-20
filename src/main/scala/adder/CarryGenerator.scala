package adder

import chisel3._
import chisel3.util.log2Up

class PGConnect extends Module {
	val io = IO(new Bundle {
		val pgInH = Input(PGBundle())
		val pgInL = Input(PGBundle())
		val pgOut = Output(PGBundle())
	})
	io.pgOut.p := io.pgInH.p & io.pgInL.p
	io.pgOut.g := io.pgInH.g | (io.pgInH.p & io.pgInL.g)
}

object PGConnect {
	def apply(inH: PGBundle, inL: PGBundle): PGBundle = {
		val connect = Module(new PGConnect)
		connect.io.pgInH := inH
		connect.io.pgInL := inL
		connect.io.pgOut
	}
}

class GConnect extends Module {
	val io = IO(new Bundle {
		val pInH = Input(Bool())
		val gInH = Input(Bool())
		val gInL = Input(Bool())
		val pgOut = Output(PGBundle())
	})
	io.pgOut.g := io.gInH | (io.pInH & io.gInL)
	io.pgOut.p := io.pInH
}

object GConnect {
	def apply(pgH: PGBundle, gInL: Bool): PGBundle = {
		val gConnect = Module(new GConnect())
		gConnect.io.pInH := pgH.p
		gConnect.io.gInH := pgH.g
		gConnect.io.gInL := gInL
		gConnect.io.pgOut
	}
}


class CarryGen(val w: Int) extends Module {
	val io = IO(new Bundle{
		val pgIn = Input(Vec(w + 1, PGBundle()))
//		val gIn = Input(Vec(w, Bool()))
//		val cIn = Input(Bool())
		val cOut = Output(Vec(w + 1, Bool()))
	})
	val level = log2Up(w)

	val flow = Wire(Vec(level + 1, Vec(w + 1, PGBundle())))
	val gOut = Wire(Vec(w + 1, Bool()))

	for (i <- 0 until w + 1) {
		flow(0) := io.pgIn
	}

	for (i <- 1 until level + 1) {
		for (j <- 0 until w) {
			if ((j % 2 == 1) && (j >= i * 2 - 2)) {
				if (j < scala.math.pow(2, i).toInt) {
					flow(i)(j) := GConnect(flow(i - 1)(j), flow(i - 1)(j - i).g)
				}
				else {
					flow(i)(j) := PGConnect(flow(i - 1)(j), flow(i - 1)(j - i))
				}
			}
			else {
				flow(i)(j) := flow(i - 1)(j)
			}
			flow(i)(w) := flow(i - 1)(w)
		}
	}

	for (i <- 0 until w + 1) {
		if (i % 2 == 0 && i > 0) {
			gOut(i) := GConnect(flow(level)(i), flow(level)(i - 1).g).g
		}
		else {
			gOut(i) := flow(level)(i).g
		}
	}

	io.cOut := gOut

}