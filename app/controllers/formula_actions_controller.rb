class FormulaActionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_action, only: [:show, :update, :destroy]

  # GET /formula_actions
  # GET /formula_actions.json
  def index
    @formula_actions = FormulaAction.all
  end

  # GET /formula_actions/1
  # GET /formula_actions/1.json
  def show
  end

  # POST /formula_actions
  # POST /formula_actions.json
  def create
    @formula_action = FormulaAction.new(formula_action_params)

    if @formula_action.save
      render :show, status: :created, location: @formula_action
    else
      render json: @formula_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_actions/1
  # PATCH/PUT /formula_actions/1.json
  def update
    if @formula_action.update(formula_action_params)
      render :show, status: :ok, location: @formula_action
    else
      render json: @formula_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_actions/1
  # DELETE /formula_actions/1.json
  def destroy
    @formula_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_action
      @formula_action = FormulaAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_action_params
      params.require(:formula_action).permit(:formula_id, :formula_named_action_id)
    end
end
