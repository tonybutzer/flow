cat:
	cat Makefile


publish:
	git add .
	git commit -m "update flow oct-2021"
	git push


Image=tbutzer/flow

build:
	docker build -t ${Image} .


run:
	docker run -it -v `pwd`:/home ${Image} bash
