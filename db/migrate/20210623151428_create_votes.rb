class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes, &:timestamps
  end
end
