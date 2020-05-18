down:
	docker-compose down

up: down
	docker-compose up -d --build
	docker-compose logs -f

logs:
	docker-compose logs -f

dataset:
	docker-compose run erddap bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose"