class WelcomeController < ApplicationController
    def index 
    end     

    def send_mail
        WelcomeMailer.send_welcome_mail.deliver_now! 
        render plain: "Mail sent"
    end     
end
