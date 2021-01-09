class HerbPropertyTypesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_property_type, only: [:show, :update, :destroy]

  # GET /herb_property_types
  # GET /herb_property_types.json
  def index
    @herb_property_types = HerbPropertyType.all
  end

  # GET /herb_property_types/1
  # GET /herb_property_types/1.json
  def show
  end

  # POST /herb_property_types
  # POST /herb_property_types.json
  def create
    @herb_property_type = HerbPropertyType.new(herb_property_type_params)

    if @herb_property_type.save
      render :show, status: :created, location: @herb_property_type
    else
      render json: @herb_property_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_property_types/1
  # PATCH/PUT /herb_property_types/1.json
  def update
    if @herb_property_type.update(herb_property_type_params)
      render :show, status: :ok, location: @herb_property_type
    else
      render json: @herb_property_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_property_types/1
  # DELETE /herb_property_types/1.json
  def destroy
    @herb_property_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_property_type
      @herb_property_type = HerbPropertyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_property_type_params
      params.require(:herb_property_type).permit(:name, :description)
    end
end
