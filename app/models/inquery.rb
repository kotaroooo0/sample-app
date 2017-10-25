class Inquery < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true

  def send_user_inquery
    InqueryMailer.user_inquery(self).deliver_now
  end
end
