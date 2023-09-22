class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.references :tag, null: false, foreign_key: true
      t.text :tag

      t.timestamps
    end
  end
end
