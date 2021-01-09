class HerbDosagesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_dosage, only: [:show, :update, :destroy]

  # GET /herb_dosages
  # GET /herb_dosages.json
  def index
    @herb_dosages = HerbDosage.all
  end

  # GET /herb_dosages/1
  # GET /herb_dosages/1.json
  def show
  end

  # POST /herb_dosages
  # POST /herb_dosages.json
  def create
    @herb_dosage = HerbDosage.new(herb_dosage_params)

    if @herb_dosage.save
      render :show, status: :created, location: @herb_dosage
    else
      render json: @herb_dosage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_dosages/1
  # PATCH/PUT /herb_dosages/1.json
  def update
    if @herb_dosage.update(herb_dosage_params)
      render :show, status: :ok, location: @herb_dosage
    else
      render json: @herb_dosage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_dosages/1
  # DELETE /herb_dosages/1.json
  def destroy
    @herb_dosage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_dosage
      @herb_dosage = HerbDosage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_dosage_params
      params.require(:herb_dosage).permit(:herb_id, :herb_dosage_type_id, :dose)
    end
end
