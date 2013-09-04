class EmailsController < ApplicationController
  def create
  	@email = Email.new email_params

  	if @email.save
  		flash[:notice] = "Thanks! You'll be informed immediately when this service will be available."
  	else
  		flash[:notice] = @email.errors.full_messages.first
  	end
  	redirect_to root_url
  end

  private

  def email_params
    params.require(:email).permit(:email)
  end
end
