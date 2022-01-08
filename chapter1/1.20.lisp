аппликативный порядок - вычисление аргументов, затем применение процедуры
нормальный порядок - полная подстановка, затем редукция.


(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b)))
)


аппликативный порядок
gcd (206 40)
выполняется за 4 операции и 3 операции остатка деления
gcd(40 6) - gcd(6 4) - gcd (4 2) - gcd(2 0)

нормальный порядок
gcd (206 40)

- (gcd 40 (remainder 206 40)) = gcd(40 6)
- (gcd (remainder 206 40) remainder(40 (remainder 206 40))) = gcd(6 4)
- (gcd remainder(40 (remainder 206 40)) (remainder (remainder 206 40) remainder(40 (remainder 206 40)))) = gcd(4 2)

- (gcd (remainder (remainder 206 40) remainder(40 (remainder 206 40))) remainder( remainder(40 (remainder 206 40)) (remainder (remainder 206 40) remainder(40 (remainder 206 40))))) = gcd(2 0)

операций остатка деления 11 - дофига при нормальном порядоке вычисления



