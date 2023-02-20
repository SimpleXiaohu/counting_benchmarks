;;^([ \t]*(?:export|import) ?(?:(?:\* (?:as [^ ,]+)?)|.*)?,? ?(?:[^ ,]+ ?,?)(?:\{(?:[^ ,]+ ?,?)*\})? ?from )(['"])([^ ,]+)(\2;.*)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\u{09}"))) (re.++ (re.union (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (str.to.re "t")))))) (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (str.to.re "t"))))))) (re.++ (re.opt (str.to.re " ")) (re.opt (re.union (re.++ (str.to.re "*") (re.++ (str.to.re " ") (re.opt (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re " ") (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.diff (re.range "\x01" "\xff") (str.to.re ",")))))))))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))) (re.++ (re.opt (str.to.re ",")) (re.++ (re.opt (str.to.re " ")) (re.++ (re.++ (re.++ (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.diff (re.range "\x01" "\xff") (str.to.re ",")))) (re.opt (str.to.re " "))) (re.opt (str.to.re ","))) (re.++ (re.opt (re.++ (str.to.re "{") (re.++ (re.* (re.++ (re.++ (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.diff (re.range "\x01" "\xff") (str.to.re ",")))) (re.opt (str.to.re " "))) (re.opt (str.to.re ",")))) (str.to.re "}")))) (re.++ (re.opt (str.to.re " ")) (re.++ (str.to.re "f") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 3) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.diff (re.range "\x01" "\xff") (str.to.re ","))))) ((_ re.capture 4) (re.++ (_ re.reference 2) (re.++ (str.to.re ";") (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
