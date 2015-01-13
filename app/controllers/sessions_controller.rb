class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
  	@urls = Url.all
  		session[:user_id] = user.id
  		render "urls/index", :notice => "Logged in!"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
 		end
 	end
 
 	def destroy
 		session[:user_id] = nil
 		redirect_to root_url, :notice => "Logged out!"
 	end

end
