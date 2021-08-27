class ChangeMessagesToTweets < ActiveRecord::Migration[6.1]
  def change
    rename_table :messages, :tweets
  end
end
