;;^(?:((['"])use strict\2;)\n)?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.opt (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re " ") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (_ re.reference 2) (str.to.re ";")))))))))))))) (str.to.re "\u{0a}"))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
