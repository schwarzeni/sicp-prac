; p60

(define (make-segment start-point end-point)
  (cons start-point end-point))
(define (start-segment segment)
  (car segment))
(define (end-segment segment)
  (cdr segment))
(define (make-point x y)
  (cons x y))
(define (x-point point)
  (car point))
(define (y-point point)
  (cdr point))
(define (segment-len segment)
  (let ((x1 (x-point (start-segment segment)))
        (x2 (x-point (end-segment segment)))
        (y1 (y-point (start-segment segment)))
        (y2 (y-point (end-segment segment))))
    (sqrt (+ (square (- x1 x2))
             (square (- y1 y2))))))

(define (rect-perimeter side-len-1 side-len-2)
  (* 2
     (+ side-len-1
        side-len-2)))
(define (rect-area side-len-1 side-len-2)
  (* side-len-1 side-len-2))

; 使用与左上顶点相邻的两条边表示
(define (make-rect segment-1 segment-2)
  (cons segment-1 segment-2))
(define (rect-x-len rect)
  (segment-len (car rect)))
(define (rect-y-len rect)
  (segment-len (cdr rect)))

; 另一种方法略，使用 顶点 + 边长的方法来表示
