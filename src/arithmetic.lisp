(in-package :scholarly-math)

(defun integer-half (n)
  "Calculates the integer value of half of N, rounding down to the
nearest whole number."
  (check-type n integer)
  (truncate n 2))

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

(defstruct (factored-list (:type list))
  "A list factored with the distributive property."
  (factor-op '*)
  factor
  sum-list)

(defun distributive-factor (list-of-integers)
  "Factors a LIST-OF-INTEGERS into FACTORED-LIST using the distributive
property. For example, (+ AB AC) = (* A (+ B C))."
  (check-type list-of-integers list-of-integers)
  (let ((factor (reduce #'gcd list-of-integers)))
    (make-factored-list
     :factor-op '*
     :factor factor
     :sum-list (cons '+ (mapcar #'(lambda (x) (/ x factor))
				list-of-integers)))))

(defun distributive-expand (factored-list)
  "Expands a FACTORED-LIST using the distributive property. For example,
 (* A (+ B C) = (+ AB AC)."
  (check-type factored-list list)
  (mapcar #'(lambda (x)
	      (funcall (factored-list-factor-op factored-list)
		       (factored-list-factor factored-list)
		       x))
	  (rest (factored-list-sum-list factored-list))))
