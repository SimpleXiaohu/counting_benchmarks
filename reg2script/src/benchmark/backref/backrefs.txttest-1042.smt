;;[\342\200\230-\342\200\235]|[\342\206\220-\342\206\223]|[\342\226\240-\342\226\275]|[\342\227\206-\342\227\257]|\342\230\205|\342\230\206

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (_ re.reference 342) (re.union (_ re.reference 200) (re.union (_ re.reference 230) (re.union (str.to.re "-") (re.union (_ re.reference 342) (re.union (_ re.reference 200) (_ re.reference 235))))))) (re.union (_ re.reference 342) (re.union (_ re.reference 206) (re.union (_ re.reference 220) (re.union (str.to.re "-") (re.union (_ re.reference 342) (re.union (_ re.reference 206) (_ re.reference 223)))))))) (re.union (_ re.reference 342) (re.union (_ re.reference 226) (re.union (_ re.reference 240) (re.union (str.to.re "-") (re.union (_ re.reference 342) (re.union (_ re.reference 226) (_ re.reference 275)))))))) (re.union (_ re.reference 342) (re.union (_ re.reference 227) (re.union (_ re.reference 206) (re.union (str.to.re "-") (re.union (_ re.reference 342) (re.union (_ re.reference 227) (_ re.reference 257)))))))) (re.++ (_ re.reference 342) (re.++ (_ re.reference 230) (_ re.reference 205)))) (re.++ (_ re.reference 342) (re.++ (_ re.reference 230) (_ re.reference 206)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
