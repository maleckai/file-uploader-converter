class FilesController < ApplicationController
  def index
    @images = Image.all
    @videos = Video.all
    @files = @images + @videos
  end
end
