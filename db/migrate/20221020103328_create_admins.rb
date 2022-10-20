class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.integer :id
      t.string :username
      t.string :password
      t.integer :user_id
      t.integer :cased_id

      t.timestamps
    end
  end
end
