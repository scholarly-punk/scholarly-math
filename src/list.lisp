(in-package :scholarly-math)

(defun build-list (n fn)
  "Creates a list of N elements by applying function FN to the integers
from 0 to (1- N)."
  (check-type n plus-integer)
  (check-type fn function)
  (do ((i (1- n) (1- i))
       (list '() (cons (funcall fn i) list)))
      ((< i 0) list)))
