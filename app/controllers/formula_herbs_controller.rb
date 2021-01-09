class FormulaHerbsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_herb, only: [:show, :update, :destroy]

  # GET /formula_herbs
  # GET /formula_herbs.json
  def index
    @formula_herbs = FormulaHerb.all
  end

  # GET /formula_herbs/1
  # GET /formula_herbs/1.json
  def show
  end

  # POST /formula_herbs
  # POST /formula_herbs.json
  def create
    @formula_herb = FormulaHerb.new(formula_herb_params)

    if @formula_herb.save
      render :show, status: :created, location: @formula_herb
    else
      render json: @formula_herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_herbs/1
  # PATCH/PUT /formula_herbs/1.json
  def update
    if @formula_herb.update(formula_herb_params)
      render :show, status: :ok, location: @formula_herb
    else
      render json: @formula_herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_herbs/1
  # DELETE /formula_herbs/1.json
  def destroy
    @formula_herb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_herb
      @formula_herb = FormulaHerb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_herb_params
      params.require(:formula_herb).permit(:formula_id, :herb_id, :dosage)
    end
end
