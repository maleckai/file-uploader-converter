class ImagesController < ApplicationController
  before_filter :find_image, only: [:show, :destroy]

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])

    if @image.save
      redirect_to root_path, notice: "The image has successfully uploaded."
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @image.destroy
    redirect_to root_path, notice: "The image has been deleted."
  end

  private

  def find_image
    @image = Image.find(params[:id])
  end

end
