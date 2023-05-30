class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update destroy]
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new
  end

  def update
    @booking = @booking.update(booking_params)
    @dog = Dog.find(params[:dog_id])
    if @booking.save
      redirect_to dog_path(@dog)
    else
      render :edit, stauts: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to dog_path(@booking.dog), notice: "Booking successfully deleted."
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(booking).permit(:start_date, :end_date, :user_id, :dog_id)
  end
end
