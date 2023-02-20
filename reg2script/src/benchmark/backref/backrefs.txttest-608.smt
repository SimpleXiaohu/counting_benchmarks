;;("|')((?:[^<>\/\n\s]+?\/){0,}[^<>\/\n\s]+?(?:\.js)?)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 0 0) (re.++ (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "<")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ">")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "/")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))) (str.to.re "/"))) (re.++ (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "<")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ">")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "/")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))) (re.opt (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
