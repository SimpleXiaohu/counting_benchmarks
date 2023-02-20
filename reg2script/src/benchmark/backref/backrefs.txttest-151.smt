;;^(\/?([a-zA-Z0-9]))\/\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ (re.opt (str.to.re "/")) ((_ re.capture 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to.re "/") (re.++ (_ re.reference 2) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
