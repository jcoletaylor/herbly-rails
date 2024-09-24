# frozen_string_literal: true

require_relative 'base_loader'
require 'json'

module Loader
  class HerbLoader < Loader::BaseLoader
    def load_data(data)
      herb = create_herb(data)
      create_herb_properties(herb, data)
      create_herb_dosage(herb, data)
      create_herb_actions(herb, data)
      create_herb_warnings(herb, data)
      create_herb_combinations(herb, data)
      create_herb_notes(herb, data)
    end

    def create_herb(data)
      category_name = data[:category].empty? ? 'unknown' : data[:category]
      category = HerbCategory.find_or_create_by!({ name: category_name })
      herb = Herb.find_or_create_by!({ name: data[:herb], herb_category: category })
      herb_attrs = {
        name: data[:herb],
          herb_category: category,
          pinyin: data[:names][:pinyin],
          hanzi: data[:names][:hanzi],
          latin: data[:names][:latin],
          pharm_latin: data[:names][:pharmaceutical_latin],
          common_english: data[:names][:common_english].join(', ')
      }
      herb.update!(herb_attrs)
      herb
    end

    def create_herb_properties(herb, data)
      property_types = %i[taste temperature channels]
      precedence_types = %i[primary secondary]
      property_types.each do |prop_type|
        precedence_types.each do |prec_type|
          properties =
            begin
              data[:properties][prop_type][prec_type]
            rescue StandardError
              nil
            end
          next unless properties.is_a?(Array) && !properties.empty?

          property_type = HerbPropertyType.find_or_create_by!({ name: prop_type.to_s })
          precedence_type = PrecedenceType.find_or_create_by!({ name: prec_type.to_s })
          properties.each do |property|
            next if property.blank?

            HerbProperty.find_or_create_by!({ herb:, property:, herb_property_type: property_type, precedence_type: })
          end
        end
      end
    end

    def create_herb_dosage(herb, data)
      dosage_types = %i[general tincture other]
      dosage_types.each do |dose_type|
        dosage = data[:properties][:dose][dose_type]
        if dosage.is_a?(Array)
          dosage = dosage.join(', ')
        end
        next if dosage.blank?

        herb_dosage_type = HerbDosageType.find_or_create_by!({ name: dose_type.to_s })
        HerbDosage.find_or_create_by!({ herb:, dosage:, herb_dosage_type: })
      end
    end

    def create_herb_actions(herb, data)
      action_sets =
        begin
          data[:actions][:sets]
        rescue StandardError
          nil
        end
      return if action_sets.blank?

      action_sets.each do |action_set|
        action = action_set[:action][:primary]
        next if action.blank?

        herb_action_type = HerbActionType.find_or_create_by!({ name: action })
        herb_action = HerbAction.find_or_create_by!({ herb:, herb_action_type: })
        annotations = action_set[:action][:annotations]
        if annotations.present?
          annotations.each do |annotation|
            next if annotation.blank?

            HerbActionAnnotation.find_or_create_by!({ herb_action:, annotation: })
          end
        end
        indications = action_set[:indications]
        next if indications.blank?

        indications.each do |indication|
          next if indication.blank?

          HerbActionIndication.find_or_create_by!({ herb_action:, indication: })
        end
      end
    end

    def create_herb_warnings(herb, data)
      warning_types = %i[contraindications incompatibilities interactions]
      warning_types.each do |warning_type|
        warnings = data[:contra][warning_type]
        next if warnings.blank?

        warnings.each do |warning|
          next if warning.blank?

          herb_warning_type = HerbWarningType.find_or_create_by!({ name: warning_type.to_s.singularize })
          HerbWarning.find_or_create_by!({ herb:, herb_warning_type:, warning: })
        end
      end
    end

    def create_herb_combinations(herb, data)
      combo_sets =
        begin
          data[:combinations][:sets]
        rescue StandardError
          nil
        end
      return if combo_sets.blank?

      combo_sets.each do |combination|
        related_herbs = combination[:related_herbs].dup
        related_herbs << herb.name
        description = related_herbs.join('+')
        herb_combination = HerbCombination.find_or_create_by!({ description: })
        related_herbs.each do |related_herb_name|
          # we are just acknowledging we have to run seed twice here
          # to make sure all the herbs are loaded first
          # it's fine
          related_herb = Herb.where({ name: related_herb_name }).first
          next unless related_herb

          HerbCombinationHerb.find_or_create_by!({ herb: related_herb, herb_combination: })
        end
        use_cases = combination[:use_cases]
        next if use_cases.blank?

        combination[:use_cases].each do |use_case|
          next if use_case.blank?

          HerbCombinationUseCase.find_or_create_by!({ herb_combination:, use_case: })
        end
      end
    end

    def create_herb_notes(herb, data)
      notes = data[:notes]
      return if notes.blank?

      notes.reject!(&:blank?)
      notes.each do |note|
        HerbNote.find_or_create_by!({ herb:, note: })
      end
    end
  end
end
