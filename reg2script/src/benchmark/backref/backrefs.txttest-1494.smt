;;(\s+|^)(_{2})((?:.|\r)+?)\2(\s+|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.begin-anchor)) (re.++ ((_ re.capture 2) ((_ re.loop 0 2) (str.to.re "_"))) (re.++ ((_ re.capture 3) (re.+? (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "\u{0d}")))) (re.++ (_ re.reference 2) (re.++ ((_ re.capture 4) (re.union (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) re.end-anchor)) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
