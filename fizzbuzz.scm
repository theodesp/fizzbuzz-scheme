#lang racket

(define (print-line num)
  (cond ((= (remainder num 15) 0) 'fizzbuzz)
        ((= (remainder num 3) 0) 'fizz)
        ((= (remainder num 5) 0) 'buzz)
        (else num)))

(define (range first last)
  (if (>= first last)
      '()
      (cons first (range (+ first 1) last))))

(define (fizz-buzz num)
  (map print-line (range 1 (+ 1 num))))
