;;^(.+?)([\. ])(?:((?:20|19)\d\d)\2)?S(\d+)(E(\d+))?\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 2) (re.union (str.to.re ".") (str.to.re " "))) (re.++ (re.opt (re.++ ((_ re.capture 3) (re.++ (re.union (re.++ (str.to.re "2") (str.to.re "0")) (re.++ (str.to.re "1") (str.to.re "9"))) (re.++ (re.range "0" "9") (re.range "0" "9")))) (_ re.reference 2))) (re.++ (str.to.re "S") (re.++ ((_ re.capture 4) (re.+ (re.range "0" "9"))) (re.++ (re.opt ((_ re.capture 5) (re.++ (str.to.re "E") ((_ re.capture 6) (re.+ (re.range "0" "9")))))) (re.++ (_ re.reference 2) re.all))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
