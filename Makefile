PRJ_NAME:=openproject_dev
EXEC_OPENPROJECT:=docker exec -it ${PRJ_NAME}_openproject_1 
EXEC_POSTGRES:=docker exec -it -u postgres ${PRJ_NAME}_db_1 

OPENPROJECT_IMAGE:=openproject/community:7.4

.PHONY: all

run:
	docker-compose up ;
up:
	docker-compose up --detach;
down:
	docker-compose stop;

clean:
	docker-compose down --remove-orphans ;
	docker-compose rm -v ;

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

# Extracts code from vendored plugins and config folder
# for use as development reference
extract_code:
	# docker does not support copying from an image; only from a container.
	# could be done with OCI, but it's easier to spawn a temporary container 
	# and copy from it. the container is destroyed afterwards.
	docker create --name ${PRJ_NAME}_tmp ${OPENPROJECT_IMAGE}
	docker cp ${PRJ_NAME}_tmp:/usr/src/app/vendored-plugins ./
	docker cp ${PRJ_NAME}_tmp:/usr/src/app/config ./
	docker rm -v ${PRJ_NAME}_tmp