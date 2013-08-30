class Exercise < ActiveRecord::Base

   has_and_belongs_to_many :workouts, :join_table => "exercises_workouts"
end
