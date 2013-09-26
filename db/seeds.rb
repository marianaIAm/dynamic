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
  Trainer.create(name_last: "Doggy", name_first: "Gabby", phone: "310-111-1111", account_id: accounts[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png", certification: "NASM Certified Personal Trainer", certification_expiration: Date.new(2014,12,19)),
  Trainer.create(name_last: "Doggy", name_first: "Bella", phone: "310-222-2222", account_id: accounts[1].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png", certification: "NASM Certified Personal Trainer", certification_expiration: Date.new(2014,12,19)),
  Trainer.create(name_last: "Doggy", name_first: "Lucy", phone: "310-333-3333", account_id: accounts[2].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png", certification: "NASM Certified Personal Trainer", certification_expiration: Date.new(2014,12,19)),
  Trainer.create(name_last: "Doggy", name_first: "Annie", phone: "310-444-4444", account_id: accounts[3].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png", certification: "NASM Certified Personal Trainer", certification_expiration: Date.new(2014,12,19))
]

Client.destroy_all
clients = [
  Client.create(name_last: "Firstanopolis", name_first: "Samantha", phone: "310-111-1111", account_id: accounts[4].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png"),
  Client.create(name_last: "Jones", name_first: "Jack", phone: "310-222-2222", account_id: accounts[5].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_male.png"),
  Client.create(name_last: "Smith", name_first: "Roberta", phone: "310-333-3333", account_id: accounts[6].id, trainer_id: trainers[1].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png"),
  Client.create(name_last: "James", name_first: "Edward", phone: "310-444-4444", account_id: accounts[7].id, trainer_id: trainers[1].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_male.png"),
  Client.create(name_last: "Firstanopolis", name_first: "Jasmine", phone: "310-111-1111", account_id: accounts[4].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png"),
  Client.create(name_last: "Jones", name_first: "Henry", phone: "310-222-2222", account_id: accounts[5].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_male.png"),
  Client.create(name_last: "Smith", name_first: "Maria", phone: "310-333-3333", account_id: accounts[6].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_female.png"),
  Client.create(name_last: "James", name_first: "Eric", phone: "310-444-4444", account_id: accounts[7].id, trainer_id: trainers[0].id, avatar: "https://s3.amazonaws.com/dynamic-build/avatar_male.png")

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
  Exercise.create(title: "Draw-In", description: "Draw-in with neutral spine", media: "https://s3.amazonaws.com/dynamic-build/floor_begin.png"),
  Exercise.create(title: "Floor Bridge", description: "Raise hips and hold", media: "https://s3.amazonaws.com/dynamic-build/floor_bridge_end.png"),
  Exercise.create(title: "Lunge", description: "Basic lunge", media: "https://s3.amazonaws.com/dynamic-build/lunge_end.png"),
  Exercise.create(title: "Plank", description: "Basic plank", media: "https://s3.amazonaws.com/dynamic-build/plank.png"),
  Exercise.create(title: "Straight-Arm Plank", description: "Straight-arm plank", media: "https://s3.amazonaws.com/dynamic-build/pushup_begin.png"),
  Exercise.create(title: "Push-Up", description: "Push-up with core", media: "https://s3.amazonaws.com/dynamic-build/pushup_end.png"),
  Exercise.create(title: "Side Lunge", description: "Side lunge", media: "https://s3.amazonaws.com/dynamic-build/side_lunge_end.png"),
  Exercise.create(title: "Single-Leg Balance", description: "Single-leg balance", media: "https://s3.amazonaws.com/dynamic-build/single_leg_begin.png"),
  Exercise.create(title: "Dynamic Warrior", description: "Dynamic warrior aka Single-leg reach", media: "https://s3.amazonaws.com/dynamic-build/single_leg_end.png"),
  Exercise.create(title: "Single-Leg Squat", description: "Single-leg squat", media: "https://s3.amazonaws.com/dynamic-build/single_leg_squat_end.png")
]

Routine.destroy_all
routines = [
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[0].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[1].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[2].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[4].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[5].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[6].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[7].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[8].id),
  Routine.create(workout_id: workouts[0].id, exercise_id: exercises[9].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[8].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[1].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[0].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[5].id),
  Routine.create(workout_id: workouts[1].id, exercise_id: exercises[6].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[0].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[2].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[5].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[6].id),
  Routine.create(workout_id: workouts[2].id, exercise_id: exercises[4].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[5].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[6].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[7].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[8].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[9].id),
  Routine.create(workout_id: workouts[3].id, exercise_id: exercises[3].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[5].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[6].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[7].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[8].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[9].id),
  Routine.create(workout_id: workouts[4].id, exercise_id: exercises[3].id)

]



