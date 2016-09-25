class ContactMailer < ApplicationMailer
  def contact_us(email, message)
    @email = email
    @message = message

    mail(to: @email, subject: 'Client Contact')
  end
end
