;;^(\d+)x\1\.png$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "x") (re.++ (_ re.reference 1) (re.++ (str.to.re ".") (re.++ (str.to.re "p") (re.++ (str.to.re "n") (str.to.re "g")))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
