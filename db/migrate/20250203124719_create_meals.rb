class CreateMeals < ActiveRecord::Migration[8.0]
  def change
    create_table :meals do |t|
      t.integer :day
      t.string :breakfast
      t.string :lunch
      t.string :dinner

      t.timestamps
    end
  end
end
