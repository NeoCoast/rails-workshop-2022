# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def create
        @user = User.new(user_params)

        return render json: @user.errors.messages, status: :conflict unless @user.save
      end

      def index
        @users = User.all
      end

      private

      def user_params
        params.require(:user).permit(:username, :email)
      end
    end
  end
end
