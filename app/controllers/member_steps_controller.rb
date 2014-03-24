class MemberStepsController < ApplicationController
  include Wicked::Wizard
  steps :member, :date, :place
  before_action :set_event, only: [:show, :update]
  before_action :set_member, only: [:show, :update]

  def show
    render_wizard
  end

  def update
    if params[:add].present?
      # @event.update_attributes(event_params)
      # @event.schedule_dates.build if step == :date
      # @event.schedule_places.build if step == :place
      # render step
    elsif step == steps.last
      # SendMail.invitation(@event.id, params[:mail_address]).deliver if params[:send].present?
      redirect_to event_url(@event), notice: "登録しました。"
    else
      @member.update_attributes(member_params)
      render_wizard @event
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(session[:event_id])
    end

    def set_member
      @member = Member.find(session[:member_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params[:member]
      params.require(:member).permit(:name, :password, {hope_dates_attributes: [:id, :schedule_date_id]}, {hope_places_attributes: [:id, :schedule_place_id]})
    end
end
