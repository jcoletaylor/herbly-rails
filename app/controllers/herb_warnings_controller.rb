class HerbWarningsController < ApplicationController
  before_action :set_herb_warning, only: [:show, :update, :destroy]

  # GET /herb_warnings
  # GET /herb_warnings.json
  def index
    @herb_warnings = HerbWarning.all
  end

  # GET /herb_warnings/1
  # GET /herb_warnings/1.json
  def show
  end

  # POST /herb_warnings
  # POST /herb_warnings.json
  def create
    @herb_warning = HerbWarning.new(herb_warning_params)

    if @herb_warning.save
      render :show, status: :created, location: @herb_warning
    else
      render json: @herb_warning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_warnings/1
  # PATCH/PUT /herb_warnings/1.json
  def update
    if @herb_warning.update(herb_warning_params)
      render :show, status: :ok, location: @herb_warning
    else
      render json: @herb_warning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_warnings/1
  # DELETE /herb_warnings/1.json
  def destroy
    @herb_warning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_warning
      @herb_warning = HerbWarning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_warning_params
      params.require(:herb_warning).permit(:herb_warning_type_id, :warning)
    end
end
