;;(?:^(?:\r\n|[\r\n]))|(\r\n|[\r\n])\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.++ re.begin-anchor (re.union (re.++ (str.to.re "\u{0d}") (re.++ (str.to.re "\u{0a}") re.all)) (re.union (re.++ (str.to.re "\u{0d}") re.all) (re.++ (str.to.re "\u{0a}") re.all)))) (re.++ ((_ re.capture 1) (re.union (re.++ (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (re.++ (re.*? re.allchar) (str.to.re "\u{0a}"))))) (re.++ (_ re.reference 1) re.all)))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
