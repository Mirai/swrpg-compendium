class CreateTrees < ActiveRecord::Migration[5.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.integer :tree_type, default: 0
      t.references :career, index: true, foreign_key: true
      t.text :description
      t.text :career_skills
      t.integer :force_rating, default: 0

      t.timestamps
    end
  end
end
