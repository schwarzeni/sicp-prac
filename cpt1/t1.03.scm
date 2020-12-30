; p13
(define (sum-max-two arg1 arg2 arg3)
  (cond ((and (<= arg1 arg2) (<= arg1 arg3)) (+ arg2 arg3))
        ((and (<= arg2 arg3) (<= arg2 arg1)) (+ arg1 arg3))
        ((and (<= arg3 arg1) (<= arg3 arg2)) (+ arg1 arg2)))))

(sum-max-two 1 2 3)
(sum-max-two 2 1 3)
(sum-max-two 3 2 1)
