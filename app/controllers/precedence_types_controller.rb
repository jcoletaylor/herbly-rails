class PrecedenceTypesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_precedence_type, only: [:show, :update, :destroy]

  # GET /precedence_types
  # GET /precedence_types.json
  def index
    @precedence_types = PrecedenceType.all
  end

  # GET /precedence_types/1
  # GET /precedence_types/1.json
  def show
  end

  # POST /precedence_types
  # POST /precedence_types.json
  def create
    @precedence_type = PrecedenceType.new(precedence_type_params)

    if @precedence_type.save
      render :show, status: :created, location: @precedence_type
    else
      render json: @precedence_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /precedence_types/1
  # PATCH/PUT /precedence_types/1.json
  def update
    if @precedence_type.update(precedence_type_params)
      render :show, status: :ok, location: @precedence_type
    else
      render json: @precedence_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /precedence_types/1
  # DELETE /precedence_types/1.json
  def destroy
    @precedence_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precedence_type
      @precedence_type = PrecedenceType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def precedence_type_params
      params.require(:precedence_type).permit(:name, :description)
    end
end
