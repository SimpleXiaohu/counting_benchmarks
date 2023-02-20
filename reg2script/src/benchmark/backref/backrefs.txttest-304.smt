;;^(true|false|null|[\d\.]+)|(\w+|\$(view|data|ctx|(\w+)))([\w\.]*)|((['"])(?:\\\1|.)*\7)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "u") (str.to.re "e")))) (re.++ (str.to.re "f") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "s") (str.to.re "e")))))) (re.++ (str.to.re "n") (re.++ (str.to.re "u") (re.++ (str.to.re "l") (str.to.re "l"))))) (re.+ (re.union (re.range "0" "9") (str.to.re "."))))) re.all)) (re.++ ((_ re.capture 2) (re.union (re.++ (re.*? re.allchar) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (re.++ (re.*? re.allchar) (str.to.re "$")) ((_ re.capture 3) (re.union (re.union (re.union (re.++ (str.to.re "v") (re.++ (str.to.re "i") (re.++ (str.to.re "e") (str.to.re "w")))) (re.++ (str.to.re "d") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (str.to.re "a"))))) (re.++ (str.to.re "c") (re.++ (str.to.re "t") (str.to.re "x")))) ((_ re.capture 4) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))))))))) (re.++ ((_ re.capture 5) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (str.to.re ".")))) re.all))) (re.++ ((_ re.capture 6) (re.++ ((_ re.capture 7) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{27}")) (re.++ (re.*? re.allchar) (str.to.re "\u{22}")))) (re.++ (re.* (re.union (re.++ (str.to.re "\\") (_ re.reference 1)) (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 7)))) re.end-anchor))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
