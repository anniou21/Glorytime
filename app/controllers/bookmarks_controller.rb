class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @watch = Watch.find(params[:watch_id])
    @bookmark = Bookmark.new(watch: @watch, user: current_user)
    if @bookmark.save
      redirect_to @watch
    else
      render 'watch/show'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to dashboard_path
  end

end
