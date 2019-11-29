class WatchesController < ApplicationController
  def index
     if params[:query].present?
      @watches = Watch.search_by_model_and_brand(params[:query])
    else
       @watches = Watch.all
     end
   end

  def show
    # @watch = Watch.find(params[:id])
  end
end
