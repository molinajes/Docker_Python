.PHONY: build

build:
	docker build -t commoncode/docker-example .

run:
	docker run --rm -it -p 5000:5000 commoncode/docker-example