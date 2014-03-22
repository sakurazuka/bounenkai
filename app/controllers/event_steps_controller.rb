class EventStepsController < ApplicationController
  include Wicked::Wizard
  steps :planner, :detail, :date, :place, :mail
  before_action :set_event, only: [:show, :update]

  def show
    render_wizard
  end

  def update
    @event.update_attributes(event_params)
    if step == steps.last
      redirect_to event_url(@event), notice: "登録しました。"
    else
      render_wizard @event
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(session[:event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params[:event]
      params.require(:event).permit(:name, :detail, :planner, :password, :close_date, {schedule_dates_attributes: [:id, :date]}, {schedule_places_attributes: [:id, :name, :address, :price]})
    end
end
