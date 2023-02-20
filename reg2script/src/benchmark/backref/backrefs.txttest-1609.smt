;;^(?:<(p)>)?(?:(?:&nbsp;)|\s|<br[^>]*>)*(?:<\/\1>)?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (str.to.re "p")) (str.to.re ">")))) (re.++ (re.* (re.union (re.union (re.++ (str.to.re "&") (re.++ (str.to.re "n") (re.++ (str.to.re "b") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (str.to.re ";")))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ (str.to.re "r") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (str.to.re ">"))))))) (re.opt (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">")))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
