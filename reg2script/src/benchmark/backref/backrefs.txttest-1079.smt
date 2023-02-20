;;\.(?:pbxproj|pbxuser|mode\dv\3|xcplugindata|xcrequiredplugins)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (str.to.re ".")) (re.union (re.union (re.union (re.union (re.++ (str.to.re "p") (re.++ (str.to.re "b") (re.++ (str.to.re "x") (re.++ (str.to.re "p") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (str.to.re "j"))))))) (re.++ (str.to.re "p") (re.++ (str.to.re "b") (re.++ (str.to.re "x") (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (str.to.re "r")))))))) (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (re.range "0" "9") (re.++ (str.to.re "v") (_ re.reference 3)))))))) (re.++ (str.to.re "x") (re.++ (str.to.re "c") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (str.to.re "u") (re.++ (str.to.re "g") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (str.to.re "a"))))))))))))) (re.++ (str.to.re "x") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "d") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (str.to.re "u") (re.++ (str.to.re "g") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (str.to.re "s"))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
