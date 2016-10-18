class CreateSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :species do |t|
      t.string :name
      t.text :description
      t.text :physiology
      t.text :society
      t.text :homeworld
      t.text :language
      t.text :force
      t.text :sidebar

      t.integer :brawn
      t.integer :agility
      t.integer :intellect
      t.integer :cunning
      t.integer :willpower
      t.integer :presence

      t.integer :wound_threshold
      t.integer :strain_threshold
      t.integer :starting_experience
      t.string :skill_bonus
      t.text :abilities

      t.timestamps
    end
  end
end
