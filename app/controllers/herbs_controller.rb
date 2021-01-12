class HerbsController < AuthenticatedController
  include PageSort

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb, only: [:show, :update, :destroy]
  before_action :set_page_sort_params, only: [:index]

  # GET /herbs
  # GET /herbs.json
  def index
    @herbs = Herb
      .includes(:herb_category)
      .includes(herb_properties: [:precedence_type, :herb_property_type])
      .includes(herb_dosages: [:herb_dosage_type])
      .limit(page_sort_params[:limit])
      .offset(page_sort_params[:offset])
      .order(page_sort_params[:order])
      .all
  end

  # GET /herbs/1
  # GET /herbs/1.json
  def show
  end

  # POST /herbs
  # POST /herbs.json
  def create
    @herb = Herb.new(herb_params)

    if @herb.save
      render :show, status: :created, location: @herb
    else
      render json: @herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herbs/1
  # PATCH/PUT /herbs/1.json
  def update
    if @herb.update(herb_params)
      render :show, status: :ok, location: @herb
    else
      render json: @herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herbs/1
  # DELETE /herbs/1.json
  def destroy
    @herb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb
      @herb = Herb
        .includes(:herb_category)
        .includes(herb_properties: [:precedence_type, :herb_property_type])
        .includes(herb_dosages: [:herb_dosage_type])
        .find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_params
      params.require(:herb).permit(:name, :herb_category_id, :pinyin, :hanzi, :latin, :pharm_latin, :common_english)
    end

    def set_page_sort_params
      build_page_sort_params(:herb)
    end
end
