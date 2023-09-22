class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :followers
      t.bigint :following

      t.timestamps
    end
  end
end
