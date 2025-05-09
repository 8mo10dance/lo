# frozen_string_literal: true

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

      it { is_expected.to eq 201 }

      it { expect { post_create }.to change(User, :count).by 1 }
    end

    context 'バリデーションに引っかかった場合' do
      let(:user_params) { attributes_for :user, email: '' }

      it { is_expected.to eq 422 }

      it { expect { post_create }.not_to change(User, :count) }
    end
  end

  describe 'GET /api/v1/users/:id' do
    subject { get "/api/v1/users/#{user.id}" }

    let(:user) { create :user }

    before { user }

    it { is_expected.to eq 200 }
  end

  describe 'PATCH /api/v1/users/:id' do
    subject(:patch_update) { patch "/api/v1/users/#{user.id}", params: { user: user_params } }

    let(:user) { create :user }

    before { user }

    context '正常系' do
      let(:user_params) { attributes_for :user }

      it { is_expected.to eq 200 }

      it { expect { patch_update }.to change { user.reload.name }.to user_params[:name] }
    end

    context 'バリデーションに引っかかった場合' do
      let(:user_params) { attributes_for :user, email: '' }

      it { is_expected.to eq 422 }

      it { expect { patch_update }.not_to(change { user.reload.name }) }
    end
  end

  describe 'DELETE /api/v1/users/:id' do
    subject(:delete_destroy) { delete "/api/v1/users/#{user.id}" }

    let(:user) { create :user }

    before { user }

    it { is_expected.to eq 200 }

    it { expect { delete_destroy }.to change(User, :count).by(-1) }
  end
end
