class Article < ApplicationRecord
  mount_uploader :image, CoverUploader
  belongs_to :user
  belongs_to :category
  has_many :votes
  validates :title, presence: true, length: {minimum:5, maximum:80}
  validates :text, presence: true
  validates :image, presence: true

  scope :newest_first, -> { order(created_at: :desc) }
end
