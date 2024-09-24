# frozen_string_literal: true

class FormulaDocumentGenerator
  attr_accessor :formula

  def initialize(f)
    # trying to avoid N+1 queries
    @formula = Formula
               .includes(:formula_also_knowns)
               .includes(formula_herbs: [:herb, { formula_herb_actions: [:formula_named_action] }])
               .includes(formula_actions: [:formula_named_action])
               .includes(:syndromes)
               .includes(:conditions)
               .includes(:formula_contraindications)
               .includes(:formula_interactions)
               .includes(:formula_notes)
               .includes(formula_manifestation: [{ formula_manifestation_symptoms: [:symptom] }])
               .includes(formula_modification_sets: [{ formula_modifications: :herb }])
               .find(f.id)
  end

  def generate
    # Generate a document based on the formula
    # This document will be used for vector search
    formula_features = %i[
      formula_names
      formula_also_knowns herbs formula_herb_actions formula_named_actions
      formula_syndromes conditions formula_contraindications
      formula_interactions formula_notes formula_manifestation
      symptoms formula_modification_sets
    ]
    document_strings =
      formula_features.map do |feature_sym|
        public_send(:"generate_#{feature_sym}_document")
      end
    document_strings.join("\n\n")
  end

  def generate_formula_names_document
    "Formula Names: #{formula.pinyin}, #{formula.english}, #{formula.common_english}, #{formula.hanzi}\n"
  end

  def generate_formula_also_knowns_document
    ["#{formula.pinyin} is also known as:", formula.formula_also_knowns.map(&:name).join(', ')].join("\n")
  end

  def generate_herbs_document
    document_strings = ["#{formula.pinyin} contains the following herbs:"]
    formula.herbs.each do |herb|
      document_strings << <<~HERB
        Herb Names: #{herb.pinyin}, #{herb.common_english}, #{herb.hanzi}, #{herb.latin}, #{herb.pharm_latin}
        Category: #{herb.herb_category.name}, #{herb.herb_category.description}
        Properties: #{herb.herb_properties.map(&:for_document).join(', ')}
      HERB
    end
    document_strings.join("\n")
  end

  def generate_formula_herb_actions_document
    document_strings = ["#{formula.pinyin} has herbs that take the following actions:"]
    formula.formula_herb_actions.each do |formula_herb_action|
      document_strings << "#{formula_herb_action.formula_herb.herb.pinyin} at dosage #{formula_herb_action.formula_herb.dosage}: #{formula_herb_action.action_name}"
    end
    document_strings.join("\n")
  end

  def generate_formula_named_actions_document
    ["#{formula.pinyin} has the following actions:", formula.formula_named_actions.map(&:name).join(', ')].join("\n")
  end

  def generate_formula_syndromes_document
    ["#{formula.pinyin} treats the following syndromes:", formula.formula_syndromes.map(&:syndrome_name).join(', ')].join("\n")
  end

  def generate_conditions_document
    ["#{formula.pinyin} treats the following conditions:", formula.conditions.map(&:name).join(', ')].join("\n")
  end

  def generate_formula_contraindications_document
    ["#{formula.pinyin} has the following contraindications:", formula.formula_contraindications.map(&:contraindication).join(', ')].join("\n")
  end

  def generate_formula_interactions_document
    ["#{formula.pinyin} has the following interactions:", formula.formula_interactions.map(&:interaction).join(', ')].join("\n")
  end

  def generate_formula_notes_document
    ["#{formula.pinyin} has the following notes:", formula.formula_notes.map(&:note)].join("\n")
  end

  def generate_formula_manifestation_document
    manifest = formula.formula_manifestation
    manifest ? "Objective Signs: Pulse #{manifest.pulse}, Tongue #{manifest.tongue}, Tongue Coat #{manifest.tongue_coat}" : ''
  end

  def generate_symptoms_document
    ["#{formula.pinyin} treats the following symptoms:", formula.symptoms.map(&:name).join(', ')].join("\n")
  end

  def generate_formula_modification_sets_document
    document_strings = []
    formula.formula_modification_sets.each do |formula_modification_set|
      document_strings << "with the following modifications #{formula.pinyin} can be modified for #{formula_modification_set.purpose}:"
      formula_modification_set.formula_modifications.each do |formula_modification|
        document_strings << "#{formula_modification.herb.pinyin} #{formula_modification.modification}".strip
      end
      document_strings << "\n"
    end
    document_strings.join("\n")
  end
end
