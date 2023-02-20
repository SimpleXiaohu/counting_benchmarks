;;(^.+?[^\/]+?\.app)\/Contents\/(Frameworks\/((\1|[^\/]+?) Helper)\.app\/Contents\/MacOS\/\3|MacOS\/Electron)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.++ re.begin-anchor (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "/"))) (re.++ (str.to.re ".") (re.++ (str.to.re "a") (re.++ (str.to.re "p") (str.to.re "p")))))))) (re.++ (str.to.re "/") (re.++ (str.to.re "C") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "F") (re.++ (str.to.re "r") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (re.++ (str.to.re "w") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "k") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 3) (re.++ ((_ re.capture 4) (re.union (_ re.reference 1) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "/"))))) (re.++ (str.to.re " ") (re.++ (str.to.re "H") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (str.to.re "r"))))))))) (re.++ (str.to.re ".") (re.++ (str.to.re "a") (re.++ (str.to.re "p") (re.++ (str.to.re "p") (re.++ (str.to.re "/") (re.++ (str.to.re "C") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ (str.to.re "M") (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re "O") (re.++ (str.to.re "S") (re.++ (str.to.re "/") (_ re.reference 3))))))))))))))))))))))))))))))))) (re.++ (str.to.re "M") (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re "O") (re.++ (str.to.re "S") (re.++ (str.to.re "/") (re.++ (str.to.re "E") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (str.to.re "n")))))))))))))))) re.all))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
