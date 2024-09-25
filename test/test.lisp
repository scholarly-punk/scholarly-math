(in-package :scholarly-math/test)

(deftest test-non-minus-p ()
  (check
    (non-minus-p 1.234)
    (non-minus-p 1)
    (non-minus-p 0)
    (not (non-minus-p -1))
    (not (non-minus-p -1.234))))

(deftest test-non-plus-p ()
  (check
    (not (non-plus-p 1.234))
    (not (non-plus-p 1))
    (non-plus-p 0)
    (non-plus-p -1)
    (non-plus-p -1.234)))

(deftest test-non-zero-p ()
  (check
    (non-zero-p 1.234)
    (non-zero-p 1)
    (not (non-zero-p 0))
    (non-zero-p -1)
    (non-zero-p -1.234)))

(deftest test-plus-integer-p ()
  (check
    (not (plus-integer-p 1.234))
    (plus-integer-p 1)
    (not (plus-integer-p 0))
    (not (plus-integer-p -1))
    (not (plus-integer-p -1.234))))

(deftest test-minus-integer-p ()
  (check
    (not (minus-integer-p 1.234))
    (not (minus-integer-p 1))
    (not (minus-integer-p 0))
    (minus-integer-p -1)
    (not (minus-integer-p -1.234))))

(deftest test-non-minus-integer-p ()
  (check
    (not (non-minus-integer-p 1.234))
    (non-minus-integer-p 1)
    (non-minus-integer-p 0)
    (not (non-minus-integer-p -1))
    (not (non-minus-integer-p -1.234))))

(deftest test-non-plus-integer-p ()
  (check
    (not (non-plus-integer-p 1.234))
    (not (non-plus-integer-p 1))
    (non-plus-integer-p 0)
    (non-plus-integer-p -1)
    (not (non-plus-integer-p -1.234))))

(deftest test-non-zero-integer-p ()
  (check
    (not (non-zero-integer-p 1.234))
    (non-zero-integer-p 1)
    (not (non-zero-integer-p 0))
    (non-zero-integer-p -1)
    (not (non-zero-integer-p -1.234))))

(deftest test-type-plus-integer ()
  (check
    (not (typep 1.234 'plus-integer))
    (typep 1 'plus-integer)
    (not (typep 0 'plus-integer))
    (not (typep -1 'plus-integer))
    (not (typep -1.234 'plus-integer))))

(deftest test-type-minus-integer ()
  (check
    (not (typep 1.234 'minus-integer))
    (not (typep 1 'minus-integer))
    (not (typep 0 'minus-integer))
    (typep -1 'minus-integer)
    (not (typep -1.234 'minus-integer))))

(deftest test-type-non-minus-integer ()
  (check
    (not (typep 1.234 'non-minus-integer))
    (typep 1 'non-minus-integer)
    (typep 0 'non-minus-integer)
    (not (typep -1 'non-minus-integer))
    (not (typep -1.234 'non-minus-integer))))

(deftest test-type-non-plus-integer ()
  (check
    (not (typep 1.234 'non-plus-integer))
    (not (typep 1 'non-plus-integer))
    (typep 0 'non-plus-integer)
    (typep -1 'non-plus-integer)
    (not (typep -1.234 'non-plus-integer))))

(deftest test-type-non-zero-integer ()
  (check
    (not (typep 1.234 'non-zero-integer))
    (typep 1 'non-zero-integer)
    (not (typep 0 'non-zero-integer))
    (typep -1 'non-zero-integer)
    (not (typep -1.234 'non-zero-integer))))

(deftest test-type-plus-real ()
  (check
    (typep 1.234 'plus-real)
    (typep 1 'plus-real)
    (not (typep 0 'plus-real))
    (not (typep -1 'plus-real))
    (not (typep -1.234 'plus-real))))

(deftest test-type-minus-real ()
  (check
    (not (typep 1.234 'minus-real))
    (not (typep 1 'minus-real))
    (not (typep 0 'minus-real))
    (typep -1 'minus-real)
    (typep -1.234 'minus-real)))

(deftest test-type-non-minus-real ()
  (check
    (typep 1.234 'non-minus-real)
    (typep 1 'non-minus-real)
    (typep 0 'non-minus-real)
    (not (typep -1 'non-minus-real))
    (not (typep -1.234 'non-minus-real))))

(deftest test-type-non-plus-real ()
  (check
    (not (typep 1.234 'non-plus-real))
    (not (typep 1 'non-plus-real))
    (typep 0 'non-plus-real)
    (typep -1 'non-plus-real)
    (typep -1.234 'non-plus-real)))

(deftest test-type-non-zero-real ()
  (check
    (typep 1.234 'non-zero-real)
    (typep 1 'non-zero-real)
    (not (typep 0 'non-zero-real))
    (typep -1 'non-zero-real)
    (typep -1.234 'non-zero-real)))

(deftest test-list-of-integers-p ()
  (check
    (list-of-integers-p '())
    (list-of-integers-p '(1))
    (list-of-integers-p '(1 2 3 4 5))
    (not (list-of-integers-p '(1 2 c 4 5)))
    (not (list-of-integers-p '(1 2 2.5 4 5)))))

(deftest test-type-list-of-integers ()
  (check
    (not (typep 1 'list-of-integers))
    (not (typep 1.2 'list-of-integers))
    (typep '() 'list-of-integers)
    (typep '(1 2 3 4 5) 'list-of-integers)
    (not (typep '(1 2 c 4 5) 'list-of-integers))
    (not (typep '(1 2 3 4.5 5) 'list-of-integers))))

(deftest test-numeric-predicates ()
  (check
    (test-non-minus-p)
    (test-non-plus-p)
    (test-non-zero-p)
    (test-plus-integer-p)
    (test-minus-integer-p)
    (test-non-minus-integer-p)
    (test-non-plus-integer-p)
    (test-non-zero-integer-p)
    (test-list-of-integers-p)))

(deftest test-deftypes ()
  (check
    (test-type-plus-integer)
    (test-type-minus-integer)
    (test-type-non-minus-integer)
    (test-type-non-plus-integer)
    (test-type-non-zero-integer)
    (test-type-plus-real)
    (test-type-minus-real)
    (test-type-non-minus-real)
    (test-type-non-plus-real)
    (test-type-non-zero-real)
    (test-type-list-of-integers)))

(deftest test-types-and-predicates ()
  (check 
   (test-numeric-predicates)
    (test-deftypes)))

(deftest test-integer-half ()
  (check
    (zerop (integer-half 0))
    (= (integer-half 1) 0)
    (= (integer-half 2) 1)
    (= (integer-half 1000) 500)
    (= (integer-half 1001) 500)))

(deftest test-sum-integers-from-0-to-n ()
  (check
    (= (sum-integers-from-0-to-n 10) 55)
    (= (sum-integers-from-0-to-n 1000) 500500)))

(deftest test-sum-integers-from-m-to-n ()
  (check
    (= (sum-integers-from-m-to-n 0 0) 0)
    (= (sum-integers-from-m-to-n 0 100) 5050)
    (= (sum-integers-from-m-to-n 40 60) 1050)
    (= (sum-integers-from-m-to-n 60 40) 1050)
    (= (sum-integers-from-m-to-n 1501 1000) 627751)))

(deftest test-distributive-factor ()
  (check
    (equalp (distributive-factor '()) (make-factored-list :factor 0 :sum-list '(+)))
    (equalp (distributive-factor '(1)) (make-factored-list :factor 1 :sum-list '(+ 1)))
    (equalp (distributive-factor '(5 10)) (make-factored-list :factor 5 :sum-list '(+ 1 2)))
    (equalp (distributive-factor '(500 250 1000)) (make-factored-list :factor 250 :sum-list '(+ 2 1 4)))))

(deftest test-distributive-expand ()
  (check
    (equal (distributive-expand (make-factored-list :factor 0 :sum-list '(+))) '())
    (equal (distributive-expand (make-factored-list :factor 1 :sum-list '(+ 1))) '(1))
    (equal (distributive-expand (make-factored-list :factor 5 :sum-list '(+ 1 2))) '(5 10))
    (equal (distributive-expand (make-factored-list :factor 250 :sum-list '(+ 2 1 4))) '(500 250 1000))))

(deftest test-distributive-factor-and-expand ()
  (check
    (equal (distributive-expand (distributive-factor '())) '())
    (equal (distributive-expand (distributive-factor '(1))) '(1))
    (equal (distributive-expand (distributive-factor '(5 10))) '(5 10))
    (equal (distributive-expand (distributive-factor '(500 250 1000))) '(500 250 1000))))

(deftest test-arithmetic ()
  (check
    (test-integer-half)
    (test-sum-integers-from-0-to-n)
    (test-sum-integers-from-m-to-n)
    (test-distributive-factor)
    (test-distributive-expand)
    (test-distributive-factor-and-expand)))

(deftest test-all ()
  (check
    (test-types-and-predicates)
    (test-arithmetic)))
