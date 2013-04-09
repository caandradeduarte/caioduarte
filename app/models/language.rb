class Language < ActiveRecord::Base
	has_one :bio
	has_many :jobs

  attr_accessible :flag, :locale, :name

  validates_presence_of :flag, :locale, :name
  validates_uniqueness_of :locale, :name

  mount_uploader :flag, FlagUploader
end
