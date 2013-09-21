class FilesController < ApplicationController
  def index
    @images = Image.all
    @videos = Video.all
    @files = @images + @videos
  end

  def show
    @file = params[:filee]
    @type = params[:typp]
  end
end
