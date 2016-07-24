class NewController < ApplicationController
	def new
		@palettes = Color.new
		@background_dark_color = params[:background_dark_color]
		@background_light_color = params[:background_light_color]
		@dark_color1 = params[:dark_color1]
		@dark_color2 = params[:dark_color2]
		@light_color1 = params[:light_color1]
		@light_color2 = params[:light_color2]
	end
end
