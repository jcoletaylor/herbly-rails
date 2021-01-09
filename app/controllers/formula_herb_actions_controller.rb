class FormulaHerbActionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_herb_action, only: [:show, :update, :destroy]

  # GET /formula_herb_actions
  # GET /formula_herb_actions.json
  def index
    @formula_herb_actions = FormulaHerbAction.all
  end

  # GET /formula_herb_actions/1
  # GET /formula_herb_actions/1.json
  def show
  end

  # POST /formula_herb_actions
  # POST /formula_herb_actions.json
  def create
    @formula_herb_action = FormulaHerbAction.new(formula_herb_action_params)

    if @formula_herb_action.save
      render :show, status: :created, location: @formula_herb_action
    else
      render json: @formula_herb_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_herb_actions/1
  # PATCH/PUT /formula_herb_actions/1.json
  def update
    if @formula_herb_action.update(formula_herb_action_params)
      render :show, status: :ok, location: @formula_herb_action
    else
      render json: @formula_herb_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_herb_actions/1
  # DELETE /formula_herb_actions/1.json
  def destroy
    @formula_herb_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_herb_action
      @formula_herb_action = FormulaHerbAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_herb_action_params
      params.require(:formula_herb_action).permit(:formula_herb_id, :formula_named_action_id)
    end
end
