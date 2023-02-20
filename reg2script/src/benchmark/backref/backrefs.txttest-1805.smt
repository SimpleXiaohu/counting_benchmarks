;;(['"]?)\(?(global|ref|names)?\u0012@([\w\.\-\/\\]+?)(\.css|\.less|\.scss|\.mx|\.style)(?:\[([\w-,]+)\]|:([\w\-]+))?\)?\1(;?)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 2) (re.union (re.union (re.++ (str.to.re "g") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "b") (re.++ (str.to.re "a") (str.to.re "l")))))) (re.++ (str.to.re "r") (re.++ (str.to.re "e") (str.to.re "f")))) (re.++ (str.to.re "n") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (str.to.re "s")))))))) (re.++ (str.to.re "\u{0012}") (re.++ (str.to.re "@") (re.++ ((_ re.capture 3) (re.+? (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re ".") (re.union (str.to.re "-") (re.union (str.to.re "/") (str.to.re "\\"))))))) (re.++ ((_ re.capture 4) (re.union (re.union (re.union (re.union (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s")))) (re.++ (str.to.re ".") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (str.to.re "s")))))) (re.++ (str.to.re ".") (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s")))))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (str.to.re "x")))) (re.++ (str.to.re ".") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (str.to.re "e")))))))) (re.++ (re.opt (re.union (re.++ (str.to.re "[") (re.++ ((_ re.capture 5) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re "-") (str.to.re ","))))) (str.to.re "]"))) (re.++ (str.to.re ":") ((_ re.capture 6) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (str.to.re "-"))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (_ re.reference 1) ((_ re.capture 7) (re.opt (str.to.re ";"))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
