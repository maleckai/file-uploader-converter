class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  process_in_background :file

  attr_accessible :name, :file, :file_processing

  default_scope order('id ASC')

  def status
    file_processing? ? "Processing" : "Complete"
  end
end