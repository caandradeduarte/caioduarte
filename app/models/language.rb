class Language < ActiveRecord::Base
	has_one :bio
	has_many :jobs

  attr_accessible :flag, :locale, :name
end
