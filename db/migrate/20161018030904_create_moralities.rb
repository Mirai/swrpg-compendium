class CreateMoralities < ActiveRecord::Migration[5.0]
  def change
    create_table :moralities do |t|
      t.string :name
      t.references :source, index: true, foreign_key: true
      t.integer :page_number

      t.timestamps
    end
  end
end
