class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @album_id = params[:album_id]
  end

  def create
    @track = Track.new(params[:track])

    if @track.save
      redirect_to album_url(params[:album_id])
    else
      flash[:notice] = "Save failed"
      render :new
    end
  end

  def edit
    @tracks = Track.find(params[:id])
  end

  def update

    @track = Track.find(params[:id])

    @track.update_attributes(params[:id])

    if @track.save
      redirect_to album_url(params[:album_id])
    else
      flash[:notice] = "Update failed"
      render :new
    end
  end

  def destroy
    @track = Track.find(params[:id])

    if @track.destroy
      redirect_to bands_url
    else
      flash[:notice] = "Delete failed"
      render :new
    end
  end


end
