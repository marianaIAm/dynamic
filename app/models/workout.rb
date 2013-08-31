class Workout < ActiveRecord::Base

  has_and_belongs_to_many :clients
  has_and_belongs_to_many :exercises
end
