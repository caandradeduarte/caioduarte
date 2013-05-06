class BiosController < ApplicationController
	def show
		locale = params[:locale] || I18n.default_locale
		@bio = Bio.by_locale(locale).first
	end
end