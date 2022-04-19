section .data
    d: dd 0         ; dd = define double-word (4 byte integer)
    a: dd 1
    b: dd 3
    c: dd 2
    
section .text       ; Menghitung determinan: d = b*b - (4 * a * c)
    MOV EAX, [b]    ; Memindahkan nilai memori b ke register EAX
    IMUL [b]        ; Mengalikan register (b) dengan b
    MOV [d], EAX    ; Menyimpan b^2 ke dalam memori d
    
    MOV EAX, 4      ; Mengganti nilai register EAX dengan 4
    IMUL [a]        ; Mengalikan register dengan memori a
    IMUL [c]        ; Mengalikan register dengan memori c
    SUB [d], EAX    ; Mengurangi memori d dengan nilai register
    MOV EAX, [d]    ; Memindahkan nilai memori d ke dalam register

    INT 1           ; interrupt, mencetak register EAX
    
    HLT             ; Halt, mematikan CPU
