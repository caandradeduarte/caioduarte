class Contact
	include ActiveModel::Validations
	include ActiveModel::Conversion

	extend ActiveModel::Naming
	extend ActiveModel::Translation

	attr_accessor :name, :email, :subject, :message

	validates_presence_of :name, :email, :subject, :message
end