class Category < ApplicationRecord
    belongs_to :user
    validates :category, length: { minimum: 1 }
end
