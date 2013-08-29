class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :account_id
      t.string :name_first
      t.string :name_last
      t.string :phone

      t.timestamps
    end
  end
end
