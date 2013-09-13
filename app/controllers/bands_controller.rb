class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
  end

  def create
    @band = Band.new(params[:band])

    if @band.save
      redirect_to band_url @band.id
    else
      flash[:notice] = "Save failed"
      redirect_to bands_url
    end

  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])

    if @band.save
      redirect_to band_url @band.id
    else
      raise "Update failed"
      redirect_to bands_url
    end
  end

  def destroy
    @band = Band.find(params[:id])
    if @band.destroy
      redirect_to bands_url
    else
      flash[:notice] = "Delete failed"
      render :new
    end
  end

end
