(define square a)
  (* a a)
(define max a b)
  (cond ((> a b) a)
		((< a b) b)
(define maxSquareSum a b c)
  (+)
 
 (+
      (square (min (max2 a b) (max2 c (max2 a b))))
      (square (max2 c (max2 a b)))
    )

;gnu clisp  2.49.60
(defun square (a)
  (* a a)
)
(defun max2 (a b)
  (if (> a b)
    a
    b
  )
)
(defun min2 (a b)
  (if (> a b)
    b
    a
  )
)
(defun max3 (a b c)
    (max2 c (max2 a b))
)
(defun max3 (a b c)
    (max2 c (max2 a b))
)
(defun max23(a b c)
    (cond ((= a (max3 a b c)) (max2 b c))
          ((= b (max3 a b c)) (max2 a c))
          ((= c (max3 a b c)) (max2 a b))
    )
)
(defun maxR (a b c)
    (+
      (square (max23 a b c))
      (square (max3 a b c))
    )
)
(print (maxR 1 3 2))