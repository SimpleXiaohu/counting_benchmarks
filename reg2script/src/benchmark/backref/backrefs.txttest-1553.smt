;;^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re "/"))) (re.++ ((_ re.capture 3) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (_ re.reference 2) (re.++ ((_ re.capture 4) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re " ") (re.++ ((_ re.capture 5) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re ":") (re.++ ((_ re.capture 6) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re ":") ((_ re.capture 7) ((_ re.loop 1 2) (re.range "0" "9")))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
