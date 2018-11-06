class User < ApplicationRecord
    # Put validations at the top of a file.
    # When using the "save/create/update" methods, these validations are done before the data hits the actual db.
    # Be careful when using presence, because "false" also validates as nil, so that you can't save your data if the value is false.
    validates :name, :fashion_choice, :food_choice, presence: true
    validates :name, length: { minimum: 2, maximum: 8}, uniqueness: true

    # belongs_to means the foreign key (fashion_choice_id) is a field in this table.
    # Here, each user belongs to a fashion_choice.
    belongs_to :fashion_choice
    belongs_to :food_choice


    # Callback. Other options available such as before_validation.
    # before_save :check_fashion_choice

    # "throw :abort" means to cancel the transaction.
    # "self" = object that we are dealing with.
    # private 
    # def check_fashion_choice
    #     throw :abort unless ['Halloween', 'Holiday', 'Casual'].include?(self.fashion_choice)
    # end
end
