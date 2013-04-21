class Mailer < ActionMailer::Base
  default :to => "uiucstarcraft@gmail.com"

  def comment(sender, custom_body)
    @custom_body = custom_body
    mail :from => sender, :subject => "[UIUC SC] comment"
  end
end
