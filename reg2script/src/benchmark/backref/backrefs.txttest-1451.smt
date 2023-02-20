;;\{% *(.+?)(?: *| +.*)%\}[\s\S]+?\{% *end\1 *%\}

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "%") (re.++ (re.* (str.to.re " ")) (re.++ ((_ re.capture 1) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (re.union (re.* (str.to.re " ")) (re.++ (re.+ (str.to.re " ")) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ (str.to.re "%") (re.++ (str.to.re "}") (re.++ (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (str.to.re "{") (re.++ (str.to.re "%") (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (_ re.reference 1) (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "%") (str.to.re "}")))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
