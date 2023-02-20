;;android.+(\w+)\s+build\/hm\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "a") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "i") (re.++ (str.to.re "d") (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "b") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "l") (re.++ (str.to.re "d") (re.++ (str.to.re "/") (re.++ (str.to.re "h") (re.++ (str.to.re "m") (_ re.reference 1))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
