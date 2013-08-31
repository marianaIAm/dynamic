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

Program.destroy_all
programs = [
  Program.create(client_id: clients[0].id, workout_id: workouts[0].id),
  Program.create(client_id: clients[0].id, workout_id: workouts[1].id),
  Program.create(client_id: clients[0].id, workout_id: workouts[2].id),
  Program.create(client_id: clients[1].id, workout_id: workouts[0].id),
  Program.create(client_id: clients[1].id, workout_id: workouts[1].id),
  Program.create(client_id: clients[2].id, workout_id: workouts[3].id),
  Program.create(client_id: clients[2].id, workout_id: workouts[4].id),
  Program.create(client_id: clients[3].id, workout_id: workouts[3].id)
]

Exercise.destroy_all
exercises = [
  Exercise.create(title: "Pushup Plank", description: "Basic pushup starting position", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Squat", description: "Basic squat", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Row", description: "Basic row", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Plank", description: "Basic plank", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg"),
  Exercise.create(title: "Bridge", description: "Basic bridge", media: "https://s3.amazonaws.com/dynamic-build/pushup.jpg")
]

Routine.destroy_all
routines = [
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[0].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[1].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[2].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[4].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[0].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[4].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[1].id)
]



