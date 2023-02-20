;;ns:quote\s+('''|""").+?\\"Howdy, y\\'all.\\"\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.++ (str.to.re "n") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "o") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "\u{27}") (re.++ (str.to.re "\u{27}") (str.to.re "\u{27}"))) (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "\u{22}") (str.to.re "\u{22}"))))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "\\") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "H") (re.++ (str.to.re "o") (re.++ (str.to.re "w") (re.++ (str.to.re "d") (str.to.re "y")))))))))))))))))) (re.++ (str.to.re ",") (re.++ (str.to.re " ") (re.++ (str.to.re "y") (re.++ (str.to.re "\\") (re.++ (str.to.re "\u{27}") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (str.to.re "\\") (re.++ (str.to.re "\u{22}") (_ re.reference 1))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
