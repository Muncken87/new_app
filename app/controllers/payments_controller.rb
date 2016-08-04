class PaymentsController < ApplicationController

  def new
  end

  def create
    @product = Product.friendly.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]

    if signed_in? && @product.purchase!(@user, token)
      render status: 200
    else
      redirect_to product_path(@products)
    end
  end
end
