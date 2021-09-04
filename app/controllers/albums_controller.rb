class AlbumsController < ApplicationController
  before_action :find_album, only: [:update, :destroy]

  def index
    @albums = Album.includes(:photos).all
  end

  def create
    @album = Album.create(album_params)
  end

  def update
    @album.update_attributes(album_params)
  end

  def destroy
    @album.destroy
  end

  private
    def album_params
      params.require(:album).permit(:name)
    end

    def find_album
      @album = Album.find params[:id]
    end
end
