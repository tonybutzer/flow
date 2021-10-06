cat:
	cat Makefile


publish:
	git add .
	git commit -m "update flow oct-2021"
	git push


Image=tbutzer/flow

build:
	docker build -t ${Image} .


runold:
	docker run -e DISPLAY=${DISPLAY} -it -v `pwd`:/home ${Image} bash


run:
	cp /home/tony/.Xauthority .

	docker run  -it --network=host --env DISPLAY=${DISPLAY}  --privileged  \
 	--volume="${HOME}/.Xauthority:/root/.Xauthority:rw"  \
	-v /tmp/.X11-unix:/tmp/.X11-unix  ${Image} bash

