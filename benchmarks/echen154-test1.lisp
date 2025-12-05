(define (create-list n)
    (if (= n 0)
    () (pair n (create-list (sub1 n)))))

(define (sum-list lst)
    (if (empty? lst)
    0 (+ (left lst) (sum-list (right lst)))))

(define (rec-arith n)
    (if (= n 0)
    0 (+ 2 (rec-arith (sub1 n)))))

(define (map-arith lst)
    (if (empty? lst)
    () (pair (rec-arith (left lst)) (map-arith (right lst)))))

(define (f-calls n) (sum-list (map-arith (create-list n))))

(print (f-calls 30))
