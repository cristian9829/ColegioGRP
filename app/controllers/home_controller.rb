class HomeController < ApplicationController
  def index
  	@CentroInteres = CentroIntere.all.limit(3)
  end
end
