class FormulaManifestationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_manifestation, only: [:show, :update, :destroy]

  # GET /formula_manifestations
  # GET /formula_manifestations.json
  def index
    @formula_manifestations = FormulaManifestation.all
  end

  # GET /formula_manifestations/1
  # GET /formula_manifestations/1.json
  def show
  end

  # POST /formula_manifestations
  # POST /formula_manifestations.json
  def create
    @formula_manifestation = FormulaManifestation.new(formula_manifestation_params)

    if @formula_manifestation.save
      render :show, status: :created, location: @formula_manifestation
    else
      render json: @formula_manifestation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_manifestations/1
  # PATCH/PUT /formula_manifestations/1.json
  def update
    if @formula_manifestation.update(formula_manifestation_params)
      render :show, status: :ok, location: @formula_manifestation
    else
      render json: @formula_manifestation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_manifestations/1
  # DELETE /formula_manifestations/1.json
  def destroy
    @formula_manifestation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_manifestation
      @formula_manifestation = FormulaManifestation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_manifestation_params
      params.require(:formula_manifestation).permit(:formula_id, :tongue, :tongue_coat, :pulse)
    end
end
