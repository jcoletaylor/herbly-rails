class SyndromesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_syndrome, only: [:show, :update, :destroy]

  # GET /syndromes
  # GET /syndromes.json
  def index
    @syndromes = Syndrome.all
  end

  # GET /syndromes/1
  # GET /syndromes/1.json
  def show
  end

  # POST /syndromes
  # POST /syndromes.json
  def create
    @syndrome = Syndrome.new(syndrome_params)

    if @syndrome.save
      render :show, status: :created, location: @syndrome
    else
      render json: @syndrome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /syndromes/1
  # PATCH/PUT /syndromes/1.json
  def update
    if @syndrome.update(syndrome_params)
      render :show, status: :ok, location: @syndrome
    else
      render json: @syndrome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /syndromes/1
  # DELETE /syndromes/1.json
  def destroy
    @syndrome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syndrome
      @syndrome = Syndrome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syndrome_params
      params.require(:syndrome).permit(:name)
    end
end
