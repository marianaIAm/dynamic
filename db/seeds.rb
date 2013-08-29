# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Account.destroy_all
accounts = Account.create([
  {
    email: "gabby@doggy.com",
    password: "gabbydoggy"
  },
  {
    email: "bella@doggy.com",
    password: "belladoggy"
  },
  {
    email: "lucy@doggy.com",
    password: "lucydoggy"
  },
  {
    email: "annie@doggy.com",
    password: "anniedoggy"
  },
  {
    email: "client1@test.com",
    password: "clientone"
  },
  {
    email: "client2@test.com",
    password: "clienttwo"
  },
  {
    email: "client3@test.com",
    password: "clientthree"
  },
  {
    email: "client4@test.com",
    password: "clientfour"
  }
])

Trainer.destroy_all
trainers = [
  Trainer.create(name_last: "Doggy", name_first: "Gabby", phone: "310-111-1111", account_id: accounts[0].id),
  Trainer.create(name_last: "Doggy", name_first: "Bella", phone: "310-222-2222", account_id: accounts[1].id),
  Trainer.create(name_last: "Doggy", name_first: "Lucy", phone: "310-333-3333", account_id: accounts[2].id),
  Trainer.create(name_last: "Doggy", name_first: "Annie", phone: "310-444-4444", account_id: accounts[3].id)
]

Client.destroy_all
clients = [
  Client.create(name_last: "Lasty", name_first: "Firsty", phone: "310-111-1111", account_id: accounts[4].id, trainer_id: trainers[0].id),
  Client.create(name_last: "Smith", name_first: "Mary", phone: "310-222-2222", account_id: accounts[5].id, trainer_id: trainers[0].id),
  Client.create(name_last: "Smith", name_first: "Bob", phone: "310-333-3333", account_id: accounts[6].id, trainer_id: trainers[1].id),
  Client.create(name_last: "James", name_first: "Taylor", phone: "310-444-4444", account_id: accounts[7].id, trainer_id: trainers[1].id)
]