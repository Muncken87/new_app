class StaticPagesController < ApplicationController
  def index
    @products = Product.new
  end
end
