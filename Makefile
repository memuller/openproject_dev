PRJ_NAME:=openproject_dev
EXEC_OPENPROJECT:=docker exec -it ${PRJ_NAME}_openproject_1 
EXEC_POSTGRES:=docker exec -it -u postgres ${PRJ_NAME}_db_1 

.PHONY: all

run:
	docker-compose up ;
up:
	docker-compose up --detach;
down:
	docker-compose stop;

clean:
	docker-compose down --remove-orphans ;
	docker-compose rm ;

ssh:
	${EXEC_OPENPROJECT} bash ;

psql:
	${EXEC_POSTGRES} psql ;

db_dump:
	${EXEC_POSTGRES} sh -c "pg_dump --clean postgres > /tmp/dump.sql"
	docker cp ${PRJ_NAME}_db_1:/tmp/dump.sql ./initdb/dump.sql

db_load:
	docker cp ./initdb/dump.sql ${PRJ_NAME}_db_1:/tmp/dump.sql
	${EXEC_POSTGRES} sh -c "psql postgres < /tmp/dump.sql"