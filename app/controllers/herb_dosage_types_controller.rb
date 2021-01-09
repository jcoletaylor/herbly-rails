class HerbDosageTypesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_dosage_type, only: [:show, :update, :destroy]

  # GET /herb_dosage_types
  # GET /herb_dosage_types.json
  def index
    @herb_dosage_types = HerbDosageType.all
  end

  # GET /herb_dosage_types/1
  # GET /herb_dosage_types/1.json
  def show
  end

  # POST /herb_dosage_types
  # POST /herb_dosage_types.json
  def create
    @herb_dosage_type = HerbDosageType.new(herb_dosage_type_params)

    if @herb_dosage_type.save
      render :show, status: :created, location: @herb_dosage_type
    else
      render json: @herb_dosage_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_dosage_types/1
  # PATCH/PUT /herb_dosage_types/1.json
  def update
    if @herb_dosage_type.update(herb_dosage_type_params)
      render :show, status: :ok, location: @herb_dosage_type
    else
      render json: @herb_dosage_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_dosage_types/1
  # DELETE /herb_dosage_types/1.json
  def destroy
    @herb_dosage_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_dosage_type
      @herb_dosage_type = HerbDosageType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_dosage_type_params
      params.require(:herb_dosage_type).permit(:name, :description)
    end
end
