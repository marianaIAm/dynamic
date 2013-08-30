class Client < ActiveRecord::Base
  belongs_to :account
  belongs_to :trainer
  has_and_belongs_to_many :workouts, :join_table => "clients_workouts"
end
