(in-package :scholarly-math)

(defun integer-half (n)
  "Calculates the integer value of half of N, rounding down to the
nearest whole number."
  (check-type n integer)
  (ash n -1))

(defun sum-integers-from-0-to-n (n)
  "Calculate the sum of the consecutive integers from 0 up to and including N."
  (check-type n non-minus-integer)
  (sum-integers-from-m-to-n 0 n))

(defun sum-integers-from-m-to-n (m n)
  "Calculate the sum of the consecutive integers from M to N."
  (check-type n non-minus-integer)
  (check-type m non-minus-integer)
  (integer-half (* (1+ (abs (- n m)))
		   (+ n m))))

(defun distributive-factor (list-of-integers)
  "Factors a LIST-OF-INTEGERS using the distributive property. For
example, (+ AB AC) = (* A (+ B C))."
  (check-type list-of-integers list-of-integers)
  (let ((factor (reduce #'gcd list-of-integers)))
    (list '*
	  factor
	  (cons '+ (mapcar #'(lambda (x) (/ x factor))
			   list-of-integers)))))

(defun factored-list-op (factored-list)
  "Returns the operator, usually *, of FACTORED-LIST."
  (check-type factored-list list)
  (first factored-list))

(defun factored-list-factor (factored-list)
  "Returns the factor of FACTORED-LIST."
  (check-type factored-list list)
  (second factored-list))

(defun factored-list-sum-list (factored-list)
  "Returns the sum list of FACTORED-LIST."
  (check-type factored-list list)
  (third factored-list))

(defun distributive-expand (factored-list)
  "Expands a FACTORED-LIST using the distributive property. For example,
 (* A (+ B C) = (+ AB AC)."
  (check-type factored-list list)
  (mapcar #'(lambda (x)
	      (funcall (factored-list-op factored-list)
		       (factored-list-factor factored-list)
		       x))
	  (rest (factored-list-sum-list factored-list))))

(defun sum-digits (n)
  "Sums the digits of positive integer N."
  (check-type n non-minus-integer)
  (do ((sum 0 (+ sum (rem int 10)))
	(int n (truncate int 10)))
       ((zerop int) sum)))
