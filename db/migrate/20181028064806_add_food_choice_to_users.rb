class AddFoodChoiceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :food_choice, :string
  end
end
