# frozen_string_literal: true

require_relative 'base_loader'
require 'json'
module Loader
  class FormulaLoader < Loader::BaseLoader
    def load_data(data)
      formula = create_formula(data)
      create_formula_also_known(formula, data)
      associate_herbs_to_formula(formula, data)
      create_formula_actions(formula, data)
      create_formula_syndromes(formula, data)
      create_formula_manifestations(formula, data)
      create_formula_conditions(formula, data)
      create_formula_contraindications(formula, data)
      create_formula_interactions(formula, data)
      create_formula_notes(formula, data)
      create_formula_modifications(formula, data)
    end

    def create_formula(data)
      formula = Formula.find_or_create_by!({ name: data[:formula] })
      formula_attrs = {
        pinyin: data[:names][:pinyin],
          hanzi: data[:names][:hanzi],
          english: data[:names][:english],
          common_english: data[:names][:common_english]
      }
      formula.update!(formula_attrs)
      formula
    end

    def create_formula_also_known(formula, data)
      data[:names][:aka].each do |aka|
        next if aka.blank?

        FormulaAlsoKnown.find_or_create_by!({ formula:, name: aka })
      end
    end

    def associate_herbs_to_formula(formula, data)
      data[:herbs].each do |herb_association|
        herb = Herb.where({ name: herb_association[:herb] }).first
        unless herb
          category = HerbCategory.find_or_create_by!({ name: 'unknown' })
          herb = Herb.find_or_create_by!({ name: herb_association[:herb], herb_category: category })
        end
        dosage = herb_association[:dosage].blank? ? 'unknown' : herb_association[:dosage]
        formula_herb = FormulaHerb.find_or_create_by!({ herb:, formula:, dosage: })
        herb_association[:actions].each do |action|
          next if action.blank?

          named_action = FormulaNamedAction.find_or_create_by!({ name: action })
          FormulaHerbAction.find_or_create_by!({ formula_herb:, formula_named_action: named_action })
        end
      end
    end

    def create_formula_actions(formula, data)
      data[:actions].each do |action|
        next if action.blank?

        named_action = FormulaNamedAction.find_or_create_by!({ name: action })
        FormulaAction.find_or_create_by!({ formula:, formula_named_action: named_action })
      end
    end

    def create_formula_syndromes(formula, data)
      data[:syndromes].each do |syndrome_name|
        next if syndrome_name.blank?

        syndrome = Syndrome.find_or_create_by!({ name: syndrome_name })
        FormulaSyndrome.find_or_create_by!({ syndrome:, formula: })
      end
    end

    def create_formula_manifestations(formula, data)
      tongue = data[:manifestations][:tongue] || 'unknown'
      tongue_coat = data[:manifestations][:tongue_coat] || 'unknown'
      pulse = data[:manifestations][:pulse] || 'unknown'
      manifestation = FormulaManifestation.find_or_create_by!({ formula:, tongue:, tongue_coat:, pulse: })
      data[:manifestations][:symptoms].each do |symptom_name|
        next if symptom_name.blank?

        symptom = Symptom.find_or_create_by!({ name: symptom_name })
        FormulaManifestationSymptom.find_or_create_by!({ formula_manifestation: manifestation, symptom: })
      end
    end

    def create_formula_conditions(formula, data)
      data[:conditions].each do |condition_name|
        next if condition_name[:name].blank?

        condition = Condition.find_or_create_by!({ name: condition_name[:name] })
        FormulaCondition.find_or_create_by!({ formula:, condition: })
      end
    end

    def create_formula_contraindications(formula, data)
      data[:contra][:contraindications].each do |item|
        next if item.blank?

        FormulaContraindication.find_or_create_by!({ formula:, contraindication: item })
      end
    end

    def create_formula_interactions(formula, data)
      data[:contra][:interactions].each do |item|
        next if item.blank?

        FormulaInteraction.find_or_create_by!({ formula:, interaction: item })
      end
    end

    def create_formula_notes(formula, data)
      data[:notes].each do |item|
        next if item.blank?

        FormulaNote.find_or_create_by!({ formula:, note: item })
      end
    end

    def create_formula_modifications(formula, data)
      data[:modifications].each do |mod_set|
        purpose = mod_set[:purpose]
        next if purpose.blank?

        formula_modification_set = FormulaModificationSet.find_or_create_by!({ formula:, purpose: })
        mod_set[:modifications].each do |mod|
          next if mod[:herb].blank? || mod[:modification].blank?

          herb = Herb.where({ name: mod[:herb] }).first
          unless herb
            category = HerbCategory.find_or_create_by!({ name: 'unknown' })
            herb = Herb.find_or_create_by!({ name: mod[:herb], herb_category: category })
          end
          FormulaModification.find_or_create_by!({ formula_modification_set:, herb:, modification: mod[:modification] })
        end
      end
    end
  end
end
