class FormulaManifestationSymptomsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_manifestation_symptom, only: [:show, :update, :destroy]

  # GET /formula_manifestation_symptoms
  # GET /formula_manifestation_symptoms.json
  def index
    @formula_manifestation_symptoms = FormulaManifestationSymptom.all
  end

  # GET /formula_manifestation_symptoms/1
  # GET /formula_manifestation_symptoms/1.json
  def show
  end

  # POST /formula_manifestation_symptoms
  # POST /formula_manifestation_symptoms.json
  def create
    @formula_manifestation_symptom = FormulaManifestationSymptom.new(formula_manifestation_symptom_params)

    if @formula_manifestation_symptom.save
      render :show, status: :created, location: @formula_manifestation_symptom
    else
      render json: @formula_manifestation_symptom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_manifestation_symptoms/1
  # PATCH/PUT /formula_manifestation_symptoms/1.json
  def update
    if @formula_manifestation_symptom.update(formula_manifestation_symptom_params)
      render :show, status: :ok, location: @formula_manifestation_symptom
    else
      render json: @formula_manifestation_symptom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_manifestation_symptoms/1
  # DELETE /formula_manifestation_symptoms/1.json
  def destroy
    @formula_manifestation_symptom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_manifestation_symptom
      @formula_manifestation_symptom = FormulaManifestationSymptom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_manifestation_symptom_params
      params.require(:formula_manifestation_symptom).permit(:formula_manifestation_id, :symptom_id)
    end
end
