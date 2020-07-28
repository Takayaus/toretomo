class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail(
      from: 'sample@example.com',
      to:   Rails.application.credentials.mail,
      subject: 'お問い合わせ通知'
    )
  end

end
