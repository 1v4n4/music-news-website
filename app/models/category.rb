class Category < ApplicationRecord
    has_many :articles, foreign_key: 'caregory_id'
end
