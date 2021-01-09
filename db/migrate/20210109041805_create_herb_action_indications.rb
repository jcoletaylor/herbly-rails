class CreateHerbActionIndications < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_action_indications do |t|
      t.references :herb_action, null: false, foreign_key: true
      t.text :indication

      t.timestamps
    end
  end
end
