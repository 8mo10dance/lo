# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: { users: UserBlueprint.render_as_hash(@users) }
      end
    end
  end
end
