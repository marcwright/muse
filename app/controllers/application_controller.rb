class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def about
    @name = "Marc"
  end

end
