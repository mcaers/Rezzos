class TimeslotsController < ApplicationController

def index
	@timeslots = Timeslot.all
end

def show
	@timeslot = Timeslot.find(params[:id])
end

def create
	select_tag select_options(@DateTime)

end
