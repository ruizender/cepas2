require 'rails_helper'

RSpec.describe "Wines", type: :request do
  describe 'You can not access to index view without login' do
    it 'should redirect to sign_in view' do
      get :index
      expect(response).to_not render_template("index")
    end
    it 'should redirect to sign_in view' do
      get :index
      expect(response).to redirect_to new_user_session_path
    end
  end
  describe 'GET wines#index' do
    it 'should render wines#index template' do
      @user = User.create(email: 'example@example.com', password: '123456', password_confirmation: '123456')
      sign_in @user
      get :index
      expect(response).to render_template("index")
    end
  end
end
