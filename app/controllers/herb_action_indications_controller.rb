class HerbActionIndicationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_action_indication, only: [:show, :update, :destroy]

  # GET /herb_action_indications
  # GET /herb_action_indications.json
  def index
    @herb_action_indications = HerbActionIndication.all
  end

  # GET /herb_action_indications/1
  # GET /herb_action_indications/1.json
  def show
  end

  # POST /herb_action_indications
  # POST /herb_action_indications.json
  def create
    @herb_action_indication = HerbActionIndication.new(herb_action_indication_params)

    if @herb_action_indication.save
      render :show, status: :created, location: @herb_action_indication
    else
      render json: @herb_action_indication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_indications/1
  # PATCH/PUT /herb_action_indications/1.json
  def update
    if @herb_action_indication.update(herb_action_indication_params)
      render :show, status: :ok, location: @herb_action_indication
    else
      render json: @herb_action_indication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_indications/1
  # DELETE /herb_action_indications/1.json
  def destroy
    @herb_action_indication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action_indication
      @herb_action_indication = HerbActionIndication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_indication_params
      params.require(:herb_action_indication).permit(:herb_action_id, :indication)
    end
end
