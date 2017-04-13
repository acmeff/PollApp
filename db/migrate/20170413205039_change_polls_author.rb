class ChangePollsAuthor < ActiveRecord::Migration[5.0]
  def change
    remove_column :polls, :author

    add_column :polls, :author, :integer, null: false
  end
end
