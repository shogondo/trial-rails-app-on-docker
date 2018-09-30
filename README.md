# README

## Setup

```:shell
echo UID=`id -u` > .env
echo GID=`id -g` >> .env
echo MYSQL_PASSWORD=xxxx >> .env
docker-compose run --rm railsapp bundle install --path vendor/bundle
docker-compose run --rm railsapp bundle exec rails db:create
docker-compose run --rm railsapp bundle exec rails db:migrate
docker-compose up -d
```

## Access

```:shell
curl http://localhost:3000/samples
curl -X POST -H 'Content-Type: application/json' -d '{ "title": "Hello World" }' http://localhost:3000/samples
curl http://localhost:3000/samples/1
curl -X DELETE http://localhost:3000/samples/1
```
