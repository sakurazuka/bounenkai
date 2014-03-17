class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy, :bulk_create]

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    if @event.save
      session[:event_id] = @event.id
      redirect_to event_steps_url
    else
      redirect_to top_index_url
    end
  end

  # GET /events/1/edit
  def edit
    session[:event_id] = @event.id
    redirect_to event_steps_url
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to top_index_url }
      format.json { head :no_content }
    end
  end

  def bulk_create
    @board = @event.boards.build(board_params)

    respond_to do |format|
      if @board.save
        format.html { redirect_to @event, notice: '投稿しました。'}
        format.json { render action: 'show', status: :created, location: @board }
      else
        format.html { render action: 'show' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params[:event]
      params.require(:event).permit(:name, :detail, :planner, :password)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_params
      params.require(:board).permit(:name, :tweet)
    end
end
