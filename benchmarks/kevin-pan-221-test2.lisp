(define (f a b)
    (pair a (pair b (pair b (pair a ())))))

(let ((fcopy f))
    (let ((a (fcopy 1 2)))
        (let ((b (fcopy 1 2)))
            (let ((c (fcopy 2 1)))
                (let ((d (f 1 1)))
                    (print (pair b c)))))))