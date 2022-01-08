
;gnu clisp  2.49.60
(defun fact (x)
  (defun iter (res counter)
      (if (< counter 1)
        res
        (iter (* res counter) (- counter 1))
      )
  )
  (iter x (- x 1))
)

(defun comb(n k)
    (/ 
     (fact n) 
     (* 
       (fact (- n k)) 
       (fact k)
     )
    )
)

(defun triangleRow(k)
  (defun iter (res counter)
      (if (< counter 1)
        res
        (iter (* res counter) (- counter 1))
      )
  )
  (iter x (- x 1))
)

(print (comb 6 4))