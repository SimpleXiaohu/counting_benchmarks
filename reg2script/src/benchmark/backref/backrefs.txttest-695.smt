;;<(U|I|STRIKE)>&nbsp;<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.union (str.to.re "U") (str.to.re "I")) (re.++ (str.to.re "S") (re.++ (str.to.re "T") (re.++ (str.to.re "R") (re.++ (str.to.re "I") (re.++ (str.to.re "K") (str.to.re "E")))))))) (re.++ (str.to.re ">") (re.++ (str.to.re "&") (re.++ (str.to.re "n") (re.++ (str.to.re "b") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (re.++ (str.to.re ";") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
