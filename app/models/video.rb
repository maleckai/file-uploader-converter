class Video < ActiveRecord::Base
  mount_uploader :file, VideoUploader

  attr_accessible :name, :file
end
