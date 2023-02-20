;;("|')(.*?)\1|d{1,4}|m{1,4}|yy(?:yy)?|([HhMsTtz])\3?|[LlrZ]

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 1))) ((_ re.loop 1 4) (str.to.re "d"))) ((_ re.loop 1 4) (str.to.re "m"))) (re.++ (str.to.re "y") (re.++ (str.to.re "y") (re.opt (re.++ (str.to.re "y") (str.to.re "y")))))) (re.++ ((_ re.capture 3) (re.union (str.to.re "H") (re.union (str.to.re "h") (re.union (str.to.re "M") (re.union (str.to.re "s") (re.union (str.to.re "T") (re.union (str.to.re "t") (str.to.re "z")))))))) (re.opt (_ re.reference 3)))) (re.union (str.to.re "L") (re.union (str.to.re "l") (re.union (str.to.re "r") (str.to.re "Z"))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
