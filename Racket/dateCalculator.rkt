#lang racket

(provide leap? month-days)

(define (leap? year)
    (and (= 0 (remainder year 4))
        (or (not (= 0 (remainder year 100)))
            (= 0 (remainder year 400)))))

(define (month-days month year)
(case month
    [(4 6 9 11) 30]
    [2 (if (leap? year) 29 28)]
    [else 31]))
