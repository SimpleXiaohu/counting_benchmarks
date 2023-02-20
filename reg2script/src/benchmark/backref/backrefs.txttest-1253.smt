;;^\s*\/?\/?(\*|'|"|)\s*prevent\sprettydiff\s*\1\/?;?\s*$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt (str.to.re "/")) (re.++ (re.opt (str.to.re "/")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (str.to.re "*") (str.to.re "\u{27}")) (str.to.re "\u{22}"))) (str.to.re ""))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "p") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "v") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.++ (str.to.re "p") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "d") (re.++ (str.to.re "i") (re.++ (str.to.re "f") (re.++ (str.to.re "f") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (_ re.reference 1) (re.++ (re.opt (str.to.re "/")) (re.++ (re.opt (str.to.re ";")) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))))))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
