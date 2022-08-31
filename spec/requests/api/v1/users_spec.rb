# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'POST /users' do
    let(:user_params) { FactoryBot.attributes_for(:user) }

    it 'returns 200' do
      post '/api/v1/users', params: { user: user_params }, as: :json
      expect(response).to have_http_status(:success)
    end
  end
end
