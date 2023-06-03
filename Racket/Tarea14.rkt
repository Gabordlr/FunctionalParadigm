#lang racket

(provide swapper)

(define(swapper a b lst)
    (cond
        [(null? lst) '()]
        [(equal? (car lst) a) (cons b (swapper a b (cdr lst)))]
        [(equal? (car lst) b) (cons a (swapper a b (cdr lst)))]
        [else (cons (car lst) (swapper a b (cdr lst)))])
)

(swapper 1 2 '())

(swapper 1 2 '(4 3 4 9 9 3 3 3 9 9 7 9 3 7 8 7 8 4 5 6))

(swapper 1 2 '(4 4 5 2 4 8 2 5 6 4 5 1 9 5 9 9 1 2 2 4))

(swapper 'purr 'kitty '(soft kitty warm kitty little 
ballof happy kitty sleepy kitty purr purr)) 