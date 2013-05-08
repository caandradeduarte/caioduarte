class JobsController < ApplicationController
	before_filter :set_page

	def show
		@jobs = Job.to_display.page(params[:page])
	end

	def set_page
		params[:page] = 1 unless params[:page]
	end
end