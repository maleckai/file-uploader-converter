class UploadsController < ApplicationController
  def index
    @target = params[:target]

    if @target == 'image'
      @image = Image.new
    end
    else
      @video = Video.new
    end

  def create
     @image = Image.new(params[:image])

     if @image.save

     else

     end

     redirect_to files_path
  end
end
