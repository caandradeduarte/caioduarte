class Bio < ActiveRecord::Base
	scope :by_locale, ->(locale) { where(:language_id => Language.by_locale(locale))}

  belongs_to :language
  
  attr_accessible :content   
end
