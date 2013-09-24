class Video < ActiveRecord::Base
  mount_uploader :file, VideoUploader
  process_in_background :file

  attr_accessible :name, :file
end
