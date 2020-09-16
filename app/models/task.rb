class Task < ApplicationRecord
    validates :category, length: { minimum: 1 }
    validates :text, length: { minimum: 1 }
end
