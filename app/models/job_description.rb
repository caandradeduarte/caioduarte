class JobDescription < ActiveRecord::Base
	scope :by_locale, ->(locale) { where(:language_id => Language.by_locale(locale))}
	# before_destroy :check_parent

  belongs_to :language
  belongs_to :job
  
  attr_accessible :description, :title, :language_id

  validates_presence_of :description, :title
  validates_uniqueness_of :description, :title

  private 

  def check_parent
  	if job.job_descriptions.size == 1
  		job.destroy
  	end
  end
end