(defpackage :scholarly-math
  (:use :cl)
  (:export #:non-minus-p
	   #:non-plus-p
	   #:non-zero-p
	   #:plus-integer-p
	   #:minus-integer-p
	   #:non-minus-integer-p
	   #:non-plus-integer-p
	   #:non-zero-integer-p
	   #:plus-integer
	   #:minus-integer
	   #:non-minus-integer
	   #:non-plus-integer
	   #:non-zero-integer
	   #:plus-real
	   #:minus-real
	   #:non-minus-real
	   #:non-plus-real
	   #:non-zero-real
	   #:list-of-integers-p
	   #:list-of-integers
	   #:integer-half
	   #:sum-integers-from-0-to-n
	   #:sum-integers-from-m-to-n
	   #:make-factored-list
	   #:distributive-factor
	   #:distributive-expand
	   #:build-list
	   #:range
	   #:list-to-string
	   #:list-to-integer
	   #:sum-digits
	   #:multiples-of
	   #:closest-multiple-of
	   #:integer-to-list
	   #:last-digit
	   #:drop-last-digit))
