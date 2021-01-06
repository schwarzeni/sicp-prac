; p62

(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)(lambda (f) (lambda (x) (f ((n f) x)))))

; (add-1 zero)
; (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x))  f)x))))
; (lambda (f) (lambda (x) (f ((lambda (x) x)x))))
; (lambda (f) (lambda (x) (f x)))
;
; (add-1 one)
; (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x))))
; (lambda (f) (lambda (x) (f (f x))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

; (+ one one) --> two
; (+ one two) --> three
; + 不太会，抄作业的
(define (+ m n) (lambda (f) (lambda (x) ((m f) ((n f) x)))))

