class AddCertificationToTrainer < ActiveRecord::Migration
  def change
    add_column :trainers, :certification, :string
    add_column :trainers, :certification_expiration, :date
  end
end
