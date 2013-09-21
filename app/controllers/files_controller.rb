class FilesController < ApplicationController
  def index
    @images = Image.all
    @videos = Video.all
  end

  def show

  end
end
