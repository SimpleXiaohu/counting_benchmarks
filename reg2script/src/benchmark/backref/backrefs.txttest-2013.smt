;;([a-z0-9_\$]+) *= *require *\( *('|")([^\'"]+)(\2 *\))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to.re "_") (str.to.re "$")))))) (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "=") (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "(") (re.++ (re.* (str.to.re " ")) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 3) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}"))))) ((_ re.capture 4) (re.++ (_ re.reference 2) (re.++ (re.* (str.to.re " ")) (str.to.re ")")))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
