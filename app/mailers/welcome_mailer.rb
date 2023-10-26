class WelcomeMailer < ApplicationMailer
    def send_welcome_mail(to_email, subject, message)
      mail(to: to_email, from: "goviptdr2025@gmail.com", subject: subject) do |format|
        format.html { render plain: message }
      end
    end
end
  