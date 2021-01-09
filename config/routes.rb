Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :herb_dosages
  resources :formula_modifications
  resources :formula_modification_sets
  resources :formula_syndromes
  resources :syndromes
  resources :formula_actions
  resources :formula_herb_actions
  resources :formula_named_actions
  resources :formula_herbs
  resources :formula_manifestation_symptoms
  resources :symptoms
  resources :formula_manifestations
  resources :formula_conditions
  resources :conditions
  resources :formula_interactions
  resources :formula_contraindications
  resources :formula_notes
  resources :formula_also_knowns
  resources :formulas
  resources :herb_notes
  resources :herb_properties
  resources :herb_property_types
  resources :herb_dosage_types
  resources :herb_combination_use_cases
  resources :herb_combination_herbs
  resources :herb_combinations
  resources :herb_action_indications
  resources :herb_action_annotations
  resources :herb_actions
  resources :herbs
  resources :herb_action_types
  resources :herb_categories
  resources :precedence_types
  devise_for :users,
  controllers: {
    registrations: :registrations,
    sessions: :sessions
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
