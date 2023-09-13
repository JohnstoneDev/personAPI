class UsersController < ApplicationController
  def index
    @users = User.all
    render json: { users: @users }, status: :ok
  end

  def create
    @user = User.create!(user_params)
    render json: { user: @user }, status: :created
  end

  def show
    @user = find_user
    render json: { user: @user }, status: :ok
  end

  def update
    @user = find_user
    @user.update!(user_params)
    render json: { user: @user }, status: :accepted
  end

  def destroy
    @user = find_user
    @user.destroy!
    render json: { message: 'deleted' }, status: :no_content
  end

  private

  def user_params
    params.permit(:username, :email)
  end

  def find_user
      @user = User.find(params[:user_id])
  end
end
