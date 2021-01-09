class HerbWarningTypesController < ApplicationController
  before_action :set_herb_warning_type, only: [:show, :update, :destroy]

  # GET /herb_warning_types
  # GET /herb_warning_types.json
  def index
    @herb_warning_types = HerbWarningType.all
  end

  # GET /herb_warning_types/1
  # GET /herb_warning_types/1.json
  def show
  end

  # POST /herb_warning_types
  # POST /herb_warning_types.json
  def create
    @herb_warning_type = HerbWarningType.new(herb_warning_type_params)

    if @herb_warning_type.save
      render :show, status: :created, location: @herb_warning_type
    else
      render json: @herb_warning_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_warning_types/1
  # PATCH/PUT /herb_warning_types/1.json
  def update
    if @herb_warning_type.update(herb_warning_type_params)
      render :show, status: :ok, location: @herb_warning_type
    else
      render json: @herb_warning_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_warning_types/1
  # DELETE /herb_warning_types/1.json
  def destroy
    @herb_warning_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_warning_type
      @herb_warning_type = HerbWarningType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_warning_type_params
      params.require(:herb_warning_type).permit(:name)
    end
end
