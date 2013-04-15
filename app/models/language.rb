class Language < ActiveRecord::Base
	has_one :bio, :dependent => :destroy, :autosave => :true
	has_many :job_descriptions, :dependent => :destroy

  attr_accessible :flag, :locale, :name

  validates_presence_of :flag, :locale, :name
  validates_uniqueness_of :locale, :name

  mount_uploader :flag, FlagUploader
end
