# frozen_string_literal: true

class FormulaDocumentGenerator
  attr_accessor :formula

  def initialize(formula)
    @formula = formula
  end

  def generate
    # Generate a document based on the formula
    # This document will be used for vector search
    render_path = Rails.root.join('app', 'views', 'formulas', '_formula.md.erb')
    renderer = ERB.new(File.read(render_path), trim_mode: '%<>')
    renderer.result(binding)
  end
end
