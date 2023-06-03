#lang racket

(provide sum average)

(define (average lst)
  (if (null? lst)
      0
      (/ (sum lst) (length lst))))

(define (sum lst)
    (if (null? lst)
        0
        (+ (car lst) (sum (cdr lst)))))

(average '())

(average '(4))

(average '(5 6 1 6 0 1 2))

(average '(1.7 4.5 0 2.0 3.4 5 2.5 2.2 1.2))

