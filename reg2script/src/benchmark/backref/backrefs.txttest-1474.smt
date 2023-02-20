;;(^|\s)(color|size)\s*=\s*('|")?([\s\S]+?)(\3|\s|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union re.begin-anchor (re.union (re.++ (re.*? re.allchar) (str.to.re " ")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0b}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0a}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{09}")) (re.++ (re.*? re.allchar) (str.to.re "\u{0c}"))))))))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (str.to.re "r"))))) (re.++ (str.to.re "s") (re.++ (str.to.re "i") (re.++ (str.to.re "z") (str.to.re "e")))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "=") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt ((_ re.capture 3) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 4) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.++ ((_ re.capture 5) (re.union (re.union (_ re.reference 3) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) re.end-anchor)) re.all))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
