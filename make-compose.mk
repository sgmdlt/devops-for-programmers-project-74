compose: copy-env
	docker compose up -d

compose-build:
	docker compose build

compose-ci-build:
	docker build -f Dockerfile.production -t sgmdlt/devops-project-1-app .
	docker compose -f docker-compose.yml build

compose-ci: copy-env compose-ci-build
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

copy-env:
	cp -n .env.example app/.env || true
