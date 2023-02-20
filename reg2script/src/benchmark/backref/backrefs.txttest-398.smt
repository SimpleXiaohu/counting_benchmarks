;;(@\("([^"\r\n\/):]+)"(?:\/[nrts$uL]*)?\).*(?:\r?\n|\r))(?:.*(?:\r?\n|\r))*?[ \t]*\|?[ \t]*-?[ \t]*\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "@") (re.++ (str.to.re "(") (re.++ (str.to.re "\u{22}") (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "/")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ")")) (re.diff (re.range "\x01" "\xff") (str.to.re ":"))))))))) (re.++ (str.to.re "\u{22}") (re.++ (re.opt (re.++ (str.to.re "/") (re.* (re.union (str.to.re "n") (re.union (str.to.re "r") (re.union (str.to.re "t") (re.union (str.to.re "s") (re.union (str.to.re "$") (re.union (str.to.re "u") (str.to.re "L")))))))))) (re.++ (str.to.re ")") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}"))))))))))) (re.++ (re.*? (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")))) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) (re.++ (re.opt (str.to.re "|")) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) (re.++ (re.opt (str.to.re "-")) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) (_ re.reference 2)))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
