class ProjectsController < ApplicationController



	def index
	  @projects = Project.all
	  @project = Project.new

	end

	def new
	  @palettes = Palette.new
	  @project = Project.new
	end

	def create
	  project = Project.create(project_params)
	  project.create_palette(palette_params)
	  redirect_to projects_path
	end

	def show
	  @project = Project.find_by(id: params[:id])
	  @palette = @project.palette
	  unless @project
	    render json: {error: "We lost your project"},
	    status: 404
	    return
	  end
	  #render json: project
	end

	def update
	  @project = Project.find_by(id: params[:id])
	  @palette = @project.palette
	  unless @project
	    render json: {error: "project not found"},
	    status: 404
	    return
	  end
	  @project.update(project_params)
	  @project.update_palette(palette_params)
	  render json: project
	end

	def destroy
	  project = Project.find_by(id: params[:id])
	  unless project
	    render json: {error: "project not found"},
	    status: 404
	    return
	  end
	  project.destroy
	  redirect_to projects_path
	end

	def details
		@color = Color.find_by(id: params[:id])
		unless @color
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
		params.require(:project).permit(:name, :option)
	end

	def palette_params
      	params.require(:palette).permit(:palette, :palette_attributes => [ :id, :name, :_destroy ])
    end




end
