class HerbCombinationHerbsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_combination_herb, only: [:show, :update, :destroy]

  # GET /herb_combination_herbs
  # GET /herb_combination_herbs.json
  def index
    @herb_combination_herbs = HerbCombinationHerb.all
  end

  # GET /herb_combination_herbs/1
  # GET /herb_combination_herbs/1.json
  def show
  end

  # POST /herb_combination_herbs
  # POST /herb_combination_herbs.json
  def create
    @herb_combination_herb = HerbCombinationHerb.new(herb_combination_herb_params)

    if @herb_combination_herb.save
      render :show, status: :created, location: @herb_combination_herb
    else
      render json: @herb_combination_herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combination_herbs/1
  # PATCH/PUT /herb_combination_herbs/1.json
  def update
    if @herb_combination_herb.update(herb_combination_herb_params)
      render :show, status: :ok, location: @herb_combination_herb
    else
      render json: @herb_combination_herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combination_herbs/1
  # DELETE /herb_combination_herbs/1.json
  def destroy
    @herb_combination_herb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_combination_herb
      @herb_combination_herb = HerbCombinationHerb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_combination_herb_params
      params.require(:herb_combination_herb).permit(:herb_id, :herb_combination_id)
    end
end
