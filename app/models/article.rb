class Article < ApplicationRecord
    mount_uploader :image, CoverUploader
    belongs_to :user
    has_many :votes
    validates :title, presence: true
    validates :text, presence: true
    validates :image, presence: true

end
