;;;\s*charset\s*=\s*(['"]|)\s*([\w\-]+)\s*\1(?:\s|;|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.*? re.allchar) (str.to.re ";")) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re "t") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "=") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (str.to.re ""))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (str.to.re "-")))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (_ re.reference 1) (re.union (re.union (re.union (re.++ (str.to.re " ") re.all) (re.union (re.++ (str.to.re "\u{0b}") re.all) (re.union (re.++ (str.to.re "\u{0a}") re.all) (re.union (re.++ (str.to.re "\u{0d}") re.all) (re.union (re.++ (str.to.re "\u{09}") re.all) (re.++ (str.to.re "\u{0c}") re.all)))))) (re.++ (str.to.re ";") re.all)) re.end-anchor))))))))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
