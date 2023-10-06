class RemoveSignInCountFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_columns :users, :sign_in_count
  end
end
