class EventsController < ApplicationController
    def eventspage
      #@events = Event.where("EventDate between date('now') and date('now' -365)")
    @events = Event.where("EventDate >= DATE('now', 'weekday 0', '-180 days')")
    end
    
    def CarryAmount
        @events = Event.where("QuantityCanCarry >= 1)")
    end
    
    
    def find
        @event = Event.new
    end
    
    def new
        @Event = current_user.events.build
    end
    
    def show
        id = params[:id] 
        @event = Event.find(id)
    end    
  
    def create
        @event = current_user.events.build(event_params)
        if @event.save
            redirect_to eventspage_path
        else
            render 'new'
        end
    end
    
    def edit
      @event = Event.find params[:id]
    end
    
    def update
      @event = Event.find params[:id]
      @event.update_attributes!(event_params)
      redirect_to eventspage_path(@Event)
    end
    
    def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to eventspage_path
    end
  
private
    def event_params
        params.require(:event).permit(:EventDate, :EventLocationGPS, :EventLocationFriendly, :ToLocation, :FromLocation, :QuantityCanCarry, :OneWayTrip, :EventBufferTime, :EventComments)
    end
end
