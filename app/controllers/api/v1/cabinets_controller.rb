require 'byebug'

class Api::V1::CabinetsController < ApplicationController
  def profile
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]
    render json: { user: Cabinet.find(user_id) }, status: :accepted
  end

  def index
    @cabinets = Cabinet.all
    render json: @cabinets
  end

  def create
    @user = Cabinet.create(cabinet_params)
    if @user.valid?
      render json: { user: CabinetSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def show
    @cabinet = Cabinet.find(params[:id])
    render json: @cabinet
  end

  private

  def cabinet_params
    params.require(:cabinet).permit(:name, :image, :first_name, :last_name, :email, :username, :password)
  end
end
