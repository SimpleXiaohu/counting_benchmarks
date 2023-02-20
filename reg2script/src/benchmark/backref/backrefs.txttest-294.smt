;;(q(?:q?))([^A-Za-z0-9 \t])(.*\2)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "q") (re.opt (str.to.re "q")))) (re.++ ((_ re.capture 2) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}"))))))) ((_ re.capture 3) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (_ re.reference 2))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
