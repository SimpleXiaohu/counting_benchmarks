;;(["'`]?)(?:[A-Za-z]:)?((?:\\\\?|\/)?[\w\d.-]+(?:(?:\\\\?|\/)[\w\d.-]+)+(?:(?:\\\\?|\/)[\w\d.-]*)?)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "\u{22}") (re.union (str.to.re "\u{27}") (str.to.re "`"))))) (re.++ (re.opt (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re ":"))) (re.++ ((_ re.capture 2) (re.++ (re.opt (re.union (re.++ (str.to.re "\\") (re.opt (str.to.re "\\"))) (str.to.re "/"))) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (re.range "0" "9") (re.union (str.to.re ".") (str.to.re "-"))))) (re.++ (re.+ (re.++ (re.union (re.++ (str.to.re "\\") (re.opt (str.to.re "\\"))) (str.to.re "/")) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (re.range "0" "9") (re.union (str.to.re ".") (str.to.re "-"))))))) (re.opt (re.++ (re.union (re.++ (str.to.re "\\") (re.opt (str.to.re "\\"))) (str.to.re "/")) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (re.range "0" "9") (re.union (str.to.re ".") (str.to.re "-"))))))))))) (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
