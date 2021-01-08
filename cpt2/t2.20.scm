; p69
(define (same-party first . rest)
  (letrec ((status (remainder first 2))
        (iter (lambda (l result)
          (if (null? l)
            result
            (if (= status (remainder (car l) 2))
              (iter (cdr l) (append result (cons (car l) '())))
              (iter (cdr l) result))))))
    (iter rest (cons first '()))))

(same-party 1 2 3 4 5 6 7 8 9 10)
(same-party 2 3 4 5 6 7 8 9 10)
