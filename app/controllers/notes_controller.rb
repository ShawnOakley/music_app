class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @track_id= params[:track_id]
  end

  def create
    @note = Note.new(params[:comment])

    if @note.save
      redirect_to track_url(params[:track_id])
    else
      flash[:notice] = "Save failed"
      render :new
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update

    @note = Note.find(params[:id])

    @note.update_attributes(params[:comment])

    if @note.save
      redirect_to track_url(params[:track_id])
    else
      flash[:notice] = "Update failed"
      render :new
    end
  end

  def destroy
    @note = Note.find(params[:id])
    params[:track_id] = @note.track_id

    if @note.destroy
      redirect_to track_url(params[:track_id])
    else
      flash[:notice] = "Delete failed"
      render :new
    end
  end
end