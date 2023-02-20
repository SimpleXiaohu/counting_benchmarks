;;^(?:\/\*+[\w|\W]*?\*\/|\/\/.*?[\n\r\u2028\u2029]|\s)*(["'])use strict\1;?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* (re.union (re.union (re.++ (str.to.re "/") (re.++ (re.+ (str.to.re "*")) (re.++ (re.*? (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re "|") (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))))) (re.++ (str.to.re "*") (str.to.re "/"))))) (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{2028}") (str.to.re "\u{2029}")))))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re " ") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (_ re.reference 1) (re.opt (str.to.re ";")))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
