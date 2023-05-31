class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dog = Dog.all.sample
    @dogs = Dog.where.not(id: @dog.id).sample(5)
  end
end
