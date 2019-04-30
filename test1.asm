// ad-hoc test asm program
// all instructions executed at least once

.data
    var1: 5 7 8 9
    var2: 98

.code
    li %r1, 56      // r1 = 56
    li %r2, 72       // r2 = 72

    and %r3, %r1, %r2
    or %r3, %r1, %r2
    xor %r3, %r1, %r2
    add %r3, %r1, %r2       // add rr, rr, rr
    mul %r3, %r1, %r2
    //div %r3, %r1, %r2
    //mod %r3, %r1, %r2
    nand %r3, %r1, %r2
    nor %r3, %r1, %r2
    sub %r3, %r1, %r2       // sub rr, rr, rr
    //exp %r3, %r1, %r2
    slt %r3, %r1, %r2

    not %r3, %r1
    inc %r3, %r1
    dec %r3, %r1

    mov %r4, %r1
    mov %r1, %r2

    xor %r5, %r1, %r2       // should be zero. check if zero flag is set.


    jmp 32                  // jmp iiiiii

    mov %r3, %r1
    mov %r4, %r2



