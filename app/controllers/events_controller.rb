class EventsController < ApplicationController
    def eventspage
        @events = Event.all.order("created_at DESC")
    end
    
    def find
        @event = Event.new
    end
    def new
        @Event = Event.new
    end
    
    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to eventspage_path
        else
            render 'new'
        end
    end
    
private
    def event_params
        params.require(:event).permit(:EventDate, :EventLocationGPS, :EventLocationFriendly, :ToLocation, :FromLocation, :QuantityCanCarry, :OneWayTrip, :EventBufferTime, :EventComments)
    end
end
