class Micropost < ApplicationRecord
  belongs_to :user

  default_scope -> { order(created_at: :desc) }
  scope :including_replies, ->{ where{ in_reply_to > 0}}

  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum:140}
  validate :picture_size

  # リプライなら対象のユーザーIDを更新 (defaultは0)
  def saveReplyTarget
    if str = self.content.match(/^@(.+) /) # 改善すべき
      user_name = str[1]
      update_attribute(:in_reply_to, User.find_by(name: user_name).id)
    end
  end

  private

  def picture_size
    if picture.size > 5.megabyte
      errors.add(:picture, "should be less than 5MB")
    end
  end

end
