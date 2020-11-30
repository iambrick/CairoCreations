class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  private
  def initialize_session
    session[:shopping_cart] ||= [] #array of product ids
  end

  def cart
    Product.find(session[:shopping_cart])
  end
end
