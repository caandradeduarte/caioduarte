class JobsController < ApplicationController
	def show
		@job = Job.to_display.first
	end
end