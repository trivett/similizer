class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    @artist = Artist.new(:echo_id => params[:echo_id])
  end

  private

end
