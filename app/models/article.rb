class Article < ApplicationRecord
  mount_uploader :image, CoverUploader
  belongs_to :author, class_name: "User", foreign_key: :author_id
  belongs_to :category
  has_many :votes
  validates :title, presence: true, length: { minimum: 5, maximum: 80, message: "Title must be between 5 and 80 characters" }
  validates :text, presence: true
  validates :image, presence: true

  scope :newest_first, -> { order(created_at: :desc) }
end
