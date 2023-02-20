;;Total Regexs: 64408

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "T") (re.++ (str.to.re "o") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re " ") (re.++ (str.to.re "R") (re.++ (str.to.re "e") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ (str.to.re " ") (re.++ (str.to.re "6") (re.++ (str.to.re "4") (re.++ (str.to.re "4") (re.++ (str.to.re "0") (str.to.re "8"))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
