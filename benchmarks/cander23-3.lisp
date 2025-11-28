(define (horner-step coeff acc x)
  (+ coeff (* acc x)))

(define (poly5 x)
  (let ((s1 (horner-step 7 0 x)))
    (let ((s2 (horner-step 6 s1 x)))
      (let ((s3 (horner-step 5 s2 x)))
        (let ((s4 (horner-step 4 s3 x)))
          (horner-step 3 s4 x))))))

(define (poly5-twice x)
  (+ (poly5 x) (poly5 x)))

(let ((x 2))
  (let ((shifted (+ x 1)))
    (let ((base (poly5 x)))
      (let ((shift (poly5 shifted)))
        (print (+ base (+ shift (poly5-twice x))))))))

