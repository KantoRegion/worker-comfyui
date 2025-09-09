build:
	docker buildx bake

push:
	@echo ${DOCKER_HUB_TOKEN} | docker login -u duodecanol --password-stdin
	docker push duodecanol/worker-comfyui:latest-base

PHONY: build push