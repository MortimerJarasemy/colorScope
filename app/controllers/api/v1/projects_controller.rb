class Api::V1::ProjectsController < ApplicationController


	def details
		@color = Color.find_by(id: params[:id])
		unless color
  	    render json: {error: "your color was not found"},
  	    status: 404
  	    return
  	  end
  	  render json: ingredient
  	end

	def add_color
		@project = Project.find_by(id: params[:color_id])
		@project = Project.find_by(id: params[:id])
		@project.ingredients.push(@project)
		render json: @project
	end

	private

	def project_params
	  params.require(:project)
	    .permit(:colors, :option)
	end


end
