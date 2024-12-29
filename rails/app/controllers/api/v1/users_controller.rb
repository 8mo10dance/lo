# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      before_action :fetch_user, only: %i[show update destroy]

      def index
        @users = User.all
        render json: { users: UserBlueprint.render_as_hash(@users) }
      end

      def create
        @user = User.new(user_params)
        return render json: { messages: @user.errors.full_messages }, status: :unprocessable_entity if @user.invalid?

        @user.save!
        render json: { user: UserBlueprint.render_as_hash(@user) }, status: :created
      end

      def show
        render json: { user: UserBlueprint.render_as_hash(@user) }
      end

      def update
        @user.attributes = user_params
        return render json: { messages: @user.errors.full_messages }, status: :unprocessable_entity if @user.invalid?

        @user.save!
        render json: { user: UserBlueprint.render_as_hash(@user) }
      end

      def destroy
        @user.destroy!
        head :ok
      end

      private

      def user_params
        params.require(:user).permit(:name, :email)
      end

      def fetch_user
        @user = User.find(params[:id])
      end
    end
  end
end
