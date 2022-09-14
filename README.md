# README

APIonRails6 by Alexandre Rousseau


* Ruby version
  - 2.7.0

* Rails version
  - 6.1.6

* Initialize
  - bundle install
  - rake db:migrate

* Populate database(with Faker Gem)
  - rake db:seed

* Test
  - rake test

* Api (generate token)
  - with the server up
  - curl -X POST --data "user[email]=ed.auer@ratke.name" --data "user[password]=locadex1234" http://localhost:3000/api/v1/tokens
  - the email is one generated on my database thanks to Faker Gem.

* Api (request)
  - with the server up
  - curl --header "Authorization=ey..." http://localhost:3000/api/v1/products


