class Client < ActiveRecord::Base
  belongs_to :account
  belongs_to :trainer
  has_many :programs
  has_many :workouts, :through => :programs
end
