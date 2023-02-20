;;^\$\d+|(`?)[_A-Za-z][_A-Za-z$0-9]*\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.++ re.begin-anchor (re.++ (str.to.re "$") (re.++ (re.+ (re.range "0" "9")) re.all))) (re.++ ((_ re.capture 1) (re.++ (re.*? re.allchar) (re.opt (str.to.re "`")))) (re.++ (re.union (str.to.re "_") (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.* (re.union (str.to.re "_") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (str.to.re "$") (re.range "0" "9")))))) (re.++ (_ re.reference 1) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
