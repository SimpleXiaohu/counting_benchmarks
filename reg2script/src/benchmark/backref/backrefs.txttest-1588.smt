;;(?:<(p|div)>(?:\&nbsp\;|<br\/?>)<\/\1>|<br\/?>|\&nbsp\;|\s)+$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.*? re.allchar) (re.+ (re.union (re.union (re.union (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (str.to.re "p") (re.++ (str.to.re "d") (re.++ (str.to.re "i") (str.to.re "v"))))) (re.++ (str.to.re ">") (re.++ (re.union (re.++ (str.to.re "&") (re.++ (str.to.re "n") (re.++ (str.to.re "b") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (str.to.re ";")))))) (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ (str.to.re "r") (re.++ (re.opt (str.to.re "/")) (str.to.re ">")))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">")))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ (str.to.re "r") (re.++ (re.opt (str.to.re "/")) (str.to.re ">")))))) (re.++ (str.to.re "&") (re.++ (str.to.re "n") (re.++ (str.to.re "b") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (str.to.re ";"))))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
