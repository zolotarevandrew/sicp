
(defun newton3(x guess)
    (/ 
      (+
        (/ x (* guess guess))
        (* guess 2)
      ) 
      3
    )
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
        (sqrt-iter guess (newton3 x guess) x)
    )
)

(defun nsqrt (x)
    (sqrt-iter 2.0 1.0 x)
)

(print (nsqrt 20000000))