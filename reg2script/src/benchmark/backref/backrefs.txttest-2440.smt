;;Unique Regexs: 2437

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "U") (re.++ (str.to.re "n") (re.++ (str.to.re "i") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re " ") (re.++ (str.to.re "R") (re.++ (str.to.re "e") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ (str.to.re " ") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re "3") (str.to.re "7"))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
