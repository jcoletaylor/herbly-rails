class HerbActionAnnotationsController < ApplicationController
  
  before_action :set_herb_action_annotation, only: [:show]

  # GET /herb_action_annotations
  # GET /herb_action_annotations.json
  def index
    @herb_action_annotations = HerbActionAnnotation.all
  end

  # GET /herb_action_annotations/1
  # GET /herb_action_annotations/1.json
  def show
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
