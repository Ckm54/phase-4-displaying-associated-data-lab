class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items, except: [:user_id, :created_at, :updated_at], include: {user: {except: [:created_at, :updated_at]}}
  end
end
