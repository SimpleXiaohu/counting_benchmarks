;;^(?:'|<){3,}$|^ {0,3}([-*_])( *)\1\2\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.++ (re.++ re.begin-anchor ((_ re.loop 0 3) (re.union (str.to.re "\u{27}") (str.to.re "<")))) re.end-anchor) (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) (str.to.re " ")) (re.++ ((_ re.capture 1) (re.union (str.to.re "-") (re.union (str.to.re "*") (str.to.re "_")))) (re.++ ((_ re.capture 2) (re.* (str.to.re " "))) (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (_ re.reference 1))))))) re.end-anchor))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
