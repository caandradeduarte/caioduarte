class LocaleController < ApplicationController
	def set
		locale = params[:locale]
	  raise 'unsupported locale' unless ['pt-BR', 'en', ... ].include?(locale)
	  current_user.locale = locale
	  current_user.save
	  redirect_to :back
	end
end