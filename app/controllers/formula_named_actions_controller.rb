class FormulaNamedActionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_named_action, only: [:show, :update, :destroy]

  # GET /formula_named_actions
  # GET /formula_named_actions.json
  def index
    @formula_named_actions = FormulaNamedAction.all
  end

  # GET /formula_named_actions/1
  # GET /formula_named_actions/1.json
  def show
  end

  # POST /formula_named_actions
  # POST /formula_named_actions.json
  def create
    @formula_named_action = FormulaNamedAction.new(formula_named_action_params)

    if @formula_named_action.save
      render :show, status: :created, location: @formula_named_action
    else
      render json: @formula_named_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_named_actions/1
  # PATCH/PUT /formula_named_actions/1.json
  def update
    if @formula_named_action.update(formula_named_action_params)
      render :show, status: :ok, location: @formula_named_action
    else
      render json: @formula_named_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_named_actions/1
  # DELETE /formula_named_actions/1.json
  def destroy
    @formula_named_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_named_action
      @formula_named_action = FormulaNamedAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_named_action_params
      params.require(:formula_named_action).permit(:name)
    end
end
