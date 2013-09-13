class AlbumsController < ApplicationController


  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @band_id = params[:band_id]
  end

  def create
      @album = Album.new(params[:album])

      if @album.save
        redirect_to bands_url
      else
        flash[:notice] = "Save failed"
        render :new
    end
  end

  def edit
    @id = params[:id]
  end

  def update

    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])

    if @album.save
      redirect_to bands_url
    else
      flash[:notice] = "Update failed"
      redirect_to bands_url
    end

  end

  def destroy

    @album = Album.find(params[:id])

    if @album.destroy
      redirect_to bands_url
    else
      flash[:notice] = "Delete failed"
      render :new
    end
  end

end
