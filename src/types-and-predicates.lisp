(in-package :scholarly-math)

(deftype plus-real ()
  "A positive real."
  '(real (0) *))

(deftype minus-real ()
  "A negative real."
  '(real * (0)))

(deftype non-minus-real ()
  "A non-negative real."
  '(real 0 *))

(deftype non-plus-real ()
  "A non-positive real."
  '(real * 0))

(deftype non-zero-real ()
  "A non-zero real."
  '(or (real * (0)) (real (0) *)))

(deftype plus-integer ()
  "A positive integer."
  '(integer 1 *))

(deftype minus-integer ()
  "A negative integer."
  '(integer * -1))

(deftype non-minus-integer ()
  "A non-negative integer."
  '(integer 0 *))

(deftype non-plus-integer ()
  "A non-positive integer."
  '(integer * 0))

(deftype non-zero-integer ()
  "A non-zero integer."
  '(or (integer * -1) (integer 1 *) ))

(defun non-minus-p (number)
  "Is this real number not negative?"
  (typep number 'non-minus-real))

(defun non-plus-p (number)
  "Is this real number not positive?"
  (typep number 'non-plus-real))

(defun non-zero-p (number)
  "Is this real number not zero?"
  (typep number 'non-zero-real))

(defun plus-integer-p (object)
  "Return true if OBJECT is a positive INTEGER, and NIL otherwise."
  (typep object 'plus-integer))

(defun minus-integer-p (object)
  "Return true if OBJECT is a negative INTEGER, and NIL otherwise."
  (typep object 'minus-integer))

(defun non-minus-integer-p (object)
  "Return true if OBJECT is a non negative INTEGER, and NIL otherwise."
  (typep object 'non-minus-integer))

(defun non-plus-integer-p (object)
  "Return true if OBJECT is a non positive INTEGER, and NIL otherwise."
  (typep object 'non-plus-integer))

(defun non-zero-integer-p (object)
  "Return true if OBJECT is a non zero INTEGER, and NIL otherwise."
  (typep object 'non-zero-integer))

(defun list-of-integers-p (object)
  "Return true if OBJECT is a list of integers, and NIL otherwise."
  (and (listp object)
       (every #'integerp object)))

(deftype list-of-integers ()
  "A list where every element is an integer."
  `(satisfies list-of-integers-p))

