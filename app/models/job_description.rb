class JobDescription < ActiveRecord::Base
	scope :by_locale, ->(locale) { where(:language_id => Language.by_locale(locale))}

  belongs_to :language
  belongs_to :job
  
  attr_accessible :description, :title, :language_id
end