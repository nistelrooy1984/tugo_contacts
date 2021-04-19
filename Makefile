.DEFAULT_GOAL := usage

build:
	docker-compose build

db-create:
	export DB_PORT=$()
	docker-compose up -d
	docker-compose exec app bin/rails db:create

up:
	rm -rf tmp/pids/server.pid
	docker-compose up

up-bridge:
	if [ -z "$$(docker network ls -q -f name=tugo_bridge)"]; then docker network create tugo_bridge; fi
	rm -rf tmp/pids/server.pid
	docker-compose -f docker-compose-bridge.yaml up

down:
	docker-compose down

stop:
	docker-compose stop

bundle:
	docker-compose run --rm app bundle install

console:
	docker-compose run --rm app bundle exec rails console

rubocop-fix:
	docker-compose run --rm app bundle exec rubocop --auto-correct

rspec:
	docker-compose run --rm app bundle exec rspec ${OPTS} --profile -- ${TARGETS}

update-pb:
	docker-compose run --rm app sh scripts/proto_converter.sh ${SERVICE}

attach:
	docker container attach $(docker-compose ps -q | head -n 1)

usage:
	@echo usage: [build, db-create, up, up-bridge, down, stop, bundle, console, rubocop-fix, rspec, update-pb, attach]
