class WelcomeMailer < ApplicationMailer
    def send_welcome_mail
        mail(to:"pgovind6834@gmail.com", from:"goviptdr2025@gmail.com", subject: "test", messages: "hii")
    end     
end