org 0x7C00
bits 16

start:
    mov si, msg
.print:
    lodsb
    or al, al
    jz halt
    mov ah, 0x0E
    int 0x10
    jmp .print

halt:
    cli
    hlt

msg db "ZENTHOS OS BOOTING...", 0

times 510-($-$$) db 0
dw 0xAA55
