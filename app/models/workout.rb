class Workout < ActiveRecord::Base
  has_many :programs
  has_many :clients, :through => :programs
  has_many :routines
  has_many :exercises, :through => :routines
end
