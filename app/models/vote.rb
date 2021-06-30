class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article, dependent: :destroy
  scope :most_popular, -> { select('article_id, count(article_id)').group(:article_id).order('count desc').limit(1) }
end
