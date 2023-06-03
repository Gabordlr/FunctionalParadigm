#lang racket

(provide dot-product)

(define (dot-product lst lstD)
    (cond
     [(or  (null? lstD)(null? lst)) 0]
     [else (+(*(car lst) (car lstD)) (dot-product (cdr lst) (cdr lstD)))]
     )
     )
     
(dot-product '(1 2 3) '(4 5 6))

(dot-product '(1.3 3.4 5.7 9.5 10.4) '(-4.5 3.0 1.5 0.9 0.0))

(dot-product '(1 2 3) '())

