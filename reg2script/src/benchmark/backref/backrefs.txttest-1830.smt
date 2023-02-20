;;^--(\w+)(=("?)([^"]+)\2)?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.opt ((_ re.capture 2) (re.++ (str.to.re "=") (re.++ ((_ re.capture 3) (re.opt (str.to.re "\u{22}"))) (re.++ ((_ re.capture 4) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))) (_ re.reference 2)))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
