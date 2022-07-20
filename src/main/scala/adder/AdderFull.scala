package adder

import chisel3._
import chisel3.util._

class AdderInputBundle(val w: Int) extends Bundle {
  val a = UInt(w.W)
  val b = UInt(w.W)
  val cIn = Bool()
}

class AdderOutputBundle(val w: Int) extends Bundle {
  val s = UInt(w.W)
  val cOut = Bool()
}

class  AdderIOBundle(val w: Int) extends Bundle {
  val dIn = Input(new AdderInputBundle(w))
  val dOut = Output(new AdderOutputBundle(w))
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
  pgIn(0).g := io.dIn.cIn
  for (i <- 0 until w) {
    pgIn(i + 1) := PGGen(io.dIn.a(i).asBool, io.dIn.b(i).asBool)
  }
  carryGen.pgIn := pgIn

  for (i <- 0 until w) {
    sum(i) := pgIn(i + 1).p ^ carryGen.cOut(i)
  }

  io.dOut.s := sum.asUInt
  io.dOut.cOut := carryGen.cOut(w)

  printf(p"a = ${io.dIn.a}\t")
  printf(p"b = ${io.dIn.b}\t")
  printf(p"cin = ${io.dIn.cIn}\t")
  printf(p"s = ${io.dOut.s}\t")
  printf(p"cout = ${io.dOut.cOut}\n")
}

object AdderFull {
  def apply(w: Int): AdderFull = {
    new AdderFull(w)
  }
  def apply(): AdderFull = new AdderFull(4)
}