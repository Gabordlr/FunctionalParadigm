#lang racket

(provide lyricsPollito-Executer lyricsPollito)

(define (lyricsPollito-Executer lstN lstS lstT)
  (cond 
    ;; if lstN is empty, print the final message
    [(null? lstN) 
     (display "En la radio hay un Tractor
Y el Tractor: Bruum
Y el Pollito: oh oh!
              ")]
    [else 
     ;; otherwise, keep writing the lyrics
     (displayln (format "En la radio hay ~a" (car lstN)))
     
     ;; define a recursive function that appends the first element of lstN 
     ;; with the first element of lstS and stores the result in lstT
     (let loop
       ([lstT (cons (string-append (car lstN) (car lstS)) lstT)])
       
       ;; if lstT is empty, return 0
       (cond [(null? lstT) 0]
             
             ;; otherwise, print the continous lyrics
             ;; and call the recursive function again with the rest of lstT
             [else 
              (displayln (format "y ~a" (car lstT)))
              (loop (cdr lstT))
             ])
       )
     ;; call the function again with the rest of lstN and lstS, 
     ;; and the updated lstT that includes the appended elements
     (lyricsPollito-Executer (cdr lstN) (cdr lstS) 
                             (cons (string-append (car lstN) (car lstS)) lstT))
     ]
    )
  )


(define (lyricsPollito)
    (lyricsPollito-Executer'("un pollito " "una gallina " "un gallo " "un pavo " "una paloma " "un gato " 
    "un perro " "una cabra " "un cordero " "una vaca " "un toro ") 
    '("pio" "coo" "corocó" "glú glú glú" "ruu" "miao" "guau guau" "mee" "bee" "moo" "muu")
    '())
)

(lyricsPollito)



