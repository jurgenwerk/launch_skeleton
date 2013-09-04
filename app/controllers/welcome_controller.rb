class WelcomeController < ApplicationController
  def index
  	@email = Email.new
  end
end
