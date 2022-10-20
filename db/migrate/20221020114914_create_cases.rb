class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.string :case_type
      t.string :title
      t.string :description
      t.string :location
      t.string :date
      t.string :image_url
      t.string :status

      t.timestamps
    end
  end
end
