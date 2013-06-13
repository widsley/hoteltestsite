class FacilitiesController < ApplicationController

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(params[:facility])
    if @facility.save
      flash[:success] = "success register facility"
      redirect_to @facility
    else
      render 'new'
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end

  def edit
  end

  def update
  end

end
