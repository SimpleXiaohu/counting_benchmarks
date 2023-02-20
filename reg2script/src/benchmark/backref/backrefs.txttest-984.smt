;;\[([^\[]*)\]|(\w)\2*(o)?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.++ (str.to.re "[") (re.++ ((_ re.capture 1) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "[")))) (str.to.re "]"))) (re.++ ((_ re.capture 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (re.++ (re.* (_ re.reference 2)) (re.opt ((_ re.capture 3) (str.to.re "o")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
