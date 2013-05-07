class Contact
	include ActiveModel::Validations
	include ActiveModel::Conversion

	extend ActiveModel::Naming
	extend ActiveModel::Translation

	attr_accessor :name, :email, :subject, :message

	validates_presence_of :name, :email, :subject, :message
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def send_email
		ContactMailer.contact_email(self).deliver if valid?
  end

	def persisted?
		false
	end
end