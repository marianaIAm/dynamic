class CreateJoinTableClientWorkout < ActiveRecord::Migration
  def change
    create_join_table :clients, :workouts do |t|
      # t.index [:client_id, :workout_id]
      # t.index [:workout_id, :client_id]
    end
  end
end
