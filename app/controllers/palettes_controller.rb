class Api::V1::ProjectsController < ApplicationController
	def index
	  @palettes = Palette.all
	  render json: palettes
	end

	def create
	  @palette = Palette.create(color_params)
	  render json: palette
	end

	def show
	  @palette = Palette.find_by(id: params[:id])
	  unless @palette
	    render json: {error: "No palette found"},
	    status: 404
	    return
	  end
	  render json: palette
	end

	def update
	  @palette = Palette.find_by(id: params[:id])
	  unless project
	    render json: {error: "palette not found"},
	    status: 404
	    return
	  end
	  @palette.update(palette_params)
	  render json: palette
	end

	def destroy
	  @palette = Palette.find_by(id: params[:id])
	  unless project
	    render json: {error: "palette not found"},
	    status: 404
	    return
	  end
	  project.destroy
	  render json: palette
	end

end
