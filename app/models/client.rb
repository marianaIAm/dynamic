class Client < ActiveRecord::Base
  belongs_to :account
  belongs_to :trainer
end
