class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.string :media

      t.timestamps
    end
  end
end
