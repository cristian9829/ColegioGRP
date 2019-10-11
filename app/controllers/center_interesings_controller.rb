class CenterInteresingsController < ApplicationController
  def index
  	@CentroInteres = CentroIntere.all
  end
end
