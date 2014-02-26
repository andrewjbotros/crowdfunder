class SessionsController < ApplicationController

	def new
	end

	def create

		if @user = login(params[:email], params[:password])
			redirect_back_or_to root_url, :notice => "Logged in!"
		else
			flash.now.alert = "Email or password was invalid"
			render :new
		end
	end


	def destroy
		logout
		redirect_back_or_to root_url, :notice => "Logged out!"
	end
end