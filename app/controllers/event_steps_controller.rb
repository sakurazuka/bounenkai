class EventStepsController < ApplicationController
  include Wicked::Wizard
  steps :planner, :detail, :date, :place, :mail
  before_action :set_event, only: [:show, :update]

  def show
    render_wizard
  end

  def update
    @event.attributes = event_params
    if @event.save(context: step)
      case step
      when :mail then redirect_to event_url(@event), notice: "登録完了しました。"
      else render_wizard @event
      end
    else
      render step
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
      params.require(:event).permit(:name, :detail, :planner, :password)
    end
end
