class CreateAdversaries < ActiveRecord::Migration[5.0]
  def change
    create_table :adversaries do |t|
      t.string :name
      t.text :description
      t.integer :adversary_type

      t.integer :brawn
      t.integer :agility
      t.integer :intellect
      t.integer :cunning
      t.integer :willpower
      t.integer :presence

      t.integer :soak
      t.integer :wound_threshold
      t.integer :strain_threshold
      t.integer :melee_defense
      t.integer :range_defense

      t.text :skills
      t.text :talents
      t.text :abilities
      t.text :equipment

      t.timestamps
    end
  end
end
