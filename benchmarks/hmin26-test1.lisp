(define (const-test)
  (if (< (+ 1 2) (- (+ 3 4) 2))
      (+ (+ 1 2) (+ 3 4))
      0))

(print (const-test))
