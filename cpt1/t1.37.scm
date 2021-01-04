; p47
; 不太确定如何精确至4位
; 此为迭代版本，递归版本略
(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
      result
      (iter (- i 1)
            (/ (n i)
               (+ (d i)
                  result)))))
  (iter k 0))


(define (find-k)
  (let ((target (/ 2.0
                   (+ 1.0
                      (sqrt 5)))))
    (newline)(display target)
    (newline)(display "***")
    (define (iter k)
      (let ((res (cont-frac (lambda (i) 1.0)
                            (lambda (i) 1.0)
                            k)))
        (newline)(display res)
        (if (= (floor (* res 10000))
               (floor (* target 10000)))
          k
          (iter (+ k 1)))))
    (iter 1)))

(find-k)

; .6180339887498948
; ***
; 1.
; .5
; .6666666666666666
; .6000000000000001
; .625
; .6153846153846154
; .6190476190476191
; .6176470588235294
; .6181818181818182
; .6179775280898876
; .6180555555555556
; Value: 11

