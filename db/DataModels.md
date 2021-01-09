# Data Models

```bash
bundle exec rails g scaffold precedence_type name:index:uniq description:text

bundle exec rails g scaffold herb_category name:index:uniq description:text

bundle exec rails g scaffold herb_action_type name:index:uniq description:text

bundle exec rails g scaffold herbs name:index:uniq herb_category:references pinyin:string:index hanzi:string:index latin:string:index pharm_latin:string:index common_english:string:index

bundle exec rails g scaffold herb_action herb:references herb_action_type:references

bundle exec rails g scaffold herb_action_annotation herb_action:references annotation:text

bundle exec rails g scaffold herb_action_indication herb_action:references indication:text

bundle exec rails g scaffold herb_combination description:string

bundle exec rails g scaffold herb_combination_herb herb:references herb_combination:references

bundle exec rails g scaffold herb_combination_use_case herb_combination:references use_case:text

bundle exec rails g scaffold herb_dosage_type name:index:uniq description:text

bundle exec rails g scaffold herb_dosage herb:references herb_dosage_type:references dose:string

bundle exec rails g scaffold herb_property_type name:index:uniq description:text

bundle exec rails g scaffold herb_property herb:references herb_property_type:references precedence_type:references property:string:index

bundle exec rails g scaffold herb_note herb:references note:text

bundle exec rails g scaffold formula name:index:uniq pinyin:string:index hanzi:string:index english:string:index common_english:string:index

bundle exec rails g scaffold formula_also_known name:index formula:references

bundle exec rails g scaffold formula_note formula:references note:text

bundle exec rails g scaffold formula_contraindication formula:references contraindication:text

bundle exec rails g scaffold formula_interaction formula:references interaction:text

bundle exec rails g scaffold condition name:index:uniq

bundle exec rails g scaffold formula_condition formula:references condition:references

bundle exec rails g scaffold formula_manifestation formula:references tongue:string tongue_coat:string pulse:string

bundle exec rails g scaffold symptom name:index:uniq

bundle exec rails g scaffold formula_manifestation_symptom formula_manifestation:references symptom:references

bundle exec rails g scaffold formula_herb formula:references herb:references dosage:string

bundle exec rails g scaffold formula_named_action name:index:uniq

bundle exec rails g scaffold formula_herb_action formula_herb:references formula_named_action:references

bundle exec rails g scaffold formula_action formula:references formula_named_action:references

bundle exec rails g scaffold syndrome name:index:uniq

bundle exec rails g scaffold formula_syndrome formula:references syndrome:references

bundle exec rails g scaffold formula_modification_set formula:references purpose:string:index

bundle exec rails g scaffold formula_modification formula_modification_set:references herb:references modification:string
```