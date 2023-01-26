compose:
	docker compose up -d

compose-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app