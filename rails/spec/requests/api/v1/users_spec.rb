require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET /api/v1/users' do
    subject { get '/api/v1/users' }

    before { create_list :user, 3 }

    it { is_expected.to eq 200 }
  end

  describe 'POST /api/v1/users' do
    subject(:post_create) { post '/api/v1/users', params: { user: user_params } }

    context '正常系' do
      let(:user_params) { attributes_for :user }

      it { is_expected.to eq 200 }

      it { expect { post_create }.to change(User, :count).by 1 }
    end

    context 'バリデーションに引っかかった場合' do
      let(:user_params) { attributes_for :user, name: '' }

      it { is_expected.to eq 422 }

      it { expect { post_create }.not_to change(User, :count) }
    end
  end
end
