class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to artist_path
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to billboard_path(@song.billboard_id)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :genre)
  end
end
