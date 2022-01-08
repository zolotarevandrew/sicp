(defun double (a)
    (+ a a)
)

(defun halve (a)
    (/ a 2)
)

(defun even (a)
    (= (mod a 2) 0)
)

(defun fast-multiplication (a b)
    (cond ((= b 0) 0)
      ((= b 1) a)
      (
         (if (even b)
            (double (fast-multiplication a (halve b)))
            (+ a (fast-multiplication a (- b 1)))
        )
      )
    )
)

(print (fast-multiplication 3 1000))


