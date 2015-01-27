class SessionsController < ApplicationController

	def new
		#@register = Registration.new
	end

	def create
		user = Registration.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			redirect_to user;
		else
		   flash.now[:symbol] = 'Invalid email/password combination'
		   render 'new'
		end
	end

	def destroy
	end
end
