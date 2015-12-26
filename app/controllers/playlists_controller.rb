class PlaylistsController < ApplicationController
  def index
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    redirect_to @playlist
  end

private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end
end