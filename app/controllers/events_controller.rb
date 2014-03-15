class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :bulk_create]

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    # @event = Event.new
    redirect_to event_steps_url
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: '新しいイベントを作成しました。' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'イベント内容を変更しました。' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
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
