class HerbPropertiesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_property, only: [:show, :update, :destroy]

  # GET /herb_properties
  # GET /herb_properties.json
  def index
    @herb_properties = HerbProperty.all
  end

  # GET /herb_properties/1
  # GET /herb_properties/1.json
  def show
  end

  # POST /herb_properties
  # POST /herb_properties.json
  def create
    @herb_property = HerbProperty.new(herb_property_params)

    if @herb_property.save
      render :show, status: :created, location: @herb_property
    else
      render json: @herb_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_properties/1
  # PATCH/PUT /herb_properties/1.json
  def update
    if @herb_property.update(herb_property_params)
      render :show, status: :ok, location: @herb_property
    else
      render json: @herb_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_properties/1
  # DELETE /herb_properties/1.json
  def destroy
    @herb_property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_property
      @herb_property = HerbProperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_property_params
      params.require(:herb_property).permit(:herb_id, :herb_property_type_id, :precedence_type_id, :property)
    end
end
