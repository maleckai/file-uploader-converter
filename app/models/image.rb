class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  process_in_background :file

  attr_accessible :name, :file

  default_scope order('id DESC')
end