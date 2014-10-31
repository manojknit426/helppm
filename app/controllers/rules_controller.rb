class RulesController < ApplicationController
  
 
 def rule
 if session[:admin_id]
 @law=Rule.new
 else
   redirect_to "/users/signin"
  end
  end
  def comment
  end

def home
  @law=Rule.order("id DESC").paginate(:page => params[:page], :per_page =>5)

end
def total_rule
  if session[:admin_id]
  @law=Rule.order("id DESC").all
else
   redirect_to "/users/signin"
  end
end
def law_insert
 lawdata=params[:ruledata][:law]
  lawtitle=params[:ruledata][:title]
 lawheading=params[:ruledata][:heading]
  @law=Rule.new :law=> lawdata ,:title=>lawtitle,:heading=>lawheading
  if @law.save
    respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js
  end
  else
    respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js 
 end
  end
end

def delete_rule
  if session[:admin_id]
  id=params['id']
  comment=Rule.find_by_id(id).destroy
  redirect_to '/rules/total_rule'
else
  redirect_to '/users/signin'
end
end
def update_rule
 if session[:admin_id]
  id=params['id']
  @update=Rule.find(id)
else
  redirect_to '/users/signin'
end
end
def update_insert
 if session[:admin_id]
  id=params[:ruledata][:id]
  lawdata=params[:ruledata][:law]
  lawtitle=params[:ruledata][:title]
 lawheading=params[:ruledata][:heading]
 
  @update =Rule.find(id)
  if @update.update(:law=> lawdata ,:title=>lawtitle,:heading=>lawheading)
  redirect_to "/rules/total_rule" ,sussces: "update susscesfully"
 else
   redirect_to "/rules/update_rule" 
  end  
else
  redirect_to '/users/signin'
end
end


def comment_insert
  
  @comment=Comment.new(comment_params)
  @comment.who_comment=session[:user_id]
 @comment.user_id=session[:user_id]
 if @comment.save
  respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js
  end
   
 else
   redirect_to '/rules/rule'
 end
end
def like_insert
  
  rule_id=params[:likedata][:rule_id]
  like=params[:likedata][:like]
  @like_up=Like.find_by_rule_id_and_user_id(rule_id,session[:user_id])
    if @like_up
 @like_up.update_attribute :like, like
 respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js
  end
 else
   
  @like=Like.new(like_params)
  @like.user_id=session[:user_id]
   if @like.save
   respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js
  end
  end 
  end
end
def delete_comment
  id=params['id']
  
  @comment=Comment.find_by_id(id)
   if current_user
  if current_user.id==@comment.user.id
   @comment=Comment.find_by_id(id).destroy
   respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js
  
  end
else 
  redirect_to "/422.html"

end
else
   redirect_to "/422.html"
end
end


def like_params
     params.require(:likedata).permit(:rule_id,:like)

end

def comment_params
     params.require(:commentdata).permit(:rule_id,:comment)

end
def search
    id=params["id"]
   begin
@law = Rule.find_by_title(id)
respond_to do |wants|
    wants.html {redirect_to '/rules/home'  }
    wants.js 
   # render :partial => "home", :layout => false, :locals => { :jobs => @law }
  end
rescue ActiveRecord::RecordNotFound => e
@law=nil
end
end

def mail_send
  
  UserMail.user_mail(mail_params).deliver
  redirect_to "/rules/mail_us",sussces: 'your message are susscesfully send'
     
end
def sendto_sugg
  id=params[:lawdata][:title]
  
@s=Rule.where( 'title like ?', id+"%").paginate(:page => params[:page], :per_page =>5)
respond_to do |format|
      format.html { redirect_to '/rules/home' }
      format.js
   end      
end
def mail_params
     params.require(:mail).permit(:name,:subject,:email,:message)

end
end