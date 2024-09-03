(in-package :scholarly-math)

(defun positive-integer-p (x)
  "Is x a positive-integer?"
  (and (integerp x) (plusp x)))
