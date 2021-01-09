class HerbCategoriesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_category, only: [:show, :update, :destroy]

  # GET /herb_categories
  # GET /herb_categories.json
  def index
    @herb_categories = HerbCategory.all
  end

  # GET /herb_categories/1
  # GET /herb_categories/1.json
  def show
  end

  # POST /herb_categories
  # POST /herb_categories.json
  def create
    @herb_category = HerbCategory.new(herb_category_params)

    if @herb_category.save
      render :show, status: :created, location: @herb_category
    else
      render json: @herb_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_categories/1
  # PATCH/PUT /herb_categories/1.json
  def update
    if @herb_category.update(herb_category_params)
      render :show, status: :ok, location: @herb_category
    else
      render json: @herb_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_categories/1
  # DELETE /herb_categories/1.json
  def destroy
    @herb_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_category
      @herb_category = HerbCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_category_params
      params.require(:herb_category).permit(:name, :description)
    end
end
