;;:([a-z\-]+)(\((\x1F+)(([^\x1F]+(\3\x1F+)?)*)(\3\)))?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (str.to.re "-")))) (re.opt ((_ re.capture 2) (re.++ (str.to.re "(") (re.++ ((_ re.capture 3) (re.+ (str.to.re "\u{1f}"))) (re.++ ((_ re.capture 4) (re.* ((_ re.capture 5) (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\u{1f}"))) (re.opt ((_ re.capture 6) (re.++ (_ re.reference 3) (re.+ (str.to.re "\u{1f}"))))))))) ((_ re.capture 7) (re.++ (_ re.reference 3) (str.to.re ")")))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
