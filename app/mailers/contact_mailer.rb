class ContactMailer < ApplicationMailer
  def contact_us(email, message)
    @email = email
    @message = message

    mail(to: 'keb@simpledream.ca', subject: 'Client Contact')
  end
end
