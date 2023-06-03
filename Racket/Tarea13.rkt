#lang racket

(provide list-of-symbols?)

(define (list-of-symbols? lst)
    (if (empty? lst) 
        #t 
        (if (symbol? (car lst))
            (list-of-symbols? (cdr lst)) 
            #f)))

(list-of-symbols? '())

(list-of-symbols? '(a b c d e))

(list-of-symbols? '(a b c d 42 e))
