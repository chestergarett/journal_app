class AddDuedateToReplies < ActiveRecord::Migration[6.1]
  def change
    add_column :replies, :duedate, :datetime
  end
end
