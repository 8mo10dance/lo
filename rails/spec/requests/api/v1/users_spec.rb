require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET /api/v1/users' do
    subject { get '/api/v1/users' }

    it { is_expected.to eq 200 }
  end
end
