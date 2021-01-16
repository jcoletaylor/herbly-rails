class FormulaNotesController < ApplicationController
  
  before_action :set_formula_note, only: [:show]

  # GET /formula_notes
  # GET /formula_notes.json
  def index
    @formula_notes = FormulaNote.all
  end

  # GET /formula_notes/1
  # GET /formula_notes/1.json
  def show
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
