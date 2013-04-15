class Job < ActiveRecord::Base
	has_many :job_descriptions, :dependent => :destroy, :autosave => :true
	has_many :thumbs, :dependent => :destroy, :autosave => :true

	accepts_nested_attributes_for :job_descriptions
	accepts_nested_attributes_for :thumbs

  attr_accessible :isShown
end
