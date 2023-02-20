;;string_format:("|\'?)[\w \.]*%[\d\.]*[bcdeufgox][\w \.]*\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "g") (re.++ (str.to.re "_") (re.++ (str.to.re "f") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (re.opt (str.to.re "\u{27}")))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re " ") (str.to.re ".")))) (re.++ (str.to.re "%") (re.++ (re.* (re.union (re.range "0" "9") (str.to.re "."))) (re.++ (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (str.to.re "d") (re.union (str.to.re "e") (re.union (str.to.re "u") (re.union (str.to.re "f") (re.union (str.to.re "g") (re.union (str.to.re "o") (str.to.re "x"))))))))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re " ") (str.to.re ".")))) (_ re.reference 1))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
