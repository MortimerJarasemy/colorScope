class Api::V1::ProjectsController < ApplicationController
	# def index
	#   sandwiches = Project.all
	#   render json: sandwiches
	# end
	#
	# def create
	#   sandwich = Project.create(sandwich_params)
	#   render json: sandwich
	# end
	#
	# def show
	#   sandwich = Project.find_by(id: params[:id])
	#   unless sandwich
	#     render json: {error: "We lost your project"},
	#     status: 404
	#     return
	#   end
	#   render json: project
	# end
	#
	# def update
	#   projec = Project.find_by(id: params[:id])
	#   unless project
	#     render json: {error: "project not found"},
	#     status: 404
	#     return
	#   end
	#   project.update(project_params)
	#   render json: project
	# end
	#
	# def destroy
	#   project = Project.find_by(id: params[:id])
	#   unless project
	#     render json: {error: "project not found"},
	#     status: 404
	#     return
	#   end
	#   project.destroy
	#   render json: project
	# end

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
