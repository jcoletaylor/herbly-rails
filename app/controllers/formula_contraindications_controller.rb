class FormulaContraindicationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_contraindication, only: [:show, :update, :destroy]

  # GET /formula_contraindications
  # GET /formula_contraindications.json
  def index
    @formula_contraindications = FormulaContraindication.all
  end

  # GET /formula_contraindications/1
  # GET /formula_contraindications/1.json
  def show
  end

  # POST /formula_contraindications
  # POST /formula_contraindications.json
  def create
    @formula_contraindication = FormulaContraindication.new(formula_contraindication_params)

    if @formula_contraindication.save
      render :show, status: :created, location: @formula_contraindication
    else
      render json: @formula_contraindication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_contraindications/1
  # PATCH/PUT /formula_contraindications/1.json
  def update
    if @formula_contraindication.update(formula_contraindication_params)
      render :show, status: :ok, location: @formula_contraindication
    else
      render json: @formula_contraindication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_contraindications/1
  # DELETE /formula_contraindications/1.json
  def destroy
    @formula_contraindication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_contraindication
      @formula_contraindication = FormulaContraindication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_contraindication_params
      params.require(:formula_contraindication).permit(:formula_id, :contraindication)
    end
end
