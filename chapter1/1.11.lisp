(defun rec (x)
    (if (< x 3)
        x
        (+ (rec (- x 1)) (rec (- x 2)) (rec (- x 3)) )
    )
)

(defun rec2 (x)
    (defun iter(counter prev1 prev2 prev3)
        (if (= x counter)
            (+ prev1 prev2 prev3)
            (iter (+ counter 1)(+ prev1 prev2 prev3) prev1 prev2)
        )
    )
    (if (< x 3)
        x
        (iter 3 2 1 0)
    )   
)


(print (rec2 0))
(print (rec2 1))
(print (rec2 2))
(print (rec2 3))
(print (rec2 4))
(print (rec2 5))
(print (rec2 6))
(print (rec2 7))
(print (rec2 8))


