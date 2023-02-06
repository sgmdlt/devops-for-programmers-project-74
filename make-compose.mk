compose:
	docker compose up -d

compose-build:
	docker compose build

compose-ci-build:
	docker build -f Dockerfile.production -t sgmdlt/devops-project-1-app .
	docker compose -f docker-compose.yml build

compose-ci: compose-ci-build copy_env
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

copy_env:
	cp -n .env.example .env