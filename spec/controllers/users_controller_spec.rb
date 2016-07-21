# @user = FactoryGirl.create(:user)
require 'rails_helper'

describe UsersController, :type => :controller do
  before do
      @user = FactoryGirl.create(:user)
  end

  describe "GET #show" do
    context "User is logged in" do
      before do
        sign_in @user
      end
  end
      it "loads correct user details" do
        get :show, id: @user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end


    it "should not validate users without an email address" do
      @user = FactoryGirl.build(:user, email: "not_an_email")
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
