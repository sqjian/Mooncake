all: run

up:
	docker compose -f ./docker-compose.yml --progress plain up workspace --force-recreate --always-recreate-deps

down:
	docker compose -f ./docker-compose.yml --progress plain down --remove-orphans --volumes

build:
	docker compose -f ./docker-compose.yml --progress plain build workspace

run:
	docker compose -f docker-compose.yml --progress plain run -i --rm --build --no-deps --service-ports -u root --entrypoint 'bash -lc' workspace 'exec fish'

push:
	docker compose -f ./docker-compose.yml push