;;^(`|~)\1{2}\s*swift

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (str.to.re "`") (str.to.re "~"))) (re.++ ((_ re.loop 0 2) (_ re.reference 1)) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "s") (re.++ (str.to.re "w") (re.++ (str.to.re "i") (re.++ (str.to.re "f") (re.++ (str.to.re "t") re.all)))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
