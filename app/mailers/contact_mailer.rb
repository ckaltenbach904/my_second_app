class ContactMailer < ActionMailer::Base
  default to: "sfdabilene2006@gmail.com"

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(from: email, subject: "My Second App Contact Form Message")
  end
end
