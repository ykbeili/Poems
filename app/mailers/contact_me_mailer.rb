class ContactMeMailer < ApplicationMailer

  def message_for_you()
  mail(to: "wassoufmantof@gmail.com", subject: "#{@name} sent you a message")
  end
end
