class HerbCombinationUseCasesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_combination_use_case, only: [:show, :update, :destroy]

  # GET /herb_combination_use_cases
  # GET /herb_combination_use_cases.json
  def index
    @herb_combination_use_cases = HerbCombinationUseCase.all
  end

  # GET /herb_combination_use_cases/1
  # GET /herb_combination_use_cases/1.json
  def show
  end

  # POST /herb_combination_use_cases
  # POST /herb_combination_use_cases.json
  def create
    @herb_combination_use_case = HerbCombinationUseCase.new(herb_combination_use_case_params)

    if @herb_combination_use_case.save
      render :show, status: :created, location: @herb_combination_use_case
    else
      render json: @herb_combination_use_case.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combination_use_cases/1
  # PATCH/PUT /herb_combination_use_cases/1.json
  def update
    if @herb_combination_use_case.update(herb_combination_use_case_params)
      render :show, status: :ok, location: @herb_combination_use_case
    else
      render json: @herb_combination_use_case.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combination_use_cases/1
  # DELETE /herb_combination_use_cases/1.json
  def destroy
    @herb_combination_use_case.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_combination_use_case
      @herb_combination_use_case = HerbCombinationUseCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_combination_use_case_params
      params.require(:herb_combination_use_case).permit(:herb_combination_id, :use_case)
    end
end
