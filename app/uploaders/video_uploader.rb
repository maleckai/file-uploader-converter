# encoding: utf-8

class VideoUploader < CarrierWave::Uploader::Base
  include CarrierWave::Video
  include ::CarrierWave::Backgrounder::Delay

  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # process encode_video: [:mp4, callbacks: { after_transcode: :set_success } ]
  process encode_video: [:mp4, resolution: '640x480']

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
     %w(flv 3gp wmv quicktime mp4 MP4 Ogg mpg mpeg)
  end
end
