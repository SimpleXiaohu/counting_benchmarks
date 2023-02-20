;;^(--|\*{4,}|_{4,}|={4,})(?:\r?\n|\r)(?:.*(?:\r?\n|\r))*?\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.++ (str.to.re "-") (str.to.re "-")) ((_ re.loop 0 4) (str.to.re "*"))) ((_ re.loop 0 4) (str.to.re "_"))) ((_ re.loop 0 4) (str.to.re "=")))) (re.++ (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")) (re.++ (re.*? (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")))) (_ re.reference 1))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
