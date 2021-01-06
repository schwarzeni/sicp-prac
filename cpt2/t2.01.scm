; p58
; 使用 chain ，可以自由地添加初始化的子逻辑

(define (make-rat n d)
  (lambda (next) (next n d)))

(define (gcd-rat n d)
  (lambda (next)
    (let ((g (gcd n d)))
      (next (/ n g) (/ d g)))))

(define (format n d)
  (lambda (next)
   (cond ((and (>= n 0) (>= d 0)) (next n d))
         ((and (<= n 0) (<= d 0)) (next (- 0 n) (- 0 d)))
         ((and (>= n 0) (<= d 0)) (next (- 0 n) (- 0 d)))
         ((and (<= n 0) (<= d 0)) (next n d)))))

(define (init n d) (cons n d))


((((make-rat 4 -6) format) gcd-rat) init)
(((make-rat 4 -6) format) init)
(((make-rat -4 -6) format) init)
((make-rat 4 -6) init)
