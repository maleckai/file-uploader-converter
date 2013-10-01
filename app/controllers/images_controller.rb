class ImagesController < ApplicationController
  before_filter :find_image, only: [:show, :destroy]
  respond_to :json, only: :create

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])

    if @image.save
      #respond_to do |format|
      #  format.html { redirect_to root_path, notice: "The image has successfully uploaded." }
      #end
      render :json => { link: image_url(@image), id: @image.id }
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
