class ConditionsController < ApplicationController
  
  before_action :set_condition, only: [:show]

  # GET /conditions
  # GET /conditions.json
  def index
    @conditions = Condition.all
  end

  # GET /conditions/1
  # GET /conditions/1.json
  def show
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
