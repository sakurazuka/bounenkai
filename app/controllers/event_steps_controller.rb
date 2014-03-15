class EventStepsController < ApplicationController
  include Wicked::Wizard
  steps :planner, :detail, :date, :place, :mail

  def show
    @event = Event.new
    render_wizard
  end

  def update
    @event = Event.find_by_id(params[:event_id]) || Event.new
    @event.update_attributes(event_params)

    case step
    when :mail
      redirect_to event_url(@event)
    else
      render_wizard @event
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params[:event]
      params.require(:event).permit(:name, :detail, :planner, :password)
    end
end
