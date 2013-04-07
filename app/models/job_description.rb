class JobDescription < ActiveRecord::Base
  belongs_to :language
  belongs_to :job
  
  attr_accessible :description, :title
end
