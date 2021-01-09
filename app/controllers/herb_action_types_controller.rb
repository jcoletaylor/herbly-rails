class HerbActionTypesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_action_type, only: [:show, :update, :destroy]

  # GET /herb_action_types
  # GET /herb_action_types.json
  def index
    @herb_action_types = HerbActionType.all
  end

  # GET /herb_action_types/1
  # GET /herb_action_types/1.json
  def show
  end

  # POST /herb_action_types
  # POST /herb_action_types.json
  def create
    @herb_action_type = HerbActionType.new(herb_action_type_params)

    if @herb_action_type.save
      render :show, status: :created, location: @herb_action_type
    else
      render json: @herb_action_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_types/1
  # PATCH/PUT /herb_action_types/1.json
  def update
    if @herb_action_type.update(herb_action_type_params)
      render :show, status: :ok, location: @herb_action_type
    else
      render json: @herb_action_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_types/1
  # DELETE /herb_action_types/1.json
  def destroy
    @herb_action_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action_type
      @herb_action_type = HerbActionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_type_params
      params.require(:herb_action_type).permit(:name, :description)
    end
end
