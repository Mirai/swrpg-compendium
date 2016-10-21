class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :ability_type, default: 0
      t.string :activation
      t.boolean :ranked
      t.boolean :force_talent, default: false
      t.text :description
      t.string :tree_description

      t.timestamps
    end
  end
end
