;;^<<-('?)([A-Z]\w*)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (str.to.re "<") (re.++ (str.to.re "<") (re.++ (str.to.re "-") (re.++ ((_ re.capture 1) (re.opt (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.++ (re.range "A" "Z") (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))))) (re.++ (_ re.reference 1) re.all)))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
