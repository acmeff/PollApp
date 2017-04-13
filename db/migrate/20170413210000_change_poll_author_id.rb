class ChangePollAuthorId < ActiveRecord::Migration[5.0]
  def change
    rename_column :polls, :author, :user_id
  end
end
