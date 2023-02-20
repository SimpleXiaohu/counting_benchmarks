;;^text\/html(?:;\s*charset=('|"|)([^'"]+)\1)?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "/") (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "l") (re.opt (re.++ (str.to.re ";") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re "t") (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}"))))) (_ re.reference 1)))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
