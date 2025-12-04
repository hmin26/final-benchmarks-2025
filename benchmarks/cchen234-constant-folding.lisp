(define (run-loop n acc)
  (if (= n 0)
      acc
      (let ((x 10))
        (let ((y 20))
          (let ((z (+ x y)))
            (run-loop (- n 1) (+ acc (+ z z))))))))

(print (run-loop 100000 0))