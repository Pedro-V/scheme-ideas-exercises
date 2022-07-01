(import (rnrs))

(define (square n)
  (if ( or (< n 1) (> n 64))
  (error 'grains "Square number out of bounds")
  (expt 2 (sub1 n))))

(define lst (map (lambda (x) (square (+ x 1))) (iota 64)))

(define total (apply + lst))