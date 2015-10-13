class BeersController < ApplicationController
	def index
		@beers = Beer.includes(:ratings).all.sort_by(&:name)
	end

	def show
		@beer = Beer.find(params[:id])
	end
end