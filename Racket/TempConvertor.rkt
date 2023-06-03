#|Fucntion to covert temperatures from Celsius to Fahrenheit
|#

#lang racket

(define (celsius->fahrenheit celsius)
  (+ (* 9/5 celsius) 32))

(define (fahrenheit->celsius fahrenheit)
  (/(- fahrenheit 32) 9/5))

(celsius->fahrenheit 0)
(fahrenheit->celsius 32)

