(in-package :scholarly-math)

(defun build-list (n fn)
  "Creates a list of N elements by applying function FN to the integers
from 0 to (1- N)."
  (check-type n plus-integer)
  (check-type fn function)
  (do ((i (1- n) (1- i))
       (list '() (cons (funcall fn i) list)))
      ((< i 0) list)))

(defun range (n &key (start 0) (step 1))
  "Creates a list that contains the range of integers from START to N by
STEP."
  (check-type n integer)
  (check-type start integer)
  (check-type step integer)
  (assert (plus-integer-p (* (- n start) step)) (n start step)
	  "n: ~A~%start: ~A~%step: ~A~%Do not form a closed range."
	  n start step)
  (build-list (ceiling (- n start) step)
	      #'(lambda (x) (+ (* x step) start))))
