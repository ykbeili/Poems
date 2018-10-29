class ContactMeMailer < ApplicationMailer
  def message_for_you(first_name,last_name,text)
    @first_name = first_name
    @last_name = last_name
    @text = text
    mail(to: 'ykbeili@gmail.com', subject: "#{first_name} " " #{last_name} Sent you a message")
  end
end
