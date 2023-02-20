;;\{{2}#bx-tmpl-(\w+)\}{2}([\s\S]*?)\{{2}\/bx-tmpl(?:-\1)?\}{2}

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 0 2) (str.to.re "{")) (re.++ (str.to.re "#") (re.++ (str.to.re "b") (re.++ (str.to.re "x") (re.++ (str.to.re "-") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (str.to.re "-") (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ ((_ re.loop 0 2) (str.to.re "}")) (re.++ ((_ re.capture 2) (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.++ ((_ re.loop 0 2) (str.to.re "{")) (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (str.to.re "x") (re.++ (str.to.re "-") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (re.opt (re.++ (str.to.re "-") (_ re.reference 1))) ((_ re.loop 0 2) (str.to.re "}"))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
