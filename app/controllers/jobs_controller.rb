class JobsController < ApplicationController
	def show
		jobs = Job.to_display
	end
end