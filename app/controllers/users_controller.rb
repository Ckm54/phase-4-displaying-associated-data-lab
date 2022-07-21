class UsersController < ApplicationController

  def show
    users = User.all
    render json: users, except: [:created_at, :updated_at], include: {items: {except: [:user_id, :created_at, :updated_at]}}
  end
end
