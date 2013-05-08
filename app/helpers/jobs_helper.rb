module JobsHelper
	def description_by_locale job
		JobDescription.by_locale(params[:locale]).where(:job_id => job).first
	end

	def jobs_count
		Job.to_display.count
	end

	def pagination_class index
		params[:page].to_i == (index+1) ? 'icon-circle' : 'icon-circle-blank'
	end
end
