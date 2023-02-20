;;^:((?:[-\w]|[^\x00-\xa0]|\\.)+)(?:\((["']?)([^()]*|.*)\2\))?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.+ (re.union (re.union (re.union (str.to.re "-") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (re.diff (re.range "\x01" "\xff") (re.range "\u{00}" "\u{a0}"))) (re.++ (str.to.re "\\") (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) (re.++ (re.opt (re.++ (str.to.re "(") (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ ((_ re.capture 3) (re.union (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "(")) (re.diff (re.range "\x01" "\xff") (str.to.re ")")))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ (_ re.reference 2) (str.to.re ")")))))) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
