compose:
	docker compose up -d

compose-build:
	docker compose build

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app