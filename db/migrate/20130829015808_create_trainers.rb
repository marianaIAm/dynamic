class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :account_id
      t.string :name_first
      t.string :name_last
      t.string :phone

      t.timestamps
    end
  end
end
