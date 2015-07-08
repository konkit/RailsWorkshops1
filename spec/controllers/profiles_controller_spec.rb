require 'spec_helper'

describe ProfilesController do
  let(:user) { create(:user) }

  describe 'GET index' do
    it 'exposes all profiles' do
      get :index, {}
      expect(assigns(:profiles)).to eq([user])
    end
  end

  context 'GET show' do
    before do
      (1..6).each { create(:review, user: user) }
      get :show, { id: user.to_param }
    end

    it 'returns requested profile and reviews' do
      expect(assigns(:profile)).to eq(user)
    end

    it 'returns requested profile and reviews' do
      expect(assigns(:reviews).count).to eq(5)
    end
  end
end