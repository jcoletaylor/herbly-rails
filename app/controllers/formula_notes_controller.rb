class FormulaNotesController < AuthenticatedController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_formula_note, only: [:show, :update, :destroy]

  # GET /formula_notes
  # GET /formula_notes.json
  def index
    @formula_notes = FormulaNote.all
  end

  # GET /formula_notes/1
  # GET /formula_notes/1.json
  def show
  end

  # POST /formula_notes
  # POST /formula_notes.json
  def create
    @formula_note = FormulaNote.new(formula_note_params)

    if @formula_note.save
      render :show, status: :created, location: @formula_note
    else
      render json: @formula_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_notes/1
  # PATCH/PUT /formula_notes/1.json
  def update
    if @formula_note.update(formula_note_params)
      render :show, status: :ok, location: @formula_note
    else
      render json: @formula_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_notes/1
  # DELETE /formula_notes/1.json
  def destroy
    @formula_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_note
      @formula_note = FormulaNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_note_params
      params.require(:formula_note).permit(:formula_id, :note)
    end
end
