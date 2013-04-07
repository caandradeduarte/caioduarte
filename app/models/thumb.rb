class Thumb < ActiveRecord::Base
  belongs_to :job
  
  attr_accessible :picture

  mount_uploader :picture, ThumbUploader
end
