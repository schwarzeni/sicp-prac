;p27
(define (recursion n)
  (define (fn x)
    (cond ((< x 3) x)
          (else (+ (fn (- x 1))
                   (* 2 (fn (- x 2)))
                   (* 3 (fn (- x 3)))))))
  (fn n))

(define (iter n)
  (define (fn x n_1 n_2 n_3)
    (let ((sum (+ n_1 (* 2 n_2) (* 3 n_3))))
      (if (= x n)
        sum
        (fn (+ x 1) sum n_1 n_2))))
  (if (< n 3)
    n
    (fn 3 2 1 0)))

(recursion 10)
(iter 10)
