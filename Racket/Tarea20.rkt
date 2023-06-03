#lang racket

(provide binary binCalcu)

(define (binary num)
    
    (reverse (binCalcu num '()))
)

(define (binCalcu num lst)
    (print num)
    (print lst)
    (cond
    [(equal? num 0) lst]
    [(equal? 1 (remainder num 2)) (cons 1 (binCalcu (quotient num 2) lst)) ]
    [(equal? 0 (remainder num 2)) (cons 0 (binCalcu (quotient num 2) lst)) ]
    )
    )


(binary 30)