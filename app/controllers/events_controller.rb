class EventsController < ApplicationController

  def index
    @events = Event.all
    @highlight = params[:highlight].to_i
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @ajax = params[:ajax] == "yes"
    render :layout => !@ajax
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
    require(:event).permit(:title, :description, :start_year, :icon_type, :latitude, :longitude, :url)
  end

end
