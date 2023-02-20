;;([^=]+)=(\d+|((\'|"|).*?[^\\])\4((\s+)|$))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.++ (re.*? re.allchar) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "="))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.capture 3) (re.++ ((_ re.capture 4) (re.union (re.++ (str.to.re "") (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (str.to.re ""))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.diff (re.range "\x01" "\xff") (str.to.re "\\"))))) (re.++ (_ re.reference 4) ((_ re.capture 5) (re.union ((_ re.capture 6) (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)))))) re.all)))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
