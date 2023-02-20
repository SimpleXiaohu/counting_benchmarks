;;^(["'])([$_a-zA-Z][$_a-zA-Z0-9]*)\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.++ (re.union (str.to.re "$") (re.union (str.to.re "_") (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (str.to.re "$") (re.union (str.to.re "_") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))) (_ re.reference 1)))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
