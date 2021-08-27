class ChangeTweetsColumnToTweetColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :tweets, :tweets, :tweet
  end
end
