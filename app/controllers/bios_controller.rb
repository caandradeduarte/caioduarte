class BiosController < ApplicationController
	def show
		@bio = Bio.first
	end
end