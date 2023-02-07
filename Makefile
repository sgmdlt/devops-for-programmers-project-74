compose: copy-env
	docker compose up -d

compose-build:
	docker compose build

compose-ci-build:
	docker build -f Dockerfile.production -t sgmdlt/devops-project-1-app .
	docker compose -f docker-compose.yml build

compose-ci: compose-ci-build
	docker compose -f docker-compose.yml up --abort-on-container-exit

copy-env:
	cp -n .env.example .env
