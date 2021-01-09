class HerbActionAnnotationsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_action_annotation, only: [:show, :update, :destroy]

  # GET /herb_action_annotations
  # GET /herb_action_annotations.json
  def index
    @herb_action_annotations = HerbActionAnnotation.all
  end

  # GET /herb_action_annotations/1
  # GET /herb_action_annotations/1.json
  def show
  end

  # POST /herb_action_annotations
  # POST /herb_action_annotations.json
  def create
    @herb_action_annotation = HerbActionAnnotation.new(herb_action_annotation_params)

    if @herb_action_annotation.save
      render :show, status: :created, location: @herb_action_annotation
    else
      render json: @herb_action_annotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_annotations/1
  # PATCH/PUT /herb_action_annotations/1.json
  def update
    if @herb_action_annotation.update(herb_action_annotation_params)
      render :show, status: :ok, location: @herb_action_annotation
    else
      render json: @herb_action_annotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_annotations/1
  # DELETE /herb_action_annotations/1.json
  def destroy
    @herb_action_annotation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action_annotation
      @herb_action_annotation = HerbActionAnnotation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_annotation_params
      params.require(:herb_action_annotation).permit(:herb_action_id, :annotation)
    end
end
