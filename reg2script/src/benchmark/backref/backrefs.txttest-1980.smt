;;<(table).*?<\/\1>|<table.*?>|<\/table>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (str.to.re "e")))))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re ">"))))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (str.to.re ">"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
