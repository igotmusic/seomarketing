class NotificationsMailer < ActionMailer::Base

  default :from => "chris@mekoplum.com"
  default :to => "moorechrisa@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "SEOMarketing signup from #{message.name}")
  end

end
