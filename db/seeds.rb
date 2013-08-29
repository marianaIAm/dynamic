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
    email: "b@d.com",
    password: "bbbbbbbb"
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
  }
])

Trainer.destroy_all
trainers = [
  Trainer.create(name_last: "Dog", name_first: "B", phone: "310-111-1111", account_id: accounts[0].id),
  Trainer.create(name_last: "Doggy", name_first: "Bella", phone: "310-222-2222", account_id: accounts[1].id),
  Trainer.create(name_last: "Doggy", name_first: "Lucy", phone: "310-333-3333", account_id: accounts[2].id),
  Trainer.create(name_last: "Doggy", name_first: "Annie", phone: "310-444-4444", account_id: accounts[3].id)
]