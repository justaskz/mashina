install:
	@ bash commands.sh install_dev

uninstall:
	@ bash commands.sh uninstall

build:
	@ docker-compose build

up:
	@ docker-compose up -d

down:
	@ docker-compose down

connect_mashina:
	@ docker-compose exec mashina bash
