class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.string :reply
      t.integer :user_id
      t.integer :tweet_id
      t.timestamps
    end
  end
end
