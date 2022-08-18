class Api::V1::ItemsController < ApplicationController
  def index
    item = Item.page params[:page]
    render json:{ resource: item }
  end
  def create
    item = Item.new amount: 1
    if item.save
      render json: item, status: :created
    else
      render json: item.errors, status: :unprocessable_entity
    end
  end
end
