class ProductsController < ApplicationController
  def index
    @Products = Product.all.page params[:page]
  end

  def show
    @Product = Product.find(params[:id])
  end
end
