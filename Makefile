IMAGE = "artfrela/wrk2:alpine3.19"

# h - help
h help:
	@echo "h help 		- this help"
	@echo "docker 		- run docker image build"
	@echo "dockerpush 	- run docker image build and push to registry"
	@echo "example 	- run wrk example using image"
.PHONY: h



# docker build
docker:
	docker build -t $(IMAGE) .
.PHONY: docker

# docker build
dockerpush: docker
	docker push $(IMAGE)
.PHONY: dockerpush

example:
	docker run --rm $(IMAGE) -t1 -L -c5 -R10 -d15s https://ya.ru
.PHONY: example
