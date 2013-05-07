module JobsHelper
	def description_by_locale job
		JobDescription.by_locale(params[:locale]).where(:job_id => job).first
	end
end
