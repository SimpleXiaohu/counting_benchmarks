;;^\w+.*$(?:\n^([ \t]+).*$(?:\n^\1.*$)*)?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ re.end-anchor (re.++ (re.opt (re.++ (re.++ (str.to.re "\u{0a}") (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.+ (re.union (str.to.re " ") (str.to.re "\u{09}")))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) (re.++ re.end-anchor (re.* (re.++ (re.++ (str.to.re "\u{0a}") (re.++ re.begin-anchor (re.++ (_ re.reference 1) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) re.end-anchor))))) re.all)))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
