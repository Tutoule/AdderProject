package adder

import chisel3._
import chisel3.util._

class AdderIOBundle(val w: Int) extends Bundle {
  val a = Input(UInt(w.W))
  val b = Input(UInt(w.W))
  val cIn = Input(Bool())
  val s = Output(UInt(w.W))
  val cOut = Output(Bool())
}
object AdderIOBundle {
  def apply(w: Int): AdderIOBundle = {
    new AdderIOBundle(w)
  }
  def apply(): AdderIOBundle = new AdderIOBundle(4)
}

class AdderFull(val w: Int) extends Module {
  val io = IO(AdderIOBundle(w))

  val sum = Wire(Vec(w, Bool()))

  val carryGen = Module(new CarryGen(w)).io
  val pgIn = Wire(Vec(w + 1, PGBundle()))
  pgIn(0).p := false.B
  pgIn(0).g := io.cIn
  for (i <- 0 until w) {
    pgIn(i + 1) := PGGen(io.a(i).asBool, io.b(i).asBool)
  }
  carryGen.pgIn := pgIn

  for (i <- 0 until w) {
    sum(i) := pgIn(i + 1).p ^ carryGen.cOut(i)
  }

  io.s := sum.asUInt
  io.cOut := carryGen.cOut(w)

  printf(p"a = ${io.a}\t")
  printf(p"b = ${io.b}\t")
  printf(p"cin = ${io.cIn}\t")
  printf(p"s = ${io.s}\t")
  printf(p"cout = ${io.cOut}\n")
}

object AdderFull {
  def apply(w: Int): AdderFull = {
    new AdderFull(w)
  }
  def apply(): AdderFull = new AdderFull(4)
}