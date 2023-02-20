;;^(?:(?:(?:\+|00)33[ ]?(?:\(0\)[ ]?)?)|0){1}[1-9]{1}([ .-]?)(?:\d{2}\1?){3}\d{2}$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 1) (re.union (re.++ (re.union (str.to.re "+") (re.++ (str.to.re "0") (str.to.re "0"))) (re.++ (str.to.re "3") (re.++ (str.to.re "3") (re.++ (re.opt (str.to.re " ")) (re.opt (re.++ (str.to.re "(") (re.++ (str.to.re "0") (re.++ (str.to.re ")") (re.opt (str.to.re " ")))))))))) (str.to.re "0"))) (re.++ ((_ re.loop 0 1) (re.range "1" "9")) (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re " ") (re.union (str.to.re ".") (str.to.re "-"))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (_ re.reference 1)))) ((_ re.loop 0 2) (re.range "0" "9"))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
