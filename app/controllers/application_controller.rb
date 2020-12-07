class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :cart

  protected

  def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:address, :email, :password, :province_id)}

       devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:address, :email, :password, :current_password, :province_id)}
  end

  private
  def initialize_session
    session[:shopping_cart] ||= [] #array of product ids
  end

  def cart
    Product.find(session[:shopping_cart])
  end
end
