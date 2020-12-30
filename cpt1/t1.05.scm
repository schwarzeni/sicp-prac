;p13
(define (p) (p))
(define (test x y)
  (if (= x 0)
    0
    y))

; (test 0 (p))

; 正则序求值: （？不确定）返回 0，x == 0 就返回了，还没来得及求 y 的值
; 应用序求值: 执行函数 test，先求参数 y 值时，无限递归，卡死

