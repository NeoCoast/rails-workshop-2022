# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      before_action :find_user

      def create
        @post = @user.posts.new(post_params)

        return render json: @post.errors.messages, status: :conflict unless @post.save
      end

      def index
        @posts = @user.posts
      end

      private

      def post_params
        params.require(:post).permit(:title, :content)
      end

      def find_user
        @user = User.find(params[:user_id])
      end
    end
  end
end
