class FoodChoice < ApplicationRecord
    # has_many means whatever model we pass as a symbol (in this case, ":users") will have a foreign key pointing to this model.
    has_many :users
end
