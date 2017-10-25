class InqueryMailerPreview < ActionMailer::Preview

  def user_inquery
    inquery = Inquery.first
    InqueryMailer.user_inquery(inquery)
  end
end
