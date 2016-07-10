class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
  	@artist = Artist.find(params[:id])
  	@songs = @artist.songs.reverse
    @new_song = Song.new
	end

	def new
  	@artist = Artist.new
	end

  def add_song
    incoming_song = Song.new(params.require(:song).permit(:title, :length, :genre, :artist_id))
    new_artist_id = incoming_song.artist_id
    incoming_song.save
    artpath = Artist.find(new_artist_id.to_i)
    redirect_to artpath
  end

	def create
 	 	Artist.create(params.require(:artist).permit(:name, :albums, :hometown))
    Song.new
  	redirect_to artists_path
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		@artist.update_attributes(params.require(:artist).permit(:name, :albums, :hometown))

		redirect_to @artist
	end

	def destroy
		@artist = Artist.find(params[:id])
		@artist.destroy

		redirect_to artists_path
	end

end
