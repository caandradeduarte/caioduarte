class Bio < ActiveRecord::Base
  belongs_to :language
  
  attr_accessible :content
end
