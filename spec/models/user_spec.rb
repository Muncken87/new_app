require 'rails_helper'

describe Product do
  before do
    @user = FactoryGirl.build(:user)
  end
  it "is not valid" do
    expect(User.new(first_name: "Im the best")).not_to be_valid
  end
end
