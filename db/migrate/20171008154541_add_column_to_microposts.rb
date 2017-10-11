class AddColumnToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :in_reply_to, :integer, default: 0
  end
end
