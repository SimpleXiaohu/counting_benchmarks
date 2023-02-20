;;#([0-9a-f])\1([0-9a-f])\2([0-9a-f])\3

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "#") (re.++ ((_ re.capture 1) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (_ re.reference 1) (re.++ ((_ re.capture 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (_ re.reference 2) (re.++ ((_ re.capture 3) (re.union (re.range "0" "9") (re.range "a" "f"))) (_ re.reference 3))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
