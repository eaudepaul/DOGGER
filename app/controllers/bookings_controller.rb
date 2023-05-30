class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update destroy]
  before_action :set_dog, only: %i[create update]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(params[:id])
    @dog = Dog.find(params[:dog_id])
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = @booking.update(booking_params)
    if @booking.save
      redirect_to dog_path(@dog)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to dog_path(@booking.dog), notice: "Booking successfully deleted."
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    # params.require(@booking).permit(:start_date, :end_date, :user_id, :dog_id, :status)
  end
end
