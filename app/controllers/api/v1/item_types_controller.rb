class Api::V1::ItemTypesController < ApplicationController
  def index
    @item_types = ItemType.all
    render json: @item_types
  end

  def create
    @item_type = ItemType.create(item_type_params)
    render json: @item_type
  end

  private

  def item_type_params
    params.require(:item_type).permit(:name, :description)
  end
end
