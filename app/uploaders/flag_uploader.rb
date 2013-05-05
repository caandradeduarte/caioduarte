
# encoding: utf-8

class FlagUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  process :resize_to_fill => [30, 30]
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
