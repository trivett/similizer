class WelcomeController < ApplicationController

  def index

  end

  def show
    @artist = Echowrap.artist_search(:name => params[:artist], :results => 1)
    @suggestions = Echowrap.artist_similar(:id => @artist[0].id, :results => 1, :bucket => ['artist_location', 'hotttnesss', 'audio', 'blogs', 'images'])




  end


  def get_gif


    giphy_base = "http://api.giphy.com/v1/gifs/search?q="
    query = self.name
    giphy_end = "&api_key=#{GIPHY_KEY}"

    @base = HTTParty.get(giphy_base + query )
    j = JSON.parse(@base.body)
    return ["data"][0]["images"]["original"]["url"]



  end


  def artist
    redirect_to("/#{params[:artist]}")
  end


end
