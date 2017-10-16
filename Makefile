IMAGE='jonathanporta/docker-fedora-node-build-image:latest'

build: build-docker

build-docker:
	docker build -t $(IMAGE) .

run: build
	docker run -it $(IMAGE) /bin/bash
