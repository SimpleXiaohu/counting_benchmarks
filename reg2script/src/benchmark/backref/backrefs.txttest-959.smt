;;^(?:3[47]\d{2}([\ \-]?)\d{6}\1\d|(?:(?:4\d|5[1-5]|65)\d{2}|6011)([\ \-]?)\d{4}\2\d{4}\2)\d{4}$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.union (re.++ (str.to.re "3") (re.++ (re.union (str.to.re "4") (str.to.re "7")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re " ") (str.to.re "-")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (_ re.reference 1) (re.range "0" "9"))))))) (re.++ (re.union (re.++ (re.union (re.union (re.++ (str.to.re "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "1" "5"))) (re.++ (str.to.re "6") (str.to.re "5"))) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.++ (str.to.re "0") (re.++ (str.to.re "1") (str.to.re "1"))))) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re " ") (str.to.re "-")))) (re.++ ((_ re.loop 0 4) (re.range "0" "9")) (re.++ (_ re.reference 2) (re.++ ((_ re.loop 0 4) (re.range "0" "9")) (_ re.reference 2))))))) ((_ re.loop 0 4) (re.range "0" "9")))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
