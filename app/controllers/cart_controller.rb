class CartController < ApplicationController
  # POST /cart
  # Data sent as form data (params)
  def create
    # Add params[:id] to cart
    id = params[:id].to_i
    unless session[:shopping_cart].include?(id)
      session[:shopping_cart] << id
      flash[:notice] = "Added to cart!"
    end
    redirect_to root_path
  end

  # DELETE /cart/:id
  def destroy
    # Remove params[:id] from the cart.
  end
end
