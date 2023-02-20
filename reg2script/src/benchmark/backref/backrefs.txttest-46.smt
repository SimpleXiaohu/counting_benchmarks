;;:((?:[\w\u00c0-\uFFFF-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.+ (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (re.range "\u{00c0}" "\u{ffff}") (str.to.re "-"))) (re.++ (str.to.re "\\") (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) (re.opt (re.++ (str.to.re "(") (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 3) (re.+ (re.union (re.++ (str.to.re "(") (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ")"))) (str.to.re ")"))) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "(")) (re.diff (re.range "\x01" "\xff") (str.to.re ")"))))))) (re.++ (_ re.reference 2) (str.to.re ")")))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
