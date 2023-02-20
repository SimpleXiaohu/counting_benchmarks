;;(?:<!--[\s\S]*?-->)|(<)([a-zA-Z1-6]+)([^\n]*?>)([\s\S]*?)(<\/\2>)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.++ (str.to.re "<") (re.++ (str.to.re "!") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (str.to.re ">")))))))) (re.++ ((_ re.capture 1) (str.to.re "<")) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "1" "6"))))) (re.++ ((_ re.capture 3) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))) (str.to.re ">"))) (re.++ ((_ re.capture 4) (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) ((_ re.capture 5) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 2) (str.to.re ">")))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
