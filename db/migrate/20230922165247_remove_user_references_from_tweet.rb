class RemoveUserReferencesFromTweet < ActiveRecord::Migration[7.0]
  def change
    remove_column :tweets, :user_references, :string
  end
end
