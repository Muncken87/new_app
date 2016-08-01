# @user = FactoryGirl.create(:user)
require 'rails_helper'

describe UsersController, :type => :controller do
  before do
      @user = FactoryGirl.create(:user)
      @user2 = FactoryGirl.create(:user)
  end

  describe "GET #show" do
    context "User is logged in" do
      before do
        sign_in @user
      end
  end

  it "Load User 1 details" do
    get :show, id: @user.id
    expect(response).to have_http_status(302)
    expect(assigns(:user)).to eq @user
  end

  it "Doesnt allow user 1 to view users 2 details" do
  get :show, id: @user2.id
  expect(response).to have_http_status(302)
  expect(assigns(:user)).to eq @user2
  end

it "should not validate users without an email address" do
  @user = FactoryGirl.build(:user, email: "")
  expect(@user).to_not be_valid
  end

    # context "No user is logged in" do
    #   it "redirects to login page" do
    #     get :show, id: user.id
    #     expect(response).to redirect_to(root_path)
    #   end
    # end

end
end
