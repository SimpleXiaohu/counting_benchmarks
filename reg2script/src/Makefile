
reg2smt: regast.ml  main.ml regexlex.mll regex.mly 
	ocamlc -c regast.ml
	ocamllex regexlex.mll
	ocamlyacc -v regex.mly
	ocamlc -c regex.mli
	ocamlc -c regex.ml
	ocamlc -c regexlex.ml
	ocamlc -c main.ml
	ocamlc -o reg2smt str.cma regast.cmo regexlex.cmo regex.cmo  main.cmo 


clean:
	rm -f *~ *.cmi *.cmo *.mli reg2smt
