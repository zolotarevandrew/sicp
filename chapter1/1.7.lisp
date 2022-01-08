
(defun average (x y)
    (/ (+ x y) 2)
)

(defun improve (guess x)
    (average guess (/ x guess))
)

(defun good-enough? (guess x)
    (< (abs (- (square guess) x)) 0.001)
)
(defun good-enough2? (x y)
    (< (abs (- x y)) 0.001)
)
(defun square (x)
    (* x x)
)

(defun sqrt-iter (oldGuess guess x)
    (if (good-enough2? oldGuess guess)
        guess
        (sqrt-iter guess (improve guess x) x)
    )
)

(defun new-if (predicate thenc elsec)
    (cond (predicate thenc)
    (else elsec))
)

(defun nsqrt (x)
    (sqrt-iter 2.0 1.0 x)
)

(print (nsqrt 0.00000001))