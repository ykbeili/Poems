class ContactMeMailer < ApplicationMailer

  def message_for_you()
  mail(to: 'ykbeili@gmail.com', subject: "#{@name} sent you a message")
  end
end
