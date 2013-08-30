class Workout < ActiveRecord::Base

  has_and_belongs_to_many :clients, :join_table => "clients_workouts"
  has_and_belongs_to_many :exercises, :join_table => "exercises_workouts"
end
