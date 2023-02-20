;;([abc]+)\40([d-f]+)\12\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.+ (re.union (str.to.re "a") (re.union (str.to.re "b") (str.to.re "c"))))) (re.++ (_ re.reference 40) (re.++ ((_ re.capture 2) (re.+ (re.range "d" "f"))) (re.++ (_ re.reference 12) (_ re.reference 1))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
