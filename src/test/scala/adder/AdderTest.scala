package adder

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.stage.ChiselStage

import scala.util
import chisel3.experimental.BundleLiterals._
import chisel3.util.log2Up

import scala.util.Random
import scala.math.BigInt

class BigBigRandom(val w: Int) {

}

class AdderTest extends AnyFreeSpec with ChiselScalatestTester {

	"PG Generator should pass" in {
		test(new PGGen()){ c =>
			c.io.in1.poke(false.B)
			c.io.in2.poke(false.B)
			c.io.pg.p.expect(false.B)
			c.io.pg.g.expect(false.B)
			c.io.in1.poke(false.B)
			c.io.in2.poke(true.B)
			c.io.pg.p.expect(true.B)
			c.io.pg.g.expect(false.B)
			c.io.in1.poke(true.B)
			c.io.in2.poke(false.B)
			c.io.pg.p.expect(true.B)
			c.io.pg.g.expect(false.B)
			c.io.in1.poke(true.B)
			c.io.in2.poke(true.B)
			c.io.pg.p.expect(false.B)
			c.io.pg.g.expect(true.B)
		}
	}
	"Adder 4 bits should pass" in {
		test(new Adder4()) {c =>
			for (i <- 0 until 16) {
				for (j <- 0 until 16) {
					for (k <- 0 to 1) {
						c.io.a.poke(i.U)
						c.io.b.poke(j.U)
						c.io.cIn.poke((k == 1).B)
						c.clock.step(1)
						c.io.s.expect(((i + j + k) % 16).U)
						c.io.cOut.expect(((i + j + k) >= 16).compare(false).U)
					}
				}
			}
		}
	}

	val w = 32
	println(s"w = $w")
//	val width = scala.math.pow(2, log2Up(w)).toInt
	val width = (((w - 1) / 4) + 1) * 4
	println(s"width = $width")
	val k = BigInt(1) << width
	val z: Long = 1
	val v: Long = z << w
	println(s"k = $k\t v = $v")
	"Full Adder should pass" in {
		test(AdderFull(w)){c =>
			for (i <- 0 to 15) {
//				println(s"i = $i")
				val aRnd = Random.nextLong((if (w < 63) {v} else {1 << 62}))
				val a = (
					if (w <= 62) {BigInt(aRnd)}
					else {(BigInt(aRnd) <<  (w - 62)) + Random.nextLong(1 << 62)}
				)
				val bRnd = Random.nextLong(1 << (if (w < 63) {w} else {62}))
				val b = (
					if (w <= 62) {BigInt(aRnd)}
					else {(BigInt(bRnd) <<  (w - 62)) + Random.nextLong(1 << 62)}
					)
				val cin = Random.nextInt(2)
				val s = (a + b + cin) % k
				val cout: Boolean = ((a + b + cin) >> (width)) > 0
				c.io.dIn.a.poke(a.U(width.W))
				c.io.dIn.b.poke(b.U(width.W))
				c.io.dIn.cIn.poke((cin == 1).B)
				c.clock.step(1)
				c.io.dOut.s.expect(s.U(width.W))
				c.io.dOut.cOut.expect(cout.B)
			}
		}
	}
	new ChiselStage().emitVerilog(AdderFull(w), Array("-td", "generated", "--full-stacktrace"))
}
