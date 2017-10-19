json.call(@user, :id, :name, :created_at, :updated_at)
json.following_count @user.following.count
json.follower_count @user.followers.count
json.micropost do |json|
  json.array! @microposts, :id, :content, :created_at, :picture, :likes_count
end
