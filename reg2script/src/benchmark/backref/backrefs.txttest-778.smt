;;^(?:[-=][-=]?>|[-+*\/%<>&|^!?=]=|>>>=?|([-+:])\1|([&|<>])\2=?|\?\.|\.{2,3}|-\|)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.union (str.to.re "-") (str.to.re "=")) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "="))) (re.++ (str.to.re ">") re.all))) (re.++ (re.union (str.to.re "-") (re.union (str.to.re "+") (re.union (str.to.re "*") (re.union (str.to.re "/") (re.union (str.to.re "%") (re.union (str.to.re "<") (re.union (str.to.re ">") (re.union (str.to.re "&") (re.union (str.to.re "|") (re.union (str.to.re "^") (re.union (str.to.re "!") (re.union (str.to.re "?") (str.to.re "="))))))))))))) (re.++ (str.to.re "=") re.all))) (re.++ (str.to.re ">") (re.++ (str.to.re ">") (re.++ (str.to.re ">") (re.++ (re.opt (str.to.re "=")) re.all))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "-") (re.union (str.to.re "+") (str.to.re ":")))) (re.++ (_ re.reference 1) re.all))) (re.++ ((_ re.capture 2) (re.union (str.to.re "&") (re.union (str.to.re "|") (re.union (str.to.re "<") (str.to.re ">"))))) (re.++ (_ re.reference 2) (re.++ (re.opt (str.to.re "=")) re.all)))) (re.++ (str.to.re "?") (re.++ (str.to.re ".") re.all))) (re.++ ((_ re.loop 2 3) (str.to.re ".")) re.all)) (re.++ (str.to.re "-") (re.++ (str.to.re "|") re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
