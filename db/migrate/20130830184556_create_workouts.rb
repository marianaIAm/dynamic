class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.integer :trainer_id

      t.timestamps
    end
  end
end
