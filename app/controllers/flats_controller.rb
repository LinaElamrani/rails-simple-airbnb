class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Restaurant.new

    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

end
