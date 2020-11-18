class PagesController < ApplicationController
  def search
    if params[:search].blank?
      @parameter = "zzzzzzzzzzzzz" #this should never show up
    else
      @parameter = params[:search].downcase
    end
    @nameResults = Product.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    @descResults = Product.all.where("lower(description) LIKE :search", search: "%#{@parameter}%")

    @allEmpty = @nameResults.blank? && @descResults.blank?
  end
end
