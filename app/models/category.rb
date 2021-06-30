class Category < ApplicationRecord
  has_many :articles, foreign_key: 'caregory_id'
  validates :name, presence: true, uniqueness: true
  validates :priority, presence: true, uniqueness: true
end
