;;(([wm])\2*)([^a-zA-Z]*)([o0]+)(\3)(\1)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (str.to.re "w") (str.to.re "m"))) (re.* (_ re.reference 2)))) (re.++ ((_ re.capture 3) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.diff (re.range "\x01" "\xff") (re.range "A" "Z"))))) (re.++ ((_ re.capture 4) (re.+ (re.union (str.to.re "o") (str.to.re "0")))) (re.++ ((_ re.capture 5) (_ re.reference 3)) ((_ re.capture 6) (_ re.reference 1)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
