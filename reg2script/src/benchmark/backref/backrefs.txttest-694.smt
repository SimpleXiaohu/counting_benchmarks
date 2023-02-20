;;\s*-----BEGIN ([A-Z0-9- ]+)-----\r?\n?([\x21-\x7e\s]+?(?:\r?\n\r?\n))?([:A-Za-z0-9+\/=\s]+?)-----END \1-----

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "B") (re.++ (str.to.re "E") (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "N") (re.++ (str.to.re " ") (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to.re "-") (str.to.re " ")))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ (re.opt (str.to.re "\u{0a}")) (re.++ (re.opt ((_ re.capture 2) (re.++ (re.+? (re.union (re.range "\u{21}" "\u{7e}") (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ (re.opt (str.to.re "\u{0d}")) (re.++ (str.to.re "\u{0a}") (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}"))))))) (re.++ ((_ re.capture 3) (re.+? (re.union (str.to.re ":") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to.re "+") (re.union (str.to.re "/") (re.union (str.to.re "=") (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "E") (re.++ (str.to.re "N") (re.++ (str.to.re "D") (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (str.to.re "-"))))))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
