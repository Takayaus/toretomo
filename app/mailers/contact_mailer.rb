class ContactMailer < ApplicationMailer

  # def contact_mail(contact)
  #   @contact = contact  
  #   mail to: ENV['MAIL'], subject: "メールのタイトル"
  # end

  def contact_mail(contact)
    @contact = contact
    mail(
      from: 'sam@example.com',
      to:   'morit617@gmail.com',
      subject: 'お問い合わせ通知'
    )
  end

end
