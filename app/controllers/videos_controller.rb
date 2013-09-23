class VideosController < ApplicationController
  before_filter :find_video, only: [:show, :destroy]

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video])

    if @video.save
      redirect_to root_path, notice: "The video has successfully uploaded."
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @video.destroy
    redirect_to root_path, notice: "The video has been deleted."
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end

end
