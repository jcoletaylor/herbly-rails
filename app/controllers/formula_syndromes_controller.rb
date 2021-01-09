class FormulaSyndromesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_syndrome, only: [:show, :update, :destroy]

  # GET /formula_syndromes
  # GET /formula_syndromes.json
  def index
    @formula_syndromes = FormulaSyndrome.all
  end

  # GET /formula_syndromes/1
  # GET /formula_syndromes/1.json
  def show
  end

  # POST /formula_syndromes
  # POST /formula_syndromes.json
  def create
    @formula_syndrome = FormulaSyndrome.new(formula_syndrome_params)

    if @formula_syndrome.save
      render :show, status: :created, location: @formula_syndrome
    else
      render json: @formula_syndrome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_syndromes/1
  # PATCH/PUT /formula_syndromes/1.json
  def update
    if @formula_syndrome.update(formula_syndrome_params)
      render :show, status: :ok, location: @formula_syndrome
    else
      render json: @formula_syndrome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_syndromes/1
  # DELETE /formula_syndromes/1.json
  def destroy
    @formula_syndrome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_syndrome
      @formula_syndrome = FormulaSyndrome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_syndrome_params
      params.require(:formula_syndrome).permit(:formula_id, :syndrome_id)
    end
end
