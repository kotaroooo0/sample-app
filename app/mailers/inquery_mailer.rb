class InqueryMailer < ApplicationMailer
  default to: 'k33asby@gmail.com' # 自分のメールアドレス

  def user_inquery(inquery)
    @inquery = inquery
    mail from: inquery.email, subject: "User inquery"
  end

end
