class WelcomeController < ApplicationController
  def index
  	@users = User.limit(5).all
  end
end
