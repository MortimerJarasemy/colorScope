class ShowController < ApplicationController
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
end
