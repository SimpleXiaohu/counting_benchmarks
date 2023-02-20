;;(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)\9(\d)\9

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.range "0" "9")) (re.++ ((_ re.capture 2) (re.range "0" "9")) (re.++ ((_ re.capture 3) (re.range "0" "9")) (re.++ ((_ re.capture 4) (re.range "0" "9")) (re.++ ((_ re.capture 5) (re.range "0" "9")) (re.++ ((_ re.capture 6) (re.range "0" "9")) (re.++ ((_ re.capture 7) (re.range "0" "9")) (re.++ ((_ re.capture 8) (re.range "0" "9")) (re.++ (_ re.reference 9) (re.++ ((_ re.capture 9) (re.range "0" "9")) (_ re.reference 9))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
