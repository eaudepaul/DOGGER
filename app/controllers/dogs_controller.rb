class DogsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        dogs.name @@ :query
        OR dogs.breed @@ :query
        OR dogs.details @@ :query
      SQL
      @dogs = Dog.where(sql_query, query: "%#{params[:query]}%")
    else
      @dogs = Dog.all
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    user = current_user
    @dog.user_id = user.id

    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    redirect_to dogs_path
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params)
    redirect_to dog_path(dog)
  end

  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :photo)
  end
end
