class User < ApplicationRecord
    # Put validations at the top of a file.
    # When using the "update" method, these validations are done before the data hits the actual db.
    validates :name, :fashion_choice, presence: true
    validates :name, length: { minimum: 2, maximum: 8}, uniqueness: true

    # Callback. Other options available such as before_validation.
    before_save :check_fashion_choice

    # "throw :abort" means to cancel the transaction.
    # "self" = object that we are dealing with.
    private 
    def check_fashion_choice
        throw :abort unless ['Halloween', 'Holiday', 'Casual'].include?(self.fashion_choice)
    end
end
