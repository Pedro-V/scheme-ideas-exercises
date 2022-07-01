(import (rnrs))

(define (sortstr str) (list->string (sort char<? 
                                    (string->list 
                                    (string-downcase str)))))

(define (stores-anagrams target words store)
  (if (null? words)
      store
      (if (and (string=? (sortstr target) (sortstr (car words)))
          (not (string=? (string-downcase target) (string-downcase (car words)))))
          
          (stores-anagrams target (cdr words) (append store (list (car words))))
          (stores-anagrams target (cdr words) store)
        )
    )  
)

; Principal
(define (anagram target words) 
  (stores-anagrams target words '() ))