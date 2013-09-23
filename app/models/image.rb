class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader

  attr_accessible :name, :file
end