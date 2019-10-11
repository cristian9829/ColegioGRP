class Admin::CentrosController < ApplicationController
	layout 'layoutAdmin'
	def index
		@CentroInteres = CentroIntere.all
	end

	def show
		@CentroIntere = CentroIntere.find(params[:id])
	end

	def new
		@CentroInteres = CentroIntere.new
	end

	def create
	  @CentroInteres = CentroIntere.new(centro_params)


	  if @CentroInteres.save!
	    redirect_to admin_centros_path(@CentroInteres)
	  else
	    render :new
	  end
	end

	def edit
		@CentroIntere = CentroIntere.find(params[:id])
	end

	def update
	  @CentroIntere = CentroIntere.find(params[:id])


	  if @CentroIntere.update(centro_params)
	    redirect_to admin_centros_path
	  else
	    render :edit
	  end
	end


	def destroy
	  centro = CentroIntere.find(params[:id])
	  centro.destroy

	  redirect_to admin_centro_path
	end




	private
	  def centro_params
	    params.require(:centro_intere).permit(:title, :description, :requirements, :schedule, :img)
	  end
end
