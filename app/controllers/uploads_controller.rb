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
    @video = Video.new(params[:video])
    if @image.name != nil
      if @image.save
      else
        redirect_to files_path, :notice => "Invalid file format."
        return
      end
    else
      if @video.save
      else
        redirect_to files_path, :notice => "Invalid file format."
        return
      end
    end
    redirect_to files_path
  end
end
