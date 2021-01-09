class FormulaModificationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_modification, only: [:show, :update, :destroy]

  # GET /formula_modifications
  # GET /formula_modifications.json
  def index
    @formula_modifications = FormulaModification.all
  end

  # GET /formula_modifications/1
  # GET /formula_modifications/1.json
  def show
  end

  # POST /formula_modifications
  # POST /formula_modifications.json
  def create
    @formula_modification = FormulaModification.new(formula_modification_params)

    if @formula_modification.save
      render :show, status: :created, location: @formula_modification
    else
      render json: @formula_modification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_modifications/1
  # PATCH/PUT /formula_modifications/1.json
  def update
    if @formula_modification.update(formula_modification_params)
      render :show, status: :ok, location: @formula_modification
    else
      render json: @formula_modification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_modifications/1
  # DELETE /formula_modifications/1.json
  def destroy
    @formula_modification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_modification
      @formula_modification = FormulaModification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_modification_params
      params.require(:formula_modification).permit(:formula_modification_set_id, :herb_id, :modification)
    end
end
