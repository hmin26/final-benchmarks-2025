(define (muladd x y acc)
  (+ acc (* x y)))

(define (dot4 ax ay az aw bx by bz bw)
  (muladd aw bw
    (muladd az bz
      (muladd ay by
        (muladd ax bx 0)))))

(define (mix-energy ax ay az aw bx by bz bw)
  (+ (dot4 ax ay az aw bx by bz bw)
     (dot4 bx by bz bw ax ay az aw)))

(let ((ax 3))
  (let ((ay 5))
    (let ((az 7))
      (let ((aw 9))
        (let ((bx 2))
          (let ((by 4))
            (let ((bz 6))
              (let ((bw 8))
                (print (mix-energy ax ay az aw bx by bz bw))))))))))

