class Message < ApplicationRecord
  validates :from_name, presence: true
  validates :to_name, presence: true
  validates :content, presence: true, length: {maximum:250}
end
