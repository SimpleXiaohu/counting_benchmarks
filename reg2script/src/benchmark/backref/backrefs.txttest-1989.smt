;;^(-----BEGIN (.*)-----\r?\n([\/+=a-zA-Z0-9\r\n]*)\r?\n-----END \2-----\r?\n)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "B") (re.++ (str.to.re "E") (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "N") (re.++ (str.to.re " ") (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ (str.to.re "\u{0a}") (re.++ ((_ re.capture 3) (re.* (re.union (str.to.re "/") (re.union (str.to.re "+") (re.union (str.to.re "=") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to.re "\u{0d}") (str.to.re "\u{0a}")))))))))) (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "E") (re.++ (str.to.re "N") (re.++ (str.to.re "D") (re.++ (str.to.re " ") (re.++ (_ re.reference 2) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")))))))))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
