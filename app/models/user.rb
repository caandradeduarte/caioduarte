class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email

  has_secure_password

  def self.authenticate email, password
  	find_by_email(email).try(:authenticate, password)
  end
end
