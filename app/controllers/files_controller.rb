class FilesController < ApplicationController
  def index
    @images = Image.all
    @videos = Video.all
  end

  def show
    @file = params[:filee]
    @type = params[:typp]
  end
end
