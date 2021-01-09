class HerbNotesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_herb_note, only: [:show, :update, :destroy]

  # GET /herb_notes
  # GET /herb_notes.json
  def index
    @herb_notes = HerbNote.all
  end

  # GET /herb_notes/1
  # GET /herb_notes/1.json
  def show
  end

  # POST /herb_notes
  # POST /herb_notes.json
  def create
    @herb_note = HerbNote.new(herb_note_params)

    if @herb_note.save
      render :show, status: :created, location: @herb_note
    else
      render json: @herb_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_notes/1
  # PATCH/PUT /herb_notes/1.json
  def update
    if @herb_note.update(herb_note_params)
      render :show, status: :ok, location: @herb_note
    else
      render json: @herb_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_notes/1
  # DELETE /herb_notes/1.json
  def destroy
    @herb_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_note
      @herb_note = HerbNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_note_params
      params.require(:herb_note).permit(:herb_id, :note)
    end
end
