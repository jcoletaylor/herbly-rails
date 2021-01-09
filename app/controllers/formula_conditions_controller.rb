class FormulaConditionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_condition, only: [:show, :update, :destroy]

  # GET /formula_conditions
  # GET /formula_conditions.json
  def index
    @formula_conditions = FormulaCondition.all
  end

  # GET /formula_conditions/1
  # GET /formula_conditions/1.json
  def show
  end

  # POST /formula_conditions
  # POST /formula_conditions.json
  def create
    @formula_condition = FormulaCondition.new(formula_condition_params)

    if @formula_condition.save
      render :show, status: :created, location: @formula_condition
    else
      render json: @formula_condition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_conditions/1
  # PATCH/PUT /formula_conditions/1.json
  def update
    if @formula_condition.update(formula_condition_params)
      render :show, status: :ok, location: @formula_condition
    else
      render json: @formula_condition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_conditions/1
  # DELETE /formula_conditions/1.json
  def destroy
    @formula_condition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_condition
      @formula_condition = FormulaCondition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_condition_params
      params.require(:formula_condition).permit(:formula_id, :condition_id)
    end
end
