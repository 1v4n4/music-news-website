class AddArticleIdToVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :article_id, :integer
    add_index :votes, :article_id
  end
end
