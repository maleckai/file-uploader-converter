module FilesHelper
  def new_image_form
    image = Image.new
    render partial: "images/new", locals: { image: image }
  end
end
