class CreateMoralities < ActiveRecord::Migration[5.0]
  def change
    create_table :moralities do |t|
      t.integer :min_value
      t.integer :max_value
      t.integer :emotion
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
