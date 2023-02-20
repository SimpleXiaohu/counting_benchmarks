;;^%FS([LT]?)([AI]?)(.*)X([0-7])([0-7])Y\4\5

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (str.to.re "%") (re.++ (str.to.re "F") (re.++ (str.to.re "S") (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "L") (str.to.re "T")))) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "A") (str.to.re "I")))) (re.++ ((_ re.capture 3) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "X") (re.++ ((_ re.capture 4) (re.range "0" "7")) (re.++ ((_ re.capture 5) (re.range "0" "7")) (re.++ (str.to.re "Y") (re.++ (_ re.reference 4) (re.++ (_ re.reference 5) re.all)))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
