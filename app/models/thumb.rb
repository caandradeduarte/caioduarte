class Thumb < ActiveRecord::Base
  belongs_to :job
  
  attr_accessible :picture, :thumbs_attributes

  validates_presence_of :picture

  mount_uploader :picture, ThumbUploader
end
