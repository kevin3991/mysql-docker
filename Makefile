db-build:
	docker build -t local-mysql .
db-run:
	docker run -d -p 3306:3306 --name mysql local-mysql
