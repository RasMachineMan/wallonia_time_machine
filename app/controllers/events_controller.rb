class EventsController < ApplicationController

<<<<<<< HEAD
=======

>>>>>>> 88abaa004b496ca8958586a611696169b60233e2
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
      if @event.save
        redirect_to @event
      else
        render :edit
      end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    require(:event).permit(:title, :description, :start_year, :end_year, :type, :latitude, :longitude, :url)
  end

end
