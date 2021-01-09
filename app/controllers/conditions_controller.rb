class ConditionsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_condition, only: [:show, :update, :destroy]

  # GET /conditions
  # GET /conditions.json
  def index
    @conditions = Condition.all
  end

  # GET /conditions/1
  # GET /conditions/1.json
  def show
  end

  # POST /conditions
  # POST /conditions.json
  def create
    @condition = Condition.new(condition_params)

    if @condition.save
      render :show, status: :created, location: @condition
    else
      render json: @condition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conditions/1
  # PATCH/PUT /conditions/1.json
  def update
    if @condition.update(condition_params)
      render :show, status: :ok, location: @condition
    else
      render json: @condition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conditions/1
  # DELETE /conditions/1.json
  def destroy
    @condition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition
      @condition = Condition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def condition_params
      params.require(:condition).permit(:name)
    end
end
