class CreateFashionChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :fashion_choices do |t|
      t.string :name

      t.timestamps
    end
    add_index :fashion_choices, :name, unique: true
  end
end
