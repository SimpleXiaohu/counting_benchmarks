;;("|')((?:\\?.)*?)\1|([YMDZ])\3\3\3?|([YMDHhmsWSZ])(\4?)|[uUASwoQ]

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.*? (re.++ (re.opt (str.to.re "\\")) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (_ re.reference 1))) (re.++ ((_ re.capture 3) (re.union (str.to.re "Y") (re.union (str.to.re "M") (re.union (str.to.re "D") (str.to.re "Z"))))) (re.++ (_ re.reference 3) (re.++ (_ re.reference 3) (re.opt (_ re.reference 3)))))) (re.++ ((_ re.capture 4) (re.union (str.to.re "Y") (re.union (str.to.re "M") (re.union (str.to.re "D") (re.union (str.to.re "H") (re.union (str.to.re "h") (re.union (str.to.re "m") (re.union (str.to.re "s") (re.union (str.to.re "W") (re.union (str.to.re "S") (str.to.re "Z"))))))))))) ((_ re.capture 5) (re.opt (_ re.reference 4))))) (re.union (str.to.re "u") (re.union (str.to.re "U") (re.union (str.to.re "A") (re.union (str.to.re "S") (re.union (str.to.re "w") (re.union (str.to.re "o") (str.to.re "Q")))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
