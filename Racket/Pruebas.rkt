#lang racket

(provide testing)

(define (testing lstT)
    (cond 
    [(null? lstT) (display 0)]
    [else (display lstT)
    (testing (cdr lstT))]
    )
    
    
)


(testing '(1 2 3 4 5 6))

