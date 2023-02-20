;;^-----BEGIN ((?:.* KEY)|CERTIFICATE)-----\n\r?([0-9A-z\n\r\+\/\=]+)\n\r?-----END \1-----$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "B") (re.++ (str.to.re "E") (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "N") (re.++ (str.to.re " ") (re.++ ((_ re.capture 1) (re.union (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re " ") (re.++ (str.to.re "K") (re.++ (str.to.re "E") (str.to.re "Y"))))) (re.++ (str.to.re "C") (re.++ (str.to.re "E") (re.++ (str.to.re "R") (re.++ (str.to.re "T") (re.++ (str.to.re "I") (re.++ (str.to.re "F") (re.++ (str.to.re "I") (re.++ (str.to.re "C") (re.++ (str.to.re "A") (re.++ (str.to.re "T") (str.to.re "E"))))))))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "\u{0a}") (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "0" "9") (re.union (re.range "A" "z") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "+") (re.union (str.to.re "/") (str.to.re "="))))))))) (re.++ (str.to.re "\u{0a}") (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "E") (re.++ (str.to.re "N") (re.++ (str.to.re "D") (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (str.to.re "-")))))))))))))))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
