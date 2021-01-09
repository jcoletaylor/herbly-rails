class FormulaInteractionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_interaction, only: [:show, :update, :destroy]

  # GET /formula_interactions
  # GET /formula_interactions.json
  def index
    @formula_interactions = FormulaInteraction.all
  end

  # GET /formula_interactions/1
  # GET /formula_interactions/1.json
  def show
  end

  # POST /formula_interactions
  # POST /formula_interactions.json
  def create
    @formula_interaction = FormulaInteraction.new(formula_interaction_params)

    if @formula_interaction.save
      render :show, status: :created, location: @formula_interaction
    else
      render json: @formula_interaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_interactions/1
  # PATCH/PUT /formula_interactions/1.json
  def update
    if @formula_interaction.update(formula_interaction_params)
      render :show, status: :ok, location: @formula_interaction
    else
      render json: @formula_interaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_interactions/1
  # DELETE /formula_interactions/1.json
  def destroy
    @formula_interaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_interaction
      @formula_interaction = FormulaInteraction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_interaction_params
      params.require(:formula_interaction).permit(:formula_id, :interaction)
    end
end
