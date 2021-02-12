class FlatsController < ApplicationController

  def index
    if params[:search] != nil
      @flats = Flat.where("name LIKE '%#{params[:search][:query]}%'")
    else
      @flats = Flat.all
    end

  end

  def show
    find_flat
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save!
      redirect_to flats_path
    end
  end

  def edit
    find_flat
  end

  def update
    find_flat
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    find_flat
    @flat.destroy
    redirect_to flats_path
  end

  private

    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests )
    end

    def find_flat
      @flat = Flat.find(params[:id])
    end

end
