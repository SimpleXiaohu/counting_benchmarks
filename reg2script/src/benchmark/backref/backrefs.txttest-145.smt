;;^(\d+px)(?: \1 \1 \1)?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to.re "p") (str.to.re "x")))) (re.opt (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (re.++ (str.to.re " ") (_ re.reference 1))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
