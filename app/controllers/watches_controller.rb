class WatchesController < ApplicationController
  def index
    @watches = Watches.all
  end

  def show
    # @watch = Watch.find(params[:id])
  end
end
