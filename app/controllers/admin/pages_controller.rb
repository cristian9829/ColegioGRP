class Admin::PagesController < ApplicationController
	before_action :authenticate_user!
	layout 'layoutAdmin'
	

	def index
		@Events = Event.all.count
	end
end