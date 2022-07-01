(import (rnrs))

(define (hamming-distance strand-a strand-b)
    (if (not (= (string-length strand-a) (string-length strand-b)))
    (error 'hamming-distance "Length does not match")
    (compare (string->list strand-a) (string->list strand-b) 0))
)

(define (compare lstA lstB acc) 
    (if (null? lstA)
        acc
        (if (not (eq? (car lstA) (car lstB)))
            (compare (cdr lstA) (cdr lstB) (+ acc 1))
            (compare (cdr lstA) (cdr lstB) acc))
    ))

