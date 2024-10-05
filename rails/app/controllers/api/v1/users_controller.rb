class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { users: UserBlueprint.render_as_hash(@users) }
  end

  def create
    @user = User.new(user_params)
    return render json: { messages: @user.errors.full_messages }, status: :unprocessable_entity if @user.invalid?

    @user.save!
    render json: { user: UserBlueprint.render_as_hash(@user) }
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
