class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update destroy]
  before_action :set_dog, only: %i[create]

  def index
    @bookings_made = Booking.where(user_id: current_user.id)
    @bookings_for_my_dogs = Booking.select { |booking| booking.dog.user_id == current_user.id }
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.dog_id = @dog.id
    @booking.user_id = current_user.id
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Booking successfully deleted."
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :dog_id, :status)
  end
end
