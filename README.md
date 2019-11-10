# Postman Requests
    - https://documenter.getpostman.com/view/8801159/SW18waqH?version=latest

## Main
    - git clone https://github.com/MuhammadOrabi/ruby-elasticsearch-go ruby-elasticsearch-go
    - cd ruby-elasticsearch-go
    - git submodule update --init
    - docker-compose up --build -d

## Load data  

`For testing elasticsearch, I prepaired a sql dumb with 50000 record and also there is a seeder that do the same but it takes almost 10 minutes.`

### SQL Dumb
    - ./load-data.sh

### Seeder
    - docker-compose exec web bash -c "rails db:setup"
