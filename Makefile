setup:
	npm install

test:
	npm test

dev:
	npm start

docker-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-run:
	docker-compose up

docker-build-prod:
	docker-compose -f docker-compose.yml build app

docker-push:
	docker-compose -f docker-compose.yml push app

docker-pull:
	 docker pull muto78/project1

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
