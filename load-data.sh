#!/bin/sh
docker-compose down
docker-compose up --build -d
sleep 3s
docker-compose exec web bash -c "rails db:drop && rails db:create && rails db:migrate"
docker-compose exec db bash -c "mysql -uroot -proot chat < /dumps/chat_system-09_11_2019.sql"
echo "searchkick:reindex ...."
sleep 2s
docker-compose exec web bash -c "rails searchkick:reindex CLASS=Message"
