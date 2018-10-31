class CreateFoodChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :food_choices do |t|
      t.string :name

      t.timestamps
    end
    add_index :food_choices, :name, unique: true
  end
end
