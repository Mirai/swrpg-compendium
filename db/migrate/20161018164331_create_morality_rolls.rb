class CreateMoralityRolls < ActiveRecord::Migration[5.0]
  def change
    create_table :morality_rolls do |t|
      t.references :morality, index: true, foreign_key: true
      t.integer :min_value
      t.integer :max_value
      t.integer :emotion
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
