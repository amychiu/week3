class PhotosController < ApplicationController

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
    redirect_to photos_url
  end

  def edit
    @photo = Photo.find_by_id(params[:id])
  end

  def update
    @photo = Photo.find_by_id(params[:id])
    @photo.title = params[:photo][:title]
    @photo.url = params[:photo][:url]
    @photo.save
    redirect_to photos_url
  end

  def index
    @photos = Photo.all

    respond_to do |format|
      format.html
      format.json { render :json => @photos }
    end
  end

  def show
    @photo = Photo.find_by_id(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(params[:photo])
    @photo.save
    redirect_to photos_url
  end

end