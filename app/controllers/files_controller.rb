class FilesController < ApplicationController
  def index
    @images = Image.all
  end
end
