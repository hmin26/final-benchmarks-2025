(define (tail-rec x y acc)
    (if (= y 0)
    acc (tail-rec x (sub1 y) (+ acc x))))

(define (squares x acc)
    (if (= x 0)
    acc (squares (sub1 x) (+ acc (tail-rec x x 0)))))

(print (squares 10 0))
