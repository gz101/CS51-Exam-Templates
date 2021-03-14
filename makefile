all: exam exam_tests

exam: exam.ml
	ocamlbuild -use-ocamlfind exam.byte

exam_tests: exam_tests.ml
	ocamlbuild -use-ocamlfind exam_tests.byte

tests: exam_tests
	./exam_tests.byte

clean:
	rm -rf _build *.byte