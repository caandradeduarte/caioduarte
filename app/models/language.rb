class Language < ActiveRecord::Base
	scope :by_locale, ->(locale) { where(:locale => locale)}

	before_create :add_job_descriptions
	before_destroy :confirm_presence_of_other_language

	has_one :bio, :dependent => :destroy, :autosave => :true
	has_many :job_descriptions, :dependent => :destroy, :autosave => :true

  attr_accessible :flag, :locale, :name

  validates_presence_of :flag, :locale, :name
  validates_uniqueness_of :locale, :name

  mount_uploader :flag, FlagUploader

  protected

  def add_job_descriptions
  	Job.all.each do |job|
  		job_description = JobDescription.new
  		job_description.job= job
  		self.job_descriptions.push job_description
  	end
  end

  def confirm_presence_of_other_language
  	if Language.all.count == 1
  		errors.add(:base, 'The system needs at least one language!')
  		return false
  	end
  end
end
