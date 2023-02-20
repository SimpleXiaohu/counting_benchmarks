;;^(([_$\w][_$\w\d]*)|(\[((\d+)|'([^']+)'|"([^"]+)")\]))(\.\2|\3)*$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (str.to.re "_") (re.union (str.to.re "$") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.* (re.union (str.to.re "_") (re.union (str.to.re "$") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.range "0" "9"))))))) ((_ re.capture 3) (re.++ (str.to.re "[") (re.++ ((_ re.capture 4) (re.union (re.union ((_ re.capture 5) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\u{27}") (re.++ ((_ re.capture 6) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")))) (str.to.re "\u{27}")))) (re.++ (str.to.re "\u{22}") (re.++ ((_ re.capture 7) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))) (str.to.re "\u{22}"))))) (str.to.re "]")))))) (re.* ((_ re.capture 8) (re.union (re.++ (str.to.re ".") (_ re.reference 2)) (_ re.reference 3)))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
