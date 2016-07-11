# @user = FactoryGirl.create(:user)
require 'rails_helper'

describe UsersController, :type => :controller do

let(:user) { FactoryGirl.create(:user) }

  describe "GET #show" do
    context "User is logged in" do
      before do
        sign_in user
      end
  end
      it "loads correct user details" do
        get :show, id: user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end

    context "No user is logged in" do
      it "redirects to login page" do
        get :show, id: user.id
        expect(response).to redirect_to(root_path)
      end
    end
end
end
