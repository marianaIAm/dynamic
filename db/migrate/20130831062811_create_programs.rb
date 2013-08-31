class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :client_id, :null => false
      t.integer :workout_id, :null => false

      t.timestamps
    end
    add_index :programs, :client_id
    add_index :programs, :workout_id
  end
end
