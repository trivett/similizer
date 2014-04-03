class WelcomeController < ApplicationController

  def index
    # @query = params(:artist)
  end

  def show
    @query = params[:artist]



  end



end
