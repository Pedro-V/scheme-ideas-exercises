(import (rnrs))

(define (divisible? num den)
        (integer? (/ num den)))

(define (leap-year? year)
        (if (divisible? year 4)
            (if (divisible? year 100)
                (if (not (divisible? year 400))
                    #f
                    #t)
                #t)
            #f))
                
            
