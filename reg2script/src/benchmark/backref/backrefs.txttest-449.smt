;;^\#(([a-fA-F0-9])\2){3}$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "#") ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (_ re.reference 2)))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
