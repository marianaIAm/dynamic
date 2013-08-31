class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.integer :exercise_id, :null => false
      t.integer :workout_id, :null => false

      t.timestamps
    end
    add_index :routines, :exercise_id
    add_index :routines, :workout_id
  end
end
