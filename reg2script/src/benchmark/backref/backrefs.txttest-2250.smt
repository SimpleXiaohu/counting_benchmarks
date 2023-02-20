;;('|"|'''|""")die\1@de\s+rdfs:label

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.union (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")) (re.++ (str.to.re "\u{27}") (re.++ (str.to.re "\u{27}") (str.to.re "\u{27}")))) (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "\u{22}") (str.to.re "\u{22}"))))) (re.++ (str.to.re "d") (re.++ (str.to.re "i") (re.++ (str.to.re "e") (re.++ (_ re.reference 1) (re.++ (str.to.re "@") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "r") (re.++ (str.to.re "d") (re.++ (str.to.re "f") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "e") (str.to.re "l"))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
