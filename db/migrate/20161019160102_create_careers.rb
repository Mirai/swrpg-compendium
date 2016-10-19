class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.text :description
      t.text :career_skills
      t.integer :force_rating, default: 0
      t.references :source, index: true, foreign_key: true
      t.integer :page_number


      t.timestamps
    end
  end
end
