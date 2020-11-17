class ProductsController < ApplicationController
  def index
    @Products = Product.all
  end

  def show
    @Product = Product.find(params[:id])
  end
end
