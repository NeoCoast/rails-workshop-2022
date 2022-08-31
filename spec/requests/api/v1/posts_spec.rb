# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Posts', type: :request do
  describe 'POST /users/:id/posts' do
    let(:user) { FactoryBot.create(:user) }
    let(:post_params) { FactoryBot.attributes_for(:post) }

    it 'returns 200' do
      post api_v1_user_posts_path(user), params: { post: post_params }, as: :json
      expect(response).to have_http_status(:success)
    end

    it 'creates one post' do
      expect {
        post api_v1_user_posts_path(user), params: { post: post_params }, as: :json
      }.to(change { user.posts.count }.by(1))
    end
  end
end
