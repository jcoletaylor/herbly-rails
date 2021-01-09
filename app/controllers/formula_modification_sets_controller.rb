class FormulaModificationSetsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_modification_set, only: [:show, :update, :destroy]

  # GET /formula_modification_sets
  # GET /formula_modification_sets.json
  def index
    @formula_modification_sets = FormulaModificationSet.all
  end

  # GET /formula_modification_sets/1
  # GET /formula_modification_sets/1.json
  def show
  end

  # POST /formula_modification_sets
  # POST /formula_modification_sets.json
  def create
    @formula_modification_set = FormulaModificationSet.new(formula_modification_set_params)

    if @formula_modification_set.save
      render :show, status: :created, location: @formula_modification_set
    else
      render json: @formula_modification_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_modification_sets/1
  # PATCH/PUT /formula_modification_sets/1.json
  def update
    if @formula_modification_set.update(formula_modification_set_params)
      render :show, status: :ok, location: @formula_modification_set
    else
      render json: @formula_modification_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_modification_sets/1
  # DELETE /formula_modification_sets/1.json
  def destroy
    @formula_modification_set.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_modification_set
      @formula_modification_set = FormulaModificationSet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_modification_set_params
      params.require(:formula_modification_set).permit(:formula_id, :purpose)
    end
end
