class PagesController < ApplicationController
  def search
    @q = Product.ransack(params[:q])
    @products = @q.result
  end
end
