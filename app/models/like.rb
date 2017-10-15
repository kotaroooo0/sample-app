class Like < ApplicationRecord
  belongs_to :micropost, counter_cache: :like_count
  belongs_to :user
end
