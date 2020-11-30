class ProductsController < ApplicationController
  def index
    @Products = Product.all.page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end
end
