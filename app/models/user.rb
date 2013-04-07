class User < ActiveRecord::Base
  attr_accessible :isAdmin, :password, :user
end
