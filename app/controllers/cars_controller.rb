class CarsController < ApplicationController
  before_action :find_car, only: %i[show edit update calculate_price]

  def index
    @cars = Car.paginate(page: params[:page], per_page: 5)
    .order created_at: :asc
  end

  def show
  end

  def edit
  end

  def update
    @car.update(car_params)
    flash[:success] = "Car is updated"

    redirect_to cars_path
  end

  def calculate_price
    service = CalculatePrice.new
    result = service.calculate_car_price(params[:id])

    redirect_to index, message: ""
  end

  private

  def find_car
    @car = Car.find_by(id: params[:id])
  end

  def car_params
    params.require(:car).permit(
      :id, :brand, :model, :engine_volume, :price_last_year, :price_now
    )
  end
