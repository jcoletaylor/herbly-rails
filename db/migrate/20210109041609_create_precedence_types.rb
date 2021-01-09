class CreatePrecedenceTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :precedence_types do |t|
      t.string :name, null: false, unique: true
      t.text :description

      t.timestamps
    end
    add_index :precedence_types, :name
  end
end
