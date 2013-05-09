class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.send_email
			redirect_to :action => 'show'
		else
			render :action => 'new'
		end
	end

	def show
	end
end