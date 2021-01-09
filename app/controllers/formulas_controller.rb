class FormulasController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula, only: [:show, :update, :destroy]

  # GET /formulas
  # GET /formulas.json
  def index
    @formulas = Formula.all
  end

  # GET /formulas/1
  # GET /formulas/1.json
  def show
  end

  # POST /formulas
  # POST /formulas.json
  def create
    @formula = Formula.new(formula_params)

    if @formula.save
      render :show, status: :created, location: @formula
    else
      render json: @formula.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formulas/1
  # PATCH/PUT /formulas/1.json
  def update
    if @formula.update(formula_params)
      render :show, status: :ok, location: @formula
    else
      render json: @formula.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formulas/1
  # DELETE /formulas/1.json
  def destroy
    @formula.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula
      @formula = Formula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_params
      params.require(:formula).permit(:name, :pinyin, :hanzi, :english, :common_english)
    end
end
