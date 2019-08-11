RUN ?= loop
make: header go c luajit lua rust python2 python3 bash

header:
	@echo "Lang\t\tElapsed Time\tSum\t\tVersion"
bash:
	@$(shell which bash) ${RUN}.sh || exit 0
c:
	@$(shell which gcc) ${RUN}.c && ./a.out; rm a.out || exit 0
go:
	@$(shell which go) run ${RUN}.go || exit 0
lua:
	@$(shell which lua) ${RUN}.lua || exit 0
luajit:
	@$(shell which luajit) ${RUN}.luajit || exit 0
python2:
	@$(shell which python2) ${RUN}.py || exit 0
python3:
	@$(shell which python3) ${RUN}.py3 || exit 0
rust:
	@$(shell which rustc) ${RUN}.rs && ./${RUN}; rm ${RUN} || exit 0
