class Job < ActiveRecord::Base
	has_many :job_descriptions, :thumbs

  attr_accessible :isShown
end
