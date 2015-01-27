class RegistrationsController < ApplicationController
  def list_register
  	@registration = Registration.all
  end

  def new
  	@registration = Registration.new
  	#@registration.save
  end
  def create
  	#render(:action => 'new')
  	#@registration = Registration.create(params[:name], params[:email], params[:dob], params[:password], params[:gender])
    @registration = Registration.new(registration_params)
  	if @registration.save
  	   redirect_to 'list_register'
    else
    	render 'new'
    end
  end

private
  def registration_params
      params.require(:registration).permit(:name, :email, :dob, :password, :gender, :lastname)
  end
end
