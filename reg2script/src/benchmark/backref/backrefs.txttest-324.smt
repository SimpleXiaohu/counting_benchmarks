;;(html\[\s*lang\s*(?:=|\|=|~=)\s*(|'|").*?\1\s*\])(.*)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.++ (re.++ (re.*? re.allchar) (str.to.re "h")) (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "l") (re.++ (str.to.re "[") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (re.++ (str.to.re "g") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.union (re.union (str.to.re "=") (re.++ (str.to.re "|") (str.to.re "="))) (re.++ (str.to.re "~") (str.to.re "="))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "") (re.++ (str.to.re "") (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re "]"))))))))))))))))))) ((_ re.capture 3) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
