start:
    mov ax, 0xb800
    mov ds, ax
    mov byte [0x0000], 'H'
    mov byte [0x0001], 0x0b
    mov byte [0x0002], 'e'
    mov byte [0x0003], 0x0b
    mov byte [0x0004], 'l'
    mov byte [0x0005], 0x0b
    mov byte [0x0006], 'l'
    mov byte [0x0007], 0x0b
    mov byte [0x0008], 'o'
    mov byte [0x0009], 0x0b
    mov byte [0x000a], ' '
    mov byte [0x000b], 0x0b
    mov byte [0x000c], 'W'
    mov byte [0x000d], 0x0b
    mov byte [0x000e], 'o'
    mov byte [0x000f], 0x0b
    mov byte [0x0010], 'r'
    mov byte [0x0011], 0x0b
    mov byte [0x0012], 'l'
    mov byte [0x0013], 0x0b
    mov byte [0x0014], 'd'
    mov byte [0x0015], 0x0b
    mov byte [0x0016], '!'
    mov byte [0x0017], 0x0b

flag:
    jmp near flag

end:
    times (510 - (end - start)) db 0
    db 0x55, 0xaa