class CreateTweetTopics < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tweets, :topics do |t|
      
    end
  end
end
