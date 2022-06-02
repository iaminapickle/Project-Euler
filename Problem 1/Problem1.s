.data
  limit: .float 1000.0
  f_zero: .float 0.0
  f_one: .float 1.0
  f_two: .float 2.0
  f_three: .float 3.0
  f_five: .float 5.0
  f_fifteen: .float 15.0

.text
.globl main
main:
  l.s $f8, f_zero               # Total Sum

  l.s $f0, f_three
  mfc1 $a0, $f0
  jal divbyx                    # div_by_x(3)

  mtc1 $v0, $f1
  add.s $f8, $f8 ,$f1

  l.s $f0, f_five
  mfc1 $a0, $f0
  jal divbyx                    # div_by_x(5)

  mtc1 $v0, $f1
  add.s $f8, $f8, $f1

  l.s $f0, f_fifteen
  mfc1 $a0, $f0
  jal divbyx                    # div_by_x(15)

  mtc1 $v0, $f1
  sub.s $f8, $f8, $f1

  mov.s $f12, $f8
  li $v0, 2
  syscall

  li  $v0, 10
  syscall

.end main

.globl divbyx
.ent divbyx

divbyx:
  l.s $f0, limit
  mtc1 $a0, $f9

  l.s $f10, f_one
  sub.s $f1, $f0, $f10            # limit - 1

  div.s $f1, $f1, $f9             # (limit - 1) // x
  floor.w.s $f1, $f1
  cvt.s.w $f1, $f1

  l.s $f10, f_one
  add.s $f2, $f1, $f10            # n + 1
  mul.s $f2, $f2, $f1             # n * (n + 1)

  l.s $f10, f_two
  div.s $f1, $f9, $f10            # x / 2
  mul.s $f1, $f2, $f1             # x / 2 * n * (n + 1)

  mfc1 $v0, $f1

  jr $ra

.end divbyx
