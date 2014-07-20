class WelcomeController < ApplicationController
  def index
  	@users = User.first(5)
  end
end
