build:
	docker buildx bake

push:
	@echo ${DOCKER_HUB_TOKEN} | docker login -u duodecanol --password-stdin
	docker tag duodecanol/worker-comfyui:latest-base duodecanol/worker-comfyui:v0.4.78-base
	docker push duodecanol/worker-comfyui:v0.4.78-base
	docker push duodecanol/worker-comfyui:latest-base

PHONY: build push