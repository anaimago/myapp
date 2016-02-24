class CreateUserTelephones < ActiveRecord::Migration
  def change
    create_table :user_telephones do |t|
      t.string :phone_number
      t.string :state
      t.integer :user_id
      t.string :phone_type
      t.string :phone_device
      t.integer :phone_number_short

      t.timestamps null: false
    end
  end
end
