// ad-hoc test asm program
// all instructions executed at least once

.data
    var1: 5 7 8 9
    var2: 98

.code
    li %r1, 15              // r1 = 72
    li %r2, 7              // r2 = 56

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
    ////exp %r3, %r1, %r2
    slt %r3, %r1, %r2       

    not %r3, %r1            // ~72 = -73
    inc %r3, %r1            // 72++ = 73
    dec %r3, %r1            // 72-- = 71

    mov %r4, %r1            // r4 = 72
    mov %r1, %r2            // r1 = r2 = 56

    xor %r5, %r1, %r2       // should be zero. check if zero flag is set.


    jmp 80                  // jmp iiiiii

    li %r1, 40            // r3 = 56
    li %r4, 39            // r4 = 56

    li %r4, 17              // r4 = 35
    xor %r5, %r1, %r2


