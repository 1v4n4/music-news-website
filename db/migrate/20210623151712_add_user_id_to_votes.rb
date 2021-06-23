class AddUserIdToVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :user_id, :integer
    add_index :votes, :user_id
  end
end
