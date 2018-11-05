class AddChoicesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :fashion_choice, foreign_key: true
    add_reference :users, :food_choice, foreign_key: true
  end
end
