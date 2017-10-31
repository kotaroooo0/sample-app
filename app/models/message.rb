# user_idカラムを保持しているがこれは送り主のuser_idを示す
class Message < ApplicationRecord
  belongs_to :user

  validates :from_name, presence: true
  validates :to_name, presence: true
  validates :content, presence: true, length: { maximum: 250 }

  scope :matching_messages, -> (part){find_by(user_id: part)}
end
