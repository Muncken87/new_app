require 'rails_helper'

describe Product do
  before do
    @user = User.new(first_name: "Alex",email: "yo@gmail.com")
  end
  it "is not valid" do
    expect(User.new(first_name: "Im the best")).not_to be_valid
  end
end
