// ad-hoc test asm program
// all instructions executed at least once

.data
    var1: 5 7 8 9
    var2: 98

.code
    li %r1, 56              // r1 = 72
    li %r2, 72              // r2 = 56

    and %r3, %r1, %r2       // 72&56 = 8
    or %r3, %r1, %r2        // 72|56 = 120
    xor %r3, %r1, %r2       // 72^56 = 112
    add %r3, %r1, %r2       // 72+56 = 128
    mul %r3, %r1, %r2       // 72*56 = 4032
    //div %r3, %r1, %r2
    //mod %r3, %r1, %r2
    nand %r3, %r1, %r2      // ~(72&56) = -9     
    nor %r3, %r1, %r2       // ~(72|56) = -121
    sub %r3, %r1, %r2       // 72-56 = 16
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



