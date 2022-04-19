section .data
    k: dd 0         ; dd = define double-word (4 byte integer)
    p: dd 4
    l: dd 2
    
section .text
    MOV EAX, [p]    ; Memindahkan nilai memori p ke register EAX
    ADD EAX, [l]    ; Menjumlahkan register dengan memori l
    IMUL 2          ; Mengalikan register dengan 2
    MOV [k], EAX    ; Memindahkan nilai register ke memori k

    INT 1           ; Mencetak register
    
    HLT             ; Memberhentikan CPU
