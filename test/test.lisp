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
    (equal (distributive-factor '()) '(* 0 (+)))
    (equal (distributive-factor '(1)) '(* 1 (+ 1)))
    (equal (distributive-factor '(5 10)) '(* 5 (+ 1 2)))
    (equal (distributive-factor '(500 250 1000)) '(* 250 (+ 2 1 4)))))

(deftest test-distributive-expand ()
  (check
    (equal (distributive-expand '(* 0 (+))) '())
    (equal (distributive-expand '(* 1 (+ 1))) '(1))
    (equal (distributive-expand '(* 5 (+ 1 2))) '(5 10))
    (equal (distributive-expand '(* 250 (+ 2 1 4))) '(500 250 1000))))

(deftest test-distributive-factor-and-expand ()
  (check
    (equal (distributive-expand (distributive-factor '())) '())
    (equal (distributive-expand (distributive-factor '(1))) '(1))
    (equal (distributive-expand (distributive-factor '(5 10))) '(5 10))
    (equal (distributive-expand (distributive-factor '(500 250 1000))) '(500 250 1000))))

(deftest test-sum-digits ()
  (check
    (= (sum-digits 0) 0)
    (= (sum-digits 5) 5)
    (= (sum-digits 45) 9)
    (= (sum-digits 100482) 15)))

(deftest test-arithmetic ()
  (check
    (test-integer-half)
    (test-sum-integers-from-0-to-n)
    (test-sum-integers-from-m-to-n)
    (test-distributive-factor)
    (test-distributive-expand)
    (test-distributive-factor-and-expand)
    (test-sum-digits)))

(deftest test-build-list ()
  (check
    (equal (build-list 10 #'identity) '(0 1 2 3 4 5 6 7 8 9))
    (equal (build-list 10 #'(lambda (x) (* x 2))) '(0 2 4 6 8 10 12 14 16 18))))

(deftest test-range ()
  (check
    (equal (range 10) '(0 1 2 3 4 5 6 7 8 9))
    (equal (range 10 :start 5) '(5 6 7 8 9))
    (equal (range 10 :start 2 :step 2) '(2 4 6 8))
    (equal (range -5 :step -1) '(0 -1 -2 -3 -4))
    (equal (range 5 :step 2) '(0 2 4))
    (equal (range -5 :step -2) '(0 -2 -4))
    (equal (range 10 :start -10) '(-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9))
    (equal (range 10 :start -10 :step 2) '(-10 -8 -6 -4 -2 0 2 4 6 8))
    (equal (range 10 :start 5 :step 2) '(5 7 9))))

(deftest test-list-to-string ()
  (check
    (string= (list-to-string '(0)) "0")
    (string= (list-to-string '(1)) "1")
    (string= (list-to-string '(1 0)) "10")
    (string= (list-to-string (make-list 4 :initial-element 9)) "9999")
    (string= (list-to-string (make-list 3 :initial-element 123)) "123123123")))

(deftest test-list ()
  (check
    (test-build-list)
    (test-range)
    (test-list-to-string)))

(deftest test-list-to-integer ()
  (check
    (= (list-to-integer '(0)) 0)
    (= (list-to-integer '(1)) 1)
    (= (list-to-integer '(1 0)) 10)
    (= (list-to-integer (make-list 4 :initial-element 9)) 9999)
    (= (list-to-integer (make-list 3 :initial-element 123)) 123123123)))

(deftest test-closest-multiple-of ()
  (check
    (= (closest-multiple-of 3 10) 12)
    (= (closest-multiple-of 3 10 :less-than t) 9)
    (= (closest-multiple-of 3 -10) -9)
    (= (closest-multiple-of 3 -10 :less-than t) -12)
    (= (closest-multiple-of 5 10) 10)
    (= (closest-multiple-of 5 10 :less-than t) 10)
    (= (closest-multiple-of 5 -10) -10)
    (= (closest-multiple-of 5 -10 :less-than t) -10)))

(deftest test-multiples-of ()
  (check
    (equal (multiples-of 3 :start 0 :end 10) '(0 3 6 9))
    (equal (multiples-of 3 :start 0 :n 3) '(0 3 6))
    (equal (multiples-of 4 :end 20) '(4 8 12 16))
    (equal (multiples-of 3 :n 3) '(3 6 9))
    (equal (multiples-of 3 :start -10 :end 0) '(-9 -6 -3))
    (equal (multiples-of 3 :start -10 :end 10) '(-9 -6 -3 0 3 6 9))
    (equal (multiples-of 3 :start -10 :end 5) '(-9 -6 -3 0 3))))

(deftest test-number-theory ()
  (check
    (test-closest-multiple-of)
    (test-multiples-of)))

(deftest test-all ()
  (check
    (test-types-and-predicates)
    (test-arithmetic)
    (test-list)
    (test-number-theory)))
