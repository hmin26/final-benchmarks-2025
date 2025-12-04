(let ((x 1))
    (if (= x 1) (let ((x 2)) (add1 x)) (let ((x 3)) (add1 x)))
)