class EventsController < ApplicationController

    def index
        events = Event.all 
        render json: events
    end
  
    def create

    end

    def show0
        show_event = Event.find(params[:id])

        render json:show_event
    end

    def update

    end

    def destroy

    end
end
