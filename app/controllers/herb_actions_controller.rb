class HerbActionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_action, only: [:show, :update, :destroy]

  # GET /herb_actions
  # GET /herb_actions.json
  def index
    @herb_actions = HerbAction.all
  end

  # GET /herb_actions/1
  # GET /herb_actions/1.json
  def show
  end

  # POST /herb_actions
  # POST /herb_actions.json
  def create
    @herb_action = HerbAction.new(herb_action_params)

    if @herb_action.save
      render :show, status: :created, location: @herb_action
    else
      render json: @herb_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_actions/1
  # PATCH/PUT /herb_actions/1.json
  def update
    if @herb_action.update(herb_action_params)
      render :show, status: :ok, location: @herb_action
    else
      render json: @herb_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_actions/1
  # DELETE /herb_actions/1.json
  def destroy
    @herb_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action
      @herb_action = HerbAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_params
      params.require(:herb_action).permit(:herb_id, :herb_action_type_id)
    end
end
