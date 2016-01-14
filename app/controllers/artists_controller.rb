class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
   @artist = Artist.find(params[:id])
 end

 def new
 end

  def create
    @artist = Artist.new(params[:article])

    @artist.save
    redirect_to @artist
    end

  private
    def artist_params
      params.require(:artist).permit(:name, :genre)
    end
end
