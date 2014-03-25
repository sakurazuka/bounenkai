class MembersController < ApplicationController
  before_action :set_event, only: [:new, :edit, :destroy]
  before_action :set_member, only: [:edit, :destroy]

  # GET /members/new
  def new
    @member = @event.members.build
    if @member.save
      redirect_to event_member_member_steps_url(@event, @member)
    else
      redirect_to event_path_url(@event)
    end
  end

  # GET /members/1/edit
  def edit
    redirect_to event_member_member_steps_url(@event, @member)
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to Event.find(params[:event_id])}
      format.json { head :no_content }
    end
  end

  private
    # use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:event_id])
    end

    # use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params[:member]
    end
end
