class Language < ActiveRecord::Base
  attr_accessible :flag, :locale, :name
end
