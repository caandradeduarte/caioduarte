# encoding: utf-8

class ThumbUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [100, 100]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end