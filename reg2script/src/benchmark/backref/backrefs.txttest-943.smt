;;\Wrequire\((['"]).+?\1\)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))))) (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "(") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (_ re.reference 1) (str.to.re ")"))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
