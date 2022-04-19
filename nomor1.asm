section .data
    a:  dd  10      ; dd = define double-word (4 byte integer)
    t:  dd  2
    l:  dd  0
    
section .text       ; Menghitung luas segitiga: (a * t) / 2

    MOV  EAX, [a]   ; Memindahkan nilai memori a ke register EAX
    IMUL [t]        ; Mengalikan register dengan memori t
    IDIV  2         ; Membagi register dengan 2
    MOV  [l], EAX   ; Memindahkan nilai register ke memori l
    
    INT 1           ; interrupt, mencetak register EAX
    
    HLT             ; Halt, mematikan CPU
