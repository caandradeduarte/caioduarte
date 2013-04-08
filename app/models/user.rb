class User < ActiveRecord::Base
  attr_accessible :isAdmin, :email, :password, :password_confirmation

  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email

  has_secure_password
end
