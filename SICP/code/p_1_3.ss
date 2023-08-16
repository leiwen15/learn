(define (max_two_num x y)
    (if (> x y)
    x
    y))

(define (max_three_num x y z)
    (max_two_num (max_two_num x y)
                (max_two_num y z)))

(display (max_three_num -1 -1 -1))
(exit)
