(define (>= x y)
(or (> x y) (= x y)))

(define (tt x y)
    (if (>= x y)
    x
    y))

(display (tt 3 0))
(exit)