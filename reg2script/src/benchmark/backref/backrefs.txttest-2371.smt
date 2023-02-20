;;(['"])((?:\w+\:)?(?:\/\/[^\/'"]*)?\/?)([^'"]+?\.(?:js|css))\?\{stamp\}\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.++ (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (str.to.re ":"))) (re.++ (re.opt (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "/")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))))))) (re.opt (str.to.re "/"))))) (re.++ ((_ re.capture 3) (re.++ (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))) (re.++ (str.to.re ".") (re.union (re.++ (str.to.re "j") (str.to.re "s")) (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s"))))))) (re.++ (str.to.re "?") (re.++ (str.to.re "{") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "}") (_ re.reference 1)))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
