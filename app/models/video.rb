class Video < ActiveRecord::Base
  attr_accessible :name, :file

  mount_uploader :file, VideoUploader



end
