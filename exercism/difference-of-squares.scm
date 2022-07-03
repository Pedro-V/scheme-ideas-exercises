(import (rnrs))

(define (make-list n) (map (lambda (x) (+ x 1)) (iota n)))

(define (square-of-sum n)
  (define sum-result (apply + (make-list n)))
  (expt sum-result 2))

(define (sum-of-squares n)
  (apply + (map (lambda (x) (expt x 2)) (make-list n))))

(define (difference-of-squares n)
  (- (square-of-sum n) (sum-of-squares n)))



