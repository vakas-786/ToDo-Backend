require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :tasks 
    has_many :categories

    def self.giveCategory(user)
        category_array = []

        category_array.push(Category.create(name: 'All', user_id: user.id))
        category_array.push(Category.create(name: 'Code', user_id: user.id))
        category_array.push(Category.create(name: 'Food', user_id: user.id))
        category_array.push(Category.create(name: 'Money', user_id: user.id))
        category_array.push(Category.create(name: 'Misc', user_id: user.id))

        user.categories = category_array
    end 
end
