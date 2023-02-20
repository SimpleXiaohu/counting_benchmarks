;;\{\{(([@!]?)(.+?))\}\}(([\s\S]+?)(\{\{:\1\}\}([\s\S]+?))?)\{\{\/\1\}\}

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "{") (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "@") (str.to.re "!")))) ((_ re.capture 3) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) (re.++ (str.to.re "}") (re.++ (str.to.re "}") (re.++ ((_ re.capture 4) (re.++ ((_ re.capture 5) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "{") (re.++ (str.to.re "{") (re.++ (str.to.re ":") (re.++ (_ re.reference 1) (re.++ (str.to.re "}") (re.++ (str.to.re "}") ((_ re.capture 7) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))))))))))) (re.++ (str.to.re "{") (re.++ (str.to.re "{") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re "}") (str.to.re "}")))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
