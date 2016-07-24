class Api::V1::ProjectsController < ApplicationController
	def index
	  colors = Color.all
	  render json: colors
	end

	def create
	  color = Color.create(color_params)
	  render json: color
	end

	def show
	  color = Color.find_by(id: params[:id])
	  unless color
	    render json: {error: "No color found"},
	    status: 404
	    return
	  end
	  render json: color
	end

	def update
	  color = Color.find_by(id: params[:id])
	  unless project
	    render json: {error: "color not found"},
	    status: 404
	    return
	  end
	  color.update(color_params)
	  render json: color
	end

	def destroy
	  color = Color.find_by(id: params[:id])
	  unless project
	    render json: {error: "color not found"},
	    status: 404
	    return
	  end
	  project.destroy
	  render json: color
	end

end
