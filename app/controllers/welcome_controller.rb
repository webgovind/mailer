class WelcomeController < ApplicationController
    def index
    end
    def send_mail
        if request.post?
          to_email = params[:to_email]
          subject = params[:subject]
          message = params[:message]
          
          begin
            WelcomeMailer.send_welcome_mail(to_email, subject, message).deliver_now!
            flash[:success] = "Mail sent successfully"
          rescue StandardError => e
            flash[:error] = "Error sending the email: #{e.message}"
          end
      
          redirect_to root_path
        end
    end        
end
  
