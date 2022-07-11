package adder

import chisel3._
import chisel3.util._

class AdderIOBundle(val w: Int) extends Bundle {
  require((w % 4) == 0)
  val a = Input(UInt(w.W))
  val b = Input(UInt(w.W))
  val cIn = Input(Bool())
  val s = Output(UInt(w.W))
  val cOut = Output(Bool())
}
object AdderIOBundle {
  def apply(w: Int): AdderIOBundle = {
//    var width = scala.math.pow(2, log2Up(w - 1))
//    if (width < 4) width = 4
    val width = (((w - 1) / 4) + 1) * 4
    new AdderIOBundle(width.toInt)
  }
  def apply(): AdderIOBundle = new AdderIOBundle(4)
}

class AdderFull(val w: Int) extends Module {
  require((w % 4) == 0)
  val io = IO(AdderIOBundle(w))

  val num: Int = w / 4
  val adder4s = Seq.fill(num)(Module(new Adder4()).io)
  val sum = Wire(Vec(num, UInt(4.W)))
  for (i <- 0 until (num - 1)) {
    adder4s(i + 1).cIn := adder4s(i).cOut
  }
  for (i <- 0 until num) {
    adder4s(i).a := io.a((i * 4) + 3 , i * 4)
    adder4s(i).b := io.b((i * 4) + 3 , i * 4)
    sum(i) := adder4s(i).s
  }
  adder4s(0).cIn := io.cIn
  io.s := sum.asUInt
  io.cOut := adder4s(num - 1).cOut
  printf(p"a = ${io.a}\t")
  printf(p"b = ${io.b}\t")
  printf(p"cin = ${io.cIn}\t")
  printf(p"s = ${io.s}\t")
  printf(p"cout = ${io.cOut}\n")
}

object AdderFull {
  def apply(w: Int): AdderFull = {
//    var width = scala.math.pow(2, log2Up(w - 1))
    val width = (((w - 1) / 4) + 1) * 4
//    if (width < 4) width = 4
    new AdderFull(width)
  }
  def apply(): AdderFull = new AdderFull(4)
}