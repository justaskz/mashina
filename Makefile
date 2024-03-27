install:
	@ bash commands.sh install

uninstall:
	@ bash commands.sh uninstall

build: down
	@ docker-compose build

up:
	@ docker-compose up -d

down:
	@ docker-compose down

connect:
	@ docker-compose exec mashina bash
