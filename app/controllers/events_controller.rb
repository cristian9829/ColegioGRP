class EventsController < ApplicationController
  def index
  	@events = Event.all.where(header_events: "false")
  	@event = Event.where(header_events: "true").take
  end
end
