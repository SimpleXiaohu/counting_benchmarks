;;([+\-*\/%])(W|S|C|F|T|X|WRAP|SHORT|CLIP|FOLD|TABLE|FLAT)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "+") (re.union (str.to.re "-") (re.union (str.to.re "*") (re.union (str.to.re "/") (str.to.re "%")))))) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "W") (str.to.re "S")) (str.to.re "C")) (str.to.re "F")) (str.to.re "T")) (str.to.re "X")) (re.++ (str.to.re "W") (re.++ (str.to.re "R") (re.++ (str.to.re "A") (str.to.re "P"))))) (re.++ (str.to.re "S") (re.++ (str.to.re "H") (re.++ (str.to.re "O") (re.++ (str.to.re "R") (str.to.re "T")))))) (re.++ (str.to.re "C") (re.++ (str.to.re "L") (re.++ (str.to.re "I") (str.to.re "P"))))) (re.++ (str.to.re "F") (re.++ (str.to.re "O") (re.++ (str.to.re "L") (str.to.re "D"))))) (re.++ (str.to.re "T") (re.++ (str.to.re "A") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (str.to.re "E")))))) (re.++ (str.to.re "F") (re.++ (str.to.re "L") (re.++ (str.to.re "A") (str.to.re "T")))))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
