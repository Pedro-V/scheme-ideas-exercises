(import (rnrs))]

(define (leap-year? year)
        (if (= (mod year 100) 0)
        (= (mod year 400) 0)
        (= (mod year 4) 0)))