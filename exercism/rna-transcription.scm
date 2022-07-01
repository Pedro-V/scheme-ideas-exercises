(import (rnrs))

(define (evaluator letter) 
    (cond ((eq? letter #\G) #\C)
          ((eq? letter #\C) #\G)
          ((eq? letter #\T) #\A)
          (else #\U)))

(define (dna->rna dna)
  (list->string (map evaluator (string->list dna))))