class FormulaAlsoKnownsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_also_known, only: [:show, :update, :destroy]

  # GET /formula_also_knowns
  # GET /formula_also_knowns.json
  def index
    @formula_also_knowns = FormulaAlsoKnown.all
  end

  # GET /formula_also_knowns/1
  # GET /formula_also_knowns/1.json
  def show
  end

  # POST /formula_also_knowns
  # POST /formula_also_knowns.json
  def create
    @formula_also_known = FormulaAlsoKnown.new(formula_also_known_params)

    if @formula_also_known.save
      render :show, status: :created, location: @formula_also_known
    else
      render json: @formula_also_known.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_also_knowns/1
  # PATCH/PUT /formula_also_knowns/1.json
  def update
    if @formula_also_known.update(formula_also_known_params)
      render :show, status: :ok, location: @formula_also_known
    else
      render json: @formula_also_known.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_also_knowns/1
  # DELETE /formula_also_knowns/1.json
  def destroy
    @formula_also_known.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_also_known
      @formula_also_known = FormulaAlsoKnown.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_also_known_params
      params.require(:formula_also_known).permit(:name, :formula_id)
    end
end
