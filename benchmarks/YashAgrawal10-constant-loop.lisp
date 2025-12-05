(define (sum-to n) (if (= n 0) 0 (+ n (sum-to (- n 1)))))

(print (sum-to 1000))