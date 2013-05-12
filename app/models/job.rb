class Job < ActiveRecord::Base
	has_many :job_descriptions, :dependent => :destroy, :autosave => :true
	has_many :thumbs, :dependent => :destroy, :autosave => :true

	default_scope order('created_at DESC')
	scope :to_display, where(:isShown => true)
	paginates_per 1

	after_create :verify_existence_of_thumbs

	accepts_nested_attributes_for :job_descriptions
	accepts_nested_attributes_for :thumbs

  attr_accessible :isShown, :job_descriptions_attributes, :thumbs_attributes

  protected

  def verify_existence_of_thumbs
  	if self.thumbs.count == 0
  		3.times do
	  		thumb = Thumb.new
	  		thumb.job= self
	  		thumb.save
  		end
  	end
  end
end
