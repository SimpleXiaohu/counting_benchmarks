;;\&\&(e\d+)\.nodeType===1(\)\{\s*if\(\1\.nodeName=)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "&") (re.++ (str.to.re "&") (re.++ ((_ re.capture 1) (re.++ (str.to.re "e") (re.+ (re.range "0" "9")))) (re.++ (str.to.re ".") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (str.to.re "T") (re.++ (str.to.re "y") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (re.++ (str.to.re "=") (re.++ (str.to.re "=") (re.++ (str.to.re "=") (re.++ (str.to.re "1") ((_ re.capture 2) (re.++ (str.to.re ")") (re.++ (str.to.re "{") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "i") (re.++ (str.to.re "f") (re.++ (str.to.re "(") (re.++ (_ re.reference 1) (re.++ (str.to.re ".") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (str.to.re "N") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (str.to.re "=")))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
