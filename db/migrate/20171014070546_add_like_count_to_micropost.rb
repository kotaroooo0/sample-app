class AddLikeCountToMicropost < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :like_count, :integer, default: 0
  end
end
