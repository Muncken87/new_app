class StaticPagesController < ApplicationController
  def index
    @products = Product.limit(4).select { |product| product.category == 'jumbo' }
  end
  def landing_page
    @products = Product.limit(4).select { |product| product.category == 'jumbo' }
  end
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'yumako87@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
  end

end
