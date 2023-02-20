;;(-?)(['"])?(\w+)\2?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.opt (str.to.re "-"))) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 3) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.opt (_ re.reference 2))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
