class AddColumnToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :in_reply_to, :integer, default: 0
    add_column :microposts, :likes_count, :integer, default: 0
  end
end
