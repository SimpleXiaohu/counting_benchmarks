;;^(([ \t]*`{3,4})([^\n]*)([\s\S]+?)(^[ \t]*\2))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) ((_ re.loop 3 4) (str.to.re "`")))) (re.++ ((_ re.capture 3) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")))) (re.++ ((_ re.capture 4) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) ((_ re.capture 5) (re.++ re.begin-anchor (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) (_ re.reference 2)))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
