class PhotosController < ApplicationController
  before_action :find_album

  def create
    @album.photos.create(photo_params)
  end

  def update
  end

  def destroy
  end

  private
    def find_album
      @album = Album.find params[:album_id]
    end

    def photo_params
      params.require(:photo).permit(:name)
    end
end
