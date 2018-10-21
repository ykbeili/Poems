class ContactMeMailer < ApplicationMailer

  def message_for_you(name, text)
    @name = name
    @text = text
  mail(to: 'ykbeili@gmail.com', subject: "#{@name} sent you a message")
  end
end
