class AddStatusToReplies < ActiveRecord::Migration[6.1]
  def change
    add_column :replies, :status, :string
  end
end
