class ProductsController < ApplicationController
  def index
    @Products = Product.all
  end

  def show
    @categories = []
    @Product = Product.find(params[:id])
    end
  end
end
