RUN ?= loop
make: go c lua rust python bash

deps:
	@for lang in go gcc lua5.3 rustc python3 bash; do\
	  which $${lang} >/dev/null || echo "Missing $${lang}";\
	done

bash:
	@bash ${RUN}.sh
c:
	@gcc ${RUN}.c && ./a.out; rm a.out
go:
	@go run ${RUN}.go
lua:
	@lua5.3 ${RUN}.lua
python:
	@python3 ${RUN}.py
rust:
	@rustc ${RUN}.rs && ./${RUN}; rm ${RUN}
