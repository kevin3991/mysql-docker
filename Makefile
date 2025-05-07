build:
	docker-compose build

run:
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down -v

logs:
	docker-compose logs -f mysql

restart:
	docker-compose restart mysql
