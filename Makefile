compose-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

prepare-env: 
	cp -n .env.example .env

compose-run:
	docker compose up

compose-production-build:
	docker compose -f docker-compose.yml build

compose-push:
	docker compose -f docker-compose.yml push app

docker-pull:
	 docker pull muto78/project1

ci:
	prepare-env compose-production-build compose-test
