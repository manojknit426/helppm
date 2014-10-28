class UserMail < ActionMailer::Base
  
  require 'json'
require 'hashie'
  
default from: "HelpPM"
def user_mail(user)
  hash = JSON.parse user.to_json
@obj = Hashie::Mash.new hash
   
   
    mail( :to =>"mnjkumar426@gmail.com" ,
    :subject => @obj.subject )
  end


end
