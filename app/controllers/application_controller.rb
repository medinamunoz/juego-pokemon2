class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, only: [:create]

  protected

  def configure_permitted_parameters
  	params.require(:sign_up).permit(:email, :password, :password_confirmation, :name)
  end
end

