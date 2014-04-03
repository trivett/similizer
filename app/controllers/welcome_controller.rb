class WelcomeController < ApplicationController

  def index

  end

  def show
    @artist = Echowrap.artist_search(:name => params[:artist], :results => 1)
    @suggestions = Echowrap.artist_similar(:id => @artist[0].id, :results => 3, :bucket => ['artist_location', 'hotttnesss'])

  end

  def artist
    redirect_to("/#{params[:artist]}")
  end


end
