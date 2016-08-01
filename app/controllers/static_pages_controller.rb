class StaticPagesController < ApplicationController
  def index
    @products = Product.where(category: "jumbo").limit(4)
  end

  def landing_page
    @products = Product.where(category: "jumbo").limit(4)
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
