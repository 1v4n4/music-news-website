class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 20 }
  has_many :articles, foreign_key: 'author_id', class_name: 'Article'
  has_many :votes
end
