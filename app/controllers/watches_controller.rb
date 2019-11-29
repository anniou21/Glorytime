class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watches = Watch.find(params[:id])
  end
end
