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


Workout.destroy_all
workouts = [
  Workout.create(title: "The Basics", description: "Quick sample workout", trainer_id: trainers[0].id),
  Workout.create(title: "More Basics", description: "Another quick sample workout", trainer_id: trainers[0].id),
  Workout.create(title: "A Third Basic", description: "The third sample workout", trainer_id: trainers[0].id),
  Workout.create(title: "Bell's Basics", description: "Bell's quick sample workout", trainer_id: trainers[1].id),
  Workout.create(title: "More Bell's Basics", description: "Bell's new quick sample workout", trainer_id: trainers[1].id)
]

Exercise.destroy_all
exercises = [
  Exercise.create(title: "Pushup Plank", description: "Basic pushup starting position", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Squat", description: "Basic squat", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Row", description: "Basic row", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Plank", description: "Basic plank", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Bridge", description: "Basic bridge", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg")
]

# Seed with client assigned each workout belonging to their trainer
# clients.each do |client|
#   workouts.each do |workout|
#     if client.trainer_id == workout.trainer_id
#       client.workouts << workout
#     end
#   end
# end

clients[0].workouts << workouts[0]
clients[1].workouts << workouts[1]
clients[2].workouts << workouts[2]
clients[3].workouts << workouts[3]

# Seed all workouts with all exercises
workouts.each do |workout|
  exercises.each do |exercise|
    workout.exercises << exercise
  end
end





