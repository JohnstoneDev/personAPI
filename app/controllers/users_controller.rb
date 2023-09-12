class UsersController < ApplicationController
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
    valid = params[:user_id].is_a? Numeric
    if valid
      @user = User.find(params[:user_id])
    else
      @user = "user_id must be a number"
    end
  end
end
