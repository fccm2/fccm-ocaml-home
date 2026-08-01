all: random.cmo
random.cmi: random.mli
	ocamlc -c $<
random.cmo: random.ml random.cmi
	ocamlc -c $<
clean:
	$(RM) *.cmi *.cmo
