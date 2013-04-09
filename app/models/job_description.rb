class JobDescription < ActiveRecord::Base
  belongs_to :language
  belongs_to :job
  
  attr_accessible :description, :title

  validates_presence_of :description, :title
  validates_uniqueness_of :description, :title
end
