;;\!<tag:yaml.org,2002:js\/regexp> (?:(['"])(.*)\1(\n|$))?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.++ (str.to.re "!") (re.++ (str.to.re "<") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "g") (re.++ (str.to.re ":") (re.++ (str.to.re "y") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "l") (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (str.to.re "o") (re.++ (str.to.re "r") (str.to.re "g")))))))))))))) (re.++ (str.to.re ",") (re.++ (str.to.re "2") (re.++ (str.to.re "0") (re.++ (str.to.re "0") (re.++ (str.to.re "2") (re.++ (str.to.re ":") (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "p") (re.++ (str.to.re ">") (re.++ (str.to.re " ") (re.opt (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 1) ((_ re.capture 3) (re.union (str.to.re "\u{0a}") re.end-anchor)))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
