require_relative 'base_loader'
require 'json'

module Loader
    class HerbLoader < Loader::Base
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
            property_types = [:taste, :temperature, :channels]
            precedence_types = [:primary, :secondary]
            property_types.each do |prop_type|
                precedence_types.each do |prec_type|
                    properties = data[:properties][prop_type][prec_type] rescue nil
                    if properties && properties.is_a?(Array) && !properties.empty?
                        property_type = HerbPropertyType.find_or_create_by!({ name: prop_type.to_s })                
                        precedence_type = PrecedenceType.find_or_create_by!({ name: prec_type.to_s })
                        properties.each do |property|
                            next if property.blank?
                            HerbProperty.find_or_create_by!({
                                herb: herb,
                                property: property,
                                herb_property_type: property_type,
                                precedence_type: precedence_type
                            })
                        end
                    end # end property defined
                end # end precedence type iteration
            end # end property type iteration
        end # end create herb properties

        def create_herb_dosage(herb, data)
            dosage_types = [:general, :tincture, :other]
            dosage_types.each do |dose_type|
                dosage = data[:properties][:dose][dose_type]
                if dosage.is_a?(Array)
                    dosage = dosage.join(', ')
                end
                unless dosage.blank?
                    herb_dosage_type = HerbDosageType.find_or_create_by!({ name: dose_type.to_s })
                    HerbDosage.find_or_create_by!({
                        herb: herb,
                        dosage: dosage,
                        herb_dosage_type: herb_dosage_type
                    })
                end # end unless dosage blank
            end # end dosage types iteration
        end # end create herb dosage

        def create_herb_actions(herb, data)
            action_sets = data[:actions][:sets] rescue nil
            return unless (action_sets && !action_sets.empty?)
            action_sets.each do |action_set|
                action = action_set[:action][:primary]
                next if action.blank?
                herb_action_type = HerbActionType.find_or_create_by!({ name: action })
                herb_action = HerbAction.find_or_create_by!({
                    herb: herb,
                    herb_action_type: herb_action_type,
                })
                annotations = action_set[:action][:annotations]
                unless (!annotations || annotations.empty?)
                    annotations.each do |annotation|
                        unless annotation.blank?
                            HerbActionAnnotation.find_or_create_by!({
                                herb_action: herb_action,
                                annotation: annotation
                            })
                        end
                    end
                end
                indications = action_set[:indications]
                unless (!indications || indications.empty?)
                    indications.each do |indication|
                        unless indication.blank?
                            HerbActionIndication.find_or_create_by!({
                                herb_action: herb_action,
                                indication: indication
                            })
                        end
                    end # end indications iteration
                end # end unless
            end # end action sets iteration
        end # end create herb actions

        def create_herb_warnings(herb, data)
            warning_types = [:contraindications, :incompatibilities, :interactions]
            warning_types.each do |warning_type|
                warnings = data[:contra][warning_type]
                next unless (warnings && !warnings.blank?)
                warnings.each do |warning|
                    unless warning.blank?
                        herb_warning_type = HerbWarningType.find_or_create_by!({
                            name: warning_type.to_s.singularize
                        })
                        HerbWarning.find_or_create_by!({
                            herb: herb,
                            herb_warning_type: herb_warning_type,
                            warning: warning
                        })
                    end # unless warning blank
                end # warnings each
            end # warning types each
        end # create herb warnings

        def create_herb_combinations(herb, data)
            combo_sets = data[:combinations][:sets] rescue nil
            return unless (combo_sets && !combo_sets.empty?)
            combo_sets.each do |combination|
                related_herbs = combination[:related_herbs].dup
                related_herbs << herb.name
                description = related_herbs.join('+')
                herb_combination = HerbCombination.find_or_create_by!({ description: description })
                related_herbs.each do |related_herb_name|
                    # we are just acknowledging we have to run seed twice here
                    # to make sure all the herbs are loaded first
                    # it's fine
                    related_herb = Herb.where({ name: related_herb_name }).first
                    if related_herb
                        HerbCombinationHerb.find_or_create_by!({
                            herb: related_herb,
                            herb_combination: herb_combination
                        })
                    end
                end
                use_cases = combination[:use_cases]
                if use_cases && !use_cases.empty?
                    combination[:use_cases].each do |use_case|
                        if use_case && ! use_case.blank?
                            HerbCombinationUseCase.find_or_create_by!({
                                herb_combination: herb_combination,
                                use_case: use_case
                            })
                        end # end if use case blank
                    end # combination use cases
                end
            end # combination sets
        end # create herb combinations
        
        def create_herb_notes(herb, data)
            notes = data[:notes]
            return unless notes && !notes.empty?
            notes.reject! { |note| note.blank? }
            notes.each do |note|
                HerbNote.find_or_create_by!({
                    herb: herb,
                    note: note
                })
            end # end notes each
        end # end create herb notes
    end # end class
end # end module