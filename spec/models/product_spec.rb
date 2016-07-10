require 'rails_helper'

describe Product do
  before do
    @product = Product.create!(description: "flower",name: "Red")
    @user = User.create!(first_name: "Alex",email: "yo@gmail.com", last_name: "Pizza",password: "pizzaman87242")
    @product.comments.create!(rating: 1, user: @user, body: "Awful flower!")
    @product.comments.create!(rating: 3, user: @user, body: "Average flower!")
    @product.comments.create!(rating: 5, user: @user, body: "Beautiful flower!")
  end
    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq(3)
    end
    it "is not valid" do
  	expect(Product.new(description: "Nice flower")).not_to be_valid
  end


end
