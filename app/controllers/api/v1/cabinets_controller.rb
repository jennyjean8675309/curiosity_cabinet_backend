class Api::V1::CabinetsController < ApplicationController
  def index
    @cabinets = Cabinet.all
    render json: @cabinets
  end

  def create
    @cabinet = Cabinet.create(cabinet_params)
    render json: @cabinet
  end

  def show
    @cabinet = Cabinet.find(params[:id])
    render json: @cabinet
  end

  private

  def cabinet_params
    params.require(:cabinet).permit(:name, :image)
  end
end
