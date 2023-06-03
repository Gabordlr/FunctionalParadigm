#lang racket 

; (provide lastFour indMulti reOrder)

; (define (reOrder lst)
;     (cond
;     [(null? lst) lst]
;     [else (list (reOrder (cdr lst)) (car lst))])
; )

; (define (indMulti lst)
;     (let loop
;     ([lst lst]
;     [lst2 '()]
;     [num 1])
;         (cond
;         [(null? lst) (reverse lst2)]
;         [else (loop (cdr lst) (cons (* (car lst) num) lst2) (+ num 1))]
;         )
;     )
; )

; (define (lastFour lst)
;     (let loop 
;     ([lst lst] 
;     [lst2 '()])
;         (cond 
;             [(null? lst) lst2]
;             [(equal? (remainder (car lst) 10) 4) (loop(cdr lst) (cons (car lst) lst2))]
;             [else (loop (cdr lst) lst2)]
;         )
;     )
; )


; (lastFour '(12 45 44 4 38 24 114 9))
; (indMulti '(1 2 3 4 5 7 9))
; (reOrder '(1 2 3 4 5 6))