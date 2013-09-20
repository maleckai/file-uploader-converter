class Image < ActiveRecord::Base
  attr_accessible :name, :file

  mount_uploader :file, ImageUploader

end
