;;^\:(link|visited|target|lang|not|active|focus|hover|checked|disabled|enabled|selected)(?:\((["']*)(.*?(\(.*\))?[^'"()]*?)\2\))?(.*)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "l") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (str.to.re "k")))) (re.++ (str.to.re "v") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (str.to.re "d")))))))) (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (str.to.re "t"))))))) (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (str.to.re "g"))))) (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "t")))) (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "i") (re.++ (str.to.re "v") (str.to.re "e"))))))) (re.++ (str.to.re "f") (re.++ (str.to.re "o") (re.++ (str.to.re "c") (re.++ (str.to.re "u") (str.to.re "s")))))) (re.++ (str.to.re "h") (re.++ (str.to.re "o") (re.++ (str.to.re "v") (re.++ (str.to.re "e") (str.to.re "r")))))) (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "e") (re.++ (str.to.re "c") (re.++ (str.to.re "k") (re.++ (str.to.re "e") (str.to.re "d")))))))) (re.++ (str.to.re "d") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (str.to.re "d"))))))))) (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (str.to.re "d")))))))) (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (str.to.re "d")))))))))) (re.++ (re.opt (re.++ (str.to.re "(") (re.++ ((_ re.capture 2) (re.* (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ ((_ re.capture 3) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "(") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re ")"))))) (re.*? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "(")) (re.diff (re.range "\x01" "\xff") (str.to.re ")"))))))))) (re.++ (_ re.reference 2) (str.to.re ")")))))) (re.++ ((_ re.capture 5) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
