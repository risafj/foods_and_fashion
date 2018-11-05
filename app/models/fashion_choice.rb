class FashionChoice < ApplicationRecord
    # has_many is necessary for doing something like this:
    # FashionChoice.last.users
    has_many :users
end
