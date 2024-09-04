(in-package :scholarly-math)

(defun non-minus-p (number)
  "Is this real number not negative?"
  (not (minusp number)))

(defun non-plus-p (number)
  "Is this real number not positive?"
  (not (plusp number)))

(defun non-zero-p (number)
  "Is this real number not zero?"
  (not (zerop number)))

(defun plus-integer-p (object)
  "Return true if OBJECT is a positive INTEGER, and NIL otherwise."
  (and (integerp object) (plusp object)))

(defun minus-integer-p (object)
  "Return true if OBJECT is a negative INTEGER, and NIL otherwise."
  (and (integerp object) (minusp object)))

(defun non-minus-integer-p (object)
  "Return true if OBJECT is a non negative INTEGER, and NIL otherwise."
  (and (integerp object) (non-minus-p object)))

(defun non-plus-integer-p (object)
  "Return true if OBJECT is a non positive INTEGER, and NIL otherwise."
  (and (integerp object) (non-plus-p object)))

(defun non-zero-integer-p (object)
  "Return true if OBJECT is a non zero INTEGER, and NIL otherwise."
  (and (integerp object) (non-zero-p object)))
