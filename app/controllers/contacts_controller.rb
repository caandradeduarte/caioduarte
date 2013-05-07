class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.send_email
			redirect_to thanks_contact_path
		else
			render :action => 'new'
		end
	end

	def thanks
	end
end