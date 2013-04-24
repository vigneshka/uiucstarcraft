class Mailer < ActionMailer::Base
  default :to => "uiucstarcraft@gmail.com"
  default :from => "uiucstarcraft@gmail.com"

  def comment(sender, custom_body)
    @custom_body = custom_body
    @from = sender
    mail :reply_to => sender, :subject => "[Comment] UIUC SC"
  end

   def replay(name, description, file)
  	@name = name
  	@description = description

  	attachments["#{file.original_filename}"] = file.read
    mail :subject => "[Replay] UIUC SC"
  end

end
