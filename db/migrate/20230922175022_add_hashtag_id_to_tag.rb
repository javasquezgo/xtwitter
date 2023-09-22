class AddHashtagIdToTag < ActiveRecord::Migration[7.0]
  def change
    add_reference :tags, :hashtag, null: false, foreign_key: true
  end
end
