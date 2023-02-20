;;([:=,\[]\s*)(["']?)(\#[0-9A-Fa-f]+)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (re.union (str.to.re ":") (re.union (str.to.re "=") (re.union (str.to.re ",") (str.to.re "[")))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ ((_ re.capture 3) (re.++ (str.to.re "#") (re.+ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))))) (_ re.reference 2)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)