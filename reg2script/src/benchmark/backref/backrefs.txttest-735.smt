;;^(\/{4,})(?:\r?\n|\r)(?:[\s\S]*(?:\r?\n|\r))??\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) ((_ re.loop 0 4) (str.to.re "/"))) (re.++ (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")) (re.++ (re.opt? (re.++ (re.* (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")))) (re.++ (_ re.reference 1) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
