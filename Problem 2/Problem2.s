.globl main
main:
  li $t0, 2       # f1
  li $t1, 8       # f2
  li $t2, 10       # fib_sum
  li $t3, 1000000 # limit
  
  ble $t3, 2
.end main
fib:
  bge $t1, $t3, exit

  move $t4, $t0
  move $t0, $t1
  mul $t1, $t1, 4
  add $t1, $t1, $t4

  add $t2, $t2, $t1

  b fib

exit:
  move $a0, $t2
  li $v0, 1
  syscall

  li $v0, 10
  syscall
