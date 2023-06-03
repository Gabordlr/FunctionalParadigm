#lang racket

(provide factor! tail! sum-digits sum-digits-iter)



(define (factor! n)
    (if(= 0 n)
    1 
    (* n (factor! (- n 1)))))

(define (tail! n)
    (define (tail!-iter n acc)
        (if(= 0 n)
            acc
            (tail!-iter (- n 1) (* n acc))))
    (tail!-iter n 1))


(define (sum-digits num)
    (if(= num 0)
        0
        (+ (remainder num 10) (sum-digits (quotient num 10)))))

(define (sum-digits-iter num)
    (define (loop num a)
        (if (= num 0)
            a 
            (loop (quotient num 10)
                (+ a (remainder num 10))))))
