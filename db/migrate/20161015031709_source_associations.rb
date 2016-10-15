class SourceAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :source_associations do |t|
      t.references :source, index: true, foreign_key: true
      t.references :sourceable, polymorphic: true
      t.integer :page_number

      t.timestamps
    end
  end
end
