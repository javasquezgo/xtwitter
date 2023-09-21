class AddHashtagNameToHashtag < ActiveRecord::Migration[7.0]
  def change
    add_column :hashtags, :hashtag, :string
  end
end
