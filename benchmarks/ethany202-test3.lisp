(define (f arg1 arg2)
    (if (= arg1 arg2) 
        (+ arg1 arg2)
        (- arg1 arg2)
    )
)

(print (* (f 6 6) (f (f 100 150) (f 100 100))))