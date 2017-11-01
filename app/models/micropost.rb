class Micropost < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  default_scope -> { order(created_at: :desc) }
  scope :including_replies, -> { where { in_reply_to > 0 } }

  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :picture_size

  # リプライなら対象のユーザーIDを更新 (defaultは0)
  def saveReplyTarget
    if str = content.match(/^@(.+) /) # 改善すべき
      user_name = str[1]
      update_attribute(:in_reply_to, User.find_by(name: user_name).id)
    end
  end

  # DMかどうか
  def isDirectMessage?
    content.match(/^d (.+) /)
  end

  # DMであればMessageテーブルに保存する
  def createDirectMessage
    str = content.match(/^d (.+) (.+)/)
    to_user_name = str[1]
    message_content = str[2]
    from_user_name = User.find(user_id).name
    Message.new(from_name: from_user_name, to_name: to_user_name, content: message_content, picture: picture, user_id: user_id)
  end

  # ライクしているユーザーかどうか
  def like_user?(user_id)
    likes.find_by(user_id: user_id)
  end

  private

  def picture_size
    errors.add(:picture, 'should be less than 5MB') if picture.size > 5.megabyte
  end
end
