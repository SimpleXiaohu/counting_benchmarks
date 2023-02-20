;;(%.)|(\*{1,3})((?:%.|.)+?)\2|(`+)((?:%.|.)+?)\4|\[((?:%.|.)+?)\]\(([^\s\)]+)\)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union ((_ re.capture 1) (re.++ (str.to.re "%") (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 2) ((_ re.loop 1 3) (str.to.re "*"))) (re.++ ((_ re.capture 3) (re.+? (re.union (re.++ (str.to.re "%") (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (_ re.reference 2)))) (re.++ ((_ re.capture 4) (re.+ (str.to.re "`"))) (re.++ ((_ re.capture 5) (re.+? (re.union (re.++ (str.to.re "%") (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (_ re.reference 4)))) (re.++ (str.to.re "[") (re.++ ((_ re.capture 6) (re.+? (re.union (re.++ (str.to.re "%") (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ (str.to.re "]") (re.++ (str.to.re "(") (re.++ ((_ re.capture 7) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")) (re.diff (re.range "\x01" "\xff") (str.to.re ")")))))))))) (str.to.re ")"))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
