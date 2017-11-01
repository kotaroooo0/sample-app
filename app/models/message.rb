# user_idカラムを保持しているがこれは送り主のuser_idを示す
class Message < ApplicationRecord
  belongs_to :user

  validates :from_name, presence: true
  validates :to_name, presence: true
  validates :content, presence: true, length: { maximum: 250 }
  validate :picture_size
  mount_uploader :picture, PictureUploader

  scope :matching_messages, ->(part) { where(to_name: part) }

  private

  def picture_size
    errors.add(:picture, 'should be less than 5MB') if picture.size > 5.megabyte
  end
end
