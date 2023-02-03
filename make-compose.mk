compose:
	docker compose up -d

compose-build:
	docker compose build

ci: copy_env
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

copy_env:
	cp -n .env.example .env || true