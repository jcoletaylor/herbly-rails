class HerbCombinationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_combination, only: [:show, :update, :destroy]

  # GET /herb_combinations
  # GET /herb_combinations.json
  def index
    @herb_combinations = HerbCombination.all
  end

  # GET /herb_combinations/1
  # GET /herb_combinations/1.json
  def show
  end

  # POST /herb_combinations
  # POST /herb_combinations.json
  def create
    @herb_combination = HerbCombination.new(herb_combination_params)

    if @herb_combination.save
      render :show, status: :created, location: @herb_combination
    else
      render json: @herb_combination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combinations/1
  # PATCH/PUT /herb_combinations/1.json
  def update
    if @herb_combination.update(herb_combination_params)
      render :show, status: :ok, location: @herb_combination
    else
      render json: @herb_combination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combinations/1
  # DELETE /herb_combinations/1.json
  def destroy
    @herb_combination.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_combination
      @herb_combination = HerbCombination.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_combination_params
      params.require(:herb_combination).permit(:description)
    end
end
