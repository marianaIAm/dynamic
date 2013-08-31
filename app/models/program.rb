class Program < ActiveRecord::Base
  belongs_to :client
  belongs_to :workout
end
