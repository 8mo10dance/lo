class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { users: UserBlueprint.render_as_hash(@users) }
  end
end
